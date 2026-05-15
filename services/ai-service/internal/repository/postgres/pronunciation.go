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

const pronunciationCols = `id, user_id, step_id, target_text, audio_url, audio_mime,
	transcribed_text, language,
	accuracy_score, word_scores, feedback,
	tokens_used, cost_usd, created_at`

type pronunciationRepo struct {
	pool *pgxpool.Pool
}

// NewPronunciationRepository — конструктор.
func NewPronunciationRepository(pool *pgxpool.Pool) repository.PronunciationRepository {
	return &pronunciationRepo{pool: pool}
}

func scanPronunciation(scan func(...any) error) (*model.PronunciationAttempt, error) {
	a := &model.PronunciationAttempt{}
	var stepID sql.NullString
	var audioURL sql.NullString
	var audioMime sql.NullString
	var transcribed sql.NullString
	var language sql.NullString
	var feedback sql.NullString
	var wordScores []byte
	if err := scan(
		&a.ID, &a.UserID, &stepID, &a.TargetText, &audioURL, &audioMime,
		&transcribed, &language,
		&a.AccuracyScore, &wordScores, &feedback,
		&a.TokensUsed, &a.CostUSD, &a.CreatedAt,
	); err != nil {
		return nil, err
	}
	if stepID.Valid {
		s := stepID.String
		a.StepID = &s
	}
	if audioURL.Valid {
		a.AudioURL = audioURL.String
	}
	if audioMime.Valid {
		a.AudioMime = audioMime.String
	}
	if transcribed.Valid {
		a.TranscribedText = transcribed.String
	}
	if language.Valid {
		a.Language = language.String
	}
	if feedback.Valid {
		a.Feedback = feedback.String
	}
	parsed, err := model.WordScoresFromJSON(wordScores)
	if err != nil {
		return nil, err
	}
	a.WordScores = parsed
	return a, nil
}

func (r *pronunciationRepo) Create(ctx context.Context, a *model.PronunciationAttempt) error {
	if a.ID == "" {
		a.ID = uuid.New().String()
	}
	if a.CreatedAt.IsZero() {
		a.CreatedAt = time.Now().UTC()
	}
	wsJSON, err := a.WordScoresJSON()
	if err != nil {
		return err
	}
	var stepID any
	if a.StepID != nil {
		stepID = *a.StepID
	}
	_, err = r.pool.Exec(ctx, `
		INSERT INTO ai_pronunciation_attempts (
			id, user_id, step_id, target_text, audio_url, audio_mime,
			transcribed_text, language,
			accuracy_score, word_scores, feedback,
			tokens_used, cost_usd, created_at
		) VALUES (
			$1, $2, $3, $4, $5, $6,
			$7, $8,
			$9, $10, $11,
			$12, $13, $14
		)
	`,
		a.ID, a.UserID, stepID, a.TargetText, nullString(a.AudioURL), nullString(a.AudioMime),
		nullString(a.TranscribedText), nullString(a.Language),
		a.AccuracyScore, wsJSON, nullString(a.Feedback),
		a.TokensUsed, a.CostUSD, a.CreatedAt,
	)
	return err
}

func (r *pronunciationRepo) ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.PronunciationAttempt, int64, error) {
	if limit <= 0 {
		limit = 20
	}
	if limit > 100 {
		limit = 100
	}

	var total int64
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM ai_pronunciation_attempts WHERE user_id = $1`,
		userID,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	rows, err := r.pool.Query(ctx, `
		SELECT `+pronunciationCols+`
		FROM ai_pronunciation_attempts
		WHERE user_id = $1
		ORDER BY created_at DESC
		LIMIT $2 OFFSET $3
	`, userID, limit, offset)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	out, err := scanPronunciations(rows)
	return out, total, err
}

func scanPronunciations(rows pgx.Rows) ([]*model.PronunciationAttempt, error) {
	var out []*model.PronunciationAttempt
	for rows.Next() {
		a, err := scanPronunciation(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, a)
	}
	return out, rows.Err()
}
