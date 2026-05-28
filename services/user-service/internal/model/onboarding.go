package model

import "time"

// OnboardingState — текущее состояние онбординга юзера. Хранится в одной
// таблице с profile, но логически отделён в собственный домен.
//
// См. docs/tasks/onboarding-spec.md §3.1 и docs/tasks/mob/onboarding-v3-oki-style.md §2.1.
type OnboardingState struct {
	UserID           string
	NativeLanguage   *string  // 'ru' | 'en' | ...
	TargetLanguage   *string
	ProficiencyLevel *string  // 'beginner' | 'a1' | 'a2' | 'b1' | 'b2' | 'just_for_fun'
	DailyGoalXP      *int32   // 10 / 20 / 30 / 50
	Motivation       []string // ['travel', 'work', ...]
	SignupSource     *string  // 'tiktok' | 'friend' | ...
	PlacementScore   *int32   // 0..5
	DateOfBirth      *time.Time
	OnboardedAt      *time.Time

	// Onboarding v3 (Oki-style).
	AgeBracket         *string    // '7-12'|'13-17'|'18-24'|'25-34'|'35-44'|'45-54'|'55+'
	DailyCommitMinutes *int32     // 5|10|15|25
	PainPoint          *string    // 'fear_speaking'|'lack_vocab'|'listening'|'grammar'|'consistency'
	SpeakingSituation  *string    // 'freeze'|'translate_in_head'|'too_short'|'avoid'
	PastBlocker        *string    // 'boring'|'too_hard'|'no_progress'|'no_fit'|'no_support'
	FutureRegret       *string    // 'stay_same'|'limit_self'|'pressure'|'postpone'
	EmotionalReaction  *string    // 'lose_confidence'|'upset'|'burnout'|'lost'
	ReminderSlot       *string    // 'morning'|'day'|'evening'|'flex'
	PaywallSeenAt      *time.Time
	PaywallChoice      *string    // 'annual'|'monthly'|'dismissed'|'special_offer'
}

// Completed возвращает true, если юзер прошёл онбординг.
func (s OnboardingState) Completed() bool {
	return s.OnboardedAt != nil
}

// PatchOnboardingData — partial-update для PatchState. Все поля nullable.
// Только не-nil поля обновляются; nil = «не передавали».
//
// MotivationSet — особый флаг для motivation. Repeated в proto и нет
// чистого способа отличить «не передавали» от «явно очистили в []».
type PatchOnboardingData struct {
	NativeLanguage   *string
	TargetLanguage   *string
	ProficiencyLevel *string
	DailyGoalXP      *int32

	Motivation    []string
	MotivationSet bool

	SignupSource   *string
	PlacementScore *int32
	DateOfBirth    *string // ISO 8601 "2000-05-15"

	// Onboarding v3 (Oki-style).
	AgeBracket         *string
	DailyCommitMinutes *int32
	PainPoint          *string
	SpeakingSituation  *string
	PastBlocker        *string
	FutureRegret       *string
	EmotionalReaction  *string
	ReminderSlot       *string
	PaywallSeenAt      *time.Time
	PaywallChoice      *string
}
