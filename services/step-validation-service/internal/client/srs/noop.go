package srs

import (
	"context"
	"encoding/json"

	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

type noopClient struct{}

// NewNoopClient — fallback при пустом SRS_SERVICE_ADDR. Используется
// для unit-тестов и локального dev без srs-service.
func NewNoopClient() Client {
	return &noopClient{}
}

func (noopClient) RecordReview(context.Context, RecordReviewRequest) (*srsv1.SRSItem, error) {
	return nil, nil
}

func (noopClient) RecordMistake(context.Context, string, string, json.RawMessage) error {
	return nil
}

func (noopClient) ResolveMistakesForStep(context.Context, string, string) (int32, error) {
	return 0, nil
}
