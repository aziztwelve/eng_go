package handler

import (
	"fmt"
	"net/http"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// VocabularyBankHandler exposes the learner-facing canonical word bank. It is
// intentionally separate from legacy /vocabulary routes.
type VocabularyBankHandler struct {
	course *client.CourseClient
}

type vocabularyBankAttemptRequest struct {
	Answer             map[string]any `json:"answer"`
	IsCorrect          bool           `json:"is_correct"`
	Score              int32          `json:"score"`
	TimeSpentMS        int32          `json:"time_spent_ms"`
	PronunciationScore float64        `json:"pronunciation_score"`
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

func (h *VocabularyBankHandler) GetProgress(c *gin.Context) {
	userID, ok := userIDFromCtx(c)
	if !ok {
		return
	}
	response, err := h.course.GetVocabularyBankProgress(c.Request.Context(), &coursev1.GetVocabularyBankProgressRequest{UserId: userID, ExternalId: c.Param("externalId")})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, response)
}

func (h *VocabularyBankHandler) RecordAttempt(c *gin.Context) {
	userID, ok := userIDFromCtx(c)
	if !ok {
		return
	}
	var body vocabularyBankAttemptRequest
	if err := c.ShouldBindJSON(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	answer, err := structpb.NewStruct(body.Answer)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "answer must be an object"})
		return
	}
	stepBytes := c.Param("step")
	var step int32
	if _, err := fmt.Sscan(stepBytes, &step); err != nil || step < 1 || step > 15 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "step must be between 1 and 15"})
		return
	}
	response, err := h.course.RecordVocabularyBankAttempt(c.Request.Context(), &coursev1.RecordVocabularyBankAttemptRequest{UserId: userID, ExternalId: c.Param("externalId"), Step: step, Answer: answer, IsCorrect: body.IsCorrect, Score: body.Score, TimeSpentMs: body.TimeSpentMS, PronunciationScore: body.PronunciationScore})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, response)
}
