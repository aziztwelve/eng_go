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
	repoConverter "github.com/elearning/auth-service/internal/repository/converter"
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

// ListUsers возвращает список всех пользователей (admin).
// Гостей (is_guest=true) исключаем — admin не должен их видеть.
func (r *repository) ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error) {
	conditions := []string{"is_guest = FALSE"}
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

	whereClause := "WHERE " + strings.Join(conditions, " AND ")

	// Count total
	countQuery := fmt.Sprintf("SELECT COUNT(*) FROM public.users %s", whereClause)
	var total int32
	err := r.pool.QueryRow(ctx, countQuery, args...).Scan(&total)
	if err != nil {
		return nil, 0, err
	}

	// Get users with pagination
	query := fmt.Sprintf(`
		SELECT %s
		FROM public.users
		%s
		ORDER BY created_at DESC
		LIMIT $%d OFFSET $%d
	`, userColumns, whereClause, argPos, argPos+1)

	args = append(args, limit, offset)

	rows, err := r.pool.Query(ctx, query, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var users []model.User
	for rows.Next() {
		repoUser, err := scanUser(rows)
		if err != nil {
			return nil, 0, err
		}
		users = append(users, repoConverter.ToDomainUser(repoUser))
	}

	return users, total, rows.Err()
}

// UpdateUserRole обновляет роль пользователя (admin)
func (r *repository) UpdateUserRole(ctx context.Context, userID, role string) (model.User, error) {
	query := `
		UPDATE public.users
		SET role = $2
		WHERE id = $1 AND is_guest = FALSE
		RETURNING ` + userColumns

	repoUser, err := scanUser(r.pool.QueryRow(ctx, query, userID, role))

	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return model.User{}, model.ErrUserNotFound
		}
		return model.User{}, err
	}

	return repoConverter.ToDomainUser(repoUser), nil
}

// SearchByUsername — public-поиск по префиксу username (ILIKE).
// Используется для friend-search (Phase 4.5). Гостей исключаем.
func (r *repository) SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID string) ([]model.User, error) {
	if limit <= 0 {
		limit = 20
	}
	if limit > 50 {
		limit = 50
	}

	args := []interface{}{query + "%", limit}
	excludeClause := ""
	if excludeUserID != "" {
		args = append(args, excludeUserID)
		excludeClause = " AND id <> $3"
	}

	q := fmt.Sprintf(`
		SELECT %s
		FROM public.users
		WHERE is_guest = FALSE AND username ILIKE $1%s
		ORDER BY username ASC
		LIMIT $2
	`, userColumns, excludeClause)

	rows, err := r.pool.Query(ctx, q, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	users := make([]model.User, 0)
	for rows.Next() {
		repoUser, err := scanUser(rows)
		if err != nil {
			return nil, err
		}
		users = append(users, repoConverter.ToDomainUser(repoUser))
	}
	return users, rows.Err()
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
