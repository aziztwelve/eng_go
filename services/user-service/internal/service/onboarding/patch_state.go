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

// === Onboarding v3 enums ===
// Должны совпадать с CHECK constraints в migration 003_onboarding_v3_fields.sql.

var validAgeBrackets = map[string]struct{}{
	"7-12":  {},
	"13-17": {},
	"18-24": {},
	"25-34": {},
	"35-44": {},
	"45-54": {},
	"55+":   {},
}

var validDailyCommitMinutes = map[int32]struct{}{
	5:  {},
	10: {},
	15: {},
	25: {},
}

var validPainPoints = map[string]struct{}{
	"fear_speaking": {},
	"lack_vocab":    {},
	"listening":     {},
	"grammar":       {},
	"consistency":   {},
}

var validSpeakingSituations = map[string]struct{}{
	"freeze":             {},
	"translate_in_head":  {},
	"too_short":          {},
	"avoid":              {},
}

var validPastBlockers = map[string]struct{}{
	"boring":      {},
	"too_hard":    {},
	"no_progress": {},
	"no_fit":      {},
	"no_support":  {},
}

var validFutureRegrets = map[string]struct{}{
	"stay_same":  {},
	"limit_self": {},
	"pressure":   {},
	"postpone":   {},
}

var validEmotionalReactions = map[string]struct{}{
	"lose_confidence": {},
	"upset":           {},
	"burnout":         {},
	"lost":            {},
}

var validReminderSlots = map[string]struct{}{
	"morning": {},
	"day":     {},
	"evening": {},
	"flex":    {},
}

var validPaywallChoices = map[string]struct{}{
	"annual":        {},
	"monthly":       {},
	"dismissed":     {},
	"special_offer": {},
}

// maxFreeTextLen — защита от мусора в enum-like полях. Все наши enums
// короче 32 символов; если клиент прислал длиннее — отбрасываем как
// невалидное значение.
const maxFreeTextLen = 32

// validateEnum проверяет, что строка после trim/lowercase входит в set.
// Возвращает нормализованную строку (lowercase + trim) либо ErrInvalidData.
func validateEnum(s *string, set map[string]struct{}) (*string, error) {
	if s == nil {
		return nil, nil
	}
	v := strings.ToLower(strings.TrimSpace(*s))
	if len(v) > maxFreeTextLen {
		return nil, model.ErrInvalidData
	}
	if _, ok := set[v]; !ok {
		return nil, model.ErrInvalidData
	}
	return &v, nil
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

	// === v3 validation ===
	var err error
	if patch.AgeBracket, err = validateEnum(patch.AgeBracket, validAgeBrackets); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.DailyCommitMinutes != nil {
		if _, ok := validDailyCommitMinutes[*patch.DailyCommitMinutes]; !ok {
			return model.OnboardingState{}, model.ErrInvalidData
		}
	}
	if patch.PainPoint, err = validateEnum(patch.PainPoint, validPainPoints); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.SpeakingSituation, err = validateEnum(patch.SpeakingSituation, validSpeakingSituations); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.PastBlocker, err = validateEnum(patch.PastBlocker, validPastBlockers); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.FutureRegret, err = validateEnum(patch.FutureRegret, validFutureRegrets); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.EmotionalReaction, err = validateEnum(patch.EmotionalReaction, validEmotionalReactions); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.ReminderSlot, err = validateEnum(patch.ReminderSlot, validReminderSlots); err != nil {
		return model.OnboardingState{}, err
	}
	if patch.PaywallChoice, err = validateEnum(patch.PaywallChoice, validPaywallChoices); err != nil {
		return model.OnboardingState{}, err
	}
	// PaywallSeenAt — без валидации; принимаем любой timestamp.

	return s.repo.PatchState(ctx, userID, patch)
}
