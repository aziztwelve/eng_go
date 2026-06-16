package service

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// FlashcardService — бизнес-логика личных карточек пользователя (Phase 7).
//
// Cross-svc integration с SRS (strength/repetitions/next_review_at,
// today_completed) — TODO в следующем sprint'е. Сейчас возвращаем CRUD-данные
// без SM-2 проекции.
type FlashcardService interface {
	Create(ctx context.Context, f *model.Flashcard) (*model.Flashcard, error)
	Get(ctx context.Context, userID, flashcardID string) (*model.Flashcard, error)
	Update(ctx context.Context, f *model.Flashcard) (*model.Flashcard, error)
	Archive(ctx context.Context, userID, flashcardID string) error
	List(ctx context.Context, filters repository.FlashcardListFilters) ([]*model.Flashcard, int, error)

	// BulkCreate — accept-all from AI suggestions / batch import.
	BulkCreate(ctx context.Context, items []*model.Flashcard) (created, skipped int, err error)

	// AddVocabularyAsFlashcard — идемпотентный side-effect для step-validation
	// (auto-add из урока), либо из catalog-выбора. Если карточка с такой же
	// vocabulary_id уже существует → возвращает её, created=false.
	//
	// vocab — system vocabulary entry, который уже найден caller'ом
	// (repository VocabularyRepository — там же).
	AddVocabularyAsFlashcard(
		ctx context.Context,
		userID string,
		vocab *model.VocabularyEntry,
		source string,
	) (card *model.Flashcard, created bool, err error)

	Stats(ctx context.Context, userID string) (repository.FlashcardStats, error)
}

type flashcardService struct {
	repo      repository.FlashcardRepository
	vocabRepo repository.VocabularyRepository
}

// NewFlashcardService — конструктор. vocabRepo используется для
// AddVocabularyAsFlashcard (резолв inline-полей из system vocabulary).
func NewFlashcardService(
	repo repository.FlashcardRepository,
	vocabRepo repository.VocabularyRepository,
) FlashcardService {
	return &flashcardService{repo: repo, vocabRepo: vocabRepo}
}

// validateFlashcard — общая валидация перед Create/BulkCreate.
// Trim'ает строки и проверяет обязательные поля.
func validateFlashcard(f *model.Flashcard) error {
	f.Word = strings.TrimSpace(f.Word)
	f.Translation = strings.TrimSpace(f.Translation)
	f.Language = strings.ToLower(strings.TrimSpace(f.Language))
	f.TargetLanguage = strings.ToLower(strings.TrimSpace(f.TargetLanguage))
	f.Definition = strings.TrimSpace(f.Definition)
	f.ExampleSentence = strings.TrimSpace(f.ExampleSentence)

	switch {
	case f.UserID == "":
		return errors.New("flashcard: user_id is required")
	case f.Word == "":
		return errors.New("flashcard: word is required")
	case len(f.Word) > 200:
		return errors.New("flashcard: word must be ≤200 chars")
	case f.Translation == "":
		return errors.New("flashcard: translation is required")
	case len(f.Translation) > 200:
		return errors.New("flashcard: translation must be ≤200 chars")
	case f.Language == "":
		return errors.New("flashcard: language is required")
	case f.TargetLanguage == "":
		return errors.New("flashcard: target_language is required")
	case f.Language == f.TargetLanguage:
		return errors.New("flashcard: language and target_language must differ")
	}

	if f.Source == "" {
		f.Source = model.FlashcardSourceManual
	}
	if !model.IsValidFlashcardSource(f.Source) {
		return fmt.Errorf("flashcard: invalid source %q", f.Source)
	}
	return nil
}

func (s *flashcardService) Create(ctx context.Context, f *model.Flashcard) (*model.Flashcard, error) {
	if err := validateFlashcard(f); err != nil {
		return nil, err
	}
	if err := s.repo.Create(ctx, f); err != nil {
		return nil, err
	}
	return f, nil
}

func (s *flashcardService) Get(ctx context.Context, userID, flashcardID string) (*model.Flashcard, error) {
	if userID == "" || flashcardID == "" {
		return nil, errors.New("flashcard: user_id and flashcard_id are required")
	}
	return s.repo.GetByID(ctx, userID, flashcardID)
}

func (s *flashcardService) Update(ctx context.Context, f *model.Flashcard) (*model.Flashcard, error) {
	if f.UserID == "" || f.ID == "" {
		return nil, errors.New("flashcard: user_id and id are required")
	}
	if strings.TrimSpace(f.Word) == "" || strings.TrimSpace(f.Translation) == "" {
		return nil, errors.New("flashcard: word and translation are required")
	}
	if err := s.repo.Update(ctx, f); err != nil {
		return nil, err
	}
	return f, nil
}

func (s *flashcardService) Archive(ctx context.Context, userID, flashcardID string) error {
	if userID == "" || flashcardID == "" {
		return errors.New("flashcard: user_id and flashcard_id are required")
	}
	return s.repo.Archive(ctx, userID, flashcardID)
}

func (s *flashcardService) List(ctx context.Context, filters repository.FlashcardListFilters) ([]*model.Flashcard, int, error) {
	if filters.UserID == "" {
		return nil, 0, errors.New("flashcard: user_id is required")
	}
	if filters.Source != "" && !model.IsValidFlashcardSource(filters.Source) {
		return nil, 0, fmt.Errorf("flashcard: invalid source filter %q", filters.Source)
	}
	return s.repo.List(ctx, filters)
}

func (s *flashcardService) BulkCreate(ctx context.Context, items []*model.Flashcard) (int, int, error) {
	if len(items) == 0 {
		return 0, 0, errors.New("flashcard: items are required")
	}
	for i, f := range items {
		if err := validateFlashcard(f); err != nil {
			return 0, 0, fmt.Errorf("items[%d]: %w", i, err)
		}
	}
	return s.repo.BulkCreate(ctx, items)
}

func (s *flashcardService) AddVocabularyAsFlashcard(
	ctx context.Context,
	userID string,
	vocab *model.VocabularyEntry,
	source string,
) (*model.Flashcard, bool, error) {
	if userID == "" {
		return nil, false, errors.New("flashcard: user_id is required")
	}
	if vocab == nil || vocab.ID == "" {
		return nil, false, errors.New("flashcard: vocabulary is required")
	}
	// manual здесь запрещён — для manual клиент использует Create.
	if source == "" || source == model.FlashcardSourceManual {
		return nil, false, errors.New("flashcard: source must be lesson/mistake/ai_suggestion for AddVocabularyAsFlashcard")
	}
	if !model.IsValidFlashcardSource(source) {
		return nil, false, fmt.Errorf("flashcard: invalid source %q", source)
	}

	// Идемпотентность: если карточка уже есть → возвращаем её.
	existing, err := s.repo.GetByVocabulary(ctx, userID, vocab.ID)
	if err == nil {
		return existing, false, nil
	}
	if !errors.Is(err, repository.ErrFlashcardNotFound) {
		return nil, false, err
	}

	card := &model.Flashcard{
		UserID:          userID,
		Source:          source,
		VocabularyID:    vocab.ID,
		Word:            vocab.Word,
		Translation:     vocab.Translation,
		Language:        vocab.Language,
		TargetLanguage:  vocab.TargetLanguage,
		Transcription:   vocab.Transcription,
		AudioURL:        vocab.AudioURL,
		ImageURL:        vocab.ImageURL,
	}
	if err := validateFlashcard(card); err != nil {
		return nil, false, err
	}
	if err := s.repo.Create(ctx, card); err != nil {
		// Гонка: между GetByVocabulary и Create вставили дубль.
		if errors.Is(err, repository.ErrFlashcardConflict) {
			again, gerr := s.repo.GetByVocabulary(ctx, userID, vocab.ID)
			if gerr == nil {
				return again, false, nil
			}
			return nil, false, err
		}
		return nil, false, err
	}
	return card, true, nil
}

func (s *flashcardService) Stats(ctx context.Context, userID string) (repository.FlashcardStats, error) {
	if userID == "" {
		return repository.FlashcardStats{}, errors.New("flashcard: user_id is required")
	}
	return s.repo.Stats(ctx, userID)
}
