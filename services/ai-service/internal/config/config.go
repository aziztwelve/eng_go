// Package config — конфигурация ai-service (Phase 5).
package config

import (
	"fmt"
	"os"
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
	// На MVP: mock. Реальные: openai | anthropic.
	Provider          string
	OpenAIAPIKey      string
	OpenAIBaseURL     string // override для proxy / Azure / self-hosted
	AnthropicAPIKey   string
	DefaultModelChat  string // по умолчанию gpt-4o-mini
	DefaultModelHeavy string // для writing assessment / explain — gpt-4o

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
}

// Load — лениво грузит .env, если он существует.
func Load(path string) error {
	if path == "" {
		return nil
	}
	if _, err := os.Stat(path); err != nil {
		return nil
	}
	return godotenv.Load(path)
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
		DefaultModelChat:  getEnv("AI_DEFAULT_MODEL_CHAT", "gpt-4o-mini"),
		DefaultModelHeavy: getEnv("AI_DEFAULT_MODEL_HEAVY", "gpt-4o"),

		FreeChatLimit:         getEnvInt("AI_FREE_CHAT_LIMIT", 5),
		FreeVoiceMinutesLimit: getEnvFloat("AI_FREE_VOICE_MINUTES_LIMIT", 2),
		FreeWritingLimit:      getEnvInt("AI_FREE_WRITING_LIMIT", 3),

		PremiumChatLimit:         getEnvInt("AI_PREMIUM_CHAT_LIMIT", -1),
		PremiumVoiceMinutesLimit: getEnvFloat("AI_PREMIUM_VOICE_MINUTES_LIMIT", 60),
		PremiumWritingLimit:      getEnvInt("AI_PREMIUM_WRITING_LIMIT", -1),

		UserServiceAddr: getEnv("USER_SERVICE_ADDR", ""),
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
