package config

import (
	"fmt"
	"os"

	"github.com/joho/godotenv"
)

// Config содержит конфигурацию step-validation-service.
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

	// Адреса зависимостей. Пустые → noop-фолбэк.
	GamificationServiceAddr string
	CourseServiceAddr       string
	SRSServiceAddr          string
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
		GRPCPort: getEnv("GRPC_PORT", "50059"),

		PostgresHost:     getEnv("POSTGRES_HOST", "localhost"),
		PostgresPort:     getEnv("POSTGRES_PORT", "5432"),
		PostgresDB:       getEnv("POSTGRES_DB", "elearning"),
		PostgresSchema:   getEnv("POSTGRES_SCHEMA", "step_validation"),
		PostgresUser:     getEnv("POSTGRES_USER", "step_validation_user"),
		PostgresPassword: getEnv("POSTGRES_PASSWORD", "step_validation_pass"),

		LoggerLevel:  getEnv("LOGGER_LEVEL", "info"),
		LoggerAsJSON: getEnv("LOGGER_AS_JSON", "false") == "true",

		GamificationServiceAddr: getEnv("GAMIFICATION_SERVICE_ADDR", ""),
		CourseServiceAddr:       getEnv("COURSE_SERVICE_ADDR", ""),
		SRSServiceAddr:          getEnv("SRS_SERVICE_ADDR", ""),
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
