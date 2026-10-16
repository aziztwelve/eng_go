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
	ListFeed(ctx context.Context, userID string, filters repository.VocabularyBankFeedFilters) (*model.VocabularyBankFeed, error)
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
	correct, score, mode, clientID := attempt.IsCorrect, attempt.Score, "legacy", ""
	var protocol struct {
		Version       int    `json:"validation_version"`
		SessionUserID string `json:"session_user_id"`
	}
	if len(attempt.Answer) > 0 {
		if err := json.Unmarshal(attempt.Answer, &protocol); err != nil {
			return nil, fmt.Errorf("invalid answer")
		}
	}
	// Expand/contract compatibility: existing APKs submit only client scores.
	// TODO remove legacy path after all supported APKs send validation_version=2.
	if protocol.Version != 0 && protocol.Version != 2 {
		return nil, fmt.Errorf("unsupported validation_version")
	}
	if protocol.Version == 2 {
		if protocol.SessionUserID != attempt.UserID {
			return nil, fmt.Errorf("answer belongs to another session")
		}
		detail, err := s.repo.GetByExternalID(ctx, attempt.ExternalID, "en")
		if err != nil {
			return nil, err
		}
		var activity *model.VocabularyBankActivity
		for i := range detail.Activities {
			if detail.Activities[i].Step == attempt.Step {
				activity = &detail.Activities[i]
				break
			}
		}
		if activity == nil {
			return nil, fmt.Errorf("activity not found")
		}
		correct, score, mode, clientID, err = evaluateVocabularyAnswer(*activity, attempt.Answer)
		if err != nil {
			return nil, err
		}
		attempt.IsCorrect, attempt.Score, attempt.ClientAttemptID = correct && mode != "practice", score, clientID
		// Pronunciation supplied by the caller is not a verified server assessment.
		attempt.PronunciationScore = 0
	}
	attempt.AssessmentMode, attempt.CanAdvance = mode, correct
	progress, err := s.progress.RecordAttempt(ctx, attempt)
	if err != nil {
		return nil, err
	}
	if !progress.Replayed {
		progress.IsCorrect, progress.Score, progress.AssessmentMode = correct && mode != "practice", score, mode
		progress.CanAdvance = correct
	}
	if progress.JustCompleted {
		// SRS is intentionally non-fatal: a completed vocabulary lesson is
		// retained even if the review service is temporarily unavailable.
		_ = s.srs.RecordVocabularyBankReview(ctx, srs.VocabularyBankReviewEvent{UserID: attempt.UserID, ExternalID: attempt.ExternalID, Quality: 3, ResponseTimeMS: int32(attempt.TimeSpentMS)})
	}
	return progress, nil
}

func (s *vocabularyBankService) ListFeed(ctx context.Context, userID string, filters repository.VocabularyBankFeedFilters) (*model.VocabularyBankFeed, error) {
	if strings.TrimSpace(userID) == "" {
		return nil, fmt.Errorf("user_id is required")
	}
	if filters.NewLimit <= 0 || filters.NewLimit > 50 {
		filters.NewLimit = 5
	}
	if filters.InProgressLimit <= 0 || filters.InProgressLimit > 50 {
		filters.InProgressLimit = 5
	}
	filters.Locale = normalizeVocabularyBankLocale(filters.Locale)
	return s.progress.ListFeed(ctx, userID, filters)
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
