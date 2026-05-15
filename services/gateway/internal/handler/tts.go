// Package handler — Phase 2: TTS stub endpoints.
package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// TTSHandler — TTS-кэш (на phase-2 stub: endpoints просто пишут/читают
// `audio_url` из БД, без реальной интеграции с провайдером).
type TTSHandler struct {
	course *client.CourseClient
}

// NewTTSHandler — для DI.
func NewTTSHandler(course *client.CourseClient) *TTSHandler {
	return &TTSHandler{course: course}
}

type ttsSynthesizeRequest struct {
	Text       string `json:"text" binding:"required"`
	Language   string `json:"language" binding:"required"`
	Voice      string `json:"voice"`
	AudioURL   string `json:"audio_url" binding:"required"`
	DurationMs int32  `json:"duration_ms"`
}

// Synthesize POST /api/v1/admin/tts/synthesize
func (h *TTSHandler) Synthesize(c *gin.Context) {
	var req ttsSynthesizeRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.course.SynthesizeTTS(c.Request.Context(), &coursev1.SynthesizeTTSRequest{
		Text:       req.Text,
		Language:   req.Language,
		Voice:      req.Voice,
		AudioUrl:   req.AudioURL,
		DurationMs: req.DurationMs,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetByText GET /api/v1/tts/by-text?text=...&language=...&voice=...
func (h *TTSHandler) GetByText(c *gin.Context) {
	text := c.Query("text")
	language := c.Query("language")
	if text == "" || language == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "text and language are required"})
		return
	}
	resp, err := h.course.GetTTSByText(c.Request.Context(), &coursev1.GetTTSByTextRequest{
		Text:     text,
		Language: language,
		Voice:    c.Query("voice"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
