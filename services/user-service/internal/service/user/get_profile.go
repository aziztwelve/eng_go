package user

import (
	"context"
	"errors"
	"time"

	"github.com/google/uuid"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) GetProfile(ctx context.Context, userID string) (model.Profile, error) {
	if userID == "" {
		return model.Profile{}, model.ErrInvalidUserID
	}

	// Попытка получить профиль
	profile, err := s.userRepository.GetProfile(ctx, userID)
	if err != nil {
		// Если профиль не найден - создаем пустой (lazy creation)
		if errors.Is(err, model.ErrProfileNotFound) {
			newProfile := model.Profile{
				ID:        uuid.New().String(),
				UserID:    userID,
				CreatedAt: time.Now(),
				UpdatedAt: time.Now(),
			}

			err = s.userRepository.CreateProfile(ctx, newProfile)
			if err != nil {
				return model.Profile{}, err
			}

			return newProfile, nil
		}

		return model.Profile{}, err
	}

	return profile, nil
}
