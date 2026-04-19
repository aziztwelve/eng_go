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
}
