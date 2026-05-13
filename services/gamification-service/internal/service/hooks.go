package service

import (
	"context"

	"github.com/elearning/gamification-service/internal/model"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// StepCompletedInput — DTO, который сервис получает извне (course-service).
type StepCompletedInput struct {
	UserID    string
	StepID    string
	LessonID  string
	StepKind  gamificationv1.StepKind
	IsCorrect bool
	Score     float64
}

// StepCompletedResult объединяет результат AddXP + апдейтa streak'а.
type StepCompletedResult struct {
	XP     *AddXPResult
	Stats  *model.UserStats
	Streak *model.UserStats // для совместимости с proto (Streak отдельным полем)
}

// OnStepCompleted — реакция на завершение шага: XP + streak.
func (s *Service) OnStepCompleted(ctx context.Context, in StepCompletedInput) (*StepCompletedResult, error) {
	xpAmount := XPForStep(in.StepKind, in.IsCorrect, in.Score)
	res := &StepCompletedResult{}
	if xpAmount > 0 {
		stepID := in.StepID
		xp, err := s.AddXP(ctx, in.UserID, xpAmount, model.XPReasonStepCompleted, &stepID)
		if err != nil {
			return nil, err
		}
		res.XP = xp
		res.Stats = xp.Stats
	}
	return res, nil
}

// LessonCompletedInput — DTO для OnLessonCompleted.
type LessonCompletedInput struct {
	UserID   string
	LessonID string
}

// OnLessonCompleted — даем bonus XP за урок, апдейтим streak и проверяем achievements.
func (s *Service) OnLessonCompleted(ctx context.Context, in LessonCompletedInput) (*AddXPResult, error) {
	lessonID := in.LessonID
	xp, err := s.AddXP(ctx, in.UserID, XPForLessonBonus(), model.XPReasonLessonCompleted, &lessonID)
	if err != nil {
		return nil, err
	}
	// Streak двигаем именно на уровне урока, а не каждого шага.
	if _, err := s.UpdateStreak(ctx, in.UserID); err != nil {
		return nil, err
	}
	// После streak — еще раз проверим achievements (могли разблокироваться streak-категории).
	streakUnlocked, err := s.CheckAchievements(ctx, in.UserID, AchievementTriggerStreakUpdated)
	if err == nil && len(streakUnlocked) > 0 {
		xp.UnlockedAchievements = append(xp.UnlockedAchievements, streakUnlocked...)
	}
	return xp, nil
}
