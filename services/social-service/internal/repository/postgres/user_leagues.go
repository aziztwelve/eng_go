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

type UserLeagueRepository struct {
	pool *pgxpool.Pool
}

func NewUserLeagueRepository(pool *pgxpool.Pool) *UserLeagueRepository {
	return &UserLeagueRepository{pool: pool}
}

const userLeagueColumns = "user_id, league_id, cohort_id, weekly_xp, rank_in_cohort, joined_at, last_updated_at"

func (r *UserLeagueRepository) Get(ctx context.Context, userID uuid.UUID) (*model.UserLeague, error) {
	q := fmt.Sprintf("SELECT %s FROM user_leagues WHERE user_id = $1", userLeagueColumns)
	ul := &model.UserLeague{}
	var rank *int
	err := r.pool.QueryRow(ctx, q, userID).
		Scan(&ul.UserID, &ul.LeagueID, &ul.CohortID, &ul.WeeklyXP, &rank, &ul.JoinedAt, &ul.LastUpdatedAt)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrNotFound
		}
		return nil, fmt.Errorf("get user league: %w", err)
	}
	ul.RankInCohort = rank
	return ul, nil
}

// Upsert — INSERT при первом attach или UPDATE league/cohort при weekly rotation.
// weekly_xp сбрасывается в 0 на rotation, поэтому мы его пишем как payload, а не накапливаем.
func (r *UserLeagueRepository) Upsert(ctx context.Context, ul *model.UserLeague) error {
	q := `
		INSERT INTO user_leagues (
			user_id, league_id, cohort_id, weekly_xp, rank_in_cohort, joined_at, last_updated_at
		) VALUES ($1, $2, $3, $4, $5, NOW(), NOW())
		ON CONFLICT (user_id) DO UPDATE SET
			league_id       = EXCLUDED.league_id,
			cohort_id       = EXCLUDED.cohort_id,
			weekly_xp       = EXCLUDED.weekly_xp,
			rank_in_cohort  = EXCLUDED.rank_in_cohort,
			last_updated_at = NOW()
		RETURNING joined_at, last_updated_at
	`
	if err := r.pool.QueryRow(ctx, q, ul.UserID, ul.LeagueID, ul.CohortID, ul.WeeklyXP, ul.RankInCohort).
		Scan(&ul.JoinedAt, &ul.LastUpdatedAt); err != nil {
		return fmt.Errorf("upsert user league: %w", err)
	}
	return nil
}

func (r *UserLeagueRepository) IncrementWeeklyXP(ctx context.Context, userID uuid.UUID, amount int) error {
	q := `
		UPDATE user_leagues
		SET weekly_xp = weekly_xp + $2,
		    last_updated_at = NOW()
		WHERE user_id = $1
	`
	tag, err := r.pool.Exec(ctx, q, userID, amount)
	if err != nil {
		return fmt.Errorf("increment weekly xp: %w", err)
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *UserLeagueRepository) UpdateRank(ctx context.Context, userID uuid.UUID, rank int) error {
	q := `
		UPDATE user_leagues
		SET rank_in_cohort = $2,
		    last_updated_at = NOW()
		WHERE user_id = $1
	`
	tag, err := r.pool.Exec(ctx, q, userID, rank)
	if err != nil {
		return fmt.Errorf("update rank: %w", err)
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *UserLeagueRepository) ResetWeeklyXPInCohort(ctx context.Context, cohortID uuid.UUID) error {
	q := `
		UPDATE user_leagues
		SET weekly_xp = 0, rank_in_cohort = NULL, last_updated_at = NOW()
		WHERE cohort_id = $1
	`
	if _, err := r.pool.Exec(ctx, q, cohortID); err != nil {
		return fmt.Errorf("reset weekly xp: %w", err)
	}
	return nil
}

func (r *UserLeagueRepository) BatchGetByUserIDs(ctx context.Context, userIDs []uuid.UUID) ([]*model.UserLeague, error) {
	if len(userIDs) == 0 {
		return nil, nil
	}
	q := fmt.Sprintf(
		"SELECT %s FROM user_leagues WHERE user_id = ANY($1)",
		userLeagueColumns,
	)
	rows, err := r.pool.Query(ctx, q, userIDs)
	if err != nil {
		return nil, fmt.Errorf("batch get user leagues: %w", err)
	}
	defer rows.Close()

	out := make([]*model.UserLeague, 0, len(userIDs))
	for rows.Next() {
		ul := &model.UserLeague{}
		var rank *int
		if err := rows.Scan(&ul.UserID, &ul.LeagueID, &ul.CohortID, &ul.WeeklyXP, &rank, &ul.JoinedAt, &ul.LastUpdatedAt); err != nil {
			return nil, fmt.Errorf("scan user league: %w", err)
		}
		ul.RankInCohort = rank
		out = append(out, ul)
	}
	return out, rows.Err()
}

func (r *UserLeagueRepository) ListByCohort(ctx context.Context, cohortID uuid.UUID) ([]*model.UserLeague, error) {
	q := fmt.Sprintf(`
		SELECT %s FROM user_leagues WHERE cohort_id = $1 ORDER BY weekly_xp DESC, joined_at ASC
	`, userLeagueColumns)
	rows, err := r.pool.Query(ctx, q, cohortID)
	if err != nil {
		return nil, fmt.Errorf("list cohort users: %w", err)
	}
	defer rows.Close()

	var out []*model.UserLeague
	for rows.Next() {
		ul := &model.UserLeague{}
		var rank *int
		if err := rows.Scan(&ul.UserID, &ul.LeagueID, &ul.CohortID, &ul.WeeklyXP, &rank, &ul.JoinedAt, &ul.LastUpdatedAt); err != nil {
			return nil, fmt.Errorf("scan user league: %w", err)
		}
		ul.RankInCohort = rank
		out = append(out, ul)
	}
	return out, rows.Err()
}
