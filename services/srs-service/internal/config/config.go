package config

import (
	"fmt"
	"os"
	"strconv"

	"github.com/joho/godotenv"
)

// Config — конфигурация srs-service (Phase 3).
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

	// Cron
	CronDailyAt string // "HH:MM" UTC

	// Notifications / user dependencies (опциональны — фолбэк на noop).
	NotificationsAddr string
	UserServiceAddr   string

	// Local hour (0..23) для practice_reminder push'а. Default 19.
	PracticeReminderHour int
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
		GRPCPort: getEnv("GRPC_PORT", "50060"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "srs"),
		PostgresUser:     getEnv("POSTGRES_USER", "srs_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "srs_pass"),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",

		CronDailyAt: getEnv("CRON_DAILY_AT", "01:00"),

		NotificationsAddr:    getEnv("NOTIFICATIONS_ADDR", ""),
		UserServiceAddr:      getEnv("USER_SERVICE_ADDR", ""),
		PracticeReminderHour: getEnvInt("PRACTICE_REMINDER_HOUR", 19),
	}
}

func getEnvInt(key string, def int) int {
	if v := os.Getenv(key); v != "" {
		if n, err := strconv.Atoi(v); err == nil {
			return n
		}
	}
	return def
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
