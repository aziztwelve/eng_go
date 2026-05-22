// Phase 4.5: REST endpoints для friends-фичи (social-service.Friends).
//
// Все маршруты требуют auth. user_id берётся из gin.Context (auth-middleware).
package handler

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
)

// FriendsHandler оборачивает SocialClient (Friends RPC).
type FriendsHandler struct {
	social *client.SocialClient
}

func NewFriendsHandler(social *client.SocialClient) *FriendsHandler {
	return &FriendsHandler{social: social}
}

// GET /api/v1/friends?limit=&offset=
func (h *FriendsHandler) ListFriends(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "50"))
	if limit <= 0 || limit > 200 {
		limit = 50
	}
	offset, _ := strconv.Atoi(c.DefaultQuery("offset", "0"))
	if offset < 0 {
		offset = 0
	}
	resp, err := h.social.ListFriends(c.Request.Context(), &socialv1.ListFriendsRequest{
		UserId: userID, Limit: int32(limit), Offset: int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GET /api/v1/friends/pending?direction=&limit=&offset=
// direction: "all" (default) | "incoming" | "outgoing"
func (h *FriendsHandler) ListPending(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	dir := int32(0)
	switch c.DefaultQuery("direction", "all") {
	case "incoming":
		dir = 1
	case "outgoing":
		dir = 2
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "50"))
	if limit <= 0 || limit > 200 {
		limit = 50
	}
	offset, _ := strconv.Atoi(c.DefaultQuery("offset", "0"))
	if offset < 0 {
		offset = 0
	}
	resp, err := h.social.ListPendingRequests(c.Request.Context(), &socialv1.ListPendingRequestsRequest{
		UserId:    userID,
		Direction: dir,
		Limit:     int32(limit),
		Offset:    int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// POST /api/v1/friends/request   { "user_id": "uuid" }
func (h *FriendsHandler) SendRequest(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var body struct {
		UserID string `json:"user_id" binding:"required"`
	}
	if err := c.ShouldBindJSON(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	resp, err := h.social.SendFriendRequest(c.Request.Context(), &socialv1.SendFriendRequestRequest{
		UserId:   userID,
		TargetId: body.UserID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// POST /api/v1/friends/accept/:friendshipId
func (h *FriendsHandler) Accept(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.social.AcceptFriendRequest(c.Request.Context(), &socialv1.AcceptFriendRequestRequest{
		UserId:       userID,
		FriendshipId: c.Param("friendshipId"),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// POST /api/v1/friends/reject/:friendshipId
func (h *FriendsHandler) Reject(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	if _, err := h.social.RejectFriendRequest(c.Request.Context(), &socialv1.RejectFriendRequestRequest{
		UserId:       userID,
		FriendshipId: c.Param("friendshipId"),
	}); err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"ok": true})
}

// DELETE /api/v1/friends/:friendId
func (h *FriendsHandler) Remove(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	if _, err := h.social.RemoveFriend(c.Request.Context(), &socialv1.RemoveFriendRequest{
		UserId:   userID,
		FriendId: c.Param("friendId"),
	}); err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"ok": true})
}

// GET /api/v1/friends/search?q=username&limit=
func (h *FriendsHandler) Search(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	q := c.Query("q")
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "20"))
	if limit <= 0 || limit > 50 {
		limit = 20
	}
	resp, err := h.social.SearchUsersByUsername(c.Request.Context(), &socialv1.SearchUsersByUsernameRequest{
		UserId: userID,
		Query:  q,
		Limit:  int32(limit),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// GET /api/v1/friends/leaderboard?limit=
func (h *FriendsHandler) Leaderboard(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, _ := strconv.Atoi(c.DefaultQuery("limit", "50"))
	if limit <= 0 || limit > 200 {
		limit = 50
	}
	resp, err := h.social.GetFriendsLeaderboard(c.Request.Context(), &socialv1.GetFriendsLeaderboardRequest{
		UserId: userID,
		Limit:  int32(limit),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
