package postgres

import (
	"context"
	"database/sql"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/step-validation-service/internal/model"
	"github.com/elearning/step-validation-service/internal/repository"
)

const attemptCols = `id, user_id, step_id, lesson_id, step_type, answer,
	is_correct, score, time_spent_ms, created_at`

type attemptRepo struct {
	pool *pgxpool.Pool
}

// NewAttemptRepository — конструктор.
func NewAttemptRepository(pool *pgxpool.Pool) repository.AttemptRepository {
	return &attemptRepo{pool: pool}
}

func scanAttempt(scan func(...interface{}) error) (*model.Attempt, error) {
	a := &model.Attempt{}
	var lessonID sql.NullString
	var timeSpent sql.NullInt32
	var stepType string
	if err := scan(
		&a.ID,
		&a.UserID,
		&a.StepID,
		&lessonID,
		&stepType,
		&a.Answer,
		&a.IsCorrect,
		&a.Score,
		&timeSpent,
		&a.CreatedAt,
	); err != nil {
		return nil, err
	}
	a.LessonID = lessonID.String
	a.TimeSpentMs = timeSpent.Int32
	a.StepType = model.StepType(stepType)
	return a, nil
}

func (r *attemptRepo) Create(ctx context.Context, a *model.Attempt) error {
	if a.ID == "" {
		a.ID = uuid.New().String()
	}
	query := `
		INSERT INTO step_attempts
			(id, user_id, step_id, lesson_id, step_type, answer,
			 is_correct, score, time_spent_ms)
		VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)
		RETURNING created_at
	`
	var lessonID interface{}
	if a.LessonID != "" {
		lessonID = a.LessonID
	}
	var timeSpent interface{}
	if a.TimeSpentMs > 0 {
		timeSpent = a.TimeSpentMs
	}
	return r.pool.QueryRow(ctx, query,
		a.ID,
		a.UserID,
		a.StepID,
		lessonID,
		string(a.StepType),
		[]byte(a.Answer),
		a.IsCorrect,
		a.Score,
		timeSpent,
	).Scan(&a.CreatedAt)
}

func (r *attemptRepo) CountByUserStep(ctx context.Context, userID, stepID string) (int32, error) {
	var n int32
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM step_attempts WHERE user_id = $1 AND step_id = $2`,
		userID, stepID,
	).Scan(&n); err != nil {
		return 0, err
	}
	return n, nil
}

func (r *attemptRepo) ListByUserStep(ctx context.Context, userID, stepID string, limit, offset int) ([]*model.Attempt, int, error) {
	if limit <= 0 {
		limit = 20
	}

	var total int
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM step_attempts WHERE user_id = $1 AND step_id = $2`,
		userID, stepID,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	rows, err := r.pool.Query(ctx, `
		SELECT `+attemptCols+`
		FROM step_attempts
		WHERE user_id = $1 AND step_id = $2
		ORDER BY created_at DESC
		LIMIT $3 OFFSET $4`,
		userID, stepID, limit, offset,
	)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var out []*model.Attempt
	for rows.Next() {
		a, err := scanAttempt(rows.Scan)
		if err != nil {
			return nil, 0, err
		}
		out = append(out, a)
	}
	return out, total, rows.Err()
}
