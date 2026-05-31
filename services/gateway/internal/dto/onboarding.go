package dto

// === Onboarding (см. docs/tasks/onboarding-spec.md §3.1 + Onboarding v3
// в docs/tasks/mob/onboarding-v3-oki-style.md §2.1) ===

// OnboardingStateResponse — текущее состояние онбординга.
//
// Включает поля v2 (native/target/level/daily_goal_xp/motivation/source/dob)
// и v3 (age_bracket/daily_commit_minutes/pain_point/speaking_situation/
// past_blocker/future_regret/emotional_reaction/reminder_slot/
// paywall_seen_at/paywall_choice).
type OnboardingStateResponse struct {
	UserID           string   `json:"user_id"`
	NativeLanguage   *string  `json:"native_language,omitempty"`
	TargetLanguage   *string  `json:"target_language,omitempty"`
	ProficiencyLevel *string  `json:"proficiency_level,omitempty"`
	DailyGoalXP      *int32   `json:"daily_goal_xp,omitempty"`
	Motivation       []string `json:"motivation"`
	SignupSource     *string  `json:"signup_source,omitempty"`
	PlacementScore   *int32   `json:"placement_score,omitempty"`
	DateOfBirth      *string  `json:"date_of_birth,omitempty"`
	OnboardedAt      *string  `json:"onboarded_at,omitempty"`
	Completed        bool     `json:"completed"`

	// === Onboarding v3 (Oki-style) ===
	AgeBracket          *string `json:"age_bracket,omitempty"`
	DailyCommitMinutes  *int32  `json:"daily_commit_minutes,omitempty"`
	PainPoint           *string `json:"pain_point,omitempty"`
	SpeakingSituation   *string `json:"speaking_situation,omitempty"`
	PastBlocker         *string `json:"past_blocker,omitempty"`
	FutureRegret        *string `json:"future_regret,omitempty"`
	EmotionalReaction   *string `json:"emotional_reaction,omitempty"`
	ReminderSlot        *string `json:"reminder_slot,omitempty"`
	PaywallSeenAt       *string `json:"paywall_seen_at,omitempty"`
	PaywallChoice       *string `json:"paywall_choice,omitempty"`
}

// PatchOnboardingRequest — partial update.
//
// Все поля nullable. Любое не-nil поле перезаписывает текущее значение в БД.
// motivation особый: используем флаг motivation_set, чтобы отличить «не
// передавали» от «явно очистили в []».
type PatchOnboardingRequest struct {
	NativeLanguage   *string `json:"native_language,omitempty"`
	TargetLanguage   *string `json:"target_language,omitempty"`
	ProficiencyLevel *string `json:"proficiency_level,omitempty"`
	DailyGoalXP      *int32  `json:"daily_goal_xp,omitempty"`

	Motivation    []string `json:"motivation,omitempty"`
	MotivationSet bool     `json:"motivation_set,omitempty"`

	SignupSource   *string `json:"signup_source,omitempty"`
	PlacementScore *int32  `json:"placement_score,omitempty"`
	DateOfBirth    *string `json:"date_of_birth,omitempty"`

	// === Onboarding v3 (Oki-style) — все nullable для partial-update ===
	AgeBracket         *string `json:"age_bracket,omitempty"`
	DailyCommitMinutes *int32  `json:"daily_commit_minutes,omitempty"`
	PainPoint          *string `json:"pain_point,omitempty"`
	SpeakingSituation  *string `json:"speaking_situation,omitempty"`
	PastBlocker        *string `json:"past_blocker,omitempty"`
	FutureRegret       *string `json:"future_regret,omitempty"`
	EmotionalReaction  *string `json:"emotional_reaction,omitempty"`
	ReminderSlot       *string `json:"reminder_slot,omitempty"`
	// PaywallSeenAt принимаем как RFC3339-string и конвертим в Timestamp в handler'е.
	PaywallSeenAt *string `json:"paywall_seen_at,omitempty"`
	PaywallChoice *string `json:"paywall_choice,omitempty"`
}
