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
	stepvalidationv1 "github.com/elearning/shared/pkg/proto/step_validation/v1"
	apiv1 "github.com/elearning/step-validation-service/internal/api/step_validation/v1"
	"github.com/elearning/step-validation-service/internal/client/course"
	"github.com/elearning/step-validation-service/internal/client/gamification"
	"github.com/elearning/step-validation-service/internal/client/srs"
	"github.com/elearning/step-validation-service/internal/config"
	postgresrepo "github.com/elearning/step-validation-service/internal/repository/postgres"
	"github.com/elearning/step-validation-service/internal/service"
)

// App — точка сборки сервиса.
type App struct {
	cfg        *config.Config
	grpcServer *grpc.Server
	pool       *pgxpool.Pool
}

// New — собирает все слои.
func New(ctx context.Context) (*App, error) {
	cfg := config.Get()

	if err := logger.Init(cfg.LoggerLevel, cfg.LoggerAsJSON); err != nil {
		return nil, fmt.Errorf("failed to init logger: %w", err)
	}

	logger.Info(ctx, "🚀 Starting Step Validation Service",
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

	// Зависимости — gamification (XP/hearts) и course (Step lookup +
	// MarkStepComplete). Оба фолбэкаются на noop, чтобы сервис стартовал
	// без них (для unit-тестов и локального dev).
	var gamificationClient gamification.Client = gamification.NewNoopClient()
	if cfg.GamificationServiceAddr != "" {
		gc, closeGC, err := gamification.NewGRPCClient(ctx, cfg.GamificationServiceAddr)
		if err != nil {
			logger.Warn(ctx, "❌ failed to dial gamification, falling back to noop",
				zap.String("addr", cfg.GamificationServiceAddr),
				zap.Error(err),
			)
		} else {
			gamificationClient = gc
			closer.Add(func(ctx context.Context) error { return closeGC() })
			logger.Info(ctx, "✅ Connected to gamification-service",
				zap.String("addr", cfg.GamificationServiceAddr),
			)
		}
	}

	var courseClient course.Client = course.NewNoopClient()
	if cfg.CourseServiceAddr != "" {
		cc, closeCC, err := course.NewGRPCClient(ctx, cfg.CourseServiceAddr)
		if err != nil {
			logger.Warn(ctx, "❌ failed to dial course-service, falling back to noop",
				zap.String("addr", cfg.CourseServiceAddr),
				zap.Error(err),
			)
		} else {
			courseClient = cc
			closer.Add(func(ctx context.Context) error { return closeCC() })
			logger.Info(ctx, "✅ Connected to course-service",
				zap.String("addr", cfg.CourseServiceAddr),
			)
		}
	}

	// Phase 3: SRS-клиент (опциональный, фолбэкается на noop).
	var srsClient srs.Client = srs.NewNoopClient()
	if cfg.SRSServiceAddr != "" {
		sc, closeSC, err := srs.NewGRPCClient(ctx, cfg.SRSServiceAddr)
		if err != nil {
			logger.Warn(ctx, "❌ failed to dial srs-service, falling back to noop",
				zap.String("addr", cfg.SRSServiceAddr),
				zap.Error(err),
			)
		} else {
			srsClient = sc
			closer.Add(func(ctx context.Context) error { return closeSC() })
			logger.Info(ctx, "✅ Connected to srs-service",
				zap.String("addr", cfg.SRSServiceAddr),
			)
		}
	}

	attemptRepo := postgresrepo.NewAttemptRepository(pool)
	submissionService := service.NewSubmissionService(attemptRepo, courseClient, gamificationClient, srsClient)
	api := apiv1.NewAPI(submissionService)

	grpcServer := grpc.NewServer()
	stepvalidationv1.RegisterStepValidationServiceServer(grpcServer, api)

	logger.Info(ctx, "✅ gRPC server initialized")

	return &App{cfg: cfg, grpcServer: grpcServer, pool: pool}, nil
}

// Run — стартует gRPC сервер.
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
	if err := a.grpcServer.Serve(listener); err != nil {
		return fmt.Errorf("failed to serve: %w", err)
	}
	return nil
}
