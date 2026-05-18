package dto

// === Onboarding (см. docs/tasks/onboarding-spec.md §3.1) ===

// OnboardingStateResponse — текущее состояние онбординга.
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
}

// PatchOnboardingRequest — partial update.
//
// Все поля nullable. Любое не-nil поле перезаписывает текущее значение в БД.
// motivation особый: используем флаг motivation_set, чтобы отличить «не
// передавали» от «явно очистили в []».
type PatchOnboardingRequest struct {
	NativeLanguage   *string  `json:"native_language,omitempty"`
	TargetLanguage   *string  `json:"target_language,omitempty"`
	ProficiencyLevel *string  `json:"proficiency_level,omitempty"`
	DailyGoalXP      *int32   `json:"daily_goal_xp,omitempty"`

	Motivation    []string `json:"motivation,omitempty"`
	MotivationSet bool     `json:"motivation_set,omitempty"`

	SignupSource   *string `json:"signup_source,omitempty"`
	PlacementScore *int32  `json:"placement_score,omitempty"`
	DateOfBirth    *string `json:"date_of_birth,omitempty"`
}
