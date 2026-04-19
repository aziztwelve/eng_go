package auth

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

func (s *service) ListUsers(ctx context.Context) ([]model.User, error) {
	return s.authRepository.ListUsers(ctx)
}
