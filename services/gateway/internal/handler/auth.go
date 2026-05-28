package handler

import (
	"net/http"
	"time"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	"github.com/elearning/gateway/internal/errors"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

type AuthHandler struct {
	authClient *client.AuthClient
	userClient *client.UserClient
}

func NewAuthHandler(authClient *client.AuthClient, userClient *client.UserClient) *AuthHandler {
	return &AuthHandler{
		authClient: authClient,
		userClient: userClient,
	}
}

func (h *AuthHandler) Register(c *gin.Context) {
	var req dto.RegisterRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	_, err := h.authClient.Register(c.Request.Context(), &authv1.RegisterRequest{
		Email:    req.Email,
		Password: req.Password,
		Username: req.Username,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	// Auto-login after registration — return tokens directly so clients
	// don't need a second round-trip.
	loginResp, err := h.authClient.Login(c.Request.Context(), &authv1.LoginRequest{
		Email:    req.Email,
		Password: req.Password,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusCreated, dto.LoginResponse{
		AccessToken:  loginResp.AccessToken,
		RefreshToken: loginResp.RefreshToken,
		ExpiresAt:    loginResp.ExpiresAt.AsTime().Format(time.RFC3339),
	})
}

func (h *AuthHandler) Login(c *gin.Context) {
	var req dto.LoginRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.authClient.Login(c.Request.Context(), &authv1.LoginRequest{
		Email:    req.Email,
		Password: req.Password,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.LoginResponse{
		AccessToken:  resp.AccessToken,
		RefreshToken: resp.RefreshToken,
		ExpiresAt:    resp.ExpiresAt.AsTime().Format(time.RFC3339),
	})
}

func (h *AuthHandler) RefreshToken(c *gin.Context) {
	var req dto.RefreshTokenRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.authClient.RefreshToken(c.Request.Context(), &authv1.RefreshTokenRequest{
		RefreshToken: req.RefreshToken,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.RefreshTokenResponse{
		AccessToken: resp.AccessToken,
		ExpiresAt:   resp.ExpiresAt.AsTime().Format(time.RFC3339),
	})
}

func (h *AuthHandler) GetMe(c *gin.Context) {
	// Получить user_id из контекста (установлен AuthMiddleware)
	userID, exists := c.Get("user_id")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "User ID not found in context"})
		return
	}

	userIDStr, ok := userID.(string)
	if !ok {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Invalid user ID format"})
		return
	}

	// Получить информацию о пользователе из auth-service
	userInfo, err := h.authClient.GetUserInfo(c.Request.Context(), &authv1.GetUserInfoRequest{
		UserId: userIDStr,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	// Получить профиль из user-service
	profileResp, err := h.userClient.GetProfile(c.Request.Context(), &userv1.GetProfileRequest{
		UserId: userIDStr,
	})

	// Формируем ответ
	response := dto.MeResponse{
		ID:        userInfo.Id,
		Email:     userInfo.Email,
		Username:  userInfo.Username,
		Role:      userInfo.Role,
		CreatedAt: userInfo.CreatedAt.AsTime().Format(time.RFC3339),
	}

	// Если профиль найден, добавляем его данные
	if err == nil && profileResp.Profile != nil {
		profile := profileResp.Profile
		response.Profile = &dto.ProfileData{
			FirstName:   getStringValue(profile.FirstName),
			LastName:    getStringValue(profile.LastName),
			AvatarURL:   getStringValue(profile.AvatarUrl),
			Bio:         getStringValue(profile.Bio),
			NativeLang:  getStringValue(profile.NativeLang),
			TargetLang:  getStringValue(profile.TargetLang),
			DateOfBirth: getStringValue(profile.DateOfBirth),
			Timezone:    getStringValue(profile.Timezone),
		}
	}

	c.JSON(http.StatusOK, response)
}

// getStringValue извлекает значение из StringValue wrapper
func getStringValue(wrapper interface{ GetValue() string }) *string {
	if wrapper == nil {
		return nil
	}
	value := wrapper.GetValue()
	if value == "" {
		return nil
	}
	return &value
}

// CreateGuestSession — POST /api/v1/auth/guest. Клиент передаёт device_id,
// получает guest JWT.
func (h *AuthHandler) CreateGuestSession(c *gin.Context) {
	var req dto.GuestSessionRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.authClient.CreateGuestSession(c.Request.Context(), &authv1.CreateGuestSessionRequest{
		DeviceId: req.DeviceID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.GuestSessionResponse{
		UserID:       resp.UserId,
		AccessToken:  resp.AccessToken,
		RefreshToken: resp.RefreshToken,
		ExpiresAt:    resp.ExpiresAt.AsTime().Format(time.RFC3339),
		Created:      resp.Created,
	})
}

// AdminCleanupGuestsRequest — body для admin-эндпоинта (cutoff_days опционален,
// default — 90, как и у крона).
type adminCleanupGuestsRequest struct {
	CutoffDays int32 `json:"cutoff_days"`
}

// CleanupGuests — POST /api/v1/admin/auth/cleanup-guests. Дёргает
// CleanupExpiredGuests на auth-service. Используется в incident-response,
// штатно работает суточный cron в auth-service.
func (h *AuthHandler) CleanupGuests(c *gin.Context) {
	var req adminCleanupGuestsRequest
	// Body не обязателен — пустой = use default cutoff (90).
	_ = c.ShouldBindJSON(&req)

	resp, err := h.authClient.CleanupExpiredGuests(c.Request.Context(), &authv1.CleanupExpiredGuestsRequest{
		CutoffDays: req.CutoffDays,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"deleted_count": resp.GetDeletedCount(),
	})
}

// ClaimGuest — POST /api/v1/auth/claim. Защищён AuthMiddleware: guest_user_id
// берём из JWT (user_id в context). Гость становится registered user без
// смены user_id, prosess сохраняет всю историю прогресса.
func (h *AuthHandler) ClaimGuest(c *gin.Context) {
	userID, exists := c.Get("user_id")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "User ID not found in context"})
		return
	}
	userIDStr, ok := userID.(string)
	if !ok {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Invalid user ID format"})
		return
	}

	var req dto.ClaimGuestRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.authClient.ClaimGuestAccount(c.Request.Context(), &authv1.ClaimGuestAccountRequest{
		GuestUserId: userIDStr,
		Email:       req.Email,
		Password:    req.Password,
		Username:    req.Username,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.ClaimGuestResponse{
		UserID:       resp.UserId,
		AccessToken:  resp.AccessToken,
		RefreshToken: resp.RefreshToken,
		ExpiresAt:    resp.ExpiresAt.AsTime().Format(time.RFC3339),
	})
}

// ClaimGuestOAuth — POST /api/v1/auth/claim/oauth. Защищён AuthMiddleware:
// guest_user_id берётся из JWT. Для onboarding v3 sign-up экрана (Google /
// Apple). См. docs/tasks/mob/onboarding-v3-oki-style.md §2.4.
func (h *AuthHandler) ClaimGuestOAuth(c *gin.Context) {
	userID, exists := c.Get("user_id")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "User ID not found in context"})
		return
	}
	userIDStr, ok := userID.(string)
	if !ok {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Invalid user ID format"})
		return
	}

	var req dto.ClaimGuestOAuthRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	resp, err := h.authClient.ClaimGuestWithOAuth(c.Request.Context(), &authv1.ClaimGuestWithOAuthRequest{
		GuestUserId: userIDStr,
		Provider:    req.Provider,
		IdToken:     req.IDToken,
		Email:       req.Email,
		DisplayName: req.DisplayName,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.ClaimGuestResponse{
		UserID:       resp.UserId,
		AccessToken:  resp.AccessToken,
		RefreshToken: resp.RefreshToken,
		ExpiresAt:    resp.ExpiresAt.AsTime().Format(time.RFC3339),
	})
}
