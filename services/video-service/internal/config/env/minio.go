package env

import (
	"github.com/caarlos0/env/v11"
)

type minioEnvConfig struct {
	Endpoint  string `env:"MINIO_ENDPOINT,required"`
	AccessKey string `env:"MINIO_ACCESS_KEY,required"`
	SecretKey string `env:"MINIO_SECRET_KEY,required"`
	UseSSL    bool   `env:"MINIO_USE_SSL" envDefault:"false"`
	Region    string `env:"MINIO_REGION"`
	Bucket    string `env:"MINIO_BUCKET,required"`
}

type minioConfig struct {
	raw minioEnvConfig
}

func NewMinioConfig() (*minioConfig, error) {
	var raw minioEnvConfig
	if err := env.Parse(&raw); err != nil {
		return nil, err
	}

	return &minioConfig{raw: raw}, nil
}

func (cfg *minioConfig) Endpoint() string {
	return cfg.raw.Endpoint
}

func (cfg *minioConfig) AccessKey() string {
	return cfg.raw.AccessKey
}

func (cfg *minioConfig) SecretKey() string {
	return cfg.raw.SecretKey
}

func (cfg *minioConfig) UseSSL() bool {
	return cfg.raw.UseSSL
}

func (cfg *minioConfig) Region() string {
	return cfg.raw.Region
}

func (cfg *minioConfig) Bucket() string {
	return cfg.raw.Bucket
}
