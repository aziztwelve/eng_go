package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/elearning/gateway/internal/dto"
)

// AdminVideoHandler обработчик для управления видео
type AdminVideoHandler struct{}

// NewAdminVideoHandler создает новый экземпляр Admin Video handler
func NewAdminVideoHandler() *AdminVideoHandler {
	return &AdminVideoHandler{}
}

// ListVideos возвращает список всех видео (mock)
func (h *AdminVideoHandler) ListVideos(c *gin.Context) {
	// TODO: Implement real database query
	// Mock data for now
	videos := []dto.VideoResponse{
		{
			ID:              "10000001-0000-0000-0000-000000000001",
			Title:           "Morning Greetings",
			Description:     "Learn how to greet people in the morning",
			StorageKey:      "videos/greetings.mp4",
			BucketName:      "videos",
			ContentType:     "video/mp4",
			SizeBytes:       1024000,
			DurationSeconds: 180,
			Status:          "active",
			CreatedAt:       "2026-01-01T00:00:00Z",
			UpdatedAt:       "2026-01-01T00:00:00Z",
		},
		{
			ID:              "10000002-0000-0000-0000-000000000002",
			Title:           "Introduction to Grammar",
			Description:     "Basic grammar rules",
			StorageKey:      "videos/grammar-intro.mp4",
			BucketName:      "videos",
			ContentType:     "video/mp4",
			SizeBytes:       2048000,
			DurationSeconds: 300,
			Status:          "active",
			CreatedAt:       "2026-01-15T00:00:00Z",
			UpdatedAt:       "2026-01-15T00:00:00Z",
		},
	}

	c.JSON(http.StatusOK, gin.H{
		"videos": videos,
		"total":  len(videos),
	})
}

// GetVideo возвращает видео по ID (mock)
func (h *AdminVideoHandler) GetVideo(c *gin.Context) {
	videoID := c.Param("id")

	// Mock data
	video := dto.VideoResponse{
		ID:              videoID,
		Title:           "Morning Greetings",
		Description:     "Learn how to greet people in the morning",
		StorageKey:      "videos/greetings.mp4",
		BucketName:      "videos",
		ContentType:     "video/mp4",
		SizeBytes:       1024000,
		DurationSeconds: 180,
		Status:          "active",
		CreatedAt:       "2026-01-01T00:00:00Z",
		UpdatedAt:       "2026-01-01T00:00:00Z",
	}

	c.JSON(http.StatusOK, video)
}

// UpdateVideo обновляет метаданные видео (mock)
func (h *AdminVideoHandler) UpdateVideo(c *gin.Context) {
	videoID := c.Param("id")

	var req dto.UpdateVideoRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// Mock response
	video := dto.VideoResponse{
		ID:              videoID,
		Title:           req.Title,
		Description:     req.Description,
		StorageKey:      "videos/greetings.mp4",
		BucketName:      "videos",
		ContentType:     "video/mp4",
		SizeBytes:       1024000,
		DurationSeconds: 180,
		Status:          "active",
		CreatedAt:       "2026-01-01T00:00:00Z",
		UpdatedAt:       "2026-04-18T15:52:00Z",
	}

	c.JSON(http.StatusOK, video)
}

// DeleteVideo удаляет видео (mock)
func (h *AdminVideoHandler) DeleteVideo(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "Video deleted successfully",
	})
}

// UploadVideo загружает новое видео (mock)
func (h *AdminVideoHandler) UploadVideo(c *gin.Context) {
	// TODO: Implement real file upload with multipart/form-data
	// For now, just accept JSON metadata
	
	var req dto.UploadVideoRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// Mock response
	video := dto.VideoResponse{
		ID:              "new-video-id",
		Title:           req.Title,
		Description:     req.Description,
		StorageKey:      "videos/new-video.mp4",
		BucketName:      "videos",
		ContentType:     "video/mp4",
		SizeBytes:       0,
		DurationSeconds: 0,
		Status:          "processing",
		CreatedAt:       "2026-04-18T15:52:00Z",
		UpdatedAt:       "2026-04-18T15:52:00Z",
	}

	c.JSON(http.StatusCreated, video)
}

// GetVideoUsage возвращает информацию где используется видео (mock)
func (h *AdminVideoHandler) GetVideoUsage(c *gin.Context) {
	videoID := c.Param("id")

	// Mock data - courses/lessons where this video is used
	usage := gin.H{
		"video_id": videoID,
		"courses": []gin.H{
			{
				"course_id":   "20000001-0000-0000-0000-000000000001",
				"course_name": "English for Beginners",
				"lesson_id":   "lesson-1",
				"lesson_name": "Introduction",
			},
		},
		"total_uses": 1,
	}

	c.JSON(http.StatusOK, usage)
}
