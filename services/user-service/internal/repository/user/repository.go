package user

import (
	"context"
	"database/sql"
	"errors"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/user-service/internal/model"
	"github.com/elearning/user-service/internal/repository"
	"github.com/elearning/user-service/internal/repository/converter"
	repoModel "github.com/elearning/user-service/internal/repository/model"
)

type repo struct {
	pool *pgxpool.Pool
}

// NewRepository создает новый экземпляр репозитория
func NewRepository(pool *pgxpool.Pool) repository.UserRepository {
	return &repo{
		pool: pool,
	}
}

func (r *repo) GetProfile(ctx context.Context, userID string) (model.Profile, error) {
	var profile repoModel.Profile

	err := r.pool.QueryRow(ctx, queryGetProfile, userID).Scan(
		&profile.ID,
		&profile.UserID,
		&profile.FirstName,
		&profile.LastName,
		&profile.NativeLang,
		&profile.TargetLang,
		&profile.Bio,
		&profile.AvatarURL,
		&profile.DateOfBirth,
		&profile.Timezone,
		&profile.CreatedAt,
		&profile.UpdatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.Profile{}, model.ErrProfileNotFound
		}
		return model.Profile{}, err
	}

	return converter.ToProfileFromRepo(profile), nil
}

func (r *repo) CreateProfile(ctx context.Context, profile model.Profile) error {
	var created repoModel.Profile

	err := r.pool.QueryRow(ctx, queryCreateProfile, profile.ID, profile.UserID).Scan(
		&created.ID,
		&created.UserID,
		&created.FirstName,
		&created.LastName,
		&created.NativeLang,
		&created.TargetLang,
		&created.Bio,
		&created.AvatarURL,
		&created.DateOfBirth,
		&created.Timezone,
		&created.CreatedAt,
		&created.UpdatedAt,
	)

	return err
}

func (r *repo) UpdateProfile(ctx context.Context, userID string, data model.UpdateProfileData) (model.Profile, error) {
	var dateOfBirth sql.NullTime
	if data.DateOfBirth != nil && *data.DateOfBirth != "" {
		parsed, err := converter.ParseDateOfBirth(*data.DateOfBirth)
		if err != nil {
			return model.Profile{}, model.ErrInvalidData
		}
		if parsed != nil {
			dateOfBirth = sql.NullTime{Time: *parsed, Valid: true}
		}
	}

	var profile repoModel.Profile

	err := r.pool.QueryRow(ctx, queryUpdateProfile,
		userID,
		toNullString(data.FirstName),
		toNullString(data.LastName),
		toNullString(data.NativeLang),
		toNullString(data.TargetLang),
		toNullString(data.Bio),
		toNullString(data.AvatarURL),
		dateOfBirth,
		toNullString(data.Timezone),
	).Scan(
		&profile.ID,
		&profile.UserID,
		&profile.FirstName,
		&profile.LastName,
		&profile.NativeLang,
		&profile.TargetLang,
		&profile.Bio,
		&profile.AvatarURL,
		&profile.DateOfBirth,
		&profile.Timezone,
		&profile.CreatedAt,
		&profile.UpdatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.Profile{}, model.ErrProfileNotFound
		}
		return model.Profile{}, err
	}

	return converter.ToProfileFromRepo(profile), nil
}

func (r *repo) GetUserLanguages(ctx context.Context, userID string) (nativeLang, targetLang string, err error) {
	err = r.pool.QueryRow(ctx, queryGetUserLanguages, userID).Scan(&nativeLang, &targetLang)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return "", "", model.ErrProfileNotFound
		}
		return "", "", err
	}

	return nativeLang, targetLang, nil
}

func toNullString(s *string) sql.NullString {
	if s == nil || *s == "" {
		return sql.NullString{}
	}
	return sql.NullString{String: *s, Valid: true}
}
