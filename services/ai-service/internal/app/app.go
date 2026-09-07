// Package app — точка сборки ai-service (Phase 5).
package app

import (
	"context"
	"fmt"
	"net"
	"strings"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"go.uber.org/zap"
	"google.golang.org/grpc"

	"github.com/elearning/ai-service/internal/abtest"
	apiv1 "github.com/elearning/ai-service/internal/api/v1"
	userclient "github.com/elearning/ai-service/internal/client/user"
	"github.com/elearning/ai-service/internal/config"
	aicron "github.com/elearning/ai-service/internal/cron"
	"github.com/elearning/ai-service/internal/cryptobox"
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
	cron       *aicron.Scheduler
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

	// Encryption-at-rest box (no-op если AI_ENCRYPTION_KEY пуст).
	box, err := cryptobox.New(cfg.EncryptionKey)
	if err != nil {
		return nil, fmt.Errorf("failed to init cryptobox: %w", err)
	}
	logger.Info(ctx, "✅ Cryptobox initialized", zap.Bool("encryption_enabled", box.Enabled()))

	// Repositories.
	convsRepo := postgresrepo.NewConversationRepository(pool)
	msgsRepo := postgresrepo.NewMessageRepository(pool, box)
	explRepo := postgresrepo.NewExplanationRepository(pool)
	writingRepo := postgresrepo.NewWritingRepository(pool)
	pronRepo := postgresrepo.NewPronunciationRepository(pool)
	quotaRepo := postgresrepo.NewQuotaRepository(pool)
	feedbackRepo := postgresrepo.NewFeedbackRepository(pool)
	abExposureRepo := postgresrepo.NewABExposureRepository(pool)

	// Audio uploader (общий для provider и path A TTS). Строится один раз.
	// В Service уходит только реальная (не noop) реализация — она включает
	// server-side кэш: path A (Google inline) заливает mp3 в публичный
	// bucket, gateway кладёт URL в courses.tts_cache.
	uploader, err := buildAudioUploader(cfg)
	if err != nil {
		return nil, fmt.Errorf("audio uploader: %w", err)
	}
	var serviceAudioUploader providers.AudioUploader
	if !isNoopAudioUploader(uploader) {
		serviceAudioUploader = uploader
	}

	// Provider.
	provider, err := buildProvider(cfg, uploader)
	if err != nil {
		return nil, fmt.Errorf("failed to build provider: %w", err)
	}
	logger.Info(ctx, "✅ AI provider initialized", zap.String("name", provider.Name()))

	// Optional inline TTS synthesizer (path A) — Google Cloud TTS. Если задан
	// GOOGLE_TTS_API_KEY, on-demand озвучка (флешкарты) идёт через него и
	// возвращает mp3-байты в ответе, минуя MinIO. Чат остаётся на provider.
	var ttsSynth providers.TTSSynthesizer
	if cfg.GoogleTTSAPIKey != "" {
		ttsSynth = providers.NewGoogleTTSProvider(cfg.GoogleTTSAPIKey, cfg.GoogleTTSVoice)
		logger.Info(ctx, "✅ Google TTS synthesizer initialized", zap.String("name", ttsSynth.Name()))
	}

	// Optional STT (Google Speech-to-Text) — голосовой ввод в чат. Тот же
	// Google API-ключ (должен быть разрешён и для Speech-to-Text API).
	var sttTranscriber providers.STTTranscriber
	if cfg.GoogleSTTAPIKey != "" {
		sttTranscriber = providers.NewGoogleSTTProvider(cfg.GoogleSTTAPIKey, cfg.GoogleSTTModel)
		logger.Info(ctx, "✅ Google STT transcriber initialized", zap.String("name", sttTranscriber.Name()))
	}

	// Moderator.
	moderator, err := buildModerator(cfg)
	if err != nil {
		return nil, fmt.Errorf("failed to build moderator: %w", err)
	}
	logger.Info(ctx, "✅ Moderator initialized",
		zap.String("mode", cfg.ModerationMode),
		zap.Bool("active", !isNoopModerator(moderator)),
	)

	// User-service client (optional).
	userCli, err := buildUserClient(ctx, cfg)
	if err != nil {
		return nil, fmt.Errorf("failed to build user client: %w", err)
	}

	// A/B-эксперименты для prompts/моделей (Phase 5.X). Bad-config = fatal,
	// чтобы не «тихо» дропнуть эксперимент в проде.
	abReg, err := abtest.ParseRegistry(cfg.ABExperimentsJSON)
	if err != nil {
		return nil, fmt.Errorf("failed to parse AI_AB_EXPERIMENTS: %w", err)
	}
	if names := abReg.Names(); len(names) > 0 {
		logger.Info(ctx, "✅ A/B experiments loaded", zap.Strings("experiments", names))
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
		Provider:       provider,
		Moderator:      moderator,
		TTSSynth:       ttsSynth,
		AudioUploader:  serviceAudioUploader,
		STTTranscriber: sttTranscriber,
		SanitizeOpts:   providers.SanitizeOpts{MaxLength: cfg.SanitizeMaxLength},
		PIIOpts: providers.PIIRedactOpts{
			Enabled:     cfg.PIIRedactEnabled,
			Replacement: cfg.PIIPlaceholderFmt,
		},
		ABTests:       abReg,
		ABExposures:   abExposureRepo,
		User:          userCli,
		Conversations: convsRepo,
		Messages:      msgsRepo,
		Explanations:  explRepo,
		Writing:       writingRepo,
		Pronunciation: pronRepo,
		Quotas:        quotaRepo,
		Feedback:      feedbackRepo,
	})

	api := apiv1.NewAPI(svc)
	grpcServer := grpc.NewServer(grpc.MaxRecvMsgSize(16 * 1024 * 1024)) // 16 MB — для аудио в pronunciation
	aiv1.RegisterAIServiceServer(grpcServer, api)

	logger.Info(ctx, "✅ gRPC server initialized")

	// Cron — quota cleanup.
	scheduler := aicron.NewScheduler(svc, aicron.Config{
		DailyAt:            cfg.CronDailyAt,
		QuotaRetentionDays: cfg.QuotaRetentionDays,
	})

	return &App{cfg: cfg, grpcServer: grpcServer, pool: pool, cron: scheduler}, nil
}

// Run — стартует gRPC + cron.
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

	if a.cron != nil {
		a.cron.Start(ctx)
		closer.Add(func(_ context.Context) error {
			logger.Info(ctx, "Stopping ai cron")
			a.cron.Stop()
			return nil
		})
	}

	if err := a.grpcServer.Serve(listener); err != nil {
		return fmt.Errorf("failed to serve: %w", err)
	}
	return nil
}

// buildProvider — фабрика провайдера.
//
//   - "" | "mock"      → детерминированный MockProvider (Phase 5 MVP).
//   - "openai"         → OpenAIProvider (Chat + Whisper + TTS).
//   - "anthropic"      → AnthropicProvider (Chat only; STT/TTS unsupported).
//   - "router"         → LanguageRouter(Default=OpenAI, Heavy=Anthropic),
//     audio-вызовы идут на OpenAI.
func buildProvider(cfg *config.Config, uploader providers.AudioUploader) (providers.AIProvider, error) {
	switch cfg.Provider {
	case "", "mock":
		return providers.NewMockProvider(), nil

	case "openai":
		return buildOpenAI(cfg, uploader)

	case "anthropic":
		return providers.NewAnthropicProvider(providers.AnthropicConfig{
			APIKey:       cfg.AnthropicAPIKey,
			BaseURL:      cfg.AnthropicBaseURL,
			DefaultModel: cfg.AnthropicModel,
		})

	case "router":
		def, err := buildOpenAI(cfg, uploader)
		if err != nil {
			return nil, fmt.Errorf("router: build openai default: %w", err)
		}
		heavy, err := providers.NewAnthropicProvider(providers.AnthropicConfig{
			APIKey:       cfg.AnthropicAPIKey,
			BaseURL:      cfg.AnthropicBaseURL,
			DefaultModel: cfg.AnthropicModel,
		})
		if err != nil {
			return nil, fmt.Errorf("router: build anthropic heavy: %w", err)
		}
		langs := splitCSV(cfg.HeavyLanguages)
		r := providers.NewLanguageRouter(def, heavy, langs)
		r.AudioProvider = def // STT/TTS — всегда OpenAI.
		return r, nil

	default:
		return nil, fmt.Errorf("unknown AI_PROVIDER %q", cfg.Provider)
	}
}

func buildOpenAI(cfg *config.Config, uploader providers.AudioUploader) (providers.AIProvider, error) {
	return providers.NewOpenAIProvider(providers.OpenAIConfig{
		APIKey:            cfg.OpenAIAPIKey,
		BaseURL:           cfg.OpenAIBaseURL,
		TTSModel:          cfg.TTSModel,
		TTSVoice:          cfg.TTSVoice,
		WhisperModel:      cfg.WhisperModel,
		Uploader:          uploader,
		DefaultModelChat:  cfg.DefaultModelChat,
		DefaultModelHeavy: cfg.DefaultModelHeavy,
	})
}

// buildAudioUploader — выбирает реализацию по `AI_AUDIO_STORAGE`.
//
//   - "noop" | "" → NoopAudioUploader (placeholder URLs).
//   - "minio"     → MinIOAudioUploader (реальная заливка). Требует
//     AI_MINIO_ENDPOINT / AI_MINIO_BUCKET / AI_MINIO_ACCESS_KEY /
//     AI_MINIO_SECRET_KEY. Если bucket недоступен — возвращает ошибку.
//
// Публичный URL: AI_MINIO_PUBLIC_BASE_URL (полный base, напр.
// "https://api.lingoiq.online" при Caddy-прокси на bucket) либо
// AI_MINIO_PUBLIC_ENDPOINT + scheme из AI_MINIO_USE_SSL; иначе presigned.
func buildAudioUploader(cfg *config.Config) (providers.AudioUploader, error) {
	switch strings.ToLower(strings.TrimSpace(cfg.AudioStorage)) {
	case "", "noop":
		return providers.NewNoopAudioUploader(cfg.TTSBaseURL), nil
	case "minio", "s3":
		ttl := time.Duration(cfg.MinIOPresignTTLHours) * time.Hour
		return providers.NewMinIOAudioUploader(context.Background(), providers.MinIOConfig{
			Endpoint:       cfg.MinIOEndpoint,
			PublicEndpoint: cfg.MinIOPublicEndpoint,
			PublicBaseURL:  cfg.MinIOPublicBaseURL,
			AccessKey:      cfg.MinIOAccessKey,
			SecretKey:      cfg.MinIOSecretKey,
			UseSSL:         cfg.MinIOUseSSL,
			Region:         cfg.MinIORegion,
			Bucket:         cfg.MinIOBucket,
			Prefix:         cfg.MinIOPrefix,
			PresignTTL:     ttl,
		})
	default:
		return nil, fmt.Errorf("unknown AI_AUDIO_STORAGE %q", cfg.AudioStorage)
	}
}

// isNoopAudioUploader — true если переданный uploader реально no-op.
func isNoopAudioUploader(u providers.AudioUploader) bool {
	_, ok := u.(*providers.NoopAudioUploader)
	return ok
}

// buildModerator — Phase 5.33.
//
//   - "off"  → NoopModerator (всё пропускает).
//   - "on"   → OpenAIModerator (требует OpenAIAPIKey).
//   - "auto" → OpenAIModerator если есть OpenAIAPIKey, иначе Noop.
func buildModerator(cfg *config.Config) (providers.Moderator, error) {
	mode := strings.ToLower(strings.TrimSpace(cfg.ModerationMode))
	switch mode {
	case "off":
		return providers.NewNoopModerator(), nil
	case "on":
		return providers.NewOpenAIModerator(cfg.OpenAIAPIKey, cfg.OpenAIBaseURL)
	case "", "auto":
		if cfg.OpenAIAPIKey == "" {
			return providers.NewNoopModerator(), nil
		}
		return providers.NewOpenAIModerator(cfg.OpenAIAPIKey, cfg.OpenAIBaseURL)
	default:
		return nil, fmt.Errorf("unknown AI_MODERATION %q", cfg.ModerationMode)
	}
}

// isNoopModerator — true если переданный модератор реально no-op.
func isNoopModerator(m providers.Moderator) bool {
	_, ok := m.(*providers.NoopModerator)
	return ok
}

func splitCSV(s string) []string {
	parts := strings.Split(s, ",")
	out := parts[:0]
	for _, p := range parts {
		if p = strings.TrimSpace(p); p != "" {
			out = append(out, p)
		}
	}
	return out
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
