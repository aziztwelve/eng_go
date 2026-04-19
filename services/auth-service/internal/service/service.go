package service

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

// AuthService определяет интерфейс для бизнес-логики аутентификации
type AuthService interface {
	Register(ctx context.Context, email, password, username string) (string, error)
	Login(ctx context.Context, email, password string) (model.TokenPair, error)
	ValidateToken(ctx context.Context, token string) (string, string, error)
	RefreshToken(ctx context.Context, refreshToken string) (string, error)
	GetUserByID(ctx context.Context, userID string) (*model.User, error)
	
	// Admin methods
	ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error)
	UpdateUserRole(ctx context.Context, userID, role string) (model.User, error)
	DeleteUser(ctx context.Context, userID string) error
}
