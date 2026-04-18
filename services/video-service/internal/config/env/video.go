package env

import (
	"github.com/caarlos0/env/v11"
)

type videoEnvConfig struct {
	SignedURLExpiresSeconds int `env:"SIGNED_URL_EXPIRES_SECONDS" envDefault:"7200"`
}

type VideoConfig struct {
	raw videoEnvConfig
}

func NewVideoConfig() (*VideoConfig, error) {
	var raw videoEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &VideoConfig{raw: raw}, nil
}

func (cfg *VideoConfig) SignedURLExpiresSeconds() int {
	return cfg.raw.SignedURLExpiresSeconds
}
