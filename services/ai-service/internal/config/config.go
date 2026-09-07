// Package config — конфигурация ai-service (Phase 5).
package config

import (
	"fmt"
	"os"
	"path/filepath"
	"strconv"

	"github.com/joho/godotenv"
)

// Config — все runtime-параметры ai-service.
type Config struct {
	GRPCHost string
	GRPCPort string

	PostgresHost     string
	PostgresPort     string
	PostgresDB       string
	PostgresSchema   string
	PostgresUser     string
	PostgresPassword string

	LoggerLevel  string
	LoggerAsJSON bool

	// Provider — какой бэкенд использовать.
	// На MVP: mock. Реальные: openai | anthropic | router.
	// router = OpenAI default + Anthropic для HeavyLanguages.
	Provider          string
	OpenAIAPIKey      string
	OpenAIBaseURL     string // override для proxy / Azure / self-hosted
	AnthropicAPIKey   string
	AnthropicBaseURL  string
	AnthropicModel    string // default claude-3-5-haiku-latest
	DefaultModelChat  string // по умолчанию gpt-4o-mini
	DefaultModelHeavy string // для writing assessment / explain — gpt-4o

	// HeavyLanguages — CSV ISO-кодов, направляются на heavy-провайдер
	// при `Provider=router`. Default "ru".
	HeavyLanguages string

	// TTS / STT.
	TTSModel     string // tts-1 | tts-1-hd
	TTSVoice     string // alloy | echo | fable | onyx | nova | shimmer
	WhisperModel string // whisper-1
	TTSBaseURL   string // base URL для NoopAudioUploader (placeholder)

	// Google Cloud TTS (path A: inline mp3 bytes для on-demand озвучки
	// флешкарт). Если GoogleTTSAPIKey задан — SynthesizeTTS использует
	// Google и возвращает аудио inline, минуя MinIO. Чат остаётся на
	// основном Provider.
	GoogleTTSAPIKey string // API-ключ (из .env.local; в git не коммитим)
	GoogleTTSVoice  string // optional: имя голоса, напр. "en-US-Neural2-C"

	// Google Cloud Speech-to-Text (голосовой ввод в чат). Если ключ задан —
	// TranscribeAudio использует Google STT. По умолчанию переиспользуем
	// GoogleTTSAPIKey (тот же ключ должен быть разрешён и для Speech-to-Text
	// API, а сам API — включён в проекте).
	GoogleSTTAPIKey string
	GoogleSTTModel  string // напр. "latest_short" | "default"

	// Audio storage. Если AudioStorage="minio" — используется реальный
	// MinIO/S3 uploader. Иначе — NoopAudioUploader (placeholder URLs).
	AudioStorage         string
	MinIOEndpoint        string // host:port (для PUT)
	MinIOPublicEndpoint  string // host:port (для GET, опц.)
	MinIOPublicBaseURL   string // полный base URL для GET, напр. "https://api.lingoiq.online"
	MinIOAccessKey       string
	MinIOSecretKey       string
	MinIOUseSSL          bool
	MinIORegion          string
	MinIOBucket          string
	MinIOPrefix          string // префикс ключа, def "ai/tts/"
	MinIOPresignTTLHours int    // TTL presigned URL, default 24

	// Moderation: auto | on | off. auto → on если есть OpenAIAPIKey.
	ModerationMode string

	// Sanitize.
	SanitizeMaxLength int

	// PII redaction (Phase 5.X). Если PIIRedactEnabled=true — все user
	// inputs (chat / tutor / explain / writing) проходят через
	// regex-based detector и PII заменяется на [email] / [phone] / etc.
	// перед отправкой в LLM и сохранением в БД.
	PIIRedactEnabled  bool
	PIIPlaceholderFmt string

	// Cron.
	CronDailyAt        string // "HH:MM" UTC. Default "02:00".
	QuotaRetentionDays int    // Default 90. <=0 → no-op.

	// Quota free-плана (per day).
	FreeChatLimit         int
	FreeVoiceMinutesLimit float64
	FreeWritingLimit      int

	// Premium — -1 значит unlimited.
	PremiumChatLimit         int
	PremiumVoiceMinutesLimit float64
	PremiumWritingLimit      int

	// Внешние сервисы.
	UserServiceAddr string

	// Encryption-at-rest для message content/translation. Если пусто —
	// pass-through (старое поведение). См. internal/cryptobox.
	EncryptionKey string

	// ABExperimentsJSON — JSON-массив A/B-экспериментов для prompts/моделей.
	// Парсится через `internal/abtest.ParseRegistry`. Пусто → no experiments.
	// Формат:
	//   [
	//     {"name":"chat_model","variants":[
	//       {"id":"control","weight":80,"params":{"model":"gpt-4o-mini"}},
	//       {"id":"premium","weight":20,"params":{"model":"gpt-4o"}}
	//     ]},
	//     {"name":"chat_prompt","variants":[
	//       {"id":"strict","weight":50,"params":{"system_prompt_suffix":"Be very strict in corrections."}},
	//       {"id":"friendly","weight":50,"params":{"system_prompt_suffix":"Be encouraging."}}
	//     ]}
	//   ]
	ABExperimentsJSON string
}

// Load — лениво грузит .env, если он существует. Дополнительно подхватывает
// sibling-файл `.env.local` (если есть) с override — туда кладём секреты,
// которые не коммитим в git (напр. GOOGLE_TTS_API_KEY).
func Load(path string) error {
	if path == "" {
		return nil
	}
	if _, err := os.Stat(path); err != nil {
		return nil
	}
	if err := godotenv.Load(path); err != nil {
		return err
	}
	// Overlay: <dir>/.env.local переопределяет значения из основного .env.
	localPath := filepath.Join(filepath.Dir(path), ".env.local")
	if _, err := os.Stat(localPath); err == nil {
		if err := godotenv.Overload(localPath); err != nil {
			return err
		}
	}
	return nil
}

// Get — конфиг из окружения.
func Get() *Config {
	return &Config{
		GRPCHost: getEnv("GRPC_HOST", "0.0.0.0"),
		GRPCPort: getEnv("GRPC_PORT", "50063"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "ai"),
		PostgresUser:     getEnv("POSTGRES_USER", "ai_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "ai_pass"),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",

		Provider:          getEnv("AI_PROVIDER", "mock"),
		OpenAIAPIKey:      getEnv("AI_OPENAI_API_KEY", ""),
		OpenAIBaseURL:     getEnv("AI_OPENAI_BASE_URL", ""),
		AnthropicAPIKey:   getEnv("AI_ANTHROPIC_API_KEY", ""),
		AnthropicBaseURL:  getEnv("AI_ANTHROPIC_BASE_URL", ""),
		AnthropicModel:    getEnv("AI_ANTHROPIC_MODEL", "claude-3-5-haiku-latest"),
		DefaultModelChat:  getEnv("AI_DEFAULT_MODEL_CHAT", "gpt-4o-mini"),
		DefaultModelHeavy: getEnv("AI_DEFAULT_MODEL_HEAVY", "gpt-4o"),

		HeavyLanguages: getEnv("AI_HEAVY_LANGUAGES", "ru"),

		TTSModel:     getEnv("AI_TTS_MODEL", "tts-1"),
		TTSVoice:     getEnv("AI_TTS_VOICE", "alloy"),
		WhisperModel: getEnv("AI_WHISPER_MODEL", "whisper-1"),
		TTSBaseURL:   getEnv("AI_TTS_BASE_URL", ""),

		GoogleTTSAPIKey: getEnv("GOOGLE_TTS_API_KEY", ""),
		GoogleTTSVoice:  getEnv("GOOGLE_TTS_VOICE", ""),

		// STT key по умолчанию = TTS key (один Google API-ключ на оба API).
		GoogleSTTAPIKey: getEnv("GOOGLE_STT_API_KEY", getEnv("GOOGLE_TTS_API_KEY", "")),
		GoogleSTTModel:  getEnv("GOOGLE_STT_MODEL", "latest_short"),

		AudioStorage:         getEnv("AI_AUDIO_STORAGE", "noop"),
		MinIOEndpoint:        getEnv("AI_MINIO_ENDPOINT", ""),
		MinIOPublicEndpoint:  getEnv("AI_MINIO_PUBLIC_ENDPOINT", ""),
		MinIOPublicBaseURL:   getEnv("AI_MINIO_PUBLIC_BASE_URL", ""),
		MinIOAccessKey:       getEnv("AI_MINIO_ACCESS_KEY", ""),
		MinIOSecretKey:       getEnv("AI_MINIO_SECRET_KEY", ""),
		MinIOUseSSL:          getEnv("AI_MINIO_USE_SSL", "false") == "true",
		MinIORegion:          getEnv("AI_MINIO_REGION", "us-east-1"),
		MinIOBucket:          getEnv("AI_MINIO_BUCKET", "ai-audio"),
		MinIOPrefix:          getEnv("AI_MINIO_PREFIX", "ai/tts/"),
		MinIOPresignTTLHours: getEnvInt("AI_MINIO_PRESIGN_TTL_HOURS", 24),

		ModerationMode:    getEnv("AI_MODERATION", "auto"),
		SanitizeMaxLength: getEnvInt("AI_SANITIZE_MAX_LENGTH", 4000),

		PIIRedactEnabled:  getEnv("AI_PII_REDACT", "true") == "true",
		PIIPlaceholderFmt: getEnv("AI_PII_PLACEHOLDER", "[%s]"),

		CronDailyAt:        getEnv("CRON_DAILY_AT", "02:00"),
		QuotaRetentionDays: getEnvInt("AI_QUOTA_RETENTION_DAYS", 90),

		FreeChatLimit:         getEnvInt("AI_FREE_CHAT_LIMIT", 5),
		FreeVoiceMinutesLimit: getEnvFloat("AI_FREE_VOICE_MINUTES_LIMIT", 2),
		FreeWritingLimit:      getEnvInt("AI_FREE_WRITING_LIMIT", 3),

		PremiumChatLimit:         getEnvInt("AI_PREMIUM_CHAT_LIMIT", -1),
		PremiumVoiceMinutesLimit: getEnvFloat("AI_PREMIUM_VOICE_MINUTES_LIMIT", 60),
		PremiumWritingLimit:      getEnvInt("AI_PREMIUM_WRITING_LIMIT", -1),

		UserServiceAddr: getEnv("USER_SERVICE_ADDR", ""),

		EncryptionKey: getEnv("AI_ENCRYPTION_KEY", ""),

		ABExperimentsJSON: getEnv("AI_AB_EXPERIMENTS", ""),
	}
}

// GRPCAddress — host:port для grpc.Listen.
func (c *Config) GRPCAddress() string {
	return fmt.Sprintf("%s:%s", c.GRPCHost, c.GRPCPort)
}

func getEnv(key, def string) string {
	if v := os.Getenv(key); v != "" {
		return v
	}
	return def
}

func getEnvInt(key string, def int) int {
	v := os.Getenv(key)
	if v == "" {
		return def
	}
	n, err := strconv.Atoi(v)
	if err != nil {
		return def
	}
	return n
}

func getEnvFloat(key string, def float64) float64 {
	v := os.Getenv(key)
	if v == "" {
		return def
	}
	n, err := strconv.ParseFloat(v, 64)
	if err != nil {
		return def
	}
	return n
}
