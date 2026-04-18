package auth

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

// GetUserByID получает пользователя по ID
func (s *service) GetUserByID(ctx context.Context, userID string) (*model.User, error) {
	user, err := s.authRepository.GetByID(ctx, userID)
	if err != nil {
		return nil, err
	}

	return &user, nil
}
