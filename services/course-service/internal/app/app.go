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
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"

	"github.com/elearning/course-service/internal/api/course/v1"
	"github.com/elearning/course-service/internal/client/gamification"
	"github.com/elearning/course-service/internal/client/srs"
	"github.com/elearning/course-service/internal/config"
	postgresrepo "github.com/elearning/course-service/internal/repository/postgres"
	"github.com/elearning/course-service/internal/service"
)

// App представляет приложение
type App struct {
	cfg        *config.Config
	grpcServer *grpc.Server
	pool       *pgxpool.Pool
}

// New создает новый экземпляр приложения
func New(ctx context.Context) (*App, error) {
	cfg := config.Get()

	// Инициализация логгера
	if err := logger.Init(cfg.LoggerLevel, cfg.LoggerAsJSON); err != nil {
		return nil, fmt.Errorf("failed to init logger: %w", err)
	}

	logger.Info(ctx, "🚀 Starting Course Service",
		zap.String("grpc_address", cfg.GRPCAddress()),
	)

	// Подключение к PostgreSQL
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
		zap.String("host", cfg.PostgresHost),
		zap.String("schema", cfg.PostgresSchema),
	)

	// Регистрация closer для graceful shutdown
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Closing PostgreSQL connection pool")
		pool.Close()
		return nil
	})

	// Инициализация репозиториев
	courseRepo := postgresrepo.NewCourseRepository(pool)
	enrollmentRepo := postgresrepo.NewEnrollmentRepository(pool)
	progressRepo := postgresrepo.NewProgressRepository(pool)
	trackRepo := postgresrepo.NewTrackRepository(pool)
	vocabRepo := postgresrepo.NewVocabularyRepository(pool)
	ttsRepo := postgresrepo.NewTTSRepository(pool)

	// Инициализация сервисов
	videoClient := service.NewMockVideoClient()
	// Gamification (Phase 1). Если задан GAMIFICATION_SERVICE_ADDR — используем
	// gRPC клиент, иначе фоллбэк на noop. Никакая ошибка gamification не должна
	// блокировать основной поток course-service.
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
			closer.Add(func(ctx context.Context) error {
				logger.Info(ctx, "Closing gamification gRPC connection")
				return closeGC()
			})
			logger.Info(ctx, "✅ Connected to gamification-service",
				zap.String("addr", cfg.GamificationServiceAddr),
			)
		}
	}
	// SRS (Phase 3). Если задан SRS_SERVICE_ADDR — gRPC, иначе noop.
	// Используется для InitSkill при первом завершении урока/модуля.
	var srsClient srs.Client = srs.NewNoopClient()
	if cfg.SRSServiceAddr != "" {
		sc, closeSC, err := srs.NewGRPCClient(ctx, cfg.SRSServiceAddr)
		if err != nil {
			logger.Warn(ctx, "❌ failed to dial srs, falling back to noop",
				zap.String("addr", cfg.SRSServiceAddr),
				zap.Error(err),
			)
		} else {
			srsClient = sc
			closer.Add(func(ctx context.Context) error {
				logger.Info(ctx, "Closing srs gRPC connection")
				return closeSC()
			})
			logger.Info(ctx, "✅ Connected to srs-service",
				zap.String("addr", cfg.SRSServiceAddr),
			)
		}
	}

	courseService := service.NewCourseService(courseRepo, videoClient)
	enrollmentService := service.NewEnrollmentService(enrollmentRepo)
	progressService := service.NewProgressService(progressRepo, courseRepo, enrollmentRepo, gamificationClient, srsClient)
	trackService := service.NewTrackService(trackRepo)
	vocabService := service.NewVocabularyService(vocabRepo)
	ttsService := service.NewTTSService(ttsRepo)

	// Инициализация gRPC API
	courseAPI := v1.NewAPI(courseService, enrollmentService, progressService, trackService, vocabService, ttsService)

	// Создание gRPC сервера
	grpcServer := grpc.NewServer()
	coursev1.RegisterCourseServiceServer(grpcServer, courseAPI)

	logger.Info(ctx, "✅ gRPC server initialized")

	return &App{
		cfg:        cfg,
		grpcServer: grpcServer,
		pool:       pool,
	}, nil
}

// Run запускает приложение
func (a *App) Run(ctx context.Context) error {
	listener, err := net.Listen("tcp", a.cfg.GRPCAddress())
	if err != nil {
		return fmt.Errorf("failed to listen: %w", err)
	}

	logger.Info(ctx, "🎧 gRPC server listening",
		zap.String("address", a.cfg.GRPCAddress()),
	)

	// Регистрация graceful shutdown для gRPC сервера
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
