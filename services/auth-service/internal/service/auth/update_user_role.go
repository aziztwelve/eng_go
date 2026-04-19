package auth

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

func (s *service) UpdateUserRole(ctx context.Context, userID, role string) (model.User, error) {
	return s.authRepository.UpdateUserRole(ctx, userID, role)
}
