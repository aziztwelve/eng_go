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
}
