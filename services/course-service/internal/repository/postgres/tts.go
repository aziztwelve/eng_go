package postgres

import (
	"context"
	"database/sql"
	"errors"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

const ttsSelectCols = `id, text, language, voice, audio_url, duration_ms, created_at`

type ttsRepository struct {
	pool *pgxpool.Pool
}

// NewTTSRepository — конструктор кэша TTS.
func NewTTSRepository(pool *pgxpool.Pool) repository.TTSRepository {
	return &ttsRepository{pool: pool}
}

func scanTTS(scan func(...interface{}) error) (*model.TTSCacheEntry, error) {
	t := &model.TTSCacheEntry{}
	var duration sql.NullInt32
	if err := scan(
		&t.ID,
		&t.Text,
		&t.Language,
		&t.Voice,
		&t.AudioURL,
		&duration,
		&t.CreatedAt,
	); err != nil {
		return nil, err
	}
	t.DurationMs = duration.Int32
	return t, nil
}

// GetByText — пробрасывает pgx.ErrNoRows наверх.
func (r *ttsRepository) GetByText(ctx context.Context, textMD5, language, voice string) (*model.TTSCacheEntry, error) {
	if voice == "" {
		voice = model.TTSVoiceDefault
	}
	query := `SELECT ` + ttsSelectCols + `
		FROM tts_cache
		WHERE text_md5 = $1 AND language = $2 AND voice = $3`
	return scanTTS(r.pool.QueryRow(ctx, query, textMD5, language, voice).Scan)
}

// Upsert — INSERT ... ON CONFLICT DO UPDATE. Если row уже была — `created=false`.
func (r *ttsRepository) Upsert(ctx context.Context, e *model.TTSCacheEntry) (bool, error) {
	if e.ID == "" {
		e.ID = uuid.New().String()
	}
	if e.Voice == "" {
		e.Voice = model.TTSVoiceDefault
	}
	if e.TextMD5 == "" {
		return false, errors.New("tts upsert: text_md5 is required")
	}

	// Двухшаговая стратегия — сначала пробуем INSERT, на конфликт
	// читаем существующую и обновляем. Так получаем точный `created` флаг
	// без RETURNING xmax-хака.
	var insertedID string
	err := r.pool.QueryRow(ctx, `
		INSERT INTO tts_cache
			(id, text, text_md5, language, voice, audio_url, duration_ms)
		VALUES ($1, $2, $3, $4, $5, $6, $7)
		ON CONFLICT (text_md5, language, voice) DO NOTHING
		RETURNING id, created_at`,
		e.ID,
		e.Text,
		e.TextMD5,
		e.Language,
		e.Voice,
		e.AudioURL,
		nullableInt32(e.DurationMs),
	).Scan(&insertedID, &e.CreatedAt)

	if err == nil {
		e.ID = insertedID
		return true, nil
	}
	if !errors.Is(err, pgx.ErrNoRows) {
		return false, err
	}

	// Конфликт: обновим audio_url/duration_ms (на случай если меняется
	// провайдер / переснимаем) и вернём существующую запись.
	row := r.pool.QueryRow(ctx, `
		UPDATE tts_cache
		SET audio_url = $1, duration_ms = $2
		WHERE text_md5 = $3 AND language = $4 AND voice = $5
		RETURNING `+ttsSelectCols,
		e.AudioURL,
		nullableInt32(e.DurationMs),
		e.TextMD5,
		e.Language,
		e.Voice,
	)
	updated, err := scanTTS(row.Scan)
	if err != nil {
		return false, err
	}
	*e = *updated
	return false, nil
}

func nullableInt32(v int32) interface{} {
	if v == 0 {
		return nil
	}
	return v
}
