package service

import (
	"context"
	"errors"
	"fmt"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

// AddXPResult — результат AddXP, удобный для конвертации в proto.
type AddXPResult struct {
	Transaction          *model.XPTransaction
	Stats                *model.UserStats
	LeveledUp            bool
	NewLevel             int
	UnlockedAchievements []*model.UserAchievement
	DailyGoalProgress    *model.DailyGoalProgress
}

// AddXP начисляет XP, апдейтит stats, daily-goal и проверяет achievements.
func (s *Service) AddXP(
	ctx context.Context,
	userID string,
	amount int,
	reason model.XPReason,
	sourceID *string,
) (*AddXPResult, error) {
	if amount <= 0 {
		return nil, fmt.Errorf("xp amount must be positive, got %d", amount)
	}
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return nil, fmt.Errorf("ensure stats: %w", err)
	}

	// 1. Запись XP-транзакции.
	txn := &model.XPTransaction{
		UserID:   userID,
		Amount:   amount,
		Reason:   reason,
		SourceID: sourceID,
	}
	if err := s.xp.Insert(ctx, txn); err != nil {
		return nil, err
	}

	// 2. Апдейт stats: уровень, total/weekly XP.
	prevLevel := stats.Level
	stats.TotalXP += amount
	stats.WeeklyXP += amount
	stats.Level = CalcLevel(stats.TotalXP)
	now := s.now()
	stats.UpdatedAt = now
	if err := s.stats.Update(ctx, stats); err != nil {
		return nil, fmt.Errorf("update stats after xp: %w", err)
	}
	leveledUp := stats.Level > prevLevel

	// 3. Апдейт daily-goal progress.
	progress, err := s.bumpDailyGoal(ctx, userID, amount)
	if err != nil {
		return nil, err
	}

	// 4. Проверка достижений.
	unlocked, err := s.CheckAchievements(ctx, userID, AchievementTriggerXPAdded)
	if err != nil {
		return nil, fmt.Errorf("check achievements: %w", err)
	}

	return &AddXPResult{
		Transaction:          txn,
		Stats:                stats,
		LeveledUp:            leveledUp,
		NewLevel:             stats.Level,
		UnlockedAchievements: unlocked,
		DailyGoalProgress:    progress,
	}, nil
}

// GetXPHistory возвращает страницу транзакций.
func (s *Service) GetXPHistory(ctx context.Context, userID string, limit, offset int) ([]*model.XPTransaction, int, error) {
	return s.xp.ListByUser(ctx, userID, limit, offset)
}

// bumpDailyGoal накатывает XP на дневной прогресс. При первом достижении target
// флаг completed становится true (это используется триггером achievement).
func (s *Service) bumpDailyGoal(ctx context.Context, userID string, amount int) (*model.DailyGoalProgress, error) {
	goal, err := s.dailyGoal.GetGoal(ctx, userID)
	if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("get daily goal: %w", err)
	}
	if errors.Is(err, repository.ErrNotFound) {
		goal = &model.DailyGoal{UserID: userID, TargetXP: s.cfg.DefaultDailyXP}
		if err := s.dailyGoal.UpsertGoal(ctx, goal); err != nil {
			return nil, fmt.Errorf("init daily goal: %w", err)
		}
	}

	date := s.todayInTZ(ctx, userID)
	progress, err := s.dailyGoal.GetProgress(ctx, userID, date)
	if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("get daily progress: %w", err)
	}
	if errors.Is(err, repository.ErrNotFound) {
		progress = &model.DailyGoalProgress{
			UserID: userID,
			Date:   date,
			Goal:   goal.TargetXP,
		}
	}
	progress.XPEarned += amount
	if !progress.Completed && progress.XPEarned >= progress.Goal {
		progress.Completed = true
		now := s.now()
		progress.CompletedAt = &now
	}
	progress.Goal = goal.TargetXP
	if err := s.dailyGoal.UpsertProgress(ctx, progress); err != nil {
		return nil, fmt.Errorf("upsert daily progress: %w", err)
	}
	return progress, nil
}
