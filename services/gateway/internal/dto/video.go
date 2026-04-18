package dto

// VideoResponse DTO для ответа с информацией о видео
type VideoResponse struct {
	ID              string `json:"id"`
	Title           string `json:"title"`
	Description     string `json:"description"`
	StorageKey      string `json:"storage_key"`
	BucketName      string `json:"bucket_name"`
	ContentType     string `json:"content_type"`
	SizeBytes       int64  `json:"size_bytes"`
	DurationSeconds int32  `json:"duration_seconds"`
	Status          string `json:"status"`
	CreatedAt       string `json:"created_at"`
	UpdatedAt       string `json:"updated_at"`
}

// UploadVideoRequest DTO для загрузки видео
type UploadVideoRequest struct {
	Title       string `json:"title" binding:"required"`
	Description string `json:"description"`
}

// UpdateVideoRequest DTO для обновления метаданных видео
type UpdateVideoRequest struct {
	Title       string `json:"title"`
	Description string `json:"description"`
}

// VideoURLResponse DTO для ответа с URL видео
type VideoURLResponse struct {
	SignedURL         string `json:"signed_url"`
	ExpiresInSeconds int32  `json:"expires_in_seconds"`
}

// VideoMetadataResponse DTO для метаданных видео
type VideoMetadataResponse struct {
	VideoID         string `json:"video_id"`
	ID              string `json:"id"`
	Title           string `json:"title"`
	Description     string `json:"description"`
	Duration        int32  `json:"duration"`
	DurationSeconds int32  `json:"duration_seconds"`
	Status          string `json:"status"`
	CreatedAt       string `json:"created_at"`
}
