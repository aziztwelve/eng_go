package service

import (
	"context"

	"github.com/elearning/gamification-service/internal/model"
)

// InitializeUser создает stats при первом обращении.
func (s *Service) InitializeUser(ctx context.Context, userID string) (*model.UserStats, error) {
	return s.ensureStats(ctx, userID)
}

// GetUserStats возвращает stats, создавая запись если её еще нет.
func (s *Service) GetUserStats(ctx context.Context, userID string) (*model.UserStats, error) {
	return s.ensureStats(ctx, userID)
}
