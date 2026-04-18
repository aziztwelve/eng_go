package config

import (
	"os"

	"github.com/joho/godotenv"

	"github.com/elearning/video-service/internal/config/env"
)

var appConfig *Config

// Config содержит всю конфигурацию приложения
type Config struct {
	Logger   *env.LoggerConfig
	GRPC     *env.GRPCConfig
	Postgres *env.PostgresConfig
	Minio    *env.MinioConfig
	Video    *env.VideoConfig
}

// Load загружает конфигурацию из файла .env
func Load(path ...string) error {
	err := godotenv.Load(path...)
	if err != nil && !os.IsNotExist(err) {
		return err
	}

	loggerCfg, err := env.NewLoggerConfig()
	if err != nil {
		return err
	}

	grpcCfg, err := env.NewGRPCConfig()
	if err != nil {
		return err
	}

	postgresCfg, err := env.NewPostgresConfig()
	if err != nil {
		return err
	}

	minioCfg, err := env.NewMinioConfig()
	if err != nil {
		return err
	}

	videoCfg, err := env.NewVideoConfig()
	if err != nil {
		return err
	}

	appConfig = &Config{
		Logger:   loggerCfg,
		GRPC:     grpcCfg,
		Postgres: postgresCfg,
		Minio:    minioCfg,
		Video:    videoCfg,
	}

	return nil
}

// AppConfig возвращает глобальную конфигурацию
func AppConfig() *Config {
	return appConfig
}
