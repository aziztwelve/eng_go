package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

type VocabularyBankListFilters struct {
	CEFRLevel string
	Search    string
	Locale    string
	Limit     int
	Offset    int
}

// VocabularyBankRepository reads shared imported content only; it owns no
// learner progress or flashcard state.
type VocabularyBankRepository interface {
	List(ctx context.Context, filters VocabularyBankListFilters) ([]model.VocabularyBankWordSummary, int, error)
	GetByExternalID(ctx context.Context, externalID, locale string) (*model.VocabularyBankWordDetail, error)
}

type VocabularyBankProgressRepository interface {
	GetProgress(ctx context.Context, userID, externalID string) (*model.VocabularyBankProgress, error)
	RecordAttempt(ctx context.Context, attempt model.VocabularyBankAttempt) (*model.VocabularyBankProgress, error)
}
