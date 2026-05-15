package repository

import (
	"context"
	"errors"

	"github.com/elearning/step-validation-service/internal/model"
)

// ErrNotFound — стандартный sentinel для NotFound маппинга.
var ErrNotFound = errors.New("not found")

// AttemptRepository — интерфейс хранилища попыток.
type AttemptRepository interface {
	Create(ctx context.Context, attempt *model.Attempt) error
	ListByUserStep(ctx context.Context, userID, stepID string, limit, offset int) ([]*model.Attempt, int, error)
	// CountByUserStep — сколько попыток у юзера на этом шаге было ДО
	// текущей вставки (используется как attempt_index для SM-2 quality).
	CountByUserStep(ctx context.Context, userID, stepID string) (int32, error)
}
