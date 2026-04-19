package auth

import (
	"context"
	"errors"

	"github.com/jackc/pgx/v5"

	"github.com/elearning/auth-service/internal/model"
	repoConverter "github.com/elearning/auth-service/internal/repository/converter"
	repoModel "github.com/elearning/auth-service/internal/repository/model"
)

func (r *repository) Create(ctx context.Context, user model.User) error {
	repoUser := repoConverter.ToRepoUser(user)

	query := `
		INSERT INTO public.users (id, email, username, password_hash, role, created_at)
		VALUES ($1, $2, $3, $4, $5, $6)
	`

	_, err := r.pool.Exec(
		ctx,
		query,
		repoUser.ID,
		repoUser.Email,
		repoUser.Username,
		repoUser.PasswordHash,
		repoUser.Role,
		repoUser.CreatedAt,
	)

	if err != nil {
		return err
	}

	return nil
}

func (r *repository) GetByEmail(ctx context.Context, email string) (model.User, error) {
	query := `
		SELECT id, email, username, password_hash, role, created_at
		FROM public.users
		WHERE email = $1
	`

	var repoUser repoModel.User
	err := r.pool.QueryRow(ctx, query, email).Scan(
		&repoUser.ID,
		&repoUser.Email,
		&repoUser.Username,
		&repoUser.PasswordHash,
		&repoUser.Role,
		&repoUser.CreatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

func (r *repository) GetByID(ctx context.Context, id string) (model.User, error) {
	query := `
		SELECT id, email, username, password_hash, role, created_at
		FROM public.users
		WHERE id = $1
	`

	var repoUser repoModel.User
	err := r.pool.QueryRow(ctx, query, id).Scan(
		&repoUser.ID,
		&repoUser.Email,
		&repoUser.Username,
		&repoUser.PasswordHash,
		&repoUser.Role,
		&repoUser.CreatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}
