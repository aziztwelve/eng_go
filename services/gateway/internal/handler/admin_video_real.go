package handler

import (
	"io"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

// AdminVideoRealHandler обработчик для управления видео (real implementation)
type AdminVideoRealHandler struct {
	videoClient client.VideoClient
}

// NewAdminVideoRealHandler создает новый экземпляр Admin Video handler
func NewAdminVideoRealHandler(videoClient client.VideoClient) *AdminVideoRealHandler {
	return &AdminVideoRealHandler{
		videoClient: videoClient,
	}
}

// ListVideos возвращает список всех видео
func (h *AdminVideoRealHandler) ListVideos(c *gin.Context) {
	resp, err := h.videoClient.ListVideos(c.Request.Context(), &videov1.ListVideosRequest{})
	if err != nil {
		st, _ := status.FromError(err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	videos := make([]dto.VideoResponse, 0, len(resp.Videos))
	for _, v := range resp.Videos {
		videos = append(videos, dto.VideoResponse{
			ID:              v.Id,
			Title:           v.Title,
			Description:     v.Description,
			StorageKey:      v.StorageKey,
			BucketName:      v.BucketName,
			ContentType:     v.ContentType,
			SizeBytes:       v.SizeBytes,
			DurationSeconds: v.DurationSeconds,
			Status:          v.Status,
			CreatedAt:       v.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		})
	}

	c.JSON(http.StatusOK, gin.H{
		"videos": videos,
		"total":  len(videos),
	})
}

// GetVideo возвращает информацию о видео по ID
func (h *AdminVideoRealHandler) GetVideo(c *gin.Context) {
	videoID := c.Param("id")

	resp, err := h.videoClient.GetVideoMetadata(c.Request.Context(), &videov1.GetVideoMetadataRequest{
		VideoId: videoID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Video not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	video := dto.VideoResponse{
		ID:              resp.Video.Id,
		Title:           resp.Video.Title,
		Description:     resp.Video.Description,
		StorageKey:      resp.Video.StorageKey,
		BucketName:      resp.Video.BucketName,
		ContentType:     resp.Video.ContentType,
		SizeBytes:       resp.Video.SizeBytes,
		DurationSeconds: resp.Video.DurationSeconds,
		Status:          resp.Video.Status,
		CreatedAt:       resp.Video.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}

	c.JSON(http.StatusOK, video)
}

// DeleteVideo удаляет видео
func (h *AdminVideoRealHandler) DeleteVideo(c *gin.Context) {
	videoID := c.Param("id")

	_, err := h.videoClient.DeleteVideo(c.Request.Context(), &videov1.DeleteVideoRequest{
		VideoId: videoID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Video not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Video deleted successfully",
	})
}

// UpdateVideo обновляет метаданные видео
func (h *AdminVideoRealHandler) UpdateVideo(c *gin.Context) {
	var req dto.UpdateVideoRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// TODO: Implement UpdateVideo in video-service
	c.JSON(http.StatusNotImplemented, gin.H{
		"error": "Update video not implemented yet",
	})
}

// GetVideoUsage возвращает информацию об использовании видео
func (h *AdminVideoRealHandler) GetVideoUsage(c *gin.Context) {
	videoID := c.Param("id")

	// TODO: Implement GetVideoUsage - query courses/lessons that use this video
	c.JSON(http.StatusOK, gin.H{
		"video_id": videoID,
		"courses":  []string{},
		"lessons":  []string{},
	})
}

// UploadVideo загружает видео файл
func (h *AdminVideoRealHandler) UploadVideo(c *gin.Context) {
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
