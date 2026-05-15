// Package srs — клиент srs-service для step-validation-service.
package srs

import (
	"context"
	"encoding/json"

	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

// RecordReviewRequest — параметры записи ревью.
type RecordReviewRequest struct {
	UserID         string
	StepID         string  // используется как ItemID (item_type=step)
	Quality        int32
	ResponseTimeMs int32
	UsedHint       bool
}

// Client — узкий интерфейс srs-service для step-validation.
//
// Phase 3 MVP — нам нужно три операции в submit-пайплайне:
//   - RecordReview      (после валидации, и при correct, и при wrong)
//   - RecordMistake     (только при wrong)
//   - ResolveMistakesForStep (при correct — снять старые ошибки)
type Client interface {
	RecordReview(ctx context.Context, req RecordReviewRequest) (*srsv1.SRSItem, error)
	RecordMistake(ctx context.Context, userID, stepID string, answer json.RawMessage) error
	ResolveMistakesForStep(ctx context.Context, userID, stepID string) (int32, error)
}
