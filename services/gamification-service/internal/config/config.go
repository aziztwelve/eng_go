package config

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/joho/godotenv"
)

// Config содержит конфигурацию gamification-service.
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

	// Бизнес-настройки.
	HeartRegenInterval time.Duration // 30m по дефолту
	MaxHearts          int           // 5
	DefaultDailyXP     int           // 20
	StreakFreezeMax    int           // 2

	// Cron-расписания.
	CronHeartsEvery time.Duration // 5m
	CronStreakDaily string        // "00:05" UTC

	// USER_SERVICE_ADDR — адрес user-service, нужен только для achievement
	// `birthday` (lookup date_of_birth). Если пусто — `birthday` всегда false.
	UserServiceAddr string

	// Phase 4 — Kafka producer для xp.gained. Пусто → producer-no-op.
	KafkaBrokers []string
	KafkaTopicXP string

	// NOTIFICATIONS_ADDR — адрес notifications-service (gRPC). Пусто →
	// noop-клиент (push'и не отправляются, только в логе).
	NotificationsAddr string

	// Reminders cron — local hours срабатывания для streak_risk / daily_goal.
	ReminderStreakHour    int // 0..23, default 20
	ReminderDailyGoalHour int // 0..23, default 21
}

// Load подгружает .env (если есть) — игнорирует отсутствие файла,
// чтобы можно было запускать сервис в k8s без файла.
func Load(path string) error {
	if path == "" {
		return nil
	}
	if _, err := os.Stat(path); err != nil {
		return nil
	}
	return godotenv.Load(path)
}

// Get возвращает конфиг, заполненный из ENV.
func Get() *Config {
	return &Config{
		GRPCHost: getEnv("GRPC_HOST", "0.0.0.0"),
		GRPCPort: getEnv("GRPC_PORT", "50058"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "gamification"),
		PostgresUser:     getEnv("POSTGRES_USER", "gamification_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "gamification_pass"),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",

		HeartRegenInterval: getEnvDuration("HEART_REGEN_INTERVAL", 30*time.Minute),
		MaxHearts:          getEnvInt("MAX_HEARTS", 5),
		DefaultDailyXP:     getEnvInt("DEFAULT_DAILY_XP", 20),
		StreakFreezeMax:    getEnvInt("STREAK_FREEZE_MAX", 2),

		CronHeartsEvery: getEnvDuration("CRON_HEARTS_EVERY", 5*time.Minute),
		CronStreakDaily: getEnv("CRON_STREAK_DAILY", "00:05"),

		UserServiceAddr: getEnv("USER_SERVICE_ADDR", ""),

		KafkaBrokers: kafkaBrokers(getEnv("KAFKA_BROKERS", "")),
		KafkaTopicXP: getEnv("KAFKA_TOPIC_XP_GAINED", "xp.gained"),

		NotificationsAddr:     getEnv("NOTIFICATIONS_ADDR", ""),
		ReminderStreakHour:    getEnvInt("REMINDER_STREAK_HOUR", 20),
		ReminderDailyGoalHour: getEnvInt("REMINDER_DAILY_GOAL_HOUR", 21),
	}
}

// kafkaBrokers — split "host1:9092,host2:9092".
func kafkaBrokers(s string) []string {
	if s == "" {
		return nil
	}
	parts := strings.Split(s, ",")
	out := make([]string, 0, len(parts))
	for _, p := range parts {
		if v := strings.TrimSpace(p); v != "" {
			out = append(out, v)
		}
	}
	return out
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

func getEnvInt(key string, def int) int {
	if v := os.Getenv(key); v != "" {
		if n, err := strconv.Atoi(v); err == nil {
			return n
		}
	}
	return def
}

func getEnvDuration(key string, def time.Duration) time.Duration {
	if v := os.Getenv(key); v != "" {
		if d, err := time.ParseDuration(v); err == nil {
			return d
		}
	}
	return def
}
