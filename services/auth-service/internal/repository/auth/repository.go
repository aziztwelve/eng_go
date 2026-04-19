package auth

import (
	"context"
	"errors"
	"fmt"
	"strings"

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
func (r *repository) ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error) {
	var conditions []string
	var args []interface{}
	argPos := 1

	// Search filter
	if search != "" {
		conditions = append(conditions, fmt.Sprintf("(email ILIKE $%d OR username ILIKE $%d)", argPos, argPos))
		args = append(args, "%"+search+"%")
		argPos++
	}

	// Role filter
	if role != "" {
		conditions = append(conditions, fmt.Sprintf("role = $%d", argPos))
		args = append(args, role)
		argPos++
	}

	whereClause := ""
	if len(conditions) > 0 {
		whereClause = "WHERE " + strings.Join(conditions, " AND ")
	}

	// Count total
	countQuery := fmt.Sprintf("SELECT COUNT(*) FROM public.users %s", whereClause)
	var total int32
	err := r.pool.QueryRow(ctx, countQuery, args...).Scan(&total)
	if err != nil {
		return nil, 0, err
	}

	// Get users with pagination
	query := fmt.Sprintf(`
		SELECT id, email, username, password_hash, role, created_at
		FROM public.users
		%s
		ORDER BY created_at DESC
		LIMIT $%d OFFSET $%d
	`, whereClause, argPos, argPos+1)

	args = append(args, limit, offset)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
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
			return nil, 0, err
		}
		users = append(users, user)
	}

	return users, total, rows.Err()
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
