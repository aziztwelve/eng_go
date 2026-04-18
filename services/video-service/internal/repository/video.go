package repository

import (
	"context"

	"github.com/elearning/video-service/internal/model"
)

// VideoRepository интерфейс для работы с видео в БД
type VideoRepository interface {
	// Create создает новое видео
	Create(ctx context.Context, video *model.Video) error

	// GetByID получает видео по ID
	GetByID(ctx context.Context, id string) (*model.Video, error)

	// List получает список видео с пагинацией
	List(ctx context.Context, page, pageSize int, status string) ([]*model.Video, int, error)

	// Update обновляет видео
	Update(ctx context.Context, video *model.Video) error

	// Delete удаляет видео (soft delete)
	Delete(ctx context.Context, id string) error
}
