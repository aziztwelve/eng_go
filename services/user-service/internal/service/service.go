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
	
	// Admin methods
	ListUsers(ctx context.Context) ([]*model.User, error)
	GetUser(ctx context.Context, userID string) (*model.User, error)
	UpdateUser(ctx context.Context, userID string, fullName, role string) (*model.User, error)
	DeleteUser(ctx context.Context, userID string) error
}
