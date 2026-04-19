package auth

import (
	"context"
	"errors"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/auth-service/internal/model"
	def "github.com/elearning/auth-service/internal/repository"
)

var _ def.AuthRepository = (*repository)(nil)

type repository struct {
	pool *pgxpool.Pool
}

// NewRepository создает новый экземпляр репозитория
func NewRepository(pool *pgxpool.Pool) *repository {
	return &repository{
		pool: pool,
	}
}

// ListUsers возвращает список всех пользователей (admin)
func (r *repository) ListUsers(ctx context.Context) ([]model.User, error) {
	query := `
		SELECT id, email, username, password_hash, role, created_at
		FROM public.users
		ORDER BY created_at DESC
	`

	rows, err := r.pool.Query(ctx, query)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var users []model.User
	for rows.Next() {
		var user model.User
		err := rows.Scan(
			&user.ID,
			&user.Email,
			&user.Username,
			&user.PasswordHash,
			&user.Role,
			&user.CreatedAt,
		)
		if err != nil {
			return nil, err
		}
		users = append(users, user)
	}

	return users, rows.Err()
}

// UpdateUserRole обновляет роль пользователя (admin)
func (r *repository) UpdateUserRole(ctx context.Context, userID, role string) (model.User, error) {
	query := `
		UPDATE public.users
		SET role = $2
		WHERE id = $1
		RETURNING id, email, username, password_hash, role, created_at
	`

	var user model.User
	err := r.pool.QueryRow(ctx, query, userID, role).Scan(
		&user.ID,
		&user.Email,
		&user.Username,
		&user.PasswordHash,
		&user.Role,
		&user.CreatedAt,
	)

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return user, nil
}

// DeleteUser удаляет пользователя (admin)
func (r *repository) DeleteUser(ctx context.Context, userID string) error {
	query := `DELETE FROM public.users WHERE id = $1`

	result, err := r.pool.Exec(ctx, query, userID)
	if err != nil {
		return err
	}

	if result.RowsAffected() == 0 {
		return model.ErrUserNotFound
	}

	return nil
}
