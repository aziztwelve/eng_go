package model

import "time"

// Video представляет видео файл
type Video struct {
	ID              string
	Title           string
	Description     string
	StorageKey      string
	BucketName      string
	ContentType     string
	SizeBytes       int64
	DurationSeconds *int32
	Resolution      *string
	ThumbnailURL    *string
	Status          VideoStatus
	UploadedBy      *string
	CreatedAt       time.Time
	UpdatedAt       time.Time
	DeletedAt       *time.Time
}

// VideoStatus статус видео
type VideoStatus string

const (
	VideoStatusActive     VideoStatus = "active"
	VideoStatusProcessing VideoStatus = "processing"
	VideoStatusDeleted    VideoStatus = "deleted"
)

// VideoMetadata метаданные для загрузки
type VideoMetadata struct {
	Title           string
	Description     string
	ContentType     string
	SizeBytes       int64
	DurationSeconds *int32
	Resolution      *string
	UploadedBy      *string
}
