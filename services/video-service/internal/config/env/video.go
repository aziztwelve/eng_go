package env

import (
	"github.com/caarlos0/env/v11"
)

type videoEnvConfig struct {
	SignedURLExpiresSeconds int `env:"SIGNED_URL_EXPIRES_SECONDS" envDefault:"7200"`
}

type videoConfig struct {
	raw videoEnvConfig
}

func NewVideoConfig() (*videoConfig, error) {
	var raw videoEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &videoConfig{raw: raw}, nil
}

func (cfg *videoConfig) SignedURLExpiresSeconds() int {
	return cfg.raw.SignedURLExpiresSeconds
}
