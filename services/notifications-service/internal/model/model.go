// Package model — доменные структуры notifications-service.
package model

import (
	"encoding/json"
	"time"
)

// Platform — куда шлём push.
type Platform string

const (
	PlatformWeb     Platform = "web"
	PlatformExpo    Platform = "expo"
	PlatformIOS     Platform = "ios"
	PlatformAndroid Platform = "android"
)

// IsValid — соответствует CHECK constraint device_tokens.
func (p Platform) IsValid() bool {
	switch p {
	case PlatformWeb, PlatformExpo, PlatformIOS, PlatformAndroid:
		return true
	default:
		return false
	}
}

// Channel — категория push'ей. 1:1 с прокси-полями user_preferences.
type Channel string

const (
	ChannelPracticeReminder Channel = "practice_reminder"
	ChannelStreakRisk       Channel = "streak_risk"
	ChannelDailyGoal        Channel = "daily_goal"
	ChannelAchievement      Channel = "achievement"
)

// IsValid — соответствует CHECK constraint notification_log.channel.
func (c Channel) IsValid() bool {
	switch c {
	case ChannelPracticeReminder, ChannelStreakRisk, ChannelDailyGoal, ChannelAchievement:
		return true
	default:
		return false
	}
}

// SendStatus — состояние записи в notification_log.
type SendStatus string

const (
	StatusQueued  SendStatus = "queued"
	StatusSent    SendStatus = "sent"
	StatusFailed  SendStatus = "failed"
	StatusSkipped SendStatus = "skipped"
)

// SkippedReason — почему отправка была пропущена (для status=skipped).
type SkippedReason string

const (
	SkippedNone        SkippedReason = ""
	SkippedPref        SkippedReason = "pref"
	SkippedQuietHours  SkippedReason = "quiet_hours"
	SkippedDedup       SkippedReason = "dedup"
	SkippedNoDevices   SkippedReason = "no_devices"
)

// Дефолты для prefs — используются когда записи в user_preferences ещё нет.
const (
	DefaultQuietHoursStart = 22
	DefaultQuietHoursEnd   = 8
)

// DeviceToken — запись device_tokens.
type DeviceToken struct {
	ID       string
	UserID   string
	Platform Platform
	Token    string

	// Web Push специфика. Для не-web — пустые.
	Endpoint string
	P256DH   string
	Auth     string

	UserAgent string
	Locale    string

	LastSeenAt time.Time
	RevokedAt  *time.Time
	CreatedAt  time.Time
}

// IsActive — устройство ещё может принимать push.
func (d *DeviceToken) IsActive() bool {
	return d.RevokedAt == nil
}

// UserPreferences — запись user_preferences.
type UserPreferences struct {
	UserID string

	PracticeReminderEnabled bool
	StreakRiskEnabled       bool
	DailyGoalEnabled        bool
	AchievementEnabled      bool

	QuietHoursStart int
	QuietHoursEnd   int
	Timezone        string

	UpdatedAt time.Time
}

// DefaultPreferences — что отдаёт сервис, если в БД ещё нет записи.
func DefaultPreferences(userID string) *UserPreferences {
	return &UserPreferences{
		UserID:                  userID,
		PracticeReminderEnabled: true,
		StreakRiskEnabled:       true,
		DailyGoalEnabled:        true,
		AchievementEnabled:      true,
		QuietHoursStart:         DefaultQuietHoursStart,
		QuietHoursEnd:           DefaultQuietHoursEnd,
		Timezone:                "",
	}
}

// IsChannelEnabled — проверка по каналу.
func (p *UserPreferences) IsChannelEnabled(c Channel) bool {
	switch c {
	case ChannelPracticeReminder:
		return p.PracticeReminderEnabled
	case ChannelStreakRisk:
		return p.StreakRiskEnabled
	case ChannelDailyGoal:
		return p.DailyGoalEnabled
	case ChannelAchievement:
		return p.AchievementEnabled
	default:
		return false
	}
}

// IsInQuietHours — попадает ли now в окно тишины (в локальном TZ юзера,
// caller должен передать уже сконвертированное время).
//
// start == end → окно отключено.
// start < end  → обычное окно (например 13..18).
// start > end  → окно через полночь (например 22..8 = 22..23 + 0..7).
func (p *UserPreferences) IsInQuietHours(localHour int) bool {
	s, e := p.QuietHoursStart, p.QuietHoursEnd
	if s == e {
		return false
	}
	if s < e {
		return localHour >= s && localHour < e
	}
	return localHour >= s || localHour < e
}

// NotificationLog — запись notification_log.
type NotificationLog struct {
	ID      string
	UserID  string
	Channel Channel
	Kind    string

	Title string
	Body  string
	Data  json.RawMessage

	DedupKey       string
	Status         SendStatus
	Error          string
	SkippedReason  SkippedReason

	DevicesAttempted int32
	DevicesSucceeded int32

	IsRead bool
	ReadAt *time.Time

	ScheduledAt *time.Time
	SentAt      *time.Time
	CreatedAt   time.Time
}
