package model

import "time"

// OnboardingState — текущее состояние онбординга юзера. Хранится в одной
// таблице с profile, но логически отделён в собственный домен.
//
// См. docs/tasks/onboarding-spec.md §3.1.
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
}
