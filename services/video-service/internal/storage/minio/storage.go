package minio

import (
	"context"
	"io"
	"time"

	"github.com/minio/minio-go/v7"
	"github.com/minio/minio-go/v7/pkg/credentials"
	"github.com/pkg/errors"

	"github.com/elearning/video-service/internal/storage"
)

type minioStorage struct {
	client *minio.Client
	bucket string
}

// Config конфигурация MinIO
type Config struct {
	Endpoint  string
	AccessKey string
	SecretKey string
	UseSSL    bool
	Region    string
	Bucket    string
}

// NewMinioStorage создает новый MinIO storage
func NewMinioStorage(cfg Config) (storage.Storage, error) {
	client, err := minio.New(cfg.Endpoint, &minio.Options{
		Creds:  credentials.NewStaticV4(cfg.AccessKey, cfg.SecretKey, ""),
		Secure: cfg.UseSSL,
		Region: cfg.Region,
	})
	if err != nil {
		return nil, errors.Wrap(err, "failed to create minio client")
	}

	return &minioStorage{
		client: client,
		bucket: cfg.Bucket,
	}, nil
}

func (s *minioStorage) GeneratePresignedURL(ctx context.Context, objectKey string, expiresIn time.Duration) (string, error) {
	url, err := s.client.PresignedGetObject(ctx, s.bucket, objectKey, expiresIn, nil)
	if err != nil {
		return "", errors.Wrap(err, "failed to generate presigned URL")
	}
	return url.String(), nil
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
