package repository

import (
	"context"
	"errors"

	"github.com/elearning/course-service/internal/model"
)

// ErrFlashcardNotFound — нет карточки у юзера (для маппинга в codes.NotFound).
var ErrFlashcardNotFound = errors.New("flashcard not found")

// ErrFlashcardConflict — карточка с такой же vocabulary_id уже существует
// у этого юзера. Для AddVocabularyAsFlashcard конвертится в return existing.
var ErrFlashcardConflict = errors.New("flashcard already exists for this vocabulary")

// FlashcardListFilters — фильтры для list-запроса.
type FlashcardListFilters struct {
	UserID           string
	Source           string // "" = все
	OnlyPinnedToday  bool   // если true, JOIN'им flashcard_today_queue
	IncludeArchived  bool
	Search           string // lower-case substring search по word
	Limit            int
	Offset           int
}

// FlashcardRepository — CRUD для user_flashcards.
type FlashcardRepository interface {
	Create(ctx context.Context, f *model.Flashcard) error
	GetByID(ctx context.Context, userID, flashcardID string) (*model.Flashcard, error)
	GetByVocabulary(ctx context.Context, userID, vocabularyID string) (*model.Flashcard, error)
	Update(ctx context.Context, f *model.Flashcard) error
	Archive(ctx context.Context, userID, flashcardID string) error
	List(ctx context.Context, filters FlashcardListFilters) ([]*model.Flashcard, int, error)

	// BulkCreate — best-effort batch insert. На дубликаты по
	// (user_id, vocabulary_id) UNIQUE — пропускает (skipped++).
	BulkCreate(ctx context.Context, items []*model.Flashcard) (created, skipped int, err error)

	// Stats для GetFlashcardStats. Возвращает 5 счётчиков сразу одним
	// запросом (агрегаты по non-archived карточкам юзера).
	Stats(ctx context.Context, userID string) (FlashcardStats, error)
}

// FlashcardStats — агрегат для UI tile блока в Library.
type FlashcardStats struct {
	TotalCount      int32
	LearningCount   int32 // reps>0 && strength<0.8 (опционально, требует SRS)
	MasteredCount   int32 // strength>=0.8
	TodayDue        int32 // pinned_today + due-by-srs
	TodayCompleted  int32 // отревьювлено сегодня (из srs_review_history)
}
