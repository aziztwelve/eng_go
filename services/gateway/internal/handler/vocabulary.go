// Package handler — Phase 2: vocabulary endpoints.
package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// VocabularyHandler — словарь.
type VocabularyHandler struct {
	course *client.CourseClient
}

// NewVocabularyHandler — для DI.
func NewVocabularyHandler(course *client.CourseClient) *VocabularyHandler {
	return &VocabularyHandler{course: course}
}

// List GET /api/v1/vocabulary?language=es&target_language=en&level=A1&limit=...&offset=...&search=...
func (h *VocabularyHandler) List(c *gin.Context) {
	limit, offset := parsePagination(c)
	req := &coursev1.ListVocabularyRequest{
		Limit:  int32(limit),
		Offset: int32(offset),
		Search: c.Query("search"),
	}
	if v := c.Query("language"); v != "" {
		req.Language = wrapperspb.String(v)
	}
	if v := c.Query("target_language"); v != "" {
		req.TargetLanguage = wrapperspb.String(v)
	}
	if v := c.Query("level"); v != "" {
		req.Level = wrapperspb.String(v)
	}
	if v := c.Query("pos"); v != "" {
		req.Pos = wrapperspb.String(v)
	}
	resp, err := h.course.ListVocabulary(c.Request.Context(), req)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// Get GET /api/v1/vocabulary/:id
func (h *VocabularyHandler) Get(c *gin.Context) {
	resp, err := h.course.GetVocabularyEntry(c.Request.Context(), &coursev1.GetVocabularyEntryRequest{
		Id: c.Param("id"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type vocabularyCreateRequest struct {
	Language       string `json:"language" binding:"required"`
	Word           string `json:"word" binding:"required"`
	Translation    string `json:"translation" binding:"required"`
	TargetLanguage string `json:"target_language" binding:"required"`
	AudioURL       string `json:"audio_url"`
	ImageURL       string `json:"image_url"`
	Level          string `json:"level"`
	POS            string `json:"pos"`
}

func (r vocabularyCreateRequest) toProto() *coursev1.CreateVocabularyEntryRequest {
	return &coursev1.CreateVocabularyEntryRequest{
		Language:       r.Language,
		Word:           r.Word,
		Translation:    r.Translation,
		TargetLanguage: r.TargetLanguage,
		AudioUrl:       r.AudioURL,
		ImageUrl:       r.ImageURL,
		Level:          r.Level,
		Pos:            r.POS,
	}
}

// Create POST /api/v1/admin/vocabulary
func (h *VocabularyHandler) Create(c *gin.Context) {
	var req vocabularyCreateRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.course.CreateVocabularyEntry(c.Request.Context(), req.toProto())
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type vocabularyUpdateRequest struct {
	Word        *string `json:"word"`
	Translation *string `json:"translation"`
	AudioURL    *string `json:"audio_url"`
	ImageURL    *string `json:"image_url"`
	Level       *string `json:"level"`
	POS         *string `json:"pos"`
}

// Update PUT /api/v1/admin/vocabulary/:id
func (h *VocabularyHandler) Update(c *gin.Context) {
	var req vocabularyUpdateRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	pr := &coursev1.UpdateVocabularyEntryRequest{Id: c.Param("id")}
	if req.Word != nil {
		pr.Word = wrapperspb.String(*req.Word)
	}
	if req.Translation != nil {
		pr.Translation = wrapperspb.String(*req.Translation)
	}
	if req.AudioURL != nil {
		pr.AudioUrl = wrapperspb.String(*req.AudioURL)
	}
	if req.ImageURL != nil {
		pr.ImageUrl = wrapperspb.String(*req.ImageURL)
	}
	if req.Level != nil {
		pr.Level = wrapperspb.String(*req.Level)
	}
	if req.POS != nil {
		pr.Pos = wrapperspb.String(*req.POS)
	}
	resp, err := h.course.UpdateVocabularyEntry(c.Request.Context(), pr)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// Delete DELETE /api/v1/admin/vocabulary/:id
func (h *VocabularyHandler) Delete(c *gin.Context) {
	resp, err := h.course.DeleteVocabularyEntry(c.Request.Context(), &coursev1.DeleteVocabularyEntryRequest{
		Id: c.Param("id"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// BulkCreate POST /api/v1/admin/vocabulary/bulk
func (h *VocabularyHandler) BulkCreate(c *gin.Context) {
	var req struct {
		Entries []vocabularyCreateRequest `json:"entries" binding:"required,dive"`
	}
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	pr := &coursev1.BulkCreateVocabularyRequest{}
	for _, e := range req.Entries {
		pr.Entries = append(pr.Entries, e.toProto())
	}
	resp, err := h.course.BulkCreateVocabulary(c.Request.Context(), pr)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
