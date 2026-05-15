package env

import (
	"github.com/caarlos0/env/v11"
)

type servicesEnvConfig struct {
	AuthServiceAddr           string `env:"AUTH_SERVICE_ADDR,required"`
	UserServiceAddr           string `env:"USER_SERVICE_ADDR,required"`
	CourseServiceAddr         string `env:"COURSE_SERVICE_ADDR,required"`
	VideoServiceAddr          string `env:"VIDEO_SERVICE_ADDR,required"`
	QuizServiceAddr           string `env:"QUIZ_SERVICE_ADDR,required"`
	GamificationServiceAddr   string `env:"GAMIFICATION_SERVICE_ADDR" envDefault:""`
	StepValidationServiceAddr string `env:"STEP_VALIDATION_SERVICE_ADDR" envDefault:""`
	SRSServiceAddr            string `env:"SRS_SERVICE_ADDR" envDefault:""`
	SocialServiceAddr         string `env:"SOCIAL_SERVICE_ADDR" envDefault:""`
	NotificationsServiceAddr  string `env:"NOTIFICATIONS_SERVICE_ADDR" envDefault:""`
	AIServiceAddr             string `env:"AI_SERVICE_ADDR" envDefault:""`
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

func (cfg *ServicesConfig) QuizServiceAddr() string {
	return cfg.raw.QuizServiceAddr
}

func (cfg *ServicesConfig) GamificationServiceAddr() string {
	return cfg.raw.GamificationServiceAddr
}

func (cfg *ServicesConfig) StepValidationServiceAddr() string {
	return cfg.raw.StepValidationServiceAddr
}

func (cfg *ServicesConfig) SRSServiceAddr() string {
	return cfg.raw.SRSServiceAddr
}

func (cfg *ServicesConfig) SocialServiceAddr() string {
	return cfg.raw.SocialServiceAddr
}

func (cfg *ServicesConfig) NotificationsServiceAddr() string {
	return cfg.raw.NotificationsServiceAddr
}

func (cfg *ServicesConfig) AIServiceAddr() string {
	return cfg.raw.AIServiceAddr
}
