package onboarding

import (
	"context"

	"github.com/elearning/user-service/internal/model"
)

// GetState — read текущего состояния онбординга.
func (s *serv) GetState(ctx context.Context, userID string) (model.OnboardingState, error) {
	return s.repo.GetState(ctx, userID)
}
