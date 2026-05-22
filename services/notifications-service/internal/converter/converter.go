// Package converter — proto↔model для notifications-service.
package converter

import (
	"encoding/json"

	"google.golang.org/protobuf/encoding/protojson"
	"google.golang.org/protobuf/types/known/structpb"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/notifications-service/internal/model"
	notifv1 "github.com/elearning/shared/pkg/proto/notifications/v1"
)

// === Platform ===

// PlatformFromProto — proto enum → domain.
func PlatformFromProto(p notifv1.Platform) model.Platform {
	switch p {
	case notifv1.Platform_PLATFORM_WEB:
		return model.PlatformWeb
	case notifv1.Platform_PLATFORM_EXPO:
		return model.PlatformExpo
	case notifv1.Platform_PLATFORM_IOS:
		return model.PlatformIOS
	case notifv1.Platform_PLATFORM_ANDROID:
		return model.PlatformAndroid
	default:
		return ""
	}
}

// PlatformToProto — domain → proto enum.
func PlatformToProto(p model.Platform) notifv1.Platform {
	switch p {
	case model.PlatformWeb:
		return notifv1.Platform_PLATFORM_WEB
	case model.PlatformExpo:
		return notifv1.Platform_PLATFORM_EXPO
	case model.PlatformIOS:
		return notifv1.Platform_PLATFORM_IOS
	case model.PlatformAndroid:
		return notifv1.Platform_PLATFORM_ANDROID
	default:
		return notifv1.Platform_PLATFORM_UNSPECIFIED
	}
}

// === Channel ===

// ChannelFromProto — proto enum → domain.
func ChannelFromProto(c notifv1.Channel) model.Channel {
	switch c {
	case notifv1.Channel_CHANNEL_PRACTICE_REMINDER:
		return model.ChannelPracticeReminder
	case notifv1.Channel_CHANNEL_STREAK_RISK:
		return model.ChannelStreakRisk
	case notifv1.Channel_CHANNEL_DAILY_GOAL:
		return model.ChannelDailyGoal
	case notifv1.Channel_CHANNEL_ACHIEVEMENT:
		return model.ChannelAchievement
	default:
		return ""
	}
}

// ChannelToProto — domain → proto enum.
func ChannelToProto(c model.Channel) notifv1.Channel {
	switch c {
	case model.ChannelPracticeReminder:
		return notifv1.Channel_CHANNEL_PRACTICE_REMINDER
	case model.ChannelStreakRisk:
		return notifv1.Channel_CHANNEL_STREAK_RISK
	case model.ChannelDailyGoal:
		return notifv1.Channel_CHANNEL_DAILY_GOAL
	case model.ChannelAchievement:
		return notifv1.Channel_CHANNEL_ACHIEVEMENT
	default:
		return notifv1.Channel_CHANNEL_UNSPECIFIED
	}
}

// === SendStatus ===

// SendStatusToProto — domain → proto enum.
func SendStatusToProto(s model.SendStatus) notifv1.SendStatus {
	switch s {
	case model.StatusQueued:
		return notifv1.SendStatus_SEND_STATUS_QUEUED
	case model.StatusSent:
		return notifv1.SendStatus_SEND_STATUS_SENT
	case model.StatusFailed:
		return notifv1.SendStatus_SEND_STATUS_FAILED
	case model.StatusSkipped:
		return notifv1.SendStatus_SEND_STATUS_SKIPPED
	default:
		return notifv1.SendStatus_SEND_STATUS_UNSPECIFIED
	}
}

// === DeviceToken ===

// ToDeviceTokenProto — model → proto.
func ToDeviceTokenProto(d *model.DeviceToken) *notifv1.DeviceToken {
	if d == nil {
		return nil
	}
	out := &notifv1.DeviceToken{
		Id:         d.ID,
		UserId:     d.UserID,
		Platform:   PlatformToProto(d.Platform),
		Token:      d.Token,
		Endpoint:   d.Endpoint,
		P256Dh:     d.P256DH,
		Auth:       d.Auth,
		UserAgent:  d.UserAgent,
		Locale:     d.Locale,
		LastSeenAt: timestamppb.New(d.LastSeenAt),
		CreatedAt:  timestamppb.New(d.CreatedAt),
	}
	if d.RevokedAt != nil {
		out.RevokedAt = timestamppb.New(*d.RevokedAt)
	}
	return out
}

// === UserPreferences ===

// ToPreferencesProto — model → proto.
func ToPreferencesProto(p *model.UserPreferences) *notifv1.UserPreferences {
	if p == nil {
		return nil
	}
	out := &notifv1.UserPreferences{
		UserId:                  p.UserID,
		PracticeReminderEnabled: p.PracticeReminderEnabled,
		StreakRiskEnabled:       p.StreakRiskEnabled,
		DailyGoalEnabled:        p.DailyGoalEnabled,
		AchievementEnabled:      p.AchievementEnabled,
		FriendRequestEnabled:    p.FriendRequestEnabled,
		QuietHoursStart:         int32(p.QuietHoursStart),
		QuietHoursEnd:           int32(p.QuietHoursEnd),
		Timezone:                p.Timezone,
	}
	if !p.UpdatedAt.IsZero() {
		out.UpdatedAt = timestamppb.New(p.UpdatedAt)
	}
	return out
}

// PreferencesFromProto — proto → model. Caller отвечает за userID.
func PreferencesFromProto(p *notifv1.UserPreferences) *model.UserPreferences {
	if p == nil {
		return nil
	}
	return &model.UserPreferences{
		UserID:                  p.UserId,
		PracticeReminderEnabled: p.PracticeReminderEnabled,
		StreakRiskEnabled:       p.StreakRiskEnabled,
		DailyGoalEnabled:        p.DailyGoalEnabled,
		AchievementEnabled:      p.AchievementEnabled,
		FriendRequestEnabled:    p.FriendRequestEnabled,
		QuietHoursStart:         int(p.QuietHoursStart),
		QuietHoursEnd:           int(p.QuietHoursEnd),
		Timezone:                p.Timezone,
	}
}

// === NotificationLog ===

// ToNotificationLogProto — model → proto.
func ToNotificationLogProto(n *model.NotificationLog) *notifv1.NotificationLog {
	if n == nil {
		return nil
	}
	out := &notifv1.NotificationLog{
		Id:               n.ID,
		UserId:           n.UserID,
		Channel:          ChannelToProto(n.Channel),
		Kind:             n.Kind,
		Title:            n.Title,
		Body:             n.Body,
		DedupKey:         n.DedupKey,
		Status:           SendStatusToProto(n.Status),
		Error:            n.Error,
		DevicesAttempted: n.DevicesAttempted,
		DevicesSucceeded: n.DevicesSucceeded,
		IsRead:           n.IsRead,
		CreatedAt:        timestamppb.New(n.CreatedAt),
	}
	if data, err := JSONToStruct(n.Data); err == nil {
		out.Data = data
	}
	if n.ReadAt != nil {
		out.ReadAt = timestamppb.New(*n.ReadAt)
	}
	if n.ScheduledAt != nil {
		out.ScheduledAt = timestamppb.New(*n.ScheduledAt)
	}
	if n.SentAt != nil {
		out.SentAt = timestamppb.New(*n.SentAt)
	}
	return out
}

// === Struct ↔ JSON ===

// StructToJSON — protobuf Struct → raw JSON.
func StructToJSON(s *structpb.Struct) ([]byte, error) {
	if s == nil {
		return nil, nil
	}
	return protojson.Marshal(s)
}

// JSONToStruct — raw JSON → Struct.
func JSONToStruct(b []byte) (*structpb.Struct, error) {
	if len(b) == 0 {
		return nil, nil
	}
	var v map[string]interface{}
	if err := json.Unmarshal(b, &v); err != nil {
		return nil, err
	}
	return structpb.NewStruct(v)
}
