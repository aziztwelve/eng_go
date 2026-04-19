package user

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) UpdateUser(ctx context.Context, userID string, fullName, role string) (*model.User, error) {
	return s.userRepository.UpdateUser(ctx, userID, fullName, role)
}
