package handler

import (
	"fmt"
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	"github.com/elearning/platform/pkg/logger"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// VocabularyBankHandler exposes the learner-facing canonical word bank. It is
// intentionally separate from legacy /vocabulary routes.
type VocabularyBankHandler struct {
	course *client.CourseClient
	// gamification is optional (nil when GAMIFICATION_SERVICE_ADDR unset):
	// word-completion XP is skipped then, attempts still succeed.
	gamification *client.GamificationClient
}

type vocabularyBankAttemptRequest struct {
	Answer             map[string]any `json:"answer"`
	IsCorrect          bool           `json:"is_correct"`
	Score              int32          `json:"score"`
	TimeSpentMS        int32          `json:"time_spent_ms"`
	PronunciationScore float64        `json:"pronunciation_score"`
}

func NewVocabularyBankHandler(course *client.CourseClient, gamification *client.GamificationClient) *VocabularyBankHandler {
	return &VocabularyBankHandler{course: course, gamification: gamification}
}

// List GET /api/v1/vocabulary-bank?cefr_level=A1&search=...&locale=ru&limit=...&offset=...
// Route runs under optional auth: with a valid token entries are annotated
// with the user's status (new | in_progress | completed).
func (h *VocabularyBankHandler) List(c *gin.Context) {
	limit, offset := parsePagination(c)
	userID, _ := c.Get("user_id")
	userIDStr, _ := userID.(string)
	response, err := h.course.ListVocabularyBankWords(c.Request.Context(), &coursev1.ListVocabularyBankWordsRequest{
		CefrLevel: c.Query("cefr_level"),
		Search:    c.Query("search"),
		Locale:    c.Query("locale"),
		Limit:     int32(limit),
		Offset:    int32(offset),
		UserId:    userIDStr,
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
	// Word-completed bonus. The attempt itself is already persisted, so an
	// AddXP failure must not fail the request — we log and omit the xp block.
	// source_id stays empty: xp_transactions.source_id is UUID-typed while the
	// word's public id (A1-VOC-…) is deliberately not a UUID; the reason
	// identifies the origin.
	if response.JustCompleted && h.gamification != nil {
		xp, xpErr := h.gamification.AddXP(c.Request.Context(), userID, 25, gamificationv1.XPReason_XP_REASON_VOCABULARY_WORD, "")
		if xpErr != nil {
			logger.Error(c.Request.Context(), "vocabulary bank: add word-completion XP failed", zap.Error(xpErr))
		} else {
			response.Xp = &coursev1.VocabularyBankXPAward{
				Amount: xp.Transaction.GetAmount(), LeveledUp: xp.LeveledUp, NewLevel: xp.NewLevel,
			}
		}
	}
	c.JSON(http.StatusOK, response)
}

func (h *VocabularyBankHandler) Feed(c *gin.Context) {
	userID, ok := userIDFromCtx(c)
	if !ok {
		return
	}
	newLimit, _ := strconv.Atoi(c.DefaultQuery("new_limit", "5"))
	inProgressLimit, _ := strconv.Atoi(c.DefaultQuery("in_progress_limit", "5"))
	response, err := h.course.ListVocabularyBankFeed(c.Request.Context(), &coursev1.ListVocabularyBankFeedRequest{UserId: userID, CefrLevel: c.Query("cefr_level"), Locale: c.DefaultQuery("locale", "ru"), NewLimit: int32(newLimit), InProgressLimit: int32(inProgressLimit)})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, response)
}
