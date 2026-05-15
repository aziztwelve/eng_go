// Package handler — Phase 3: REST endpoints для notifications-service.
// Все маршруты требуют auth-middleware: userID берётся из gin.Context.
package handler

import (
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	notifv1 "github.com/elearning/shared/pkg/proto/notifications/v1"
)

// NotificationsHandler оборачивает NotificationsClient.
type NotificationsHandler struct {
	notif *client.NotificationsClient
}

// NewNotificationsHandler — для DI.
func NewNotificationsHandler(n *client.NotificationsClient) *NotificationsHandler {
	return &NotificationsHandler{notif: n}
}

// === Devices ===

// registerDeviceRequest — POST /api/v1/notifications/devices body.
type registerDeviceRequest struct {
	Platform  string `json:"platform"  binding:"required"` // web | expo | ios | android
	Token     string `json:"token"     binding:"required"`

	// Web Push специфика — обязательны если platform=web.
	Endpoint  string `json:"endpoint,omitempty"`
	P256DH    string `json:"p256dh,omitempty"`
	Auth      string `json:"auth,omitempty"`

	UserAgent string `json:"user_agent,omitempty"`
	Locale    string `json:"locale,omitempty"`
}

func parsePlatform(s string) notifv1.Platform {
	switch strings.ToLower(s) {
	case "web":
		return notifv1.Platform_PLATFORM_WEB
	case "expo":
		return notifv1.Platform_PLATFORM_EXPO
	case "ios":
		return notifv1.Platform_PLATFORM_IOS
	case "android":
		return notifv1.Platform_PLATFORM_ANDROID
	default:
		return notifv1.Platform_PLATFORM_UNSPECIFIED
	}
}

// RegisterDevice POST /api/v1/notifications/devices
func (h *NotificationsHandler) RegisterDevice(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req registerDeviceRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	platform := parsePlatform(req.Platform)
	if platform == notifv1.Platform_PLATFORM_UNSPECIFIED {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid platform"})
		return
	}
	resp, err := h.notif.RegisterDevice(c.Request.Context(), &notifv1.RegisterDeviceRequest{
		UserId:    userID,
		Platform:  platform,
		Token:     req.Token,
		Endpoint:  req.Endpoint,
		P256Dh:    req.P256DH,
		Auth:      req.Auth,
		UserAgent: req.UserAgent,
		Locale:    req.Locale,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// UnregisterDevice DELETE /api/v1/notifications/devices/:id
func (h *NotificationsHandler) UnregisterDevice(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	deviceID := c.Param("id")
	resp, err := h.notif.UnregisterDevice(c.Request.Context(), &notifv1.UnregisterDeviceRequest{
		UserId:   userID,
		DeviceId: deviceID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// ListDevices GET /api/v1/notifications/devices
func (h *NotificationsHandler) ListDevices(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.notif.ListDevices(c.Request.Context(), &notifv1.ListDevicesRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Preferences ===

// GetPreferences GET /api/v1/notifications/preferences
func (h *NotificationsHandler) GetPreferences(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.notif.GetPreferences(c.Request.Context(), &notifv1.GetPreferencesRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// updatePreferencesRequest — PUT /api/v1/notifications/preferences body.
type updatePreferencesRequest struct {
	PracticeReminderEnabled bool   `json:"practice_reminder_enabled"`
	StreakRiskEnabled       bool   `json:"streak_risk_enabled"`
	DailyGoalEnabled        bool   `json:"daily_goal_enabled"`
	AchievementEnabled      bool   `json:"achievement_enabled"`
	QuietHoursStart         int32  `json:"quiet_hours_start"`
	QuietHoursEnd           int32  `json:"quiet_hours_end"`
	Timezone                string `json:"timezone"`
}

// UpdatePreferences PUT /api/v1/notifications/preferences
func (h *NotificationsHandler) UpdatePreferences(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	var req updatePreferencesRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}
	if req.QuietHoursStart < 0 || req.QuietHoursStart > 23 ||
		req.QuietHoursEnd < 0 || req.QuietHoursEnd > 23 {
		c.JSON(http.StatusBadRequest, gin.H{"error": "quiet_hours must be in [0..23]"})
		return
	}
	resp, err := h.notif.UpdatePreferences(c.Request.Context(), &notifv1.UpdatePreferencesRequest{
		Prefs: &notifv1.UserPreferences{
			UserId:                  userID,
			PracticeReminderEnabled: req.PracticeReminderEnabled,
			StreakRiskEnabled:       req.StreakRiskEnabled,
			DailyGoalEnabled:        req.DailyGoalEnabled,
			AchievementEnabled:      req.AchievementEnabled,
			QuietHoursStart:         req.QuietHoursStart,
			QuietHoursEnd:           req.QuietHoursEnd,
			Timezone:                req.Timezone,
		},
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// === Inbox ===

// ListNotifications GET /api/v1/notifications?read=&limit=&offset=
//
// read: "" / "all" → все, "unread" / "false" → непрочитанные, "read" / "true" → прочитанные.
func (h *NotificationsHandler) ListNotifications(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	limit, offset := parsePagination(c)

	readFilter := int32(-1)
	switch strings.ToLower(c.Query("read")) {
	case "false", "0", "unread":
		readFilter = 0
	case "true", "1", "read":
		readFilter = 1
	}

	resp, err := h.notif.ListNotifications(c.Request.Context(), &notifv1.ListNotificationsRequest{
		UserId: userID,
		Read:   readFilter,
		Limit:  int32(limit),
		Offset: int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// MarkRead POST /api/v1/notifications/:id/read
func (h *NotificationsHandler) MarkRead(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	id := c.Param("id")
	resp, err := h.notif.MarkRead(c.Request.Context(), &notifv1.MarkReadRequest{
		UserId:         userID,
		NotificationId: id,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// MarkAllRead POST /api/v1/notifications/read-all
func (h *NotificationsHandler) MarkAllRead(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	resp, err := h.notif.MarkRead(c.Request.Context(), &notifv1.MarkReadRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
