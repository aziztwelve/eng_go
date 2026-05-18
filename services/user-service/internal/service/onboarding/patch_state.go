package onboarding

import (
	"context"
	"strings"
	"time"

	"github.com/elearning/user-service/internal/model"
)

// validProficiencyLevels — допустимые значения для proficiency_level
// (см. onboarding-spec.md §3.1).
var validProficiencyLevels = map[string]struct{}{
	"beginner":     {},
	"a1":           {},
	"a2":           {},
	"b1":           {},
	"b2":           {},
	"just_for_fun": {},
}

// validDailyGoals — допустимые значения daily_goal_xp.
var validDailyGoals = map[int32]struct{}{
	10: {},
	20: {},
	30: {},
	50: {},
}

// PatchState — partial update. Валидируем enum-поля перед записью.
func (s *serv) PatchState(ctx context.Context, userID string, patch model.PatchOnboardingData) (model.OnboardingState, error) {
	if patch.ProficiencyLevel != nil {
		level := strings.ToLower(strings.TrimSpace(*patch.ProficiencyLevel))
		if _, ok := validProficiencyLevels[level]; !ok {
			return model.OnboardingState{}, model.ErrInvalidData
		}
		patch.ProficiencyLevel = &level
	}

	if patch.DailyGoalXP != nil {
		if _, ok := validDailyGoals[*patch.DailyGoalXP]; !ok {
			return model.OnboardingState{}, model.ErrInvalidData
		}
	}

	if patch.PlacementScore != nil {
		if *patch.PlacementScore < 0 || *patch.PlacementScore > 5 {
			return model.OnboardingState{}, model.ErrInvalidData
		}
	}

	if patch.DateOfBirth != nil && *patch.DateOfBirth != "" {
		if _, err := time.Parse("2006-01-02", *patch.DateOfBirth); err != nil {
			return model.OnboardingState{}, model.ErrInvalidData
		}
	}

	return s.repo.PatchState(ctx, userID, patch)
}
