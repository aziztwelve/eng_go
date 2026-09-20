package service

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/elearning/course-service/internal/client/srs"
	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

type VocabularyBankService interface {
	List(ctx context.Context, filters repository.VocabularyBankListFilters) ([]model.VocabularyBankWordSummary, int, error)
	Get(ctx context.Context, externalID, locale string) (*model.VocabularyBankWordDetail, error)
	GetProgress(ctx context.Context, userID, externalID string) (*model.VocabularyBankProgress, error)
	RecordAttempt(ctx context.Context, attempt model.VocabularyBankAttempt) (*model.VocabularyBankProgress, error)
}

type vocabularyBankService struct {
	repo     repository.VocabularyBankRepository
	progress repository.VocabularyBankProgressRepository
	srs      srs.Client
}

func NewVocabularyBankService(repo repository.VocabularyBankRepository, progress repository.VocabularyBankProgressRepository, srsClient srs.Client) VocabularyBankService {
	if srsClient == nil {
		srsClient = srs.NewNoopClient()
	}
	return &vocabularyBankService{repo: repo, progress: progress, srs: srsClient}
}

func (s *vocabularyBankService) GetProgress(ctx context.Context, userID, externalID string) (*model.VocabularyBankProgress, error) {
	if strings.TrimSpace(userID) == "" {
		return nil, fmt.Errorf("user_id is required")
	}
	if strings.TrimSpace(externalID) == "" {
		return nil, fmt.Errorf("external_id is required")
	}
	return s.progress.GetProgress(ctx, userID, externalID)
}

func (s *vocabularyBankService) RecordAttempt(ctx context.Context, attempt model.VocabularyBankAttempt) (*model.VocabularyBankProgress, error) {
	if strings.TrimSpace(attempt.UserID) == "" {
		return nil, fmt.Errorf("user_id is required")
	}
	if strings.TrimSpace(attempt.ExternalID) == "" {
		return nil, fmt.Errorf("external_id is required")
	}
	if attempt.Step < 1 || attempt.Step > 15 {
		return nil, fmt.Errorf("step must be between 1 and 15")
	}
	if attempt.Score < 0 || attempt.Score > 100 {
		return nil, fmt.Errorf("score must be between 0 and 100")
	}
	if attempt.TimeSpentMS < 0 {
		return nil, fmt.Errorf("time_spent_ms must not be negative")
	}
	progress, err := s.progress.RecordAttempt(ctx, attempt)
	if err != nil {
		return nil, err
	}
	if attempt.Step == 15 && attempt.IsCorrect {
		// SRS is intentionally non-fatal: a completed vocabulary lesson is
		// retained even if the review service is temporarily unavailable.
		_ = s.srs.RecordVocabularyBankReview(ctx, srs.VocabularyBankReviewEvent{UserID: attempt.UserID, ExternalID: attempt.ExternalID, Quality: 5, ResponseTimeMS: int32(attempt.TimeSpentMS)})
	}
	return progress, nil
}

func (s *vocabularyBankService) List(ctx context.Context, filters repository.VocabularyBankListFilters) ([]model.VocabularyBankWordSummary, int, error) {
	filters.CEFRLevel = strings.ToUpper(strings.TrimSpace(filters.CEFRLevel))
	filters.Search = strings.TrimSpace(filters.Search)
	filters.Locale = normalizeVocabularyBankLocale(filters.Locale)
	if filters.CEFRLevel != "" && !isVocabularyBankCEFRLevel(filters.CEFRLevel) {
		return nil, 0, fmt.Errorf("invalid CEFR level %q", filters.CEFRLevel)
	}
	return s.repo.List(ctx, filters)
}

func (s *vocabularyBankService) Get(ctx context.Context, externalID, locale string) (*model.VocabularyBankWordDetail, error) {
	externalID = strings.TrimSpace(externalID)
	if externalID == "" {
		return nil, fmt.Errorf("external_id is required")
	}
	detail, err := s.repo.GetByExternalID(ctx, externalID, normalizeVocabularyBankLocale(locale))
	if err != nil {
		return nil, err
	}
	for i := range detail.Activities {
		payload, err := sanitizeVocabularyBankPayload(detail.Activities[i].Payload)
		if err != nil {
			return nil, fmt.Errorf("activity %d payload: %w", detail.Activities[i].Step, err)
		}
		detail.Activities[i].Payload = payload
	}
	return detail, nil
}

func normalizeVocabularyBankLocale(locale string) string {
	locale = strings.ToLower(strings.TrimSpace(locale))
	if locale == "" {
		return "en"
	}
	return locale
}

var privateVocabularyBankPayloadKeys = map[string]struct{}{
	"translation_key":  {},
	"image_prompt":     {},
	"image_prompt_ref": {},
	"context_id":       {},
}

// sanitizeVocabularyBankPayload removes authoring metadata before a raw
// activity payload leaves course-service. It is recursive because nested
// activity content can contain the same source-only fields.
func sanitizeVocabularyBankPayload(raw json.RawMessage) (json.RawMessage, error) {
	var payload any
	if err := json.Unmarshal(raw, &payload); err != nil {
		return nil, err
	}
	sanitizeVocabularyBankValue(payload)
	clean, err := json.Marshal(payload)
	if err != nil {
		return nil, err
	}
	return clean, nil
}

func sanitizeVocabularyBankValue(value any) {
	switch typed := value.(type) {
	case map[string]any:
		for key, child := range typed {
			if _, private := privateVocabularyBankPayloadKeys[key]; private {
				delete(typed, key)
				continue
			}
			sanitizeVocabularyBankValue(child)
		}
	case []any:
		for _, child := range typed {
			sanitizeVocabularyBankValue(child)
		}
	}
}
