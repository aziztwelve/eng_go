package env

import (
	"github.com/caarlos0/env/v11"
)

type servicesEnvConfig struct {
	AuthServiceAddr   string `env:"AUTH_SERVICE_ADDR,required"`
	UserServiceAddr   string `env:"USER_SERVICE_ADDR,required"`
	CourseServiceAddr string `env:"COURSE_SERVICE_ADDR,required"`
}

type servicesConfig struct {
	raw servicesEnvConfig
}

func NewServicesConfig() (*servicesConfig, error) {
	var raw servicesEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &servicesConfig{raw: raw}, nil
}

func (cfg *servicesConfig) AuthServiceAddr() string {
	return cfg.raw.AuthServiceAddr
}

func (cfg *servicesConfig) UserServiceAddr() string {
	return cfg.raw.UserServiceAddr
}

func (cfg *servicesConfig) CourseServiceAddr() string {
	return cfg.raw.CourseServiceAddr
}
