package config

import (
	"fmt"
	"os"
	"strconv"
)

type Config struct {
	GRPC     GRPCConfig
	Postgres PostgresConfig
	Logger   LoggerConfig
}

type GRPCConfig struct {
	Port int
}

type PostgresConfig struct {
	Host     string
	Port     int
	User     string
	Password string
	Database string
	SSLMode  string
}

type LoggerConfig struct {
	Level string
}

func Load() (*Config, error) {
	grpcPort, err := strconv.Atoi(getEnv("GRPC_PORT", "50055"))
	if err != nil {
		return nil, fmt.Errorf("invalid GRPC_PORT: %w", err)
	}

	pgPort, err := strconv.Atoi(getEnv("POSTGRES_PORT", "5432"))
	if err != nil {
		return nil, fmt.Errorf("invalid POSTGRES_PORT: %w", err)
	}

	return &Config{
		GRPC: GRPCConfig{
			Port: grpcPort,
		},
		Postgres: PostgresConfig{
			Host:     getEnv("POSTGRES_HOST", "localhost"),
			Port:     pgPort,
			User:     getEnv("POSTGRES_USER", "admin"),
			Password: getEnv("POSTGRES_PASSWORD", "change_me_in_production"),
			Database: getEnv("POSTGRES_DB", "elearning"),
			SSLMode:  getEnv("POSTGRES_SSLMODE", "disable"),
		},
		Logger: LoggerConfig{
			Level: getEnv("LOG_LEVEL", "info"),
		},
	}, nil
}

func getEnv(key, defaultValue string) string {
	if value := os.Getenv(key); value != "" {
		return value
	}
	return defaultValue
}
