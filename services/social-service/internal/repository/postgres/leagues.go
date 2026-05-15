package postgres

import (
	"context"
	"errors"
	"fmt"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

type LeagueRepository struct {
	pool *pgxpool.Pool
}

func NewLeagueRepository(pool *pgxpool.Pool) *LeagueRepository {
	return &LeagueRepository{pool: pool}
}

const leagueColumns = "id, code, name, icon_url, color, tier"

func (r *LeagueRepository) List(ctx context.Context) ([]*model.League, error) {
	q := fmt.Sprintf("SELECT %s FROM leagues ORDER BY tier ASC", leagueColumns)
	rows, err := r.pool.Query(ctx, q)
	if err != nil {
		return nil, fmt.Errorf("query leagues: %w", err)
	}
	defer rows.Close()

	out := make([]*model.League, 0, 10)
	for rows.Next() {
		var l model.League
		if err := rows.Scan(&l.ID, &l.Code, &l.Name, &l.IconURL, &l.Color, &l.Tier); err != nil {
			return nil, fmt.Errorf("scan league: %w", err)
		}
		out = append(out, &l)
	}
	return out, rows.Err()
}

func (r *LeagueRepository) GetByID(ctx context.Context, id int) (*model.League, error) {
	q := fmt.Sprintf("SELECT %s FROM leagues WHERE id = $1", leagueColumns)
	var l model.League
	err := r.pool.QueryRow(ctx, q, id).
		Scan(&l.ID, &l.Code, &l.Name, &l.IconURL, &l.Color, &l.Tier)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrNotFound
		}
		return nil, fmt.Errorf("get league: %w", err)
	}
	return &l, nil
}
