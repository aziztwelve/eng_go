package user

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) UpdateProfile(ctx context.Context, userID string, data model.UpdateProfileData) (model.Profile, error) {
	if userID == "" {
		return model.Profile{}, model.ErrInvalidUserID
	}

	// Обновляем профиль
	profile, err := s.userRepository.UpdateProfile(ctx, userID, data)
	if err != nil {
		return model.Profile{}, err
	}

	return profile, nil
}
