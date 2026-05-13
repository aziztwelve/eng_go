package postgres

import (
	"context"
	"errors"
	"fmt"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

type streakRepository struct {
	pool *pgxpool.Pool
}

func NewStreakRepository(pool *pgxpool.Pool) repository.StreakRepository {
	return &streakRepository{pool: pool}
}

func (r *streakRepository) Get(ctx context.Context, userID string, date time.Time) (*model.StreakDay, error) {
	q := `SELECT user_id, date, completed, used_freeze, created_at
		FROM streak_history WHERE user_id = $1 AND date = $2`
	d := &model.StreakDay{}
	err := r.pool.QueryRow(ctx, q, userID, date).Scan(
		&d.UserID, &d.Date, &d.Completed, &d.UsedFreeze, &d.CreatedAt,
	)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	if err != nil {
		return nil, fmt.Errorf("get streak day: %w", err)
	}
	return d, nil
}

func (r *streakRepository) Upsert(ctx context.Context, d *model.StreakDay) error {
	q := `INSERT INTO streak_history (user_id, date, completed, used_freeze)
		VALUES ($1, $2, $3, $4)
		ON CONFLICT (user_id, date) DO UPDATE SET
			completed = EXCLUDED.completed OR streak_history.completed,
			used_freeze = EXCLUDED.used_freeze OR streak_history.used_freeze`
	if _, err := r.pool.Exec(ctx, q, d.UserID, d.Date, d.Completed, d.UsedFreeze); err != nil {
		return fmt.Errorf("upsert streak day: %w", err)
	}
	return nil
}

func (r *streakRepository) ListLast(ctx context.Context, userID string, days int) ([]*model.StreakDay, error) {
	if days <= 0 {
		days = 30
	}
	q := `SELECT user_id, date, completed, used_freeze, created_at
		FROM streak_history
		WHERE user_id = $1
		ORDER BY date DESC
		LIMIT $2`
	rows, err := r.pool.Query(ctx, q, userID, days)
	if err != nil {
		return nil, fmt.Errorf("list streak days: %w", err)
	}
	defer rows.Close()
	out := make([]*model.StreakDay, 0, days)
	for rows.Next() {
		d := &model.StreakDay{}
		if err := rows.Scan(&d.UserID, &d.Date, &d.Completed, &d.UsedFreeze, &d.CreatedAt); err != nil {
			return nil, err
		}
		out = append(out, d)
	}
	return out, rows.Err()
}
