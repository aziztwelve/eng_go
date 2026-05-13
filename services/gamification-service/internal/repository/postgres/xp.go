package postgres

import (
	"context"
	"database/sql"
	"fmt"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

type xpRepository struct {
	pool *pgxpool.Pool
}

func NewXPRepository(pool *pgxpool.Pool) repository.XPRepository {
	return &xpRepository{pool: pool}
}

func (r *xpRepository) Insert(ctx context.Context, tx *model.XPTransaction) error {
	var src sql.NullString
	if tx.SourceID != nil && *tx.SourceID != "" {
		src = sql.NullString{String: *tx.SourceID, Valid: true}
	}
	q := `INSERT INTO xp_transactions (user_id, amount, reason, source_id)
		VALUES ($1, $2, $3, $4)
		RETURNING id, created_at`
	row := r.pool.QueryRow(ctx, q, tx.UserID, tx.Amount, string(tx.Reason), src)
	if err := row.Scan(&tx.ID, &tx.CreatedAt); err != nil {
		return fmt.Errorf("insert xp: %w", err)
	}
	return nil
}

func (r *xpRepository) ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.XPTransaction, int, error) {
	if limit <= 0 {
		limit = 50
	}
	q := `SELECT id, user_id, amount, reason, source_id, created_at
		FROM xp_transactions
		WHERE user_id = $1
		ORDER BY created_at DESC
		LIMIT $2 OFFSET $3`
	rows, err := r.pool.Query(ctx, q, userID, limit, offset)
	if err != nil {
		return nil, 0, fmt.Errorf("list xp: %w", err)
	}
	defer rows.Close()
	var out []*model.XPTransaction
	for rows.Next() {
		t := &model.XPTransaction{}
		var reason string
		var src sql.NullString
		if err := rows.Scan(&t.ID, &t.UserID, &t.Amount, &reason, &src, &t.CreatedAt); err != nil {
			return nil, 0, err
		}
		t.Reason = model.XPReason(reason)
		if src.Valid {
			s := src.String
			t.SourceID = &s
		}
		out = append(out, t)
	}
	if err := rows.Err(); err != nil {
		return nil, 0, err
	}
	var total int
	if err := r.pool.QueryRow(ctx,
		`SELECT count(*) FROM xp_transactions WHERE user_id = $1`, userID,
	).Scan(&total); err != nil {
		return nil, 0, fmt.Errorf("count xp: %w", err)
	}
	return out, total, nil
}
