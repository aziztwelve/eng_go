package postgres

import (
	"context"
	"fmt"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/social-service/internal/model"
)

type LeagueHistoryRepository struct {
	pool *pgxpool.Pool
}

func NewLeagueHistoryRepository(pool *pgxpool.Pool) *LeagueHistoryRepository {
	return &LeagueHistoryRepository{pool: pool}
}

const leagueHistoryColumns = "id, user_id, league_id, cohort_id, cycle_start_at, cycle_end_at, " +
	"final_xp, final_rank, promoted, demoted, gems_earned, created_at"

func (r *LeagueHistoryRepository) Create(ctx context.Context, h *model.LeagueHistoryEntry) error {
	if h.ID == uuid.Nil {
		h.ID = uuid.New()
	}
	q := `
		INSERT INTO league_history (
			id, user_id, league_id, cohort_id,
			cycle_start_at, cycle_end_at,
			final_xp, final_rank, promoted, demoted, gems_earned,
			created_at
		) VALUES (
			$1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, NOW()
		)
		ON CONFLICT (user_id, cycle_start_at) DO NOTHING
		RETURNING created_at
	`
	row := r.pool.QueryRow(ctx, q,
		h.ID, h.UserID, h.LeagueID, h.CohortID,
		h.CycleStartAt, h.CycleEndAt,
		h.FinalXP, h.FinalRank, h.Promoted, h.Demoted, h.GemsEarned,
	)
	if err := row.Scan(&h.CreatedAt); err != nil {
		// ON CONFLICT DO NOTHING → нет RETURNING; это OK (idempotent).
		return nil
	}
	return nil
}

func (r *LeagueHistoryRepository) ListByUser(ctx context.Context, userID uuid.UUID, limit, offset int) ([]*model.LeagueHistoryEntry, int, error) {
	if limit <= 0 {
		limit = 20
	}

	var total int
	if err := r.pool.QueryRow(ctx, `SELECT COUNT(*) FROM league_history WHERE user_id = $1`, userID).Scan(&total); err != nil {
		return nil, 0, fmt.Errorf("count history: %w", err)
	}

	q := fmt.Sprintf(`
		SELECT %s
		FROM league_history
		WHERE user_id = $1
		ORDER BY cycle_start_at DESC
		LIMIT $2 OFFSET $3
	`, leagueHistoryColumns)

	rows, err := r.pool.Query(ctx, q, userID, limit, offset)
	if err != nil {
		return nil, 0, fmt.Errorf("list history: %w", err)
	}
	defer rows.Close()

	var out []*model.LeagueHistoryEntry
	for rows.Next() {
		h := &model.LeagueHistoryEntry{}
		if err := rows.Scan(
			&h.ID, &h.UserID, &h.LeagueID, &h.CohortID,
			&h.CycleStartAt, &h.CycleEndAt,
			&h.FinalXP, &h.FinalRank, &h.Promoted, &h.Demoted, &h.GemsEarned,
			&h.CreatedAt,
		); err != nil {
			return nil, 0, fmt.Errorf("scan history: %w", err)
		}
		out = append(out, h)
	}
	return out, total, rows.Err()
}
