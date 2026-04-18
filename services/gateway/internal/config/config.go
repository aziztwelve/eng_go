package config

import (
	"os"

	"github.com/joho/godotenv"

	"github.com/elearning/gateway/internal/config/env"
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

	httpCfg, err := env.NewHTTPConfig()
	if err != nil {
		return err
	}

	servicesCfg, err := env.NewServicesConfig()
	if err != nil {
		return err
	}

	appConfig = &Config{
		Logger:   loggerCfg,
		HTTP:     httpCfg,
		Services: servicesCfg,
	}

	return nil
}

// AppConfig возвращает глобальную конфигурацию
func AppConfig() *Config {
	return appConfig
}
