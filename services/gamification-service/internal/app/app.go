// Package app собирает все зависимости gamification-service.
package app

import (
	"context"
	"fmt"
	"net"

	"github.com/jackc/pgx/v5/pgxpool"
	"go.uber.org/zap"
	"google.golang.org/grpc"

	apiv1 "github.com/elearning/gamification-service/internal/api/gamification/v1"
	"github.com/elearning/gamification-service/internal/config"
	"github.com/elearning/gamification-service/internal/cron"
	postgresrepo "github.com/elearning/gamification-service/internal/repository/postgres"
	"github.com/elearning/gamification-service/internal/service"
	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/logger"
	platformpostgres "github.com/elearning/platform/pkg/postgres"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// App — gamification-service в сборе.
type App struct {
	cfg        *config.Config
	grpcServer *grpc.Server
	pool       *pgxpool.Pool
	cron       *cron.Scheduler
}

// New собирает приложение, готовое к Run.
func New(ctx context.Context) (*App, error) {
	cfg := config.Get()

	if err := logger.Init(cfg.LoggerLevel, cfg.LoggerAsJSON); err != nil {
		return nil, fmt.Errorf("init logger: %w", err)
	}
	logger.Info(ctx, "🚀 Starting Gamification Service",
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
		return nil, fmt.Errorf("connect postgres: %w", err)
	}
	logger.Info(ctx, "✅ Connected to PostgreSQL",
		zap.String("host", cfg.PostgresHost),
		zap.String("schema", cfg.PostgresSchema),
	)
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Closing PostgreSQL pool")
		pool.Close()
		return nil
	})

	statsRepo := postgresrepo.NewStatsRepository(pool)
	xpRepo := postgresrepo.NewXPRepository(pool)
	dailyGoalRepo := postgresrepo.NewDailyGoalRepository(pool)
	streakRepo := postgresrepo.NewStreakRepository(pool)
	achRepo := postgresrepo.NewAchievementRepository(pool)

	svc := service.New(service.Config{
		MaxHearts:          cfg.MaxHearts,
		HeartRegenInterval: cfg.HeartRegenInterval,
		DefaultDailyXP:     cfg.DefaultDailyXP,
		StreakFreezeMax:    cfg.StreakFreezeMax,
	}, statsRepo, xpRepo, dailyGoalRepo, streakRepo, achRepo)

	api := apiv1.New(svc)
	grpcServer := grpc.NewServer()
	gamificationv1.RegisterGamificationServiceServer(grpcServer, api)

	scheduler := cron.NewScheduler(svc, statsRepo, cron.Config{
		HeartsEvery: cfg.CronHeartsEvery,
		StreakDaily: cfg.CronStreakDaily,
	})

	return &App{
		cfg:        cfg,
		grpcServer: grpcServer,
		pool:       pool,
		cron:       scheduler,
	}, nil
}

// Run запускает gRPC сервер и cron.
func (a *App) Run(ctx context.Context) error {
	listener, err := net.Listen("tcp", a.cfg.GRPCAddress())
	if err != nil {
		return fmt.Errorf("listen: %w", err)
	}
	logger.Info(ctx, "🎧 gRPC listening", zap.String("addr", a.cfg.GRPCAddress()))

	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Stopping gRPC server")
		a.grpcServer.GracefulStop()
		return nil
	})

	a.cron.Start(ctx)
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Stopping cron")
		a.cron.Stop()
		return nil
	})

	if err := a.grpcServer.Serve(listener); err != nil {
		return fmt.Errorf("grpc serve: %w", err)
	}
	return nil
}
