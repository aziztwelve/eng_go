package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

// TTSRepository — интерфейс кэша TTS-аудио.
type TTSRepository interface {
	// GetByText — возвращает запись из кэша по (text_md5, language, voice).
	// Если не найдено — `(nil, pgx.ErrNoRows)`.
	GetByText(ctx context.Context, textMD5, language, voice string) (*model.TTSCacheEntry, error)

	// Upsert — записывает (text_md5, language, voice → audio_url) в кэш.
	// При конфликте по уникальному индексу — обновляет audio_url/duration_ms.
	// Возвращает запись и флаг `created`. `created=false` означает, что
	// запись уже была в кэше до вызова.
	Upsert(ctx context.Context, entry *model.TTSCacheEntry) (created bool, err error)
}
