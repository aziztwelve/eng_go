package service

import (
	"context"
	"fmt"
)

// VideoClient интерфейс для интеграции с Video Service
type VideoClient interface {
	GetVideoURL(ctx context.Context, videoID string, userID string) (string, error)
}

// MockVideoClient временная заглушка до реализации Video Service
type MockVideoClient struct{}

// NewMockVideoClient создает новый mock клиент
func NewMockVideoClient() *MockVideoClient {
	return &MockVideoClient{}
}

// GetVideoURL возвращает mock URL для видео
func (m *MockVideoClient) GetVideoURL(ctx context.Context, videoID string, userID string) (string, error) {
	return fmt.Sprintf("https://mock-video-cdn.example.com/videos/%s?user=%s", videoID, userID), nil
}
