package converter

import (
	"time"

	"github.com/elearning/user-service/internal/model"
	repoModel "github.com/elearning/user-service/internal/repository/model"
)

// ToProfileFromRepo конвертирует repository модель в domain модель
func ToProfileFromRepo(repo repoModel.Profile) model.Profile {
	profile := model.Profile{
		ID:        repo.ID,
		UserID:    repo.UserID,
		CreatedAt: repo.CreatedAt,
		UpdatedAt: repo.UpdatedAt,
	}

	if repo.FirstName.Valid {
		profile.FirstName = &repo.FirstName.String
	}

	if repo.LastName.Valid {
		profile.LastName = &repo.LastName.String
	}

	if repo.NativeLang.Valid {
		profile.NativeLang = &repo.NativeLang.String
	}

	if repo.TargetLang.Valid {
		profile.TargetLang = &repo.TargetLang.String
	}

	if repo.Bio.Valid {
		profile.Bio = &repo.Bio.String
	}

	if repo.AvatarURL.Valid {
		profile.AvatarURL = &repo.AvatarURL.String
	}

	if repo.DateOfBirth.Valid {
		profile.DateOfBirth = &repo.DateOfBirth.Time
	}

	if repo.Timezone.Valid {
		profile.Timezone = &repo.Timezone.String
	}

	return profile
}

// ParseDateOfBirth парсит дату рождения из строки ISO 8601
func ParseDateOfBirth(dateStr string) (*time.Time, error) {
	if dateStr == "" {
		return nil, nil
	}

	t, err := time.Parse("2006-01-02", dateStr)
	if err != nil {
		return nil, err
	}

	return &t, nil
}
