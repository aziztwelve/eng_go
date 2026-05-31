// Package handler — Phase 7: flashcards (повтор слов) endpoints.
// Все маршруты требуют auth-middleware: userID берётся из gin.Context.
package handler

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// FlashcardHandler — личные карточки + today queue + AI suggestions.
type FlashcardHandler struct {
	course *client.CourseClient
	ai     *client.AIClient // может быть nil → suggestions недоступны
}

// NewFlashcardHandler — для DI. ai опционален (nil → /suggestions = 503).
func NewFlashcardHandler(course *client.CourseClient, ai *client.AIClient) *FlashcardHandler {
	return &FlashcardHandler{course: course, ai: ai}
}

// List GET /api/v1/flashcards?source=&pinned_today=&search=&include_archived=&include_srs=&limit=&offset=
func (h *FlashcardHandler) List(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, offset := parsePagination(c)
	resp, err := h.course.ListFlashcards(c.Request.Context(), &coursev1.ListFlashcardsRequest{
		UserId:          userID,
		Source:          c.Query("source"),
		PinnedToday:     c.Query("pinned_today") == "true",
		Search:          c.Query("search"),
		IncludeArchived: c.Query("include_archived") == "true",
		IncludeSrs:      c.Query("include_srs") == "true",
		Limit:           int32(limit),
		Offset:          int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// Get GET /api/v1/flashcards/:id?include_srs=
func (h *FlashcardHandler) Get(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.course.GetFlashcard(c.Request.Context(), &coursev1.GetFlashcardRequest{
		UserId:      userID,
		FlashcardId: c.Param("id"),
		IncludeSrs:  c.Query("include_srs") == "true",
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type flashcardCreateRequest struct {
	Word            string `json:"word" binding:"required"`
	Translation     string `json:"translation" binding:"required"`
	Language        string `json:"language" binding:"required"`
	TargetLanguage  string `json:"target_language" binding:"required"`
	Definition      string `json:"definition"`
	ExampleSentence string `json:"example_sentence"`
	AudioURL        string `json:"audio_url"`
	ImageURL        string `json:"image_url"`
}

// Create POST /api/v1/flashcards
func (h *FlashcardHandler) Create(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req flashcardCreateRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.course.CreateFlashcard(c.Request.Context(), &coursev1.CreateFlashcardRequest{
		UserId:          userID,
		Word:            req.Word,
		Translation:     req.Translation,
		Language:        req.Language,
		TargetLanguage:  req.TargetLanguage,
		Definition:      req.Definition,
		ExampleSentence: req.ExampleSentence,
		AudioUrl:        req.AudioURL,
		ImageUrl:        req.ImageURL,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type flashcardUpdateRequest struct {
	Word            *string `json:"word"`
	Translation     *string `json:"translation"`
	Definition      *string `json:"definition"`
	ExampleSentence *string `json:"example_sentence"`
	AudioURL        *string `json:"audio_url"`
	ImageURL        *string `json:"image_url"`
}

// Update PUT /api/v1/flashcards/:id
func (h *FlashcardHandler) Update(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req flashcardUpdateRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	pr := &coursev1.UpdateFlashcardRequest{
		UserId:      userID,
		FlashcardId: c.Param("id"),
	}
	if req.Word != nil {
		pr.Word = wrapperspb.String(*req.Word)
	}
	if req.Translation != nil {
		pr.Translation = wrapperspb.String(*req.Translation)
	}
	if req.Definition != nil {
		pr.Definition = wrapperspb.String(*req.Definition)
	}
	if req.ExampleSentence != nil {
		pr.ExampleSentence = wrapperspb.String(*req.ExampleSentence)
	}
	if req.AudioURL != nil {
		pr.AudioUrl = wrapperspb.String(*req.AudioURL)
	}
	if req.ImageURL != nil {
		pr.ImageUrl = wrapperspb.String(*req.ImageURL)
	}
	resp, err := h.course.UpdateFlashcard(c.Request.Context(), pr)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// Archive DELETE /api/v1/flashcards/:id (soft-delete).
func (h *FlashcardHandler) Archive(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.course.ArchiveFlashcard(c.Request.Context(), &coursev1.ArchiveFlashcardRequest{
		UserId:      userID,
		FlashcardId: c.Param("id"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type flashcardBulkRequest struct {
	Items []struct {
		Word            string `json:"word" binding:"required"`
		Translation     string `json:"translation" binding:"required"`
		Language        string `json:"language" binding:"required"`
		TargetLanguage  string `json:"target_language" binding:"required"`
		Definition      string `json:"definition"`
		ExampleSentence string `json:"example_sentence"`
		Source          string `json:"source"`
		VocabularyID    string `json:"vocabulary_id"`
	} `json:"items" binding:"required,dive"`
}

// BulkCreate POST /api/v1/flashcards/bulk (accept-all from suggestions).
func (h *FlashcardHandler) BulkCreate(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req flashcardBulkRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	pr := &coursev1.BulkCreateFlashcardsRequest{UserId: userID}
	for _, it := range req.Items {
		pr.Items = append(pr.Items, &coursev1.BulkCreateFlashcardsRequest_Item{
			Word:            it.Word,
			Translation:     it.Translation,
			Language:        it.Language,
			TargetLanguage:  it.TargetLanguage,
			Definition:      it.Definition,
			ExampleSentence: it.ExampleSentence,
			Source:          it.Source,
			VocabularyId:    it.VocabularyID,
		})
	}
	resp, err := h.course.BulkCreateFlashcards(c.Request.Context(), pr)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type fromVocabularyRequest struct {
	VocabularyID string `json:"vocabulary_id" binding:"required"`
	Source       string `json:"source"` // default 'lesson'
}

// FromVocabulary POST /api/v1/flashcards/from-vocabulary
func (h *FlashcardHandler) FromVocabulary(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req fromVocabularyRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	source := req.Source
	if source == "" {
		source = "lesson"
	}
	resp, err := h.course.AddVocabularyAsFlashcard(c.Request.Context(), &coursev1.AddVocabularyAsFlashcardRequest{
		UserId:       userID,
		VocabularyId: req.VocabularyID,
		Source:       source,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// Stats GET /api/v1/flashcards/stats
func (h *FlashcardHandler) Stats(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.course.GetFlashcardStats(c.Request.Context(), &coursev1.GetFlashcardStatsRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Today queue ===

type pinTodayRequest struct {
	QueuedForDate string `json:"queued_for_date"` // optional YYYY-MM-DD
}

// PinForToday POST /api/v1/flashcards/today/:flashcardId
func (h *FlashcardHandler) PinForToday(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req pinTodayRequest
	_ = c.ShouldBindJSON(&req) // body опционален
	resp, err := h.course.PinForToday(c.Request.Context(), &coursev1.PinForTodayRequest{
		UserId:        userID,
		FlashcardId:   c.Param("flashcardId"),
		QueuedForDate: req.QueuedForDate,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// UnpinFromToday DELETE /api/v1/flashcards/today/:flashcardId?queued_for_date=
func (h *FlashcardHandler) UnpinFromToday(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.course.UnpinFromToday(c.Request.Context(), &coursev1.UnpinFromTodayRequest{
		UserId:        userID,
		FlashcardId:   c.Param("flashcardId"),
		QueuedForDate: c.Query("queued_for_date"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// ListToday GET /api/v1/flashcards/today?queued_for_date=&include_srs=
func (h *FlashcardHandler) ListToday(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.course.ListTodayQueue(c.Request.Context(), &coursev1.ListTodayQueueRequest{
		UserId:        userID,
		QueuedForDate: c.Query("queued_for_date"),
		IncludeSrs:    c.Query("include_srs") == "true",
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === AI suggestions ===

// Suggestions GET /api/v1/ai/flashcard-suggestions
//   ?level=&goal=&pain_point=&target_language=&native_language=&count=&exclude_words=a,b
func (h *FlashcardHandler) Suggestions(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	if h.ai == nil {
		c.JSON(http.StatusServiceUnavailable, gin.H{"error": "ai-service not configured"})
		return
	}
	count, _ := strconv.Atoi(c.DefaultQuery("count", "5"))
	var exclude []string
	if ew := c.QueryArray("exclude_words"); len(ew) > 0 {
		exclude = ew
	}
	resp, err := h.ai.SuggestFlashcards(c.Request.Context(), &aiv1.SuggestFlashcardsRequest{
		UserId:         userID,
		Level:          c.Query("level"),
		Goal:           c.Query("goal"),
		PainPoint:      c.Query("pain_point"),
		TargetLanguage: c.Query("target_language"),
		NativeLanguage: c.Query("native_language"),
		Count:          int32(count),
		ExcludeWords:   exclude,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
