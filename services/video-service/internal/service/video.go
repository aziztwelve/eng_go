package service

import (
	"context"
	"fmt"
	"io"
	"time"

	"github.com/google/uuid"
	"github.com/pkg/errors"

	"github.com/elearning/video-service/internal/model"
	"github.com/elearning/video-service/internal/repository"
	"github.com/elearning/video-service/internal/storage"
)

// VideoService бизнес-логика для работы с видео
type VideoService struct {
	repo         repository.VideoRepository
	storage      storage.Storage
	urlExpiresIn time.Duration
}

// NewVideoService создает новый сервис
func NewVideoService(
	repo repository.VideoRepository,
	storage storage.Storage,
	urlExpiresInSeconds int,
) *VideoService {
	return &VideoService{
		repo:         repo,
		storage:      storage,
		urlExpiresIn: time.Duration(urlExpiresInSeconds) * time.Second,
	}
}

// GetVideoURL получает signed URL для видео
func (s *VideoService) GetVideoURL(ctx context.Context, videoID, userID string) (string, int, error) {
	// 1. Получить метаданные из БД
	video, err := s.repo.GetByID(ctx, videoID)
	if err != nil {
		return "", 0, errors.Wrap(err, "failed to get video")
	}

	// 2. Проверить статус
	if video.Status != model.VideoStatusActive {
		return "", 0, errors.New("video is not available")
	}

	// 3. Генерировать signed URL
	signedURL, err := s.storage.GeneratePresignedURL(ctx, video.StorageKey, s.urlExpiresIn)
	if err != nil {
		return "", 0, errors.Wrap(err, "failed to generate signed URL")
	}

	return signedURL, int(s.urlExpiresIn.Seconds()), nil
}

// UploadVideo загружает видео
func (s *VideoService) UploadVideo(ctx context.Context, metadata *model.VideoMetadata, data io.Reader) (string, error) {
	// 1. Генерировать ID и storage key
	videoID := uuid.New().String()
	storageKey := fmt.Sprintf("videos/%s.mp4", videoID)

	// 2. Загрузить в MinIO
	err := s.storage.UploadVideo(ctx, storageKey, data, metadata.SizeBytes, metadata.ContentType)
	if err != nil {
		return "", errors.Wrap(err, "failed to upload to storage")
	}

	// 3. Сохранить метаданные в БД
	video := &model.Video{
		ID:              videoID,
		Title:           metadata.Title,
		Description:     metadata.Description,
		StorageKey:      storageKey,
		BucketName:      "videos",
		ContentType:     metadata.ContentType,
		SizeBytes:       metadata.SizeBytes,
		DurationSeconds: metadata.DurationSeconds,
		Resolution:      metadata.Resolution,
		Status:          model.VideoStatusActive,
		UploadedBy:      metadata.UploadedBy,
	}

	err = s.repo.Create(ctx, video)
	if err != nil {
		// Попытаться удалить из storage если не удалось сохранить в БД
		_ = s.storage.DeleteVideo(ctx, storageKey)
		return "", errors.Wrap(err, "failed to save video metadata")
	}

	return videoID, nil
}

// GetVideoMetadata получает метаданные видео
func (s *VideoService) GetVideoMetadata(ctx context.Context, videoID string) (*model.Video, error) {
	video, err := s.repo.GetByID(ctx, videoID)
	if err != nil {
		return nil, errors.Wrap(err, "failed to get video metadata")
	}
	return video, nil
}

// ListVideos получает список видео
func (s *VideoService) ListVideos(ctx context.Context, page, pageSize int, status, search string) ([]*model.Video, int, error) {
	if page < 1 {
		page = 1
	}
	if pageSize < 1 || pageSize > 100 {
		pageSize = 20
	}

	videos, total, err := s.repo.List(ctx, page, pageSize, status, search)
	if err != nil {
		return nil, 0, errors.Wrap(err, "failed to list videos")
	}

	return videos, total, nil
}

// DeleteVideo удаляет видео
func (s *VideoService) DeleteVideo(ctx context.Context, videoID string) error {
	// 1. Получить видео
	video, err := s.repo.GetByID(ctx, videoID)
	if err != nil {
		return errors.Wrap(err, "failed to get video")
	}

	// 2. Удалить из storage
	err = s.storage.DeleteVideo(ctx, video.StorageKey)
	if err != nil {
		return errors.Wrap(err, "failed to delete from storage")
	}

	// 3. Soft delete в БД
	err = s.repo.Delete(ctx, videoID)
	if err != nil {
		return errors.Wrap(err, "failed to delete video metadata")
	}

	return nil
}
