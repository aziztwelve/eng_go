package handler

import (
	"io"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

// AdminVideoHandler обработчик для управления видео
type AdminVideoHandler struct{
	videoClient client.VideoClient
}

// NewAdminVideoHandler создает новый экземпляр Admin Video handler
func NewAdminVideoHandler(videoClient client.VideoClient) *AdminVideoHandler {
	return &AdminVideoHandler{
		videoClient: videoClient,
	}
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

// UploadVideo загружает новое видео
func (h *AdminVideoHandler) UploadVideo(c *gin.Context) {
	// Parse multipart form
	if err := c.Request.ParseMultipartForm(100 << 20); err != nil { // 100 MB max
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Failed to parse form data",
		})
		return
	}

	// Get file from form
	file, header, err := c.Request.FormFile("file")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "No file provided",
		})
		return
	}
	defer file.Close()

	// Get metadata from form
	title := c.Request.FormValue("title")
	description := c.Request.FormValue("description")

	if title == "" {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Title is required",
		})
		return
	}

	// Read file content
	fileData, err := io.ReadAll(file)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to read file",
		})
		return
	}

	// Create gRPC stream
	stream, err := h.videoClient.UploadVideo(c.Request.Context())
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to create upload stream",
		})
		return
	}

	// Send metadata first
	metadata := &videov1.VideoMetadata{
		Title:           title,
		Description:     description,
		ContentType:     header.Header.Get("Content-Type"),
		SizeBytes:       header.Size,
		DurationSeconds: 0,
	}

	if err := stream.Send(&videov1.UploadVideoRequest{
		Data: &videov1.UploadVideoRequest_Metadata{
			Metadata: metadata,
		},
	}); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to send metadata",
		})
		return
	}

	// Send file data in chunks
	chunkSize := 64 * 1024 // 64KB chunks
	for i := 0; i < len(fileData); i += chunkSize {
		end := i + chunkSize
		if end > len(fileData) {
			end = len(fileData)
		}

		if err := stream.Send(&videov1.UploadVideoRequest{
			Data: &videov1.UploadVideoRequest_Chunk{
				Chunk: fileData[i:end],
			},
		}); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{
				"error": "Failed to send chunk",
			})
			return
		}
	}

	// Close stream and get response
	resp, err := stream.CloseAndRecv()
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Failed to complete upload",
		})
		return
	}

	// Return response
	video := dto.VideoResponse{
		ID:              resp.VideoId,
		Title:           title,
		Description:     description,
		StorageKey:      "videos/" + resp.VideoId + ".mp4",
		BucketName:      "videos",
		ContentType:     header.Header.Get("Content-Type"),
		SizeBytes:       header.Size,
		DurationSeconds: 0,
		Status:          "active",
		CreatedAt:       time.Now().Format(time.RFC3339),
		UpdatedAt:       time.Now().Format(time.RFC3339),
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
