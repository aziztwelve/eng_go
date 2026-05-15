package user

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) BatchGetProfiles(ctx context.Context, userIDs []string) (map[string]model.Profile, error) {
	if len(userIDs) == 0 {
		return map[string]model.Profile{}, nil
	}
	return s.userRepository.BatchGetProfiles(ctx, userIDs)
}
