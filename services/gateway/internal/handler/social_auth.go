package handler

import (
	"github.com/elearning/gateway/internal/errors"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"net/http"
	"time"
)

func socialProvider(c *gin.Context) (string, bool) {
	provider := c.Param("provider")
	if provider != "google" && provider != "apple" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Unsupported sign-in provider"})
		return "", false
	}
	return provider, true
}
func (h *AuthHandler) SocialChallenge(c *gin.Context) {
	provider, ok := socialProvider(c)
	if !ok {
		return
	}
	resp, err := h.authClient.SocialChallenge(c.Request.Context(), &authv1.SocialChallengeRequest{Provider: provider})
	if err != nil {
		handleSocialError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"challenge_id": resp.ChallengeId, "nonce": resp.Nonce, "expires_in": resp.ExpiresIn})
}
func (h *AuthHandler) SocialLogin(c *gin.Context) {
	provider, ok := socialProvider(c)
	if !ok {
		return
	}
	c.Request.Body = http.MaxBytesReader(c.Writer, c.Request.Body, 32768)
	var req struct {
		ChallengeID       string `json:"challenge_id" binding:"required,uuid"`
		AuthorizationCode string `json:"authorization_code" binding:"max=8192"`
		IdentityToken     string `json:"identity_token" binding:"max=16384"`
		Name              string `json:"display_name" binding:"max=80"`
	}
	if c.ShouldBindJSON(&req) != nil || (provider == "google" && req.AuthorizationCode == "") || (provider == "apple" && req.IdentityToken == "") {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Missing or invalid social sign-in credentials"})
		return
	}
	resp, err := h.authClient.SocialLogin(c.Request.Context(), &authv1.SocialLoginRequest{Provider: provider, ChallengeId: req.ChallengeID, AuthorizationCode: req.AuthorizationCode, IdentityToken: req.IdentityToken, DisplayName: req.Name})
	if err != nil {
		handleSocialError(c, err)
		return
	}
	c.JSON(http.StatusOK, gin.H{"access_token": resp.Tokens.AccessToken, "refresh_token": resp.Tokens.RefreshToken, "expires_at": resp.Tokens.ExpiresAt.AsTime().Format(time.RFC3339), "created": resp.Created})
}

func handleSocialError(c *gin.Context, err error) {
	if status.Code(err) == codes.Unavailable {
		c.JSON(http.StatusServiceUnavailable, gin.H{"error": "Social sign-in is not configured or temporarily unavailable"})
		return
	}
	errors.HandleGRPCError(c, err)
}
