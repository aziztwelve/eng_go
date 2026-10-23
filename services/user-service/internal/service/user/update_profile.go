package user

import (
	"context"
	"strings"
	"time"
	"unicode/utf8"

	"github.com/elearning/user-service/internal/model"
)

func (s *serv) UpdateProfile(ctx context.Context, userID string, data model.UpdateProfileData) (model.Profile, error) {
	if userID == "" {
		return model.Profile{}, model.ErrInvalidUserID
	}

	if err := validateProfile(data); err != nil {
		return model.Profile{}, err
	}
	if _, err := s.GetProfile(ctx, userID); err != nil {
		return model.Profile{}, err
	}
	// Обновляем профиль
	profile, err := s.userRepository.UpdateProfile(ctx, userID, data)
	if err != nil {
		return model.Profile{}, err
	}

	return profile, nil
}

func validateProfile(data model.UpdateProfileData) error {
	for _, name := range []*string{data.FirstName, data.LastName} {
		if name != nil && utf8.RuneCountInString(*name) > 100 {
			return model.ErrInvalidData
		}
	}
	if data.FirstName != nil && strings.TrimSpace(*data.FirstName) == "" {
		return model.ErrInvalidData
	}
	if data.Gender != nil && *data.Gender != "" && *data.Gender != "male" && *data.Gender != "female" {
		return model.ErrInvalidData
	}
	if data.Timezone != nil {
		if _, err := time.LoadLocation(*data.Timezone); err != nil || *data.Timezone == "" {
			return model.ErrInvalidData
		}
	}
	if data.DateOfBirth != nil && *data.DateOfBirth != "" {
		d, err := time.Parse("2006-01-02", *data.DateOfBirth)
		if err != nil || d.After(time.Now()) || d.Before(time.Now().AddDate(-120, 0, -1)) {
			return model.ErrInvalidData
		}
	}
	return nil
}
