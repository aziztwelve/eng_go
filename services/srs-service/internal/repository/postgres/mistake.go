package postgres

import (
	"context"
	"database/sql"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

const mistakeCols = `id, user_id, step_id, incorrect_answer, answer_hash,
	times_made, last_made_at, is_resolved, resolved_at, created_at`

type mistakeRepo struct {
	pool *pgxpool.Pool
}

// NewMistakeRepository — конструктор.
func NewMistakeRepository(pool *pgxpool.Pool) repository.MistakeRepository {
	return &mistakeRepo{pool: pool}
}

func scanMistake(scan func(...any) error) (*model.Mistake, error) {
	m := &model.Mistake{}
	var resolvedAt sql.NullTime
	if err := scan(
		&m.ID, &m.UserID, &m.StepID, &m.IncorrectAnswer, &m.AnswerHash,
		&m.TimesMade, &m.LastMadeAt, &m.IsResolved, &resolvedAt, &m.CreatedAt,
	); err != nil {
		return nil, err
	}
	if resolvedAt.Valid {
		t := resolvedAt.Time
		m.ResolvedAt = &t
	}
	return m, nil
}

// Upsert — INSERT ... ON CONFLICT (user_id, step_id, answer_hash) DO
// UPDATE SET times_made = times_made + 1, last_made_at = NOW(),
// is_resolved = FALSE, resolved_at = NULL. Возвращает строку и
// флаг wasInserted (xmax = 0 ↔ INSERT).
func (r *mistakeRepo) Upsert(ctx context.Context, m *model.Mistake) (*model.Mistake, bool, error) {
	if m.ID == "" {
		m.ID = uuid.New().String()
	}
	row := r.pool.QueryRow(ctx, `
		INSERT INTO user_mistakes (
			id, user_id, step_id, incorrect_answer, answer_hash, times_made
		) VALUES ($1, $2, $3, $4, $5, 1)
		ON CONFLICT (user_id, step_id, answer_hash) DO UPDATE
			SET times_made   = user_mistakes.times_made + 1,
			    last_made_at = NOW(),
			    is_resolved  = FALSE,
			    resolved_at  = NULL
		RETURNING `+mistakeCols+`, (xmax = 0) AS was_inserted
	`, m.ID, m.UserID, m.StepID, []byte(m.IncorrectAnswer), m.AnswerHash)
	res := &model.Mistake{}
	var resolvedAt sql.NullTime
	var wasInserted bool
	if err := row.Scan(
		&res.ID, &res.UserID, &res.StepID, &res.IncorrectAnswer, &res.AnswerHash,
		&res.TimesMade, &res.LastMadeAt, &res.IsResolved, &resolvedAt, &res.CreatedAt,
		&wasInserted,
	); err != nil {
		return nil, false, err
	}
	if resolvedAt.Valid {
		t := resolvedAt.Time
		res.ResolvedAt = &t
	}
	return res, wasInserted, nil
}

func (r *mistakeRepo) ResolveByStep(ctx context.Context, userID, stepID string) (int32, error) {
	tag, err := r.pool.Exec(ctx, `
		UPDATE user_mistakes
		   SET is_resolved = TRUE,
		       resolved_at = NOW()
		 WHERE user_id = $1 AND step_id = $2 AND is_resolved = FALSE
	`, userID, stepID)
	if err != nil {
		return 0, err
	}
	return int32(tag.RowsAffected()), nil
}

func (r *mistakeRepo) List(ctx context.Context, userID string, resolvedFilter, limit, offset int) ([]*model.Mistake, int, error) {
	if limit <= 0 {
		limit = 20
	}
	args := []any{userID}
	where := `user_id = $1`
	switch resolvedFilter {
	case 0:
		where += ` AND is_resolved = FALSE`
	case 1:
		where += ` AND is_resolved = TRUE`
	}

	var total int
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM user_mistakes WHERE `+where,
		args...,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	args = append(args, limit, offset)
	rows, err := r.pool.Query(ctx, `
		SELECT `+mistakeCols+`
		FROM user_mistakes
		WHERE `+where+`
		ORDER BY last_made_at DESC
		LIMIT $`+itoa(len(args)-1)+` OFFSET $`+itoa(len(args)),
		args...,
	)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	out, err := scanMistakes(rows)
	return out, total, err
}

func scanMistakes(rows pgx.Rows) ([]*model.Mistake, error) {
	var out []*model.Mistake
	for rows.Next() {
		m, err := scanMistake(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, m)
	}
	return out, rows.Err()
}
