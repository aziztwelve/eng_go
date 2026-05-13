package service

import (
	"context"
	"errors"
	"fmt"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

// UpdateStreak вызывается, когда пользователь завершил урок.
// Идемпотентен: повторный вызов в тот же день streak не двигает.
// Логика:
//   - если за сегодня уже стоит completed → возвращаем stats как есть;
//   - если за вчера completed (или used_freeze) → streak++;
//   - если вчера пропуск, но есть freeze → streak++, вчера помечаем used_freeze=true,
//     decrement streak_freezes у stats;
//   - иначе streak = 1.
func (s *Service) UpdateStreak(ctx context.Context, userID string) (*model.UserStats, error) {
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return nil, err
	}
	today := s.todayInTZ(ctx, userID)
	yesterday := today.AddDate(0, 0, -1)

	// Уже отмечен сегодня?
	if existing, err := s.streak.Get(ctx, userID, today); err == nil && existing.Completed {
		return stats, nil
	} else if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("get today streak: %w", err)
	}

	yesterdayDay, err := s.streak.Get(ctx, userID, yesterday)
	if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("get yesterday streak: %w", err)
	}

	switch {
	case yesterdayDay != nil && (yesterdayDay.Completed || yesterdayDay.UsedFreeze):
		stats.CurrentStreak++
	case stats.CurrentStreak > 0 && stats.StreakFreezes > 0:
		// Был streak, вчера пропустили, но есть freeze — спасаем.
		stats.StreakFreezes--
		stats.CurrentStreak++
		freezeDay := &model.StreakDay{
			UserID:     userID,
			Date:       yesterday,
			Completed:  false,
			UsedFreeze: true,
		}
		if err := s.streak.Upsert(ctx, freezeDay); err != nil {
			return nil, fmt.Errorf("mark freeze day: %w", err)
		}
	default:
		stats.CurrentStreak = 1
	}

	if stats.CurrentStreak > stats.MaxStreak {
		stats.MaxStreak = stats.CurrentStreak
	}
	now := s.now()
	stats.LastLessonAt = &now

	if err := s.stats.Update(ctx, stats); err != nil {
		return nil, fmt.Errorf("update stats streak: %w", err)
	}
	if err := s.streak.Upsert(ctx, &model.StreakDay{
		UserID:    userID,
		Date:      today,
		Completed: true,
	}); err != nil {
		return nil, fmt.Errorf("mark today: %w", err)
	}
	return stats, nil
}

// GetStreakHistory — для UI календаря streak'а.
func (s *Service) GetStreakHistory(ctx context.Context, userID string, days int) ([]*model.StreakDay, error) {
	return s.streak.ListLast(ctx, userID, days)
}

// UseStreakFreeze — превентивная активация заморозки (например, юзер знает, что не сможет).
// На уровне MVP — просто проверка достаточности и логирование, реальный спасательный механизм
// уже встроен в UpdateStreak. Здесь возвращаем актуальные stats.
func (s *Service) UseStreakFreeze(ctx context.Context, userID string) (*model.UserStats, error) {
	stats, err := s.ensureStats(ctx, userID)
	if err != nil {
		return nil, err
	}
	if stats.StreakFreezes >= s.cfg.StreakFreezeMax {
		return stats, fmt.Errorf("max freezes already")
	}
	stats.StreakFreezes++
	if err := s.stats.Update(ctx, stats); err != nil {
		return nil, err
	}
	return stats, nil
}
