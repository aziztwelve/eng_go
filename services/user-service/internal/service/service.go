package service

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

// UserService определяет интерфейс для бизнес-логики работы с профилями
type UserService interface {
	GetProfile(ctx context.Context, userID string) (model.Profile, error)
	UpdateProfile(ctx context.Context, userID string, data model.UpdateProfileData) (model.Profile, error)
	GetUserLanguages(ctx context.Context, userID string) (nativeLang, targetLang string, err error)
	BatchGetProfiles(ctx context.Context, userIDs []string) (map[string]model.Profile, error)
}

// OnboardingService определяет интерфейс онбординга юзера.
// См. docs/tasks/onboarding-spec.md §3.1.
type OnboardingService interface {
	GetState(ctx context.Context, userID string) (model.OnboardingState, error)
	PatchState(ctx context.Context, userID string, patch model.PatchOnboardingData) (model.OnboardingState, error)
	Complete(ctx context.Context, userID string) (model.OnboardingState, error)
}
