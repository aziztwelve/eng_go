package repository

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

// AuthRepository определяет интерфейс для работы с данными пользователей
type AuthRepository interface {
	Create(ctx context.Context, user model.User) error
	GetByEmail(ctx context.Context, email string) (model.User, error)
	GetByID(ctx context.Context, id string) (model.User, error)
}
