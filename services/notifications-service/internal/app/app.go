package app

import (
	"context"
	"fmt"
	"net"

	"github.com/jackc/pgx/v5/pgxpool"
	"go.uber.org/zap"
	"google.golang.org/grpc"

	apiv1 "github.com/elearning/notifications-service/internal/api/v1"
	"github.com/elearning/notifications-service/internal/config"
	"github.com/elearning/notifications-service/internal/model"
	postgresrepo "github.com/elearning/notifications-service/internal/repository/postgres"
	"github.com/elearning/notifications-service/internal/sender"
	"github.com/elearning/notifications-service/internal/service"
	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/logger"
	platformpostgres "github.com/elearning/platform/pkg/postgres"
	notifv1 "github.com/elearning/shared/pkg/proto/notifications/v1"
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

	logger.Info(ctx, "🚀 Starting Notifications Service",
		zap.String("grpc_address", cfg.GRPCAddress()),
		zap.Bool("dry_run", cfg.DryRun),
		zap.Bool("vapid_configured", cfg.VapidPublicKey != ""),
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
	logger.Info(ctx, "✅ Connected to PostgreSQL", zap.String("schema", cfg.PostgresSchema))
	closer.Add(func(ctx context.Context) error {
		logger.Info(ctx, "Closing PostgreSQL connection pool")
		pool.Close()
		return nil
	})

	devicesRepo := postgresrepo.NewDeviceTokenRepository(pool)
	prefsRepo := postgresrepo.NewPreferencesRepository(pool)
	logsRepo := postgresrepo.NewNotificationLogRepository(pool)

	dispatcher := buildDispatcher(ctx, cfg)

	svc := service.New(devicesRepo, prefsRepo, logsRepo, dispatcher, cfg.DryRun)
	api := apiv1.NewAPI(svc)

	grpcServer := grpc.NewServer()
	notifv1.RegisterNotificationsServiceServer(grpcServer, api)

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

// buildDispatcher — собирает реестр sender'ов в зависимости от конфига.
//
//   - PUSH_DRY_RUN=true → log-only senders для всех платформ.
//   - VAPID_PUBLIC/PRIVATE_KEY заполнены → WebPushSender, иначе LogSender для web.
//   - ExpoPushSender — всегда подключён (Expo HTTP API без авторизации
//     для unauthenticated push'ей).
//   - iOS / Android raw — log-only (на MVP не используются).
func buildDispatcher(ctx context.Context, cfg *config.Config) *sender.Dispatcher {
	d := sender.NewDispatcher()

	if cfg.DryRun {
		d.Register(sender.NewLogSender(model.PlatformWeb))
		d.Register(sender.NewLogSender(model.PlatformExpo))
		d.Register(sender.NewLogSender(model.PlatformIOS))
		d.Register(sender.NewLogSender(model.PlatformAndroid))
		logger.Info(ctx, "✅ Dispatcher initialized (DRY_RUN — all log-only)")
		return d
	}

	if web := sender.NewWebPushSender(cfg.VapidPublicKey, cfg.VapidPrivateKey, cfg.VapidSubject); web != nil {
		d.Register(web)
		logger.Info(ctx, "✅ Web Push sender registered (VAPID configured)")
	} else {
		d.Register(sender.NewLogSender(model.PlatformWeb))
		logger.Warn(ctx, "⚠️  VAPID keys missing — Web Push disabled (log-only)")
	}

	d.Register(sender.NewExpoPushSender(cfg.ExpoPushAPI))
	logger.Info(ctx, "✅ Expo Push sender registered", zap.String("api", cfg.ExpoPushAPI))

	d.Register(sender.NewLogSender(model.PlatformIOS))
	d.Register(sender.NewLogSender(model.PlatformAndroid))
	return d
}
