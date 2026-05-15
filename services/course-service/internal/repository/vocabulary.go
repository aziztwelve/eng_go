package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

// VocabularyListFilters — фильтры списка словаря.
type VocabularyListFilters struct {
	Language       *string
	TargetLanguage *string
	Level          *string
	POS            *string
	Search         string
	Limit          int
	Offset         int
}

// VocabularyRepository — интерфейс репозитория словаря.
type VocabularyRepository interface {
	Create(ctx context.Context, entry *model.VocabularyEntry) error
	GetByID(ctx context.Context, id string) (*model.VocabularyEntry, error)
	Update(ctx context.Context, entry *model.VocabularyEntry) error
	Delete(ctx context.Context, id string) error
	List(ctx context.Context, filters VocabularyListFilters) ([]*model.VocabularyEntry, int, error)

	// BulkCreate — создаёт несколько записей. На дубликаты по uniq-ключу
	// (language, word, target_language) возвращает пустую строку
	// в `ids[i]` без ошибки. Важно для админского импорта.
	BulkCreate(ctx context.Context, entries []*model.VocabularyEntry) (ids []string, created, skipped int, err error)
}
