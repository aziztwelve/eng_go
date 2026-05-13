package service

import (
	"context"
	"errors"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

// GetDailyGoal возвращает goal + сегодняшний прогресс.
func (s *Service) GetDailyGoal(ctx context.Context, userID string) (*model.DailyGoal, *model.DailyGoalProgress, error) {
	goal, err := s.dailyGoal.GetGoal(ctx, userID)
	if errors.Is(err, repository.ErrNotFound) {
		goal = &model.DailyGoal{UserID: userID, TargetXP: s.cfg.DefaultDailyXP}
		if err := s.dailyGoal.UpsertGoal(ctx, goal); err != nil {
			return nil, nil, err
		}
	} else if err != nil {
		return nil, nil, err
	}

	progress, err := s.dailyGoal.GetProgress(ctx, userID, s.today())
	if errors.Is(err, repository.ErrNotFound) {
		progress = &model.DailyGoalProgress{
			UserID: userID,
			Date:   s.today(),
			Goal:   goal.TargetXP,
		}
	} else if err != nil {
		return nil, nil, err
	}
	return goal, progress, nil
}

// UpdateDailyGoal меняет цель пользователя.
func (s *Service) UpdateDailyGoal(ctx context.Context, userID string, targetXP int) (*model.DailyGoal, error) {
	if targetXP <= 0 {
		targetXP = s.cfg.DefaultDailyXP
	}
	g := &model.DailyGoal{UserID: userID, TargetXP: targetXP}
	if err := s.dailyGoal.UpsertGoal(ctx, g); err != nil {
		return nil, err
	}
	return g, nil
}
