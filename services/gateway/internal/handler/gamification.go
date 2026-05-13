// Package handler — REST endpoints для gamification-service.
// Все маршруты требуют auth-middleware: userID берется из gin.Context.
package handler

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// GamificationHandler оборачивает GamificationClient.
type GamificationHandler struct {
	gam *client.GamificationClient
}

// NewGamificationHandler — для DI.
func NewGamificationHandler(gam *client.GamificationClient) *GamificationHandler {
	return &GamificationHandler{gam: gam}
}

func getUserID(c *gin.Context) (string, bool) {
	v, ok := c.Get("user_id")
	if !ok {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "unauthenticated"})
		return "", false
	}
	s, ok := v.(string)
	if !ok || s == "" {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "invalid user_id"})
		return "", false
	}
	return s, true
}

// --- Stats ---

// GetMyStats GET /api/v1/gamification/stats
func (h *GamificationHandler) GetMyStats(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.gam.GetUserStats(c.Request.Context(), userID)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetUserStats GET /api/v1/gamification/stats/:userId — публичный, любой авторизованный юзер
func (h *GamificationHandler) GetUserStats(c *gin.Context) {
	uid := c.Param("userId")
	if uid == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "userId is required"})
		return
	}
	resp, err := h.gam.GetUserStats(c.Request.Context(), uid)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Hearts ---

func (h *GamificationHandler) GetHearts(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.gam.CheckHearts(c.Request.Context(), userID)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type refillHeartsRequest struct {
	Reason string `json:"reason"`
	Amount int32  `json:"amount"`
}

// RefillHearts POST /api/v1/gamification/hearts/refill
func (h *GamificationHandler) RefillHearts(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req refillHeartsRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		// допустимо пустое тело — refill до max за gems
		req = refillHeartsRequest{}
	}
	reason := gamificationv1.RefillReason_REFILL_REASON_GEMS
	switch req.Reason {
	case "practice":
		reason = gamificationv1.RefillReason_REFILL_REASON_PRACTICE
	case "premium":
		reason = gamificationv1.RefillReason_REFILL_REASON_PREMIUM
	}
	resp, err := h.gam.RefillHearts(c.Request.Context(), userID, reason, req.Amount)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Daily Goal ---

func (h *GamificationHandler) GetDailyGoal(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.gam.GetDailyGoal(c.Request.Context(), userID)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

type updateDailyGoalRequest struct {
	TargetXP int32 `json:"target_xp"`
}

// UpdateDailyGoal PUT /api/v1/gamification/daily-goal
func (h *GamificationHandler) UpdateDailyGoal(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req updateDailyGoalRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.gam.UpdateDailyGoal(c.Request.Context(), userID, req.TargetXP)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Streak ---

// GetStreakHistory GET /api/v1/gamification/streak/history?days=30
func (h *GamificationHandler) GetStreakHistory(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	days := int32(30)
	if q := c.Query("days"); q != "" {
		if n, err := strconv.Atoi(q); err == nil && n > 0 {
			days = int32(n)
		}
	}
	resp, err := h.gam.GetStreakHistory(c.Request.Context(), userID, days)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// UseStreakFreeze POST /api/v1/gamification/streak/freeze
func (h *GamificationHandler) UseStreakFreeze(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.gam.UseStreakFreeze(c.Request.Context(), userID)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- Achievements ---

// ListAchievements GET /api/v1/gamification/achievements
func (h *GamificationHandler) ListAchievements(c *gin.Context) {
	category := c.Query("category")
	includeHidden := c.Query("include_hidden") == "true"
	resp, err := h.gam.ListAchievements(c.Request.Context(), category, includeHidden)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetMyAchievements GET /api/v1/gamification/achievements/mine
func (h *GamificationHandler) GetMyAchievements(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.gam.GetUserAchievements(c.Request.Context(), userID)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// --- XP history ---

// GetXPHistory GET /api/v1/gamification/xp/history?limit=&offset=
func (h *GamificationHandler) GetXPHistory(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit := int32(50)
	offset := int32(0)
	if q := c.Query("limit"); q != "" {
		if n, err := strconv.Atoi(q); err == nil && n > 0 {
			limit = int32(n)
		}
	}
	if q := c.Query("offset"); q != "" {
		if n, err := strconv.Atoi(q); err == nil && n >= 0 {
			offset = int32(n)
		}
	}
	resp, err := h.gam.GetXPHistory(c.Request.Context(), userID, limit, offset)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
