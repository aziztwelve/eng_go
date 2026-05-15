// Package app — точка сборки ai-service (Phase 5).
package app

import (
	"context"
	"fmt"
	"net"

	"github.com/jackc/pgx/v5/pgxpool"
	"go.uber.org/zap"
	"google.golang.org/grpc"

	apiv1 "github.com/elearning/ai-service/internal/api/v1"
	userclient "github.com/elearning/ai-service/internal/client/user"
	"github.com/elearning/ai-service/internal/config"
	"github.com/elearning/ai-service/internal/providers"
	postgresrepo "github.com/elearning/ai-service/internal/repository/postgres"
	"github.com/elearning/ai-service/internal/service"
	"github.com/elearning/platform/pkg/closer"
	"github.com/elearning/platform/pkg/logger"
	platformpostgres "github.com/elearning/platform/pkg/postgres"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

// App — корневой контейнер.
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

	logger.Info(ctx, "🚀 Starting AI Service (Phase 5)",
		zap.String("grpc_address", cfg.GRPCAddress()),
		zap.String("provider", cfg.Provider),
		zap.String("default_model_chat", cfg.DefaultModelChat),
		zap.String("default_model_heavy", cfg.DefaultModelHeavy),
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

	// Repositories.
	convsRepo := postgresrepo.NewConversationRepository(pool)
	msgsRepo := postgresrepo.NewMessageRepository(pool)
	explRepo := postgresrepo.NewExplanationRepository(pool)
	writingRepo := postgresrepo.NewWritingRepository(pool)
	pronRepo := postgresrepo.NewPronunciationRepository(pool)
	quotaRepo := postgresrepo.NewQuotaRepository(pool)

	// Provider.
	provider, err := buildProvider(cfg)
	if err != nil {
		return nil, fmt.Errorf("failed to build provider: %w", err)
	}
	logger.Info(ctx, "✅ AI provider initialized", zap.String("name", provider.Name()))

	// User-service client (optional).
	userCli, err := buildUserClient(ctx, cfg)
	if err != nil {
		return nil, fmt.Errorf("failed to build user client: %w", err)
	}

	// Service layer.
	svc := service.New(service.Config{
		DefaultModelChat:         cfg.DefaultModelChat,
		DefaultModelHeavy:        cfg.DefaultModelHeavy,
		FreeChatLimit:            int32(cfg.FreeChatLimit),
		FreeVoiceMinutesLimit:    cfg.FreeVoiceMinutesLimit,
		FreeWritingLimit:         int32(cfg.FreeWritingLimit),
		PremiumChatLimit:         int32(cfg.PremiumChatLimit),
		PremiumVoiceMinutesLimit: cfg.PremiumVoiceMinutesLimit,
		PremiumWritingLimit:      int32(cfg.PremiumWritingLimit),
	}, service.Deps{
		Provider:      provider,
		User:          userCli,
		Conversations: convsRepo,
		Messages:      msgsRepo,
		Explanations:  explRepo,
		Writing:       writingRepo,
		Pronunciation: pronRepo,
		Quotas:        quotaRepo,
	})

	api := apiv1.NewAPI(svc)
	grpcServer := grpc.NewServer(grpc.MaxRecvMsgSize(16 * 1024 * 1024)) // 16 MB — для аудио в pronunciation
	aiv1.RegisterAIServiceServer(grpcServer, api)

	logger.Info(ctx, "✅ gRPC server initialized")

	return &App{cfg: cfg, grpcServer: grpcServer, pool: pool}, nil
}

// Run — стартует gRPC.
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

// buildProvider — фабрика провайдера. На MVP реализован только mock;
// другие — вернут ошибку (явный TODO 5.X-real).
func buildProvider(cfg *config.Config) (providers.AIProvider, error) {
	switch cfg.Provider {
	case "", "mock":
		return providers.NewMockProvider(), nil
	case "openai":
		return nil, fmt.Errorf("openai provider not implemented yet (Phase 5.X-real)")
	case "anthropic":
		return nil, fmt.Errorf("anthropic provider not implemented yet (Phase 5.X-real)")
	default:
		return nil, fmt.Errorf("unknown AI_PROVIDER %q", cfg.Provider)
	}
}

// buildUserClient — gRPC client если задан USER_SERVICE_ADDR, иначе noop.
func buildUserClient(ctx context.Context, cfg *config.Config) (userclient.Client, error) {
	if cfg.UserServiceAddr == "" {
		logger.Info(ctx, "USER_SERVICE_ADDR not set — using noop user client")
		return userclient.NewNoopClient(), nil
	}
	cli, closeFn, err := userclient.NewGRPCClient(ctx, cfg.UserServiceAddr)
	if err != nil {
		return nil, err
	}
	closer.Add(func(_ context.Context) error { return closeFn() })
	logger.Info(ctx, "✅ user-service client connected", zap.String("addr", cfg.UserServiceAddr))
	return cli, nil
}
