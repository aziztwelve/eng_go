package user

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) GetUser(ctx context.Context, userID string) (*model.User, error) {
	return s.userRepository.GetUser(ctx, userID)
}
