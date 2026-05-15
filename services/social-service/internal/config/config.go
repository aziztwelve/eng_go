package config

import (
	"fmt"
	"os"
	"strconv"
	"time"

	"github.com/joho/godotenv"

	"github.com/elearning/platform/pkg/kafka"
)

// Config — конфигурация social-service (Phase 4).
type Config struct {
	GRPCHost string
	GRPCPort string

	PostgresHost     string
	PostgresPort     string
	PostgresDB       string
	PostgresSchema   string
	PostgresUser     string
	PostgresPassword string

	RedisAddr     string
	RedisDB       int
	RedisPassword string

	KafkaBrokers      []string
	KafkaTopicXP      string
	KafkaConsumerGrp  string

	UserServiceAddr          string
	NotificationsServiceAddr string

	LoggerLevel  string
	LoggerAsJSON bool

	CronWeeklyRotation    string        // например "Sun 23:59" (UTC)
	CronRankSnapshotEvery time.Duration // например 10m
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
		GRPCPort: getEnv("GRPC_PORT", "50061"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "social"),
		PostgresUser:     getEnv("POSTGRES_USER", "social_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "social_pass"),

		RedisAddr:     getEnv("REDIS_ADDR", "localhost:6379"),
		RedisDB:       getEnvInt("REDIS_DB", 0),
		RedisPassword: getEnv("REDIS_PASSWORD", ""),

		KafkaBrokers:     kafka.SplitBrokers(getEnv("KAFKA_BROKERS", "")),
		KafkaTopicXP:     getEnv("KAFKA_TOPIC_XP_GAINED", "xp.gained"),
		KafkaConsumerGrp: getEnv("KAFKA_GROUP_ID", "social-xp-consumer"),

		UserServiceAddr:          getEnv("USER_SERVICE_ADDR", ""),
		NotificationsServiceAddr: getEnv("NOTIFICATIONS_SERVICE_ADDR", ""),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",

		CronWeeklyRotation:    getEnv("CRON_WEEKLY_ROTATION", "Sun 23:59"),
		CronRankSnapshotEvery: getEnvDuration("CRON_RANK_SNAPSHOT_EVERY", 10*time.Minute),
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
