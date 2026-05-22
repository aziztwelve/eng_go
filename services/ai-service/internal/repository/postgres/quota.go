package postgres

import (
	"context"
	"errors"
	"time"

	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

type quotaRepo struct {
	pool *pgxpool.Pool
}

// NewQuotaRepository — конструктор.
func NewQuotaRepository(pool *pgxpool.Pool) repository.QuotaRepository {
	return &quotaRepo{pool: pool}
}

// truncateDay — округляем до начала суток UTC.
func truncateDay(t time.Time) time.Time {
	t = t.UTC()
	return time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, time.UTC)
}

func (r *quotaRepo) Get(ctx context.Context, userID string, date time.Time) (*model.UsageQuota, error) {
	day := truncateDay(date)
	row := r.pool.QueryRow(ctx, `
		SELECT user_id, date, chat_requests, voice_minutes, writing_checks
		FROM ai_usage_quota
		WHERE user_id = $1 AND date = $2
	`, userID, day)
	q := &model.UsageQuota{}
	if err := row.Scan(&q.UserID, &q.Date, &q.ChatRequests, &q.VoiceMinutes, &q.WritingChecks); err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			// Возвращаем нулевую запись — это не ошибка для quota-проверки.
			return &model.UsageQuota{
				UserID: userID,
				Date:   day,
			}, nil
		}
		return nil, err
	}
	return q, nil
}

func (r *quotaRepo) Increment(ctx context.Context, userID string, date time.Time, chatDelta int32, voiceMinutesDelta float64, writingDelta int32) error {
	day := truncateDay(date)
	_, err := r.pool.Exec(ctx, `
		INSERT INTO ai_usage_quota (user_id, date, chat_requests, voice_minutes, writing_checks)
		VALUES ($1, $2, $3, $4, $5)
		ON CONFLICT (user_id, date) DO UPDATE SET
			chat_requests  = ai_usage_quota.chat_requests + EXCLUDED.chat_requests,
			voice_minutes  = ai_usage_quota.voice_minutes + EXCLUDED.voice_minutes,
			writing_checks = ai_usage_quota.writing_checks + EXCLUDED.writing_checks
	`, userID, day, chatDelta, voiceMinutesDelta, writingDelta)
	return err
}

func (r *quotaRepo) DeleteOlderThan(ctx context.Context, before time.Time) (int64, error) {
	day := truncateDay(before)
	tag, err := r.pool.Exec(ctx, `
		DELETE FROM ai_usage_quota
		WHERE date < $1
	`, day)
	if err != nil {
		return 0, err
	}
	return tag.RowsAffected(), nil
}

// Sentinel — на случай если caller хочет проверить ErrNotFound.
var _ = repository.ErrNotFound
