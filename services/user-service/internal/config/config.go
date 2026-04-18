package config

import (
	"os"

	"github.com/joho/godotenv"

	"github.com/elearning/user-service/internal/config/env"
)

var appConfig *Config

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

	userGRPCCfg, err := env.NewUserGRPCConfig()
	if err != nil {
		return err
	}

	postgresCfg, err := env.NewPostgresConfig()
	if err != nil {
		return err
	}

	appConfig = &Config{
		Logger:   loggerCfg,
		UserGRPC: userGRPCCfg,
		Postgres: postgresCfg,
	}

	return nil
}

// AppConfig возвращает глобальную конфигурацию
func AppConfig() *Config {
	return appConfig
}
