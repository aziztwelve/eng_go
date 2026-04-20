package minio

import (
	"context"
	"fmt"
	"io"
	"time"

	"github.com/minio/minio-go/v7"
	"github.com/minio/minio-go/v7/pkg/credentials"
	"github.com/pkg/errors"

	"github.com/elearning/video-service/internal/storage"
)

type minioStorage struct {
	client         *minio.Client
	publicClient   *minio.Client // Для генерации публичных URL
	bucket         string
	endpoint       string
	publicEndpoint string
	useSSL         bool
}

// Config конфигурация MinIO
type Config struct {
	Endpoint       string
	PublicEndpoint string // Внешний endpoint для публичных URL
	AccessKey      string
	SecretKey      string
	UseSSL         bool
	Region         string
	Bucket         string
}

// NewMinioStorage создает новый MinIO storage
func NewMinioStorage(cfg Config) (storage.Storage, error) {
	// Client для внутренних операций (загрузка, удаление)
	client, err := minio.New(cfg.Endpoint, &minio.Options{
		Creds:  credentials.NewStaticV4(cfg.AccessKey, cfg.SecretKey, ""),
		Secure: cfg.UseSSL,
		Region: cfg.Region,
	})
	if err != nil {
		return nil, errors.Wrap(err, "failed to create minio client")
	}

	// Client для генерации публичных URL
	publicEndpoint := cfg.PublicEndpoint
	if publicEndpoint == "" {
		publicEndpoint = cfg.Endpoint
	}

	publicClient, err := minio.New(publicEndpoint, &minio.Options{
		Creds:  credentials.NewStaticV4(cfg.AccessKey, cfg.SecretKey, ""),
		Secure: cfg.UseSSL,
		Region: cfg.Region,
	})
	if err != nil {
		return nil, errors.Wrap(err, "failed to create public minio client")
	}

	return &minioStorage{
		client:         client,
		publicClient:   publicClient,
		bucket:         cfg.Bucket,
		endpoint:       cfg.Endpoint,
		publicEndpoint: publicEndpoint,
		useSSL:         cfg.UseSSL,
	}, nil
}

func (s *minioStorage) GeneratePresignedURL(ctx context.Context, objectKey string, expiresIn time.Duration) (string, error) {
	// Используем publicClient для генерации URL с правильным хостом в подписи
	url, err := s.publicClient.PresignedGetObject(ctx, s.bucket, objectKey, expiresIn, nil)
	if err != nil {
		return "", errors.Wrap(err, "failed to generate presigned URL")
	}
	
	return url.String(), nil
}

func (s *minioStorage) GetPublicURL(objectKey string) string {
	// Возвращаем публичный URL без подписи
	scheme := "http"
	if s.useSSL {
		scheme = "https"
	}
	return fmt.Sprintf("%s://%s/%s/%s", scheme, s.publicEndpoint, s.bucket, objectKey)
}

func (s *minioStorage) UploadVideo(ctx context.Context, objectKey string, reader io.Reader, size int64, contentType string) error {
	_, err := s.client.PutObject(ctx, s.bucket, objectKey, reader, size, minio.PutObjectOptions{
		ContentType: contentType,
	})
	if err != nil {
		return errors.Wrap(err, "failed to upload video")
	}
	return nil
}

func (s *minioStorage) DeleteVideo(ctx context.Context, objectKey string) error {
	err := s.client.RemoveObject(ctx, s.bucket, objectKey, minio.RemoveObjectOptions{})
	if err != nil {
		return errors.Wrap(err, "failed to delete video")
	}
	return nil
}

func (s *minioStorage) VideoExists(ctx context.Context, objectKey string) (bool, error) {
	_, err := s.client.StatObject(ctx, s.bucket, objectKey, minio.StatObjectOptions{})
	if err != nil {
		errResponse := minio.ToErrorResponse(err)
		if errResponse.Code == "NoSuchKey" {
			return false, nil
		}
		return false, errors.Wrap(err, "failed to check video existence")
	}
	return true, nil
}
