package postgres

import (
	"context"
	"errors"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

type CohortRepository struct {
	pool *pgxpool.Pool
}

func NewCohortRepository(pool *pgxpool.Pool) *CohortRepository {
	return &CohortRepository{pool: pool}
}

const cohortColumns = "id, league_id, cycle_start_at, cycle_end_at, is_finished, member_count, created_at"

func (r *CohortRepository) FindOpen(ctx context.Context, leagueID int, cycleStart, cycleEnd time.Time) (*model.Cohort, error) {
	q := fmt.Sprintf(`
		SELECT %s
		FROM cohorts
		WHERE league_id = $1
		  AND cycle_start_at = $2
		  AND cycle_end_at   = $3
		  AND is_finished    = FALSE
		  AND member_count   < $4
		ORDER BY created_at ASC
		LIMIT 1
	`, cohortColumns)

	var c model.Cohort
	err := r.pool.QueryRow(ctx, q, leagueID, cycleStart, cycleEnd, model.CohortSize).
		Scan(&c.ID, &c.LeagueID, &c.CycleStartAt, &c.CycleEndAt, &c.IsFinished, &c.MemberCount, &c.CreatedAt)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrNotFound
		}
		return nil, fmt.Errorf("find open cohort: %w", err)
	}
	return &c, nil
}

func (r *CohortRepository) Create(ctx context.Context, c *model.Cohort) error {
	if c.ID == uuid.Nil {
		c.ID = uuid.New()
	}
	q := `
		INSERT INTO cohorts (id, league_id, cycle_start_at, cycle_end_at, is_finished, member_count, created_at)
		VALUES ($1, $2, $3, $4, FALSE, 0, NOW())
		RETURNING created_at
	`
	if err := r.pool.QueryRow(ctx, q, c.ID, c.LeagueID, c.CycleStartAt, c.CycleEndAt).Scan(&c.CreatedAt); err != nil {
		return fmt.Errorf("create cohort: %w", err)
	}
	c.IsFinished = false
	c.MemberCount = 0
	return nil
}

func (r *CohortRepository) IncrementMemberCount(ctx context.Context, cohortID uuid.UUID) error {
	q := `UPDATE cohorts SET member_count = member_count + 1 WHERE id = $1`
	tag, err := r.pool.Exec(ctx, q, cohortID)
	if err != nil {
		return fmt.Errorf("increment member count: %w", err)
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *CohortRepository) MarkFinished(ctx context.Context, cohortID uuid.UUID) error {
	q := `UPDATE cohorts SET is_finished = TRUE WHERE id = $1`
	tag, err := r.pool.Exec(ctx, q, cohortID)
	if err != nil {
		return fmt.Errorf("mark cohort finished: %w", err)
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *CohortRepository) ListActiveExpired(ctx context.Context, now time.Time) ([]*model.Cohort, error) {
	q := fmt.Sprintf(`
		SELECT %s
		FROM cohorts
		WHERE is_finished = FALSE
		  AND cycle_end_at <= $1
		ORDER BY cycle_end_at ASC
	`, cohortColumns)

	rows, err := r.pool.Query(ctx, q, now)
	if err != nil {
		return nil, fmt.Errorf("list active expired cohorts: %w", err)
	}
	defer rows.Close()

	var out []*model.Cohort
	for rows.Next() {
		var c model.Cohort
		if err := rows.Scan(&c.ID, &c.LeagueID, &c.CycleStartAt, &c.CycleEndAt, &c.IsFinished, &c.MemberCount, &c.CreatedAt); err != nil {
			return nil, fmt.Errorf("scan cohort: %w", err)
		}
		out = append(out, &c)
	}
	return out, rows.Err()
}

func (r *CohortRepository) GetByID(ctx context.Context, id uuid.UUID) (*model.Cohort, error) {
	q := fmt.Sprintf("SELECT %s FROM cohorts WHERE id = $1", cohortColumns)
	var c model.Cohort
	err := r.pool.QueryRow(ctx, q, id).
		Scan(&c.ID, &c.LeagueID, &c.CycleStartAt, &c.CycleEndAt, &c.IsFinished, &c.MemberCount, &c.CreatedAt)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrNotFound
		}
		return nil, fmt.Errorf("get cohort: %w", err)
	}
	return &c, nil
}
