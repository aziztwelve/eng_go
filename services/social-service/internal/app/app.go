package app

import (
	"context"
	"fmt"
	"net"

	"github.com/jackc/pgx/v5/pgxpool"
	goredis "github.com/redis/go-redis/v9"
	"go.uber.org/zap"
	"google.golang.org/grpc"

	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/logger"
	platformpostgres "github.com/elearning/platform/pkg/postgres"
	platformredis "github.com/elearning/platform/pkg/redis"
	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"

	apiv1 "github.com/elearning/social-service/internal/api/v1"
	authcl "github.com/elearning/social-service/internal/client/auth"
	"github.com/elearning/social-service/internal/client/notifications"
	"github.com/elearning/social-service/internal/client/users"
	"github.com/elearning/social-service/internal/config"
	"github.com/elearning/social-service/internal/cron"
	"github.com/elearning/social-service/internal/kafka"
	postgresrepo "github.com/elearning/social-service/internal/repository/postgres"
	redisrepo "github.com/elearning/social-service/internal/repository/redis"
	"github.com/elearning/social-service/internal/service"
)

// App — точка сборки сервиса.
type App struct {
	cfg         *config.Config
	grpcServer  *grpc.Server
	pool        *pgxpool.Pool
	redisClient *goredis.Client
	scheduler   *cron.Scheduler
	consumer    *kafka.XPConsumer
}

func New(ctx context.Context) (*App, error) {
	cfg := config.Get()

	if err := logger.Init(cfg.LoggerLevel, cfg.LoggerAsJSON); err != nil {
		return nil, fmt.Errorf("failed to init logger: %w", err)
	}

	logger.Info(ctx, "🚀 Starting Social Service",
		zap.String("grpc_address", cfg.GRPCAddress()),
	)

	// Postgres
	pool, err := platformpostgres.NewPool(ctx, platformpostgres.Config{
		Host:     cfg.PostgresHost,
		Port:     cfg.PostgresPort,
		Database: cfg.PostgresDB,
		Schema:   cfg.PostgresSchema,
		User:     cfg.PostgresUser,
		Password: cfg.PostgresPassword,
	})
	if err != nil {
		return nil, fmt.Errorf("failed to connect to postgres: %w", err)
	}
	logger.Info(ctx, "✅ Connected to PostgreSQL",
		zap.String("schema", cfg.PostgresSchema),
	)
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Closing PostgreSQL connection pool")
		pool.Close()
		return nil
	})

	// Redis
	redisClient, err := platformredis.NewClient(ctx, platformredis.Config{
		Addr:     cfg.RedisAddr,
		DB:       cfg.RedisDB,
		Password: cfg.RedisPassword,
	})
	if err != nil {
		return nil, fmt.Errorf("failed to connect to redis: %w", err)
	}
	if redisClient == nil {
		return nil, fmt.Errorf("REDIS_ADDR is required for social-service")
	}
	logger.Info(ctx, "✅ Connected to Redis", zap.String("addr", cfg.RedisAddr))
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Closing Redis client")
		return redisClient.Close()
	})

	// User-service client (с noop fallback)
	var usersClient users.Client
	if cfg.UserServiceAddr != "" {
		usersClient, err = users.NewGRPCClient(cfg.UserServiceAddr)
		if err != nil {
			logger.Warn(ctx, "failed to connect to user-service, using noop",
				zap.String("addr", cfg.UserServiceAddr), zap.Error(err))
			usersClient = users.NewNoopClient()
		} else {
			logger.Info(ctx, "✅ Connected to user-service",
				zap.String("addr", cfg.UserServiceAddr))
			closer.Add(func(_ context.Context) error { return usersClient.Close() })
		}
	} else {
		usersClient = users.NewNoopClient()
		logger.Info(ctx, "USER_SERVICE_ADDR empty — leaderboard enrichment disabled")
	}

	// Auth-service client (с noop fallback) — для friend-search (Phase 4.5).
	var authClient authcl.Client = authcl.NewNoopClient()
	if cfg.AuthServiceAddr != "" {
		ac, aerr := authcl.NewGRPCClient(cfg.AuthServiceAddr)
		if aerr != nil {
			logger.Warn(ctx, "failed to connect to auth-service, using noop",
				zap.String("addr", cfg.AuthServiceAddr), zap.Error(aerr))
		} else {
			authClient = ac
			logger.Info(ctx, "✅ Connected to auth-service",
				zap.String("addr", cfg.AuthServiceAddr))
			closer.Add(func(_ context.Context) error { return authClient.Close() })
		}
	} else {
		logger.Info(ctx, "AUTH_SERVICE_ADDR empty — friend search/enrichment disabled")
	}

	// Notifications-service client (с noop fallback) — для promotion-пушей.
	var notifClient notifications.Client = notifications.NewNoop()
	if cfg.NotificationsServiceAddr != "" {
		nc, closeFn, nerr := notifications.NewGRPCClient(ctx, cfg.NotificationsServiceAddr)
		if nerr != nil {
			logger.Warn(ctx, "failed to connect to notifications-service, using noop",
				zap.String("addr", cfg.NotificationsServiceAddr), zap.Error(nerr))
		} else {
			notifClient = nc
			logger.Info(ctx, "✅ Connected to notifications-service",
				zap.String("addr", cfg.NotificationsServiceAddr))
			closer.Add(func(_ context.Context) error { return closeFn() })
		}
	} else {
		logger.Info(ctx, "NOTIFICATIONS_SERVICE_ADDR empty — promotion pushes disabled")
	}

	// Repos
	leagues := postgresrepo.NewLeagueRepository(pool)
	cohorts := postgresrepo.NewCohortRepository(pool)
	userLg := postgresrepo.NewUserLeagueRepository(pool)
	history := postgresrepo.NewLeagueHistoryRepository(pool)
	board := redisrepo.NewLeaderboardRepository(redisClient)
	friends := postgresrepo.NewFriendshipRepository(pool)

	// Service
	svc := service.New(leagues, cohorts, userLg, history, board, usersClient).
		WithNotifications(notifClient).
		WithFriendship(friends, authClient)

	// gRPC API
	api := apiv1.NewAPI(svc)
	grpcServer := grpc.NewServer()
	socialv1.RegisterSocialServiceServer(grpcServer, api)

	// Scheduler
	scheduler := cron.NewScheduler(svc, cron.Config{
		WeeklyRotation: cfg.CronWeeklyRotation,
		SnapshotEvery:  cfg.CronRankSnapshotEvery,
	})

	// Kafka consumer (опционально)
	consumer, err := kafka.New(kafka.Config{
		Brokers: cfg.KafkaBrokers,
		Topic:   cfg.KafkaTopicXP,
		GroupID: cfg.KafkaConsumerGrp,
	}, svc)
	if err != nil {
		return nil, fmt.Errorf("failed to init kafka consumer: %w", err)
	}
	if consumer != nil {
		logger.Info(ctx, "✅ Kafka consumer ready",
			zap.String("topic", cfg.KafkaTopicXP),
			zap.String("group_id", cfg.KafkaConsumerGrp),
		)
	} else {
		logger.Info(ctx, "KAFKA_BROKERS empty — xp.gained consumer disabled")
	}

	logger.Info(ctx, "✅ gRPC server initialized")

	return &App{
		cfg:         cfg,
		grpcServer:  grpcServer,
		pool:        pool,
		redisClient: redisClient,
		scheduler:   scheduler,
		consumer:    consumer,
	}, nil
}

func (a *App) Run(ctx context.Context) error {
	listener, err := net.Listen("tcp", a.cfg.GRPCAddress())
	if err != nil {
		return fmt.Errorf("failed to listen: %w", err)
	}
	logger.Info(ctx, "🎧 gRPC server listening", zap.String("address", a.cfg.GRPCAddress()))
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Stopping gRPC server")
		a.grpcServer.GracefulStop()
		return nil
	})

	// Cron в фоне.
	a.scheduler.Start(ctx)
	closer.Add(func(_ context.Context) error {
		a.scheduler.Stop()
		return nil
	})

	// Kafka consumer в фоне.
	if a.consumer != nil {
		a.consumer.Start(ctx)
		closer.Add(func(_ context.Context) error { return a.consumer.Stop() })
	}

	if err := a.grpcServer.Serve(listener); err != nil {
		return fmt.Errorf("failed to serve: %w", err)
	}
	return nil
}
