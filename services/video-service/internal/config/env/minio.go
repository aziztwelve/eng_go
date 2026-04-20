package env

import (
	"github.com/caarlos0/env/v11"
)

type minioEnvConfig struct {
	Endpoint       string `env:"MINIO_ENDPOINT,required"`
	PublicEndpoint string `env:"MINIO_PUBLIC_ENDPOINT"` // Для генерации публичных URL
	AccessKey      string `env:"MINIO_ACCESS_KEY,required"`
	SecretKey      string `env:"MINIO_SECRET_KEY,required"`
	UseSSL         bool   `env:"MINIO_USE_SSL" envDefault:"false"`
	Region         string `env:"MINIO_REGION"`
	Bucket         string `env:"MINIO_BUCKET,required"`
}

type MinioConfig struct {
	raw minioEnvConfig
}

func NewMinioConfig() (*MinioConfig, error) {
	var raw minioEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &MinioConfig{raw: raw}, nil
}

func (cfg *MinioConfig) Endpoint() string {
	return cfg.raw.Endpoint
}

func (cfg *MinioConfig) PublicEndpoint() string {
	if cfg.raw.PublicEndpoint != "" {
		return cfg.raw.PublicEndpoint
	}
	return cfg.raw.Endpoint // Fallback к Endpoint если PublicEndpoint не указан
}

func (cfg *MinioConfig) AccessKey() string {
	return cfg.raw.AccessKey
}

func (cfg *MinioConfig) SecretKey() string {
	return cfg.raw.SecretKey
}

func (cfg *MinioConfig) UseSSL() bool {
	return cfg.raw.UseSSL
}

func (cfg *MinioConfig) Region() string {
	return cfg.raw.Region
}

func (cfg *MinioConfig) Bucket() string {
	return cfg.raw.Bucket
}
