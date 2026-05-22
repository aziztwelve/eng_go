package postgres

import (
	"context"
	"errors"
	"fmt"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

// FriendshipRepository — Postgres-имплементация repository.FriendshipRepo.
//
// Все операции с парой (a, b) сначала нормализуют порядок (lo < hi),
// чтобы матчить unique constraint на (user_id_1, user_id_2).
type FriendshipRepository struct {
	pool *pgxpool.Pool
}

func NewFriendshipRepository(pool *pgxpool.Pool) *FriendshipRepository {
	return &FriendshipRepository{pool: pool}
}

const friendshipColumns = "id, user_id_1, user_id_2, status, requested_by, created_at, updated_at"

func (r *FriendshipRepository) Get(ctx context.Context, a, b uuid.UUID) (*model.Friendship, error) {
	lo, hi := orderPair(a, b)
	q := fmt.Sprintf(
		"SELECT %s FROM friendships WHERE user_id_1 = $1 AND user_id_2 = $2",
		friendshipColumns,
	)
	f, err := scanOneFriendship(r.pool.QueryRow(ctx, q, lo, hi))
	if err != nil {
		return nil, err
	}
	return f, nil
}

func (r *FriendshipRepository) GetByID(ctx context.Context, id uuid.UUID) (*model.Friendship, error) {
	q := fmt.Sprintf("SELECT %s FROM friendships WHERE id = $1", friendshipColumns)
	return scanOneFriendship(r.pool.QueryRow(ctx, q, id))
}

func (r *FriendshipRepository) Create(ctx context.Context, f *model.Friendship) error {
	// Нормализуем порядок — даже если caller передал уже нормализованную
	// пару, мы оставляем гарантию на стороне репозитория.
	u1, _ := uuid.Parse(f.UserID1)
	u2, _ := uuid.Parse(f.UserID2)
	lo, hi := orderPair(u1, u2)

	q := `
		INSERT INTO friendships (user_id_1, user_id_2, status, requested_by, created_at, updated_at)
		VALUES ($1, $2, $3, $4, NOW(), NOW())
		RETURNING id, created_at, updated_at
	`
	err := r.pool.QueryRow(ctx, q, lo, hi, string(f.Status), f.RequestedBy).
		Scan(&f.ID, &f.CreatedAt, &f.UpdatedAt)
	if err != nil {
		if isUniqueViolation(err) {
			return repository.ErrAlreadyExists
		}
		return fmt.Errorf("create friendship: %w", err)
	}
	f.UserID1 = lo.String()
	f.UserID2 = hi.String()
	return nil
}

func (r *FriendshipRepository) UpdateStatus(ctx context.Context, id uuid.UUID, status model.FriendshipStatus) error {
	tag, err := r.pool.Exec(ctx,
		"UPDATE friendships SET status = $2, updated_at = NOW() WHERE id = $1",
		id, string(status),
	)
	if err != nil {
		return fmt.Errorf("update friendship status: %w", err)
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *FriendshipRepository) Delete(ctx context.Context, id uuid.UUID) error {
	tag, err := r.pool.Exec(ctx, "DELETE FROM friendships WHERE id = $1", id)
	if err != nil {
		return fmt.Errorf("delete friendship: %w", err)
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *FriendshipRepository) ListByUser(
	ctx context.Context,
	userID uuid.UUID,
	status model.FriendshipStatus,
	limit, offset int,
) ([]*model.Friendship, int, error) {
	if limit <= 0 {
		limit = 50
	}
	if offset < 0 {
		offset = 0
	}

	// pending — DESC by created_at (свежее сверху), остальные — ASC
	// (стабильная сортировка для списка друзей).
	orderBy := "created_at ASC"
	if status == model.FriendshipPending {
		orderBy = "created_at DESC"
	}

	args := []any{userID, limit, offset}
	statusFilter := ""
	if status != "" {
		args = append(args, string(status))
		statusFilter = fmt.Sprintf(" AND status = $%d", len(args))
	}

	listQ := fmt.Sprintf(`
		SELECT %s
		FROM friendships
		WHERE (user_id_1 = $1 OR user_id_2 = $1)%s
		ORDER BY %s
		LIMIT $2 OFFSET $3
	`, friendshipColumns, statusFilter, orderBy)

	rows, err := r.pool.Query(ctx, listQ, args...)
	if err != nil {
		return nil, 0, fmt.Errorf("list friendships: %w", err)
	}
	defer rows.Close()

	out := make([]*model.Friendship, 0, limit)
	for rows.Next() {
		f, err := scanFriendshipRow(rows.Scan)
		if err != nil {
			return nil, 0, err
		}
		out = append(out, f)
	}
	if rows.Err() != nil {
		return nil, 0, rows.Err()
	}

	// Total — отдельным запросом (для пагинации UI).
	countArgs := []any{userID}
	if status != "" {
		countArgs = append(countArgs, string(status))
	}
	countQ := "SELECT COUNT(*) FROM friendships WHERE (user_id_1 = $1 OR user_id_2 = $1)"
	if status != "" {
		countQ += " AND status = $2"
	}
	var total int
	if err := r.pool.QueryRow(ctx, countQ, countArgs...).Scan(&total); err != nil {
		return nil, 0, fmt.Errorf("count friendships: %w", err)
	}

	return out, total, nil
}

func (r *FriendshipRepository) ListAcceptedFriendIDs(ctx context.Context, userID uuid.UUID) ([]uuid.UUID, error) {
	// CASE для извлечения "второй стороны": если userID == user_id_1,
	// возвращаем user_id_2, иначе — user_id_1.
	q := `
		SELECT CASE WHEN user_id_1 = $1 THEN user_id_2 ELSE user_id_1 END
		FROM friendships
		WHERE (user_id_1 = $1 OR user_id_2 = $1) AND status = 'accepted'
	`
	rows, err := r.pool.Query(ctx, q, userID)
	if err != nil {
		return nil, fmt.Errorf("list accepted friend ids: %w", err)
	}
	defer rows.Close()

	out := make([]uuid.UUID, 0, 32)
	for rows.Next() {
		var id uuid.UUID
		if err := rows.Scan(&id); err != nil {
			return nil, err
		}
		out = append(out, id)
	}
	return out, rows.Err()
}

// orderPair возвращает (lo, hi), где lo < hi по байтовому представлению UUID.
func orderPair(a, b uuid.UUID) (uuid.UUID, uuid.UUID) {
	if a.String() < b.String() {
		return a, b
	}
	return b, a
}

func scanOneFriendship(row pgx.Row) (*model.Friendship, error) {
	f, err := scanFriendshipRow(row.Scan)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrNotFound
		}
		return nil, err
	}
	return f, nil
}

func scanFriendshipRow(scan func(...any) error) (*model.Friendship, error) {
	f := &model.Friendship{}
	var status string
	if err := scan(&f.ID, &f.UserID1, &f.UserID2, &status, &f.RequestedBy, &f.CreatedAt, &f.UpdatedAt); err != nil {
		return nil, err
	}
	f.Status = model.FriendshipStatus(status)
	return f, nil
}
