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
	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

// FlashcardHandler — личные карточки + today queue + AI suggestions.
type FlashcardHandler struct {
	course *client.CourseClient
	ai     *client.AIClient  // может быть nil → suggestions недоступны
	srs    *client.SRSClient // может быть nil → review недоступен
}

// NewFlashcardHandler — для DI. ai опционален (nil → /suggestions = 503),
// srs опционален (nil → /:id/review = 503).
func NewFlashcardHandler(course *client.CourseClient, ai *client.AIClient, srs *client.SRSClient) *FlashcardHandler {
	return &FlashcardHandler{course: course, ai: ai, srs: srs}
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
	Transcription   string `json:"transcription"`
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
		Transcription:   req.Transcription,
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
	Transcription   *string `json:"transcription"`
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
	if req.Transcription != nil {
		pr.Transcription = wrapperspb.String(*req.Transcription)
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
		Transcription   string `json:"transcription"`
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
			Transcription:   it.Transcription,
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

// SeedStarter POST /api/v1/flashcards/starter?language=en
//
// Идемпотентно наполняет библиотеку юзера стартовым набором из системного
// словаря (для онбординга/демо) и пинит карточки на сегодня, чтобы сессия
// повторения была доступна сразу. Если у юзера уже есть карточки — no-op.
func (h *FlashcardHandler) SeedStarter(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	ctx := c.Request.Context()

	existing, err := h.course.ListFlashcards(ctx, &coursev1.ListFlashcardsRequest{UserId: userID, Limit: 1})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	if existing.Total > 0 {
		c.JSON(http.StatusOK, gin.H{"created": 0, "already": true, "total": existing.Total})
		return
	}

	lang := c.DefaultQuery("language", "en")
	vocab, err := h.course.ListVocabulary(ctx, &coursev1.ListVocabularyRequest{
		Language: wrapperspb.String(lang),
		Limit:    20,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	created := 0
	for _, v := range vocab.Entries {
		addResp, aerr := h.course.AddVocabularyAsFlashcard(ctx, &coursev1.AddVocabularyAsFlashcardRequest{
			UserId:       userID,
			VocabularyId: v.Id,
			Source:       "ai_suggestion",
		})
		if aerr != nil || addResp.Flashcard == nil {
			continue
		}
		created++
		// Пин на сегодня — best-effort, чтобы карточка попала в сессию.
		_, _ = h.course.PinForToday(ctx, &coursev1.PinForTodayRequest{
			UserId:      userID,
			FlashcardId: addResp.Flashcard.Id,
		})
	}
	c.JSON(http.StatusOK, gin.H{"created": created, "already": false})
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

// === Review (SM-2) ===

type flashcardReviewRequest struct {
	// Remembered — бинарная самооценка «помню/забыл». Маппится в SM-2
	// quality на бэке: true → 5 (perfect recall), false → 2 (incorrect,
	// сброс интервала). Клиент не знает про SM-2-шкалу.
	Remembered     bool  `json:"remembered"`
	ResponseTimeMs int32 `json:"response_time_ms"`
}

// Review POST /api/v1/flashcards/:id/review
//
// Записывает результат повторения карточки в SRS (item_type=flashcard).
// SRS-item создаётся лениво при первом ревью. Требует настроенного
// srs-service (иначе 503).
func (h *FlashcardHandler) Review(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	if h.srs == nil {
		c.JSON(http.StatusServiceUnavailable, gin.H{"error": "srs-service not configured"})
		return
	}
	flashcardID := c.Param("id")
	if flashcardID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "flashcard id is required"})
		return
	}
	var req flashcardReviewRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	// Бинарная самооценка → SM-2 quality.
	quality := int32(2)
	if req.Remembered {
		quality = 5
	}
	resp, err := h.srs.RecordReview(c.Request.Context(), &srsv1.RecordReviewRequest{
		UserId:         userID,
		ItemType:       srsv1.ItemType_ITEM_TYPE_FLASHCARD,
		ItemId:         flashcardID,
		Quality:        quality,
		ResponseTimeMs: req.ResponseTimeMs,
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
