package storage

import (
	"context"
	"io"
	"time"
)

// Storage интерфейс для работы с хранилищем видео
type Storage interface {
	// GeneratePresignedURL генерирует временный URL для доступа к видео
	GeneratePresignedURL(ctx context.Context, objectKey string, expiresIn time.Duration) (string, error)

	// GetPublicURL возвращает публичный URL для видео (без подписи)
	GetPublicURL(objectKey string) string

	// UploadVideo загружает видео в хранилище
	UploadVideo(ctx context.Context, objectKey string, reader io.Reader, size int64, contentType string) error

	// DeleteVideo удаляет видео из хранилища
	DeleteVideo(ctx context.Context, objectKey string) error

	// VideoExists проверяет существование видео
	VideoExists(ctx context.Context, objectKey string) (bool, error)
}
