// Package service содержит бизнес-логику gamification-service.
// Здесь один Service, который объединяет все подсистемы (stats, xp, hearts,
// streak, achievements, daily-goal). Подсистемы тесно связаны (например,
// AddXP должен апдейтить stats, прогресс daily-goal и проверять achievements),
// поэтому держим их вместе.
package service

import (
	"context"
	"time"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

// Service — корневой бизнес-сервис gamification.
type Service struct {
	cfg       Config
	stats     repository.StatsRepository
	xp        repository.XPRepository
	dailyGoal repository.DailyGoalRepository
	streak    repository.StreakRepository
	ach       repository.AchievementRepository

	// now позволяет инжектить часы в тестах.
	now func() time.Time
}

// Config — бизнес-настройки, прокинутые из app/config.
type Config struct {
	MaxHearts          int
	HeartRegenInterval time.Duration
	DefaultDailyXP     int
	StreakFreezeMax    int
}

// New собирает Service.
func New(
	cfg Config,
	stats repository.StatsRepository,
	xp repository.XPRepository,
	dailyGoal repository.DailyGoalRepository,
	streak repository.StreakRepository,
	ach repository.AchievementRepository,
) *Service {
	if cfg.MaxHearts <= 0 {
		cfg.MaxHearts = 5
	}
	if cfg.HeartRegenInterval <= 0 {
		cfg.HeartRegenInterval = 30 * time.Minute
	}
	if cfg.DefaultDailyXP <= 0 {
		cfg.DefaultDailyXP = 20
	}
	if cfg.StreakFreezeMax <= 0 {
		cfg.StreakFreezeMax = 2
	}
	return &Service{
		cfg:       cfg,
		stats:     stats,
		xp:        xp,
		dailyGoal: dailyGoal,
		streak:    streak,
		ach:       ach,
		now:       func() time.Time { return time.Now().UTC() },
	}
}

// WithClock переопределяет источник времени (для тестов).
func (s *Service) WithClock(now func() time.Time) *Service {
	s.now = now
	return s
}

// ensureStats возвращает (или создает) запись user_stats.
func (s *Service) ensureStats(ctx context.Context, userID string) (*model.UserStats, error) {
	return s.stats.GetOrCreate(ctx, userID, s.cfg.MaxHearts)
}

// today возвращает дату (00:00 UTC).
func (s *Service) today() time.Time {
	t := s.now()
	return time.Date(t.Year(), t.Month(), t.Day(), 0, 0, 0, 0, time.UTC)
}
