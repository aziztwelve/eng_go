package auth

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

func (s *service) ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error) {
	return s.authRepository.ListUsers(ctx, limit, offset, search, role)
}
