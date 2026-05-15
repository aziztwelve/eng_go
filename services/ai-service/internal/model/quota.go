package model

import "time"

// Plan — тарифный план юзера. Влияет на лимиты.
type Plan string

const (
	PlanFree    Plan = "free"
	PlanPremium Plan = "premium"
)

// QuotaKind — тип AI-call'a, который надо учесть в counter'е.
type QuotaKind string

const (
	QuotaKindChat    QuotaKind = "chat"
	QuotaKindVoice   QuotaKind = "voice"   // время в минутах
	QuotaKindWriting QuotaKind = "writing"
)

// UsageQuota — суточные счётчики (ai_usage_quota).
type UsageQuota struct {
	UserID        string
	Date          time.Time // truncate to day (UTC)
	ChatRequests  int32
	VoiceMinutes  float64
	WritingChecks int32
}

// QuotaLimits — лимиты по плану.
type QuotaLimits struct {
	Plan          Plan
	ChatLimit     int32
	VoiceLimit    float64 // минут
	WritingLimit  int32
	ResetsAt      time.Time
}

// IsUnlimited — -1 значит безлимит.
func IsUnlimited(limit int32) bool {
	return limit < 0
}

// IsUnlimitedFloat — < 0 значит безлимит.
func IsUnlimitedFloat(limit float64) bool {
	return limit < 0
}
