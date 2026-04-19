package auth

import (
	"context"
)

func (s *service) DeleteUser(ctx context.Context, userID string) error {
	return s.authRepository.DeleteUser(ctx, userID)
}
