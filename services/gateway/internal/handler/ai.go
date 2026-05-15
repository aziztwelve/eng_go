// Package handler — Phase 5: REST endpoints для ai-service.
// Все маршруты требуют auth-middleware: userID берётся из gin.Context.
package handler

import (
	"io"
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

// AIHandler оборачивает AIClient.
type AIHandler struct {
	ai *client.AIClient
}

// NewAIHandler — для DI.
func NewAIHandler(ai *client.AIClient) *AIHandler {
	return &AIHandler{ai: ai}
}

// === Conversations ===

// startConversationRequest — POST /api/v1/ai/conversations.
type startConversationRequest struct {
	Scenario       string `json:"scenario"        binding:"required"`
	TargetLanguage string `json:"target_language"`
	UserLevel      string `json:"user_level"`
	Title          string `json:"title"`
}

func (h *AIHandler) StartConversation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req startConversationRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.StartConversation(c.Request.Context(), &aiv1.StartConversationRequest{
		UserId:         userID,
		Scenario:       req.Scenario,
		TargetLanguage: req.TargetLanguage,
		UserLevel:      req.UserLevel,
		Title:          req.Title,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// sendMessageRequest — POST /api/v1/ai/conversations/:id/messages.
type sendMessageRequest struct {
	Content   string `json:"content"    binding:"required"`
	WantAudio bool   `json:"want_audio"`
}

func (h *AIHandler) SendMessage(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	var req sendMessageRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.SendMessage(c.Request.Context(), &aiv1.SendMessageRequest{
		UserId:         userID,
		ConversationId: convID,
		Content:        req.Content,
		WantAudio:      req.WantAudio,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *AIHandler) ListConversations(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, offset := parsePagination(c)
	resp, err := h.ai.ListConversations(c.Request.Context(), &aiv1.ListConversationsRequest{
		UserId: userID,
		Limit:  int32(limit),
		Offset: int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *AIHandler) GetConversation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	resp, err := h.ai.GetConversation(c.Request.Context(), &aiv1.GetConversationRequest{
		UserId:         userID,
		ConversationId: convID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

func (h *AIHandler) DeleteConversation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	convID := c.Param("id")
	if convID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "conversation id required"})
		return
	}
	_, err := h.ai.DeleteConversation(c.Request.Context(), &aiv1.DeleteConversationRequest{
		UserId:         userID,
		ConversationId: convID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.Status(http.StatusNoContent)
}

func (h *AIHandler) ListScenarios(c *gin.Context) {
	resp, err := h.ai.ListScenarios(c.Request.Context(), &aiv1.ListScenariosRequest{
		Language:  c.Query("language"),
		UserLevel: c.Query("user_level"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Explain ===

type explainRequest struct {
	StepID          string `json:"step_id"`
	IncorrectAnswer string `json:"incorrect_answer" binding:"required"`
	CorrectAnswer   string `json:"correct_answer"`
	Question        string `json:"question"`
	TargetLanguage  string `json:"target_language"`
	NativeLanguage  string `json:"native_language"`
}

func (h *AIHandler) ExplainMistake(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req explainRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.ExplainMistake(c.Request.Context(), &aiv1.ExplainMistakeRequest{
		UserId:          userID,
		StepId:          req.StepID,
		IncorrectAnswer: req.IncorrectAnswer,
		CorrectAnswer:   req.CorrectAnswer,
		Question:        req.Question,
		TargetLanguage:  req.TargetLanguage,
		NativeLanguage:  req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Writing ===

type assessWritingRequest struct {
	Prompt         string `json:"prompt"`
	UserText       string `json:"user_text" binding:"required"`
	TargetLanguage string `json:"target_language"`
	UserLevel      string `json:"user_level"`
}

func (h *AIHandler) AssessWriting(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req assessWritingRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.AssessWriting(c.Request.Context(), &aiv1.AssessWritingRequest{
		UserId:         userID,
		Prompt:         req.Prompt,
		UserText:       req.UserText,
		TargetLanguage: req.TargetLanguage,
		UserLevel:      req.UserLevel,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Pronunciation ===

// CheckPronunciation POST /api/v1/ai/pronunciation/check (multipart/form-data).
//
// Поля:
//   audio (file, обязательно)
//   target_text
//   language
//   step_id (optional)
func (h *AIHandler) CheckPronunciation(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}

	file, fileHeader, err := c.Request.FormFile("audio")
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "audio file required: " + err.Error()})
		return
	}
	defer file.Close()
	audio, err := io.ReadAll(file)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "read audio: " + err.Error()})
		return
	}

	targetText := c.PostForm("target_text")
	if targetText == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "target_text required"})
		return
	}

	resp, err := h.ai.CheckPronunciation(c.Request.Context(), &aiv1.CheckPronunciationRequest{
		UserId:     userID,
		StepId:     c.PostForm("step_id"),
		TargetText: targetText,
		Audio:      audio,
		AudioMime:  fileHeader.Header.Get("Content-Type"),
		Language:   c.PostForm("language"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Tutor ===

type askTutorRequest struct {
	Question       string `json:"question" binding:"required"`
	TargetLanguage string `json:"target_language"`
	NativeLanguage string `json:"native_language"`
}

func (h *AIHandler) AskTutor(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req askTutorRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.AskTutor(c.Request.Context(), &aiv1.AskTutorRequest{
		UserId:         userID,
		Question:       req.Question,
		TargetLanguage: req.TargetLanguage,
		NativeLanguage: req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Quota ===

func (h *AIHandler) GetQuotaStatus(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.ai.GetQuotaStatus(c.Request.Context(), &aiv1.GetQuotaStatusRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Admin: content generation ===

type generateExerciseRequest struct {
	ExerciseType   string   `json:"exercise_type"   binding:"required"`
	Vocabulary     []string `json:"vocabulary"`
	UserLevel      string   `json:"user_level"`
	TargetLanguage string   `json:"target_language"`
	NativeLanguage string   `json:"native_language"`
}

func (h *AIHandler) GenerateExercise(c *gin.Context) {
	var req generateExerciseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.ai.GenerateExercise(c.Request.Context(), &aiv1.GenerateExerciseRequest{
		ExerciseType:   req.ExerciseType,
		Vocabulary:     req.Vocabulary,
		UserLevel:      req.UserLevel,
		TargetLanguage: req.TargetLanguage,
		NativeLanguage: req.NativeLanguage,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
