// Package cron содержит периодические задачи gamification-service:
//   - регенерация hearts (каждые N минут),
//   - сброс weekly_xp (по понедельникам в 00:00 UTC),
//   - валидация streak'ов (раз в сутки).
package cron

import (
	"context"
	"fmt"
	"strconv"
	"strings"
	"sync"
	"time"

	"go.uber.org/zap"

	"github.com/elearning/gamification-service/internal/repository"
	"github.com/elearning/gamification-service/internal/service"
	"github.com/elearning/platform/pkg/logger"
)

// Config — настройки расписания.
type Config struct {
	HeartsEvery time.Duration // как часто пробегать по кандидатам на heart regen
	StreakDaily string        // "HH:MM" UTC — когда сбрасывать weekly / валидировать streak
}

// Scheduler управляет горутинами cron'а.
type Scheduler struct {
	svc       *service.Service
	statsRepo repository.StatsRepository
	cfg       Config

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// NewScheduler собирает Scheduler.
func NewScheduler(svc *service.Service, stats repository.StatsRepository, cfg Config) *Scheduler {
	if cfg.HeartsEvery <= 0 {
		cfg.HeartsEvery = 5 * time.Minute
	}
	if cfg.StreakDaily == "" {
		cfg.StreakDaily = "00:05"
	}
	return &Scheduler{svc: svc, statsRepo: stats, cfg: cfg}
}

// Start запускает периодические задачи. Возвращается мгновенно.
func (s *Scheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	s.cancel = cancel

	s.wg.Add(2)
	go s.runHeartsLoop(ctx)
	go s.runDailyLoop(ctx)

	logger.Info(ctx, "⏰ cron started",
		zap.Duration("hearts_every", s.cfg.HeartsEvery),
		zap.String("daily_at", s.cfg.StreakDaily),
	)
}

// Stop останавливает все горутины.
func (s *Scheduler) Stop() {
	if s.cancel != nil {
		s.cancel()
	}
	s.wg.Wait()
}

// runHeartsLoop регенерирует hearts.
func (s *Scheduler) runHeartsLoop(ctx context.Context) {
	defer s.wg.Done()
	ticker := time.NewTicker(s.cfg.HeartsEvery)
	defer ticker.Stop()
	for {
		select {
		case <-ctx.Done():
			return
		case <-ticker.C:
			s.regenHearts(ctx)
		}
	}
}

func (s *Scheduler) regenHearts(ctx context.Context) {
	now := time.Now().UTC()
	ids, err := s.statsRepo.ListReadyForHeartRegen(ctx, now, 500)
	if err != nil {
		logger.Warn(ctx, "list hearts candidates", zap.Error(err))
		return
	}
	if len(ids) == 0 {
		return
	}
	regen := 0
	for _, uid := range ids {
		ok, err := s.svc.RegenerateOne(ctx, uid)
		if err != nil {
			logger.Warn(ctx, "regen heart", zap.String("user_id", uid), zap.Error(err))
			continue
		}
		if ok {
			regen++
		}
	}
	logger.Debug(ctx, "hearts regen tick",
		zap.Int("candidates", len(ids)),
		zap.Int("regenerated", regen),
	)
}

// runDailyLoop срабатывает раз в сутки в указанное время.
// По понедельникам дополнительно сбрасывает weekly_xp.
func (s *Scheduler) runDailyLoop(ctx context.Context) {
	defer s.wg.Done()
	for {
		next, err := nextDailyAt(time.Now().UTC(), s.cfg.StreakDaily)
		if err != nil {
			logger.Warn(ctx, "parse daily time, falling back to +24h",
				zap.String("value", s.cfg.StreakDaily), zap.Error(err))
			next = time.Now().UTC().Add(24 * time.Hour)
		}
		wait := time.Until(next)
		select {
		case <-ctx.Done():
			return
		case <-time.After(wait):
			s.runDaily(ctx, next)
		}
	}
}

func (s *Scheduler) runDaily(ctx context.Context, ranAt time.Time) {
	// Weekly XP reset — по понедельникам.
	if ranAt.UTC().Weekday() == time.Monday {
		if err := s.statsRepo.ResetWeeklyXP(ctx); err != nil {
			logger.Warn(ctx, "reset weekly xp", zap.Error(err))
		} else {
			logger.Info(ctx, "🔄 weekly XP reset")
		}
	}
	// Streak validation: сейчас ничего не делаем (UpdateStreak вызывается
	// при каждом lesson_completed и сам обрабатывает freeze). Оставлено как hook.
	logger.Debug(ctx, "daily tick complete", zap.Time("ran_at", ranAt))
}

// nextDailyAt возвращает следующий момент "HH:MM" в UTC.
func nextDailyAt(now time.Time, hhmm string) (time.Time, error) {
	parts := strings.Split(hhmm, ":")
	if len(parts) != 2 {
		return time.Time{}, fmt.Errorf("invalid HH:MM: %q", hhmm)
	}
	h, err := strconv.Atoi(parts[0])
	if err != nil {
		return time.Time{}, err
	}
	m, err := strconv.Atoi(parts[1])
	if err != nil {
		return time.Time{}, err
	}
	cand := time.Date(now.Year(), now.Month(), now.Day(), h, m, 0, 0, time.UTC)
	if !cand.After(now) {
		cand = cand.Add(24 * time.Hour)
	}
	return cand, nil
}
