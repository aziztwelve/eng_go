package postgres

import (
	"context"
	"database/sql"
	"errors"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

const explanationCols = `id, user_id, step_id,
	incorrect_answer, incorrect_answer_md5, correct_answer,
	explanation, target_language, native_language,
	tokens_used, cost_usd, created_at`

type explanationRepo struct {
	pool *pgxpool.Pool
}

// NewExplanationRepository — конструктор.
func NewExplanationRepository(pool *pgxpool.Pool) repository.ExplanationRepository {
	return &explanationRepo{pool: pool}
}

func scanExplanation(scan func(...any) error) (*model.Explanation, error) {
	e := &model.Explanation{}
	var stepID sql.NullString
	var correct sql.NullString
	var target sql.NullString
	var native sql.NullString
	if err := scan(
		&e.ID, &e.UserID, &stepID,
		&e.IncorrectAnswer, &e.IncorrectAnswerMD5, &correct,
		&e.Explanation, &target, &native,
		&e.TokensUsed, &e.CostUSD, &e.CreatedAt,
	); err != nil {
		return nil, err
	}
	if stepID.Valid {
		s := stepID.String
		e.StepID = &s
	}
	if correct.Valid {
		e.CorrectAnswer = correct.String
	}
	if target.Valid {
		e.TargetLanguage = target.String
	}
	if native.Valid {
		e.NativeLanguage = native.String
	}
	return e, nil
}

func (r *explanationRepo) Get(ctx context.Context, stepID *string, incorrectMD5 string) (*model.Explanation, error) {
	if stepID == nil {
		// step_id IS NULL — ничего не дедуплицируем (NULL != NULL в SQL),
		// сразу возвращаем miss.
		return nil, repository.ErrNotFound
	}
	row := r.pool.QueryRow(ctx, `
		SELECT `+explanationCols+`
		FROM ai_explanations
		WHERE step_id = $1 AND incorrect_answer_md5 = $2
		LIMIT 1
	`, *stepID, incorrectMD5)
	e, err := scanExplanation(row.Scan)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	return e, err
}

func (r *explanationRepo) Create(ctx context.Context, e *model.Explanation) error {
	if e.ID == "" {
		e.ID = uuid.New().String()
	}
	if e.CreatedAt.IsZero() {
		e.CreatedAt = time.Now().UTC()
	}
	var stepID any
	if e.StepID != nil {
		stepID = *e.StepID
	}
	_, err := r.pool.Exec(ctx, `
		INSERT INTO ai_explanations (
			id, user_id, step_id,
			incorrect_answer, incorrect_answer_md5, correct_answer,
			explanation, target_language, native_language,
			tokens_used, cost_usd, created_at
		) VALUES (
			$1, $2, $3,
			$4, $5, $6,
			$7, $8, $9,
			$10, $11, $12
		)
	`,
		e.ID, e.UserID, stepID,
		e.IncorrectAnswer, e.IncorrectAnswerMD5, nullString(e.CorrectAnswer),
		e.Explanation, nullString(e.TargetLanguage), nullString(e.NativeLanguage),
		e.TokensUsed, e.CostUSD, e.CreatedAt,
	)
	if err != nil && isUniqueViolation(err) {
		// Race-condition: параллельный INSERT с тем же кэш-ключом.
		// Возвращаем nil — caller просто использует свой объект.
		return nil
	}
	return err
}
