package postgres

import (
	"context"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

type reviewHistoryRepo struct {
	pool *pgxpool.Pool
}

// NewReviewHistoryRepository — конструктор.
func NewReviewHistoryRepository(pool *pgxpool.Pool) repository.ReviewHistoryRepository {
	return &reviewHistoryRepo{pool: pool}
}

func (r *reviewHistoryRepo) Create(ctx context.Context, h *model.ReviewHistory) error {
	if h.ID == "" {
		h.ID = uuid.New().String()
	}
	return r.pool.QueryRow(ctx, `
		INSERT INTO srs_review_history (
			id, srs_item_id, user_id, quality, response_time_ms, used_hint,
			new_interval_days, new_easiness_factor, new_repetitions
		) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
		RETURNING reviewed_at
	`,
		h.ID, h.SRSItemID, h.UserID, h.Quality, h.ResponseTimeMs, h.UsedHint,
		h.NewIntervalDays, h.NewEasinessFactor, h.NewRepetitions,
	).Scan(&h.ReviewedAt)
}
