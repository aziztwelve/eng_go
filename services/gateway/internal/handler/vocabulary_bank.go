package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// VocabularyBankHandler exposes the learner-facing canonical word bank. It is
// intentionally separate from legacy /vocabulary routes.
type VocabularyBankHandler struct {
	course *client.CourseClient
}

func NewVocabularyBankHandler(course *client.CourseClient) *VocabularyBankHandler {
	return &VocabularyBankHandler{course: course}
}

// List GET /api/v1/vocabulary-bank?cefr_level=A1&search=...&locale=ru&limit=...&offset=...
func (h *VocabularyBankHandler) List(c *gin.Context) {
	limit, offset := parsePagination(c)
	response, err := h.course.ListVocabularyBankWords(c.Request.Context(), &coursev1.ListVocabularyBankWordsRequest{
		CefrLevel: c.Query("cefr_level"),
		Search:    c.Query("search"),
		Locale:    c.Query("locale"),
		Limit:     int32(limit),
		Offset:    int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, response)
}

// Get GET /api/v1/vocabulary-bank/:externalId?locale=ru
func (h *VocabularyBankHandler) Get(c *gin.Context) {
	response, err := h.course.GetVocabularyBankWord(c.Request.Context(), &coursev1.GetVocabularyBankWordRequest{
		ExternalId: c.Param("externalId"),
		Locale:     c.Query("locale"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, response)
}
