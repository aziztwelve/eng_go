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

type PostgresConfig struct {
	raw postgresEnvConfig
}

func NewPostgresConfig() (*PostgresConfig, error) {
	var raw postgresEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &PostgresConfig{raw: raw}, nil
}

func (cfg *PostgresConfig) Host() string {
	return cfg.raw.Host
}

func (cfg *PostgresConfig) Port() string {
	return cfg.raw.Port
}

func (cfg *PostgresConfig) Database() string {
	return cfg.raw.Database
}

func (cfg *PostgresConfig) Schema() string {
	return cfg.raw.Schema
}

func (cfg *PostgresConfig) User() string {
	return cfg.raw.User
}

func (cfg *PostgresConfig) Password() string {
	return cfg.raw.Password
}
