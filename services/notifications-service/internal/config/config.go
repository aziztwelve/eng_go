package config

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

// Config — конфигурация notifications-service (Phase 3 push).
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

	// Web Push (VAPID). subject — обычно "mailto:admin@example.com".
	// Если ключи пусты — Web Push доставка отключена (только Expo).
	VapidPublicKey  string
	VapidPrivateKey string
	VapidSubject    string

	// Expo Push API URL (можно подменить для тестов / прокси).
	ExpoPushAPI string

	// Если true — реальная доставка отключена, всё пишется только в лог
	// (со status=sent). Удобно в dev/без VAPID.
	DryRun bool
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
		GRPCPort: getEnv("GRPC_PORT", "50062"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "notifications"),
		PostgresUser:     getEnv("POSTGRES_USER", "notifications_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "notifications_pass"),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",

		VapidPublicKey:  getEnv("VAPID_PUBLIC_KEY", ""),
		VapidPrivateKey: getEnv("VAPID_PRIVATE_KEY", ""),
		VapidSubject:    getEnv("VAPID_SUBJECT", "mailto:admin@example.com"),
		ExpoPushAPI:     getEnv("EXPO_PUSH_API", "https://exp.host/--/api/v2/push/send"),

		DryRun: getEnv("PUSH_DRY_RUN", "false") == "true",
	}
}

func (c *Config) GRPCAddress() string {
	return fmt.Sprintf("%s:%s", c.GRPCHost, c.GRPCPort)
}

func getEnv(key, def string) string {
	if v := os.Getenv(key); v != "" {
		return v
	}
	return def
}
