package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	"github.com/elearning/gateway/internal/errors"
	videov1 "github.com/elearning/shared/pkg/proto/video/v1"
)

type VideoHandler struct {
	videoClient client.VideoClient
}

func NewVideoHandler(videoClient client.VideoClient) *VideoHandler {
	return &VideoHandler{
		videoClient: videoClient,
	}
}

// GetVideoURL получает signed URL для просмотра видео
// @Summary Get video URL
// @Tags video
// @Param video_id path string true "Video ID"
// @Success 200 {object} dto.VideoURLResponse
// @Failure 400 {object} errors.ErrorResponse
// @Failure 404 {object} errors.ErrorResponse
// @Router /api/v1/videos/{video_id}/url [get]
func (h *VideoHandler) GetVideoURL(c *gin.Context) {
	videoID := c.Param("video_id")
	if videoID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "video_id is required"})
		return
	}

	// Получить user_id из контекста (после auth middleware)
	userID, exists := c.Get("user_id")
	if !exists {
		userID = ""
	}

	resp, err := h.videoClient.GetVideoURL(c.Request.Context(), &videov1.GetVideoURLRequest{
		VideoId: videoID,
		UserId:  userID.(string),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.VideoURLResponse{
		SignedURL:        resp.SignedUrl,
		ExpiresInSeconds: resp.ExpiresInSeconds,
	})
}

// GetVideoMetadata получает метаданные видео
// @Summary Get video metadata
// @Tags video
// @Param video_id path string true "Video ID"
// @Success 200 {object} dto.VideoMetadataResponse
// @Failure 404 {object} errors.ErrorResponse
// @Router /api/v1/videos/{video_id} [get]
func (h *VideoHandler) GetVideoMetadata(c *gin.Context) {
	videoID := c.Param("video_id")
	if videoID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "video_id is required"})
		return
	}

	resp, err := h.videoClient.GetVideoMetadata(c.Request.Context(), &videov1.GetVideoMetadataRequest{
		VideoId: videoID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.VideoMetadataResponse{
		VideoID:     resp.Video.Id,
		Title:       resp.Video.Title,
		Description: resp.Video.Description,
		Duration:    resp.Video.DurationSeconds,
		Status:      resp.Video.Status,
		CreatedAt:   resp.Video.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	})
}
