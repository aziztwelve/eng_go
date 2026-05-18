package onboarding

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

// Complete — финальный шаг онбординга. Идемпотентен: повторный вызов
// не перетирает onboarded_at (см. queryCompleteOnboarding в repository).
func (s *serv) Complete(ctx context.Context, userID string) (model.OnboardingState, error) {
	return s.repo.Complete(ctx, userID)
}
