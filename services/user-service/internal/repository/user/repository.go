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

// ListUsers возвращает список всех пользователей (admin)
func (r *repo) ListUsers(ctx context.Context) ([]*model.User, error) {
	query := `
		SELECT id, email, full_name, role, created_at, updated_at
		FROM users
		ORDER BY created_at DESC
	`

	rows, err := r.pool.Query(ctx, query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var users []*model.User
	for rows.Next() {
		user := &model.User{}
		err := rows.Scan(
			&user.ID,
			&user.Email,
			&user.FullName,
			&user.Role,
			&user.CreatedAt,
			&user.UpdatedAt,
		)
		if err != nil {
			return nil, err
		}
		users = append(users, user)
	}

	return users, rows.Err()
}

// GetUser возвращает пользователя по ID (admin)
func (r *repo) GetUser(ctx context.Context, userID string) (*model.User, error) {
	query := `
		SELECT id, email, full_name, role, created_at, updated_at
		FROM users
		WHERE id = $1
	`

	user := &model.User{}
	err := r.pool.QueryRow(ctx, query, userID).Scan(
		&user.ID,
		&user.Email,
		&user.FullName,
		&user.Role,
		&user.CreatedAt,
		&user.UpdatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, sql.ErrNoRows
		}
		return nil, err
	}

	return user, nil
}

// UpdateUser обновляет пользователя (admin)
func (r *repo) UpdateUser(ctx context.Context, userID string, fullName, role string) (*model.User, error) {
	query := `
		UPDATE users
		SET full_name = $2, role = $3, updated_at = NOW()
		WHERE id = $1
		RETURNING id, email, full_name, role, created_at, updated_at
	`

	user := &model.User{}
	err := r.pool.QueryRow(ctx, query, userID, fullName, role).Scan(
		&user.ID,
		&user.Email,
		&user.FullName,
		&user.Role,
		&user.CreatedAt,
		&user.UpdatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, sql.ErrNoRows
		}
		return nil, err
	}

	return user, nil
}

// DeleteUser удаляет пользователя (admin)
func (r *repo) DeleteUser(ctx context.Context, userID string) error {
	query := `DELETE FROM users WHERE id = $1`

	result, err := r.pool.Exec(ctx, query, userID)
	if err != nil {
		return err
	}

	if result.RowsAffected() == 0 {
		return sql.ErrNoRows
	}

	return nil
}
