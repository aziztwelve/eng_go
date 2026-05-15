package postgres

import (
	"context"
	"database/sql"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

const writingCols = `id, user_id, prompt, user_text, target_language, user_level,
	overall_score, grammar_score, vocab_score, coherence_score, style_score,
	corrected_text, feedback,
	tokens_used, cost_usd, created_at`

type writingRepo struct {
	pool *pgxpool.Pool
}

// NewWritingRepository — конструктор.
func NewWritingRepository(pool *pgxpool.Pool) repository.WritingRepository {
	return &writingRepo{pool: pool}
}

func scanWriting(scan func(...any) error) (*model.WritingAssessment, error) {
	a := &model.WritingAssessment{}
	var prompt sql.NullString
	var target sql.NullString
	var level sql.NullString
	var corrected sql.NullString
	var feedback []byte
	if err := scan(
		&a.ID, &a.UserID, &prompt, &a.UserText, &target, &level,
		&a.OverallScore, &a.GrammarScore, &a.VocabScore, &a.CoherenceScore, &a.StyleScore,
		&corrected, &feedback,
		&a.TokensUsed, &a.CostUSD, &a.CreatedAt,
	); err != nil {
		return nil, err
	}
	if prompt.Valid {
		a.Prompt = prompt.String
	}
	if target.Valid {
		a.TargetLanguage = target.String
	}
	if level.Valid {
		a.UserLevel = level.String
	}
	if corrected.Valid {
		a.CorrectedText = corrected.String
	}
	parsed, err := model.WritingFeedbackFromJSON(feedback)
	if err != nil {
		return nil, err
	}
	a.Feedback = parsed
	return a, nil
}

func (r *writingRepo) Create(ctx context.Context, a *model.WritingAssessment) error {
	if a.ID == "" {
		a.ID = uuid.New().String()
	}
	if a.CreatedAt.IsZero() {
		a.CreatedAt = time.Now().UTC()
	}
	fbJSON, err := a.FeedbackJSON()
	if err != nil {
		return err
	}
	_, err = r.pool.Exec(ctx, `
		INSERT INTO ai_writing_assessments (
			id, user_id, prompt, user_text, target_language, user_level,
			overall_score, grammar_score, vocab_score, coherence_score, style_score,
			corrected_text, feedback,
			tokens_used, cost_usd, created_at
		) VALUES (
			$1, $2, $3, $4, $5, $6,
			$7, $8, $9, $10, $11,
			$12, $13,
			$14, $15, $16
		)
	`,
		a.ID, a.UserID, nullString(a.Prompt), a.UserText, nullString(a.TargetLanguage), nullString(a.UserLevel),
		a.OverallScore, a.GrammarScore, a.VocabScore, a.CoherenceScore, a.StyleScore,
		nullString(a.CorrectedText), fbJSON,
		a.TokensUsed, a.CostUSD, a.CreatedAt,
	)
	return err
}

func (r *writingRepo) ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.WritingAssessment, int64, error) {
	if limit <= 0 {
		limit = 20
	}
	if limit > 100 {
		limit = 100
	}

	var total int64
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM ai_writing_assessments WHERE user_id = $1`,
		userID,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	rows, err := r.pool.Query(ctx, `
		SELECT `+writingCols+`
		FROM ai_writing_assessments
		WHERE user_id = $1
		ORDER BY created_at DESC
		LIMIT $2 OFFSET $3
	`, userID, limit, offset)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	out, err := scanWritings(rows)
	return out, total, err
}

func scanWritings(rows pgx.Rows) ([]*model.WritingAssessment, error) {
	var out []*model.WritingAssessment
	for rows.Next() {
		a, err := scanWriting(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, a)
	}
	return out, rows.Err()
}
