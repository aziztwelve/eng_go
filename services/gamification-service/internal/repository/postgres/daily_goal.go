package postgres

import (
	"context"
	"database/sql"
	"errors"
	"fmt"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

type dailyGoalRepository struct {
	pool *pgxpool.Pool
}

func NewDailyGoalRepository(pool *pgxpool.Pool) repository.DailyGoalRepository {
	return &dailyGoalRepository{pool: pool}
}

func (r *dailyGoalRepository) GetGoal(ctx context.Context, userID string) (*model.DailyGoal, error) {
	q := `SELECT user_id, target_xp, updated_at FROM daily_goals WHERE user_id = $1`
	g := &model.DailyGoal{}
	err := r.pool.QueryRow(ctx, q, userID).Scan(&g.UserID, &g.TargetXP, &g.UpdatedAt)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	if err != nil {
		return nil, fmt.Errorf("get goal: %w", err)
	}
	return g, nil
}

func (r *dailyGoalRepository) UpsertGoal(ctx context.Context, g *model.DailyGoal) error {
	q := `INSERT INTO daily_goals (user_id, target_xp, updated_at)
		VALUES ($1, $2, NOW())
		ON CONFLICT (user_id) DO UPDATE SET target_xp = EXCLUDED.target_xp, updated_at = NOW()`
	if _, err := r.pool.Exec(ctx, q, g.UserID, g.TargetXP); err != nil {
		return fmt.Errorf("upsert goal: %w", err)
	}
	return nil
}

func (r *dailyGoalRepository) GetProgress(ctx context.Context, userID string, date time.Time) (*model.DailyGoalProgress, error) {
	q := `SELECT user_id, date, xp_earned, goal, completed, completed_at
		FROM daily_goal_progress
		WHERE user_id = $1 AND date = $2`
	p := &model.DailyGoalProgress{}
	var completedAt sql.NullTime
	err := r.pool.QueryRow(ctx, q, userID, date).Scan(
		&p.UserID, &p.Date, &p.XPEarned, &p.Goal, &p.Completed, &completedAt,
	)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	if err != nil {
		return nil, fmt.Errorf("get progress: %w", err)
	}
	if completedAt.Valid {
		t := completedAt.Time
		p.CompletedAt = &t
	}
	return p, nil
}

func (r *dailyGoalRepository) UpsertProgress(ctx context.Context, p *model.DailyGoalProgress) error {
	q := `INSERT INTO daily_goal_progress (user_id, date, xp_earned, goal, completed, completed_at)
		VALUES ($1, $2, $3, $4, $5, $6)
		ON CONFLICT (user_id, date) DO UPDATE SET
			xp_earned = EXCLUDED.xp_earned,
			goal = EXCLUDED.goal,
			completed = EXCLUDED.completed,
			completed_at = COALESCE(daily_goal_progress.completed_at, EXCLUDED.completed_at)`
	_, err := r.pool.Exec(ctx, q, p.UserID, p.Date, p.XPEarned, p.Goal, p.Completed, p.CompletedAt)
	if err != nil {
		return fmt.Errorf("upsert progress: %w", err)
	}
	return nil
}

func (r *dailyGoalRepository) CountCompleted(ctx context.Context, userID string) (int, error) {
	var n int
	err := r.pool.QueryRow(ctx,
		`SELECT count(*) FROM daily_goal_progress WHERE user_id = $1 AND completed = TRUE`,
		userID,
	).Scan(&n)
	if err != nil {
		return 0, fmt.Errorf("count completed goals: %w", err)
	}
	return n, nil
}
