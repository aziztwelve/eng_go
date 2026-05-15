package app

import (
	"context"
	"fmt"
	"net"

	"github.com/jackc/pgx/v5/pgxpool"
	"go.uber.org/zap"
	"google.golang.org/grpc"

	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/logger"
	platformpostgres "github.com/elearning/platform/pkg/postgres"
	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
	apiv1 "github.com/elearning/srs-service/internal/api/v1"
	notifclient "github.com/elearning/srs-service/internal/client/notifications"
	userclient "github.com/elearning/srs-service/internal/client/user"
	"github.com/elearning/srs-service/internal/config"
	"github.com/elearning/srs-service/internal/cron"
	postgresrepo "github.com/elearning/srs-service/internal/repository/postgres"
	"github.com/elearning/srs-service/internal/service"
)

// App — точка сборки сервиса.
type App struct {
	cfg        *config.Config
	grpcServer *grpc.Server
	pool       *pgxpool.Pool
	scheduler  *cron.Scheduler
	reminders  *cron.RemindersScheduler
}

// New — собирает все слои.
func New(ctx context.Context) (*App, error) {
	cfg := config.Get()

	if err := logger.Init(cfg.LoggerLevel, cfg.LoggerAsJSON); err != nil {
		return nil, fmt.Errorf("failed to init logger: %w", err)
	}

	logger.Info(ctx, "🚀 Starting SRS Service",
		zap.String("grpc_address", cfg.GRPCAddress()),
	)

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

	itemsRepo := postgresrepo.NewSRSItemRepository(pool)
	historyRepo := postgresrepo.NewReviewHistoryRepository(pool)
	mistakeRepo := postgresrepo.NewMistakeRepository(pool)
	skillsRepo := postgresrepo.NewSkillDecayRepository(pool)

	svc := service.New(itemsRepo, historyRepo, mistakeRepo, skillsRepo)
	api := apiv1.NewAPI(svc)

	grpcServer := grpc.NewServer()
	srsv1.RegisterSRSServiceServer(grpcServer, api)

	scheduler := cron.NewScheduler(svc, cron.Config{DailyAt: cfg.CronDailyAt})

	// User-client (для timezone в practice_reminder). Опционально.
	var userCli userclient.Client = userclient.NewNoopClient()
	if cfg.UserServiceAddr != "" {
		uc, closeFn, uerr := userclient.NewGRPCClient(ctx, cfg.UserServiceAddr)
		if uerr != nil {
			logger.Warn(ctx, "user client init failed; falling back to noop",
				zap.String("addr", cfg.UserServiceAddr), zap.Error(uerr))
		} else {
			userCli = uc
			logger.Info(ctx, "✅ Connected to user-service",
				zap.String("addr", cfg.UserServiceAddr))
			closer.Add(func(ctx context.Context) error {
				logger.Info(ctx, "Closing user-service connection")
				return closeFn()
			})
		}
	} else {
		logger.Info(ctx, "USER_SERVICE_ADDR empty — practice_reminder will treat all users as UTC")
	}

	// Notifications client (опционально). Без него reminders просто
	// логируются (noop.Send → nil), сервис работает в полную силу.
	var notifCli notifclient.Client = notifclient.NewNoop()
	if cfg.NotificationsAddr != "" {
		nc, closeFn, nerr := notifclient.NewGRPCClient(ctx, cfg.NotificationsAddr)
		if nerr != nil {
			logger.Warn(ctx, "notifications client init failed; falling back to noop",
				zap.String("addr", cfg.NotificationsAddr), zap.Error(nerr))
		} else {
			notifCli = nc
			logger.Info(ctx, "✅ Connected to notifications-service",
				zap.String("addr", cfg.NotificationsAddr))
			closer.Add(func(ctx context.Context) error {
				logger.Info(ctx, "Closing notifications-service connection")
				return closeFn()
			})
		}
	} else {
		logger.Info(ctx, "NOTIFICATIONS_ADDR empty — practice_reminder push disabled")
	}

	reminders := cron.NewRemindersScheduler(itemsRepo, userCli, notifCli, cron.RemindersConfig{
		ReminderHour: cfg.PracticeReminderHour,
		BatchSize:    cron.DefaultReminders.BatchSize,
	})

	logger.Info(ctx, "✅ gRPC server initialized")

	return &App{
		cfg: cfg, grpcServer: grpcServer, pool: pool,
		scheduler: scheduler, reminders: reminders,
	}, nil
}

// Run — стартует gRPC сервер + cron.
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

	// Cron в фоне — не блокирует gRPC.
	a.scheduler.Start(ctx)
	closer.Add(func(_ context.Context) error {
		a.scheduler.Stop()
		return nil
	})

	a.reminders.Start(ctx)
	closer.Add(func(_ context.Context) error {
		a.reminders.Stop()
		return nil
	})

	if err := a.grpcServer.Serve(listener); err != nil {
		return fmt.Errorf("failed to serve: %w", err)
	}
	return nil
}
