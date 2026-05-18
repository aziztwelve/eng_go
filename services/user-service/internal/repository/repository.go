package repository

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

// UserRepository определяет интерфейс для работы с профилями пользователей
type UserRepository interface {
	GetProfile(ctx context.Context, userID string) (model.Profile, error)
	CreateProfile(ctx context.Context, profile model.Profile) error
	UpdateProfile(ctx context.Context, userID string, data model.UpdateProfileData) (model.Profile, error)
	GetUserLanguages(ctx context.Context, userID string) (nativeLang, targetLang string, err error)
	BatchGetProfiles(ctx context.Context, userIDs []string) (map[string]model.Profile, error)
}

// OnboardingRepository — repository для онбординг-операций над таблицей profiles.
// Реализация в internal/repository/onboarding.
type OnboardingRepository interface {
	GetState(ctx context.Context, userID string) (model.OnboardingState, error)
	PatchState(ctx context.Context, userID string, patch model.PatchOnboardingData) (model.OnboardingState, error)
	Complete(ctx context.Context, userID string) (model.OnboardingState, error)
}
