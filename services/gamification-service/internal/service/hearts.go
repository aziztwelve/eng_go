package service

import (
	"context"
	"fmt"

	"github.com/elearning/gamification-service/internal/model"
)

// LoseHeart уменьшает количество hearts. Если до этого было max, запускает таймер регенерации.
func (s *Service) LoseHeart(ctx context.Context, userID string) (*model.UserStats, error) {
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return nil, err
	}
	if stats.Hearts <= 0 {
		return stats, nil
	}
	wasFull := stats.Hearts == stats.MaxHearts
	stats.Hearts--
	if wasFull {
		next := s.now().Add(s.cfg.HeartRegenInterval)
		stats.NextHeartAt = &next
	}
	if err := s.stats.Update(ctx, stats); err != nil {
		return nil, fmt.Errorf("update stats after lose heart: %w", err)
	}
	return stats, nil
}

// RefillHearts восстанавливает hearts (по практике, за gems, premium и т.п.).
// amount == 0 значит "до максимума".
func (s *Service) RefillHearts(ctx context.Context, userID string, amount int) (*model.UserStats, error) {
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return nil, err
	}
	if stats.Hearts >= stats.MaxHearts {
		return stats, nil
	}
	if amount <= 0 {
		stats.Hearts = stats.MaxHearts
	} else {
		stats.Hearts += amount
		if stats.Hearts > stats.MaxHearts {
			stats.Hearts = stats.MaxHearts
		}
	}
	if stats.Hearts >= stats.MaxHearts {
		stats.NextHeartAt = nil
	}
	if err := s.stats.Update(ctx, stats); err != nil {
		return nil, fmt.Errorf("update stats after refill: %w", err)
	}
	return stats, nil
}

// RegenerateOne — внутренняя функция cron'а. Прибавляет 1 heart, если время пришло.
// Возвращает true, если действительно изменили stats.
func (s *Service) RegenerateOne(ctx context.Context, userID string) (bool, error) {
	stats, err := s.stats.Get(ctx, userID)
	if err != nil {
		return false, err
	}
	if stats.Hearts >= stats.MaxHearts || stats.NextHeartAt == nil {
		return false, nil
	}
	now := s.now()
	if now.Before(*stats.NextHeartAt) {
		return false, nil
	}
	stats.Hearts++
	if stats.Hearts >= stats.MaxHearts {
		stats.NextHeartAt = nil
	} else {
		next := stats.NextHeartAt.Add(s.cfg.HeartRegenInterval)
		// Если время сильно отстало (нагнать сразу несколько окон),
		// двигаемся от now, чтобы не «вернуть всё разом» одним вызовом.
		if next.Before(now) {
			next = now.Add(s.cfg.HeartRegenInterval)
		}
		stats.NextHeartAt = &next
	}
	if err := s.stats.Update(ctx, stats); err != nil {
		return false, fmt.Errorf("update stats after regen: %w", err)
	}
	return true, nil
}

// CheckHearts — getter (но через ensure).
func (s *Service) CheckHearts(ctx context.Context, userID string) (*model.UserStats, error) {
	return s.ensureStats(ctx, userID)
}
