package postgres

import (
	"context"

	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/ai-service/internal/repository"
)

type abExposureRepo struct {
	pool *pgxpool.Pool
}

// NewABExposureRepository — конструктор.
func NewABExposureRepository(pool *pgxpool.Pool) repository.ABExposureRepository {
	return &abExposureRepo{pool: pool}
}

// LogExposure — идемпотентный upsert.
//
// При первом INSERT: first_seen_at = last_seen_at = NOW(), exposure_count = 1.
// При конфликте по (user_id, experiment, variant_id): только UPDATE
// last_seen_at = NOW() и инкремент counter'а — first_seen_at сохраняется.
//
// При смене variant_id (например, изменили weights) запись будет НОВОЙ,
// со своим first_seen_at — это by design: aналитика покажет когда юзер
// «пересел» с одного варианта на другой.
func (r *abExposureRepo) LogExposure(ctx context.Context, userID, experiment, variantID string) error {
	const q = `
		INSERT INTO ai_ab_exposures (user_id, experiment, variant_id, first_seen_at, last_seen_at, exposure_count)
		VALUES ($1, $2, $3, NOW(), NOW(), 1)
		ON CONFLICT (user_id, experiment, variant_id) DO UPDATE
		SET last_seen_at  = NOW(),
		    exposure_count = ai_ab_exposures.exposure_count + 1
	`
	_, err := r.pool.Exec(ctx, q, userID, experiment, variantID)
	return err
}
