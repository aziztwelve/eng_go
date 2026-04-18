package config

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

// Config содержит конфигурацию сервиса
type Config struct {
	GRPCHost string
	GRPCPort string

	PostgresHost     string
	PostgresPort     string
	PostgresDB       string
	PostgresSchema   string
	PostgresUser     string
	PostgresPassword string

	KafkaBrokers       []string
	KafkaConsumerGroup string

	LoggerLevel  string
	LoggerAsJSON bool
}

// Load загружает конфигурацию из переменных окружения
func Load(path string) error {
	if path != "" {
		if err := godotenv.Load(path); err != nil {
			return fmt.Errorf("failed to load .env file: %w", err)
		}
	}

	return nil
}

// Get возвращает конфигурацию из переменных окружения
func Get() *Config {
	return &Config{
		GRPCHost: getEnv("GRPC_HOST", "0.0.0.0"),
		GRPCPort: getEnv("GRPC_PORT", "50053"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "courses"),
		PostgresUser:     getEnv("POSTGRES_USER", "course_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "course_pass"),

		KafkaBrokers:       []string{getEnv("KAFKA_BROKERS", "localhost:9092")},
		KafkaConsumerGroup: getEnv("KAFKA_CONSUMER_GROUP", "course-service"),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",
	}
}

// PostgresDSN возвращает строку подключения к PostgreSQL
func (c *Config) PostgresDSN() string {
	return fmt.Sprintf(
		"postgres://%s:%s@%s:%s/%s?search_path=%s&sslmode=disable",
		c.PostgresUser,
		c.PostgresPassword,
		c.PostgresHost,
		c.PostgresPort,
		c.PostgresDB,
		c.PostgresSchema,
	)
}

// GRPCAddress возвращает адрес gRPC сервера
func (c *Config) GRPCAddress() string {
	return fmt.Sprintf("%s:%s", c.GRPCHost, c.GRPCPort)
}

func getEnv(key, defaultValue string) string {
	if value := os.Getenv(key); value != "" {
		return value
	}
	return defaultValue
}
