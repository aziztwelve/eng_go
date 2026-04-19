package user

import (
	"context"
)

func (s *serv) DeleteUser(ctx context.Context, userID string) error {
	return s.userRepository.DeleteUser(ctx, userID)
}
