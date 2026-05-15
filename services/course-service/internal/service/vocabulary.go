package service

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// VocabularyService — бизнес-логика словаря (Phase 2).
type VocabularyService interface {
	Create(ctx context.Context, e *model.VocabularyEntry) (*model.VocabularyEntry, error)
	Get(ctx context.Context, id string) (*model.VocabularyEntry, error)
	Update(ctx context.Context, e *model.VocabularyEntry) (*model.VocabularyEntry, error)
	Delete(ctx context.Context, id string) error
	List(ctx context.Context, f repository.VocabularyListFilters) ([]*model.VocabularyEntry, int, error)
	BulkCreate(ctx context.Context, entries []*model.VocabularyEntry) (ids []string, created, skipped int, err error)
}

type vocabularyService struct {
	repo repository.VocabularyRepository
}

// NewVocabularyService — конструктор словаря.
func NewVocabularyService(repo repository.VocabularyRepository) VocabularyService {
	return &vocabularyService{repo: repo}
}

func validateVocabulary(e *model.VocabularyEntry) error {
	e.Language = strings.ToLower(strings.TrimSpace(e.Language))
	e.TargetLanguage = strings.ToLower(strings.TrimSpace(e.TargetLanguage))
	e.Word = strings.TrimSpace(e.Word)
	e.Translation = strings.TrimSpace(e.Translation)
	switch {
	case e.Language == "":
		return errors.New("vocabulary: language is required")
	case e.TargetLanguage == "":
		return errors.New("vocabulary: target_language is required")
	case e.Word == "":
		return errors.New("vocabulary: word is required")
	case e.Translation == "":
		return errors.New("vocabulary: translation is required")
	case e.Language == e.TargetLanguage:
		return errors.New("vocabulary: language and target_language must differ")
	}
	return nil
}

func (s *vocabularyService) Create(ctx context.Context, e *model.VocabularyEntry) (*model.VocabularyEntry, error) {
	if err := validateVocabulary(e); err != nil {
		return nil, err
	}
	if err := s.repo.Create(ctx, e); err != nil {
		return nil, err
	}
	return e, nil
}

func (s *vocabularyService) Get(ctx context.Context, id string) (*model.VocabularyEntry, error) {
	return s.repo.GetByID(ctx, id)
}

func (s *vocabularyService) Update(ctx context.Context, e *model.VocabularyEntry) (*model.VocabularyEntry, error) {
	if e.Word == "" || e.Translation == "" {
		return nil, errors.New("vocabulary: word and translation are required")
	}
	if err := s.repo.Update(ctx, e); err != nil {
		return nil, err
	}
	return e, nil
}

func (s *vocabularyService) Delete(ctx context.Context, id string) error {
	return s.repo.Delete(ctx, id)
}

func (s *vocabularyService) List(ctx context.Context, f repository.VocabularyListFilters) ([]*model.VocabularyEntry, int, error) {
	return s.repo.List(ctx, f)
}

func (s *vocabularyService) BulkCreate(ctx context.Context, entries []*model.VocabularyEntry) ([]string, int, int, error) {
	for i, e := range entries {
		if err := validateVocabulary(e); err != nil {
			return nil, 0, 0, fmt.Errorf("entries[%d]: %w", i, err)
		}
	}
	return s.repo.BulkCreate(ctx, entries)
}
