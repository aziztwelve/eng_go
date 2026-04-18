package env

import (
	"github.com/caarlos0/env/v11"
)

type servicesEnvConfig struct {
	AuthServiceAddr   string `env:"AUTH_SERVICE_ADDR,required"`
	UserServiceAddr   string `env:"USER_SERVICE_ADDR,required"`
	CourseServiceAddr string `env:"COURSE_SERVICE_ADDR,required"`
	VideoServiceAddr  string `env:"VIDEO_SERVICE_ADDR,required"`
}

type ServicesConfig struct {
	raw servicesEnvConfig
}

func NewServicesConfig() (*ServicesConfig, error) {
	var raw servicesEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &ServicesConfig{raw: raw}, nil
}

func (cfg *ServicesConfig) AuthServiceAddr() string {
	return cfg.raw.AuthServiceAddr
}

func (cfg *ServicesConfig) UserServiceAddr() string {
	return cfg.raw.UserServiceAddr
}

func (cfg *ServicesConfig) CourseServiceAddr() string {
	return cfg.raw.CourseServiceAddr
}

func (cfg *ServicesConfig) VideoServiceAddr() string {
	return cfg.raw.VideoServiceAddr
}
