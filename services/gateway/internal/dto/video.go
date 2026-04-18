package dto

// VideoURLResponse содержит signed URL для видео
type VideoURLResponse struct {
	SignedURL        string `json:"signed_url"`
	ExpiresInSeconds int32  `json:"expires_in_seconds"`
}

// VideoMetadataResponse содержит метаданные видео
type VideoMetadataResponse struct {
	VideoID     string `json:"video_id"`
	Title       string `json:"title"`
	Description string `json:"description"`
	Duration    int32  `json:"duration_seconds"`
	Status      string `json:"status"`
	CreatedAt   string `json:"created_at"`
}
