package auth

import (
	"context"
	"time"

	"github.com/google/uuid"
	"golang.org/x/crypto/bcrypt"

	"github.com/elearning/auth-service/internal/model"
)

const (
	defaultRole = "student"
	bcryptCost  = 12
)

func (s *service) Register(ctx context.Context, email, password, username string) (string, error) {
	// Проверяем, существует ли пользователь
	_, err := s.authRepository.GetByEmail(ctx, email)
	if err == nil {
		return "", model.ErrUserAlreadyExists
	}
	if err != model.ErrUserNotFound {
		return "", err
	}

	// Хешируем пароль
	passwordHash, err := bcrypt.GenerateFromPassword([]byte(password), bcryptCost)
	if err != nil {
		return "", err
	}

	// Создаем пользователя
	user := model.User{
		ID:           uuid.NewString(),
		Email:        email,
		Username:     username,
		PasswordHash: string(passwordHash),
		Role:         defaultRole,
		CreatedAt:    time.Now(),
	}

	if err := s.authRepository.Create(ctx, user); err != nil {
		return "", err
	}

	return user.ID, nil
}
