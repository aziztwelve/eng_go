package env

import (
	"net"

	"github.com/caarlos0/env/v11"
)

type httpEnvConfig struct {
	Host string `env:"HTTP_HOST,required"`
	Port string `env:"HTTP_PORT,required"`
}

type HttpConfig struct {
	raw httpEnvConfig
}

func NewHTTPConfig() (*HttpConfig, error) {
	var raw httpEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &HttpConfig{raw: raw}, nil
}

func (cfg *HttpConfig) Address() string {
	return net.JoinHostPort(cfg.raw.Host, cfg.raw.Port)
}
