// Package handler — Phase 4: REST endpoints для social-service.
//
// Все маршруты требуют auth-middleware — userID берётся из gin.Context.
// Перед чтением leaderboard'а handler делает EnsureUserInLeague (idempotent),
// чтобы новый юзер автоматически попал в Bronze когорту.
package handler

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
)

// SocialHandler оборачивает SocialClient.
type SocialHandler struct {
	social *client.SocialClient
}

func NewSocialHandler(social *client.SocialClient) *SocialHandler {
	return &SocialHandler{social: social}
}

// ListLeagues GET /api/v1/leagues
// Public каталог 10 лиг — кэшируется на CDN, без auth.
func (h *SocialHandler) ListLeagues(c *gin.Context) {
	resp, err := h.social.ListLeagues(c.Request.Context(), &socialv1.ListLeaguesRequest{})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetMyLeague GET /api/v1/leagues/mine
func (h *SocialHandler) GetMyLeague(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	if !h.ensureInLeague(c, userID) {
		return
	}
	resp, err := h.social.GetMyLeague(c.Request.Context(), &socialv1.GetMyLeagueRequest{UserId: userID})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetMyLeaderboard GET /api/v1/leagues/mine/leaderboard
func (h *SocialHandler) GetMyLeaderboard(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	if !h.ensureInLeague(c, userID) {
		return
	}
	resp, err := h.social.GetMyLeaderboard(c.Request.Context(), &socialv1.GetMyLeaderboardRequest{UserId: userID})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GetHistory GET /api/v1/leagues/history?limit=&offset=
func (h *SocialHandler) GetHistory(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	if limit <= 0 || limit > 100 {
		limit = 20
	}
	offset, _ := strconv.Atoi(c.DefaultQuery("offset", "0"))
	if offset < 0 {
		offset = 0
	}
	resp, err := h.social.GetHistory(c.Request.Context(), &socialv1.GetHistoryRequest{
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

// ensureInLeague — idempotent assign юзера к когорте перед чтением.
// Возвращает false если произошла ошибка и handler уже отписал ответ.
func (h *SocialHandler) ensureInLeague(c *gin.Context, userID string) bool {
	if _, err := h.social.EnsureUserInLeague(c.Request.Context(), &socialv1.EnsureUserInLeagueRequest{UserId: userID}); err != nil {
		errors.HandleGRPCError(c, err)
		return false
	}
	return true
}
