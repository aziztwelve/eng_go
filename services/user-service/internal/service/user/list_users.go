package user

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) ListUsers(ctx context.Context) ([]*model.User, error) {
	return s.userRepository.ListUsers(ctx)
}
