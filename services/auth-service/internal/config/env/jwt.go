package env

import (
	"github.com/caarlos0/env/v11"
)

type jwtEnvConfig struct {
	Secret     string `env:"JWT_SECRET,required"`
	AccessTTL  string `env:"JWT_ACCESS_TTL,required"`
	RefreshTTL string `env:"JWT_REFRESH_TTL,required"`
}

type jwtConfig struct {
	raw jwtEnvConfig
}

func NewJWTConfig() (*jwtConfig, error) {
	var raw jwtEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &jwtConfig{raw: raw}, nil
}

func (cfg *jwtConfig) Secret() string {
	return cfg.raw.Secret
}

func (cfg *jwtConfig) AccessTTL() string {
	return cfg.raw.AccessTTL
}

func (cfg *jwtConfig) RefreshTTL() string {
	return cfg.raw.RefreshTTL
}
