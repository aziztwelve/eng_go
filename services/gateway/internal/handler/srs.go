// Package handler — Phase 3: REST endpoints для srs-service.
// Все маршруты требуют auth-middleware: userID берётся из gin.Context.
package handler

import (
	"net/http"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

// SRSHandler оборачивает SRSClient.
type SRSHandler struct {
	srs *client.SRSClient
}

// NewSRSHandler — для DI.
func NewSRSHandler(srs *client.SRSClient) *SRSHandler {
	return &SRSHandler{srs: srs}
}

// parseItemType — query-param ?item_type=vocabulary|step|phrase → enum.
// Пустая строка → ITEM_TYPE_UNSPECIFIED (все типы).
func parseItemType(s string) srsv1.ItemType {
	switch strings.ToLower(s) {
	case "vocabulary":
		return srsv1.ItemType_ITEM_TYPE_VOCABULARY
	case "step":
		return srsv1.ItemType_ITEM_TYPE_STEP
	case "phrase":
		return srsv1.ItemType_ITEM_TYPE_PHRASE
	default:
		return srsv1.ItemType_ITEM_TYPE_UNSPECIFIED
	}
}

// GetDue GET /api/v1/srs/due?item_type=&limit=
func (h *SRSHandler) GetDue(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	if limit <= 0 || limit > 200 {
		limit = 20
	}
	resp, err := h.srs.GetDueItems(c.Request.Context(), &srsv1.GetDueItemsRequest{
		UserId:   userID,
		ItemType: parseItemType(c.Query("item_type")),
		Limit:    int32(limit),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetWeak GET /api/v1/srs/weak?item_type=&limit=
func (h *SRSHandler) GetWeak(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	if limit <= 0 || limit > 200 {
		limit = 20
	}
	resp, err := h.srs.GetWeakItems(c.Request.Context(), &srsv1.GetWeakItemsRequest{
		UserId:   userID,
		ItemType: parseItemType(c.Query("item_type")),
		Limit:    int32(limit),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetStats GET /api/v1/srs/stats
func (h *SRSHandler) GetStats(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.srs.GetStats(c.Request.Context(), &srsv1.GetStatsRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// reviewRequest — POST /api/v1/srs/review body.
type reviewRequest struct {
	ItemType       string `json:"item_type"        binding:"required"`
	ItemID         string `json:"item_id"          binding:"required"`
	Quality        int32  `json:"quality"`
	ResponseTimeMs int32  `json:"response_time_ms"`
	UsedHint       bool   `json:"used_hint"`
}

// Review POST /api/v1/srs/review
//
// Прямая запись ревью пользователем (например, из practice-сессии).
// step-validation-service пишет ревью автоматически через gRPC.
func (h *SRSHandler) Review(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req reviewRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if req.Quality < 0 || req.Quality > 5 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "quality must be in [0..5]"})
		return
	}
	itemType := parseItemType(req.ItemType)
	if itemType == srsv1.ItemType_ITEM_TYPE_UNSPECIFIED {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid item_type"})
		return
	}
	resp, err := h.srs.RecordReview(c.Request.Context(), &srsv1.RecordReviewRequest{
		UserId:         userID,
		ItemType:       itemType,
		ItemId:         req.ItemID,
		Quality:        req.Quality,
		ResponseTimeMs: req.ResponseTimeMs,
		UsedHint:       req.UsedHint,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Practice ---

// generatePracticeRequest — POST /api/v1/practice/session body.
//
// Все поля опциональны. Сервис сам нормализует пропорции и size.
type generatePracticeRequest struct {
	Size         int32 `json:"size"`
	RatioOverdue int32 `json:"ratio_overdue"`
	RatioMistake int32 `json:"ratio_mistake"`
	RatioWeak    int32 `json:"ratio_weak"`
}

// GeneratePracticeSession POST /api/v1/practice/session
//
// Read-only микс overdue / mistakes / weak. Сессия как сущность не
// создаётся: фронт прогоняет items как обычные шаги через
// /api/v1/steps/:stepId/submit.
func (h *SRSHandler) GeneratePracticeSession(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req generatePracticeRequest
	// Body опционален.
	_ = c.ShouldBindJSON(&req)

	resp, err := h.srs.GeneratePracticeSession(c.Request.Context(), &srsv1.GeneratePracticeSessionRequest{
		UserId:       userID,
		Size:         req.Size,
		RatioOverdue: req.RatioOverdue,
		RatioMistake: req.RatioMistake,
		RatioWeak:    req.RatioWeak,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Skill decay ---

// parseSkillType — query-param ?skill_type=module|lesson → enum.
// Пустая строка → SKILL_TYPE_UNSPECIFIED (все типы).
func parseSkillType(s string) srsv1.SkillType {
	switch strings.ToLower(s) {
	case "module":
		return srsv1.SkillType_SKILL_TYPE_MODULE
	case "lesson":
		return srsv1.SkillType_SKILL_TYPE_LESSON
	default:
		return srsv1.SkillType_SKILL_TYPE_UNSPECIFIED
	}
}

// ListSkillStrengths GET /api/v1/skills?skill_type=&limit=&offset=
func (h *SRSHandler) ListSkillStrengths(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, offset := parsePagination(c)
	resp, err := h.srs.GetSkillStrengths(c.Request.Context(), &srsv1.GetSkillStrengthsRequest{
		UserId:    userID,
		SkillType: parseSkillType(c.Query("skill_type")),
		Limit:     int32(limit),
		Offset:    int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetWeakSkills GET /api/v1/skills/weak?skill_type=&limit=
func (h *SRSHandler) GetWeakSkills(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "10"))
	if limit <= 0 || limit > 100 {
		limit = 10
	}
	resp, err := h.srs.GetWeakSkills(c.Request.Context(), &srsv1.GetWeakSkillsRequest{
		UserId:    userID,
		SkillType: parseSkillType(c.Query("skill_type")),
		Limit:     int32(limit),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Mistakes ---

// ListMistakes GET /api/v1/mistakes?resolved=&limit=&offset=
// resolved: "" / "all" → все, "false" → unresolved, "true" → resolved.
func (h *SRSHandler) ListMistakes(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, offset := parsePagination(c)

	resolvedFilter := int32(-1) // all
	switch strings.ToLower(c.Query("resolved")) {
	case "false", "0", "unresolved":
		resolvedFilter = 0
	case "true", "1", "resolved":
		resolvedFilter = 1
	}

	resp, err := h.srs.ListMistakes(c.Request.Context(), &srsv1.ListMistakesRequest{
		UserId:   userID,
		Resolved: resolvedFilter,
		Limit:    int32(limit),
		Offset:   int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
