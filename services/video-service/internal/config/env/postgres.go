package env

import (
	"github.com/caarlos0/env/v11"
)

type postgresEnvConfig struct {
	Host     string `env:"POSTGRES_HOST,required"`
	Port     string `env:"POSTGRES_PORT,required"`
	Database string `env:"POSTGRES_DB,required"`
	Schema   string `env:"POSTGRES_SCHEMA,required"`
	User     string `env:"POSTGRES_USER,required"`
	Password string `env:"POSTGRES_PASSWORD,required"`
}

type postgresConfig struct {
	raw postgresEnvConfig
}

func NewPostgresConfig() (*postgresConfig, error) {
	var raw postgresEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &postgresConfig{raw: raw}, nil
}

func (cfg *postgresConfig) Host() string {
	return cfg.raw.Host
}

func (cfg *postgresConfig) Port() string {
	return cfg.raw.Port
}

func (cfg *postgresConfig) Database() string {
	return cfg.raw.Database
}

func (cfg *postgresConfig) Schema() string {
	return cfg.raw.Schema
}

func (cfg *postgresConfig) User() string {
	return cfg.raw.User
}

func (cfg *postgresConfig) Password() string {
	return cfg.raw.Password
}
