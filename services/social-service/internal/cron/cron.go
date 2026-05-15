// Package cron — периодические задачи social-service.
//
// Phase 4:
//   - WeeklyRotation — воскресенье HH:MM UTC (default "Sun 23:59")
//   - SnapshotRanks  — каждые N минут (default 10m)
package cron

import (
	"context"
	"fmt"
	"strconv"
	"strings"
	"sync"
	"time"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	"github.com/elearning/social-service/internal/service"
)

// Config — расписание.
type Config struct {
	// WeeklyRotation — "Day HH:MM" UTC. Default "Sun 23:59".
	WeeklyRotation string
	// SnapshotEvery — interval. Default 10m.
	SnapshotEvery time.Duration
}

// Scheduler управляет горутинами.
type Scheduler struct {
	svc *service.Service
	cfg Config

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

func NewScheduler(svc *service.Service, cfg Config) *Scheduler {
	if cfg.WeeklyRotation == "" {
		cfg.WeeklyRotation = "Sun 23:59"
	}
	if cfg.SnapshotEvery == 0 {
		cfg.SnapshotEvery = 10 * time.Minute
	}
	return &Scheduler{svc: svc, cfg: cfg}
}

func (s *Scheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	s.cancel = cancel

	s.wg.Add(2)
	go s.runWeeklyLoop(ctx)
	go s.runSnapshotLoop(ctx)

	logger.Info(ctx, "⏰ social cron started",
		zap.String("weekly_rotation_utc", s.cfg.WeeklyRotation),
		zap.Duration("snapshot_every", s.cfg.SnapshotEvery),
	)
}

func (s *Scheduler) Stop() {
	if s.cancel != nil {
		s.cancel()
	}
	s.wg.Wait()
}

// ----------------------------------------------------------------------------
// Weekly rotation
// ----------------------------------------------------------------------------

func (s *Scheduler) runWeeklyLoop(ctx context.Context) {
	defer s.wg.Done()
	for {
		next, err := nextWeeklyAt(time.Now().UTC(), s.cfg.WeeklyRotation)
		if err != nil {
			logger.Warn(ctx, "parse weekly_rotation, falling back to +24h",
				zap.String("value", s.cfg.WeeklyRotation), zap.Error(err))
			next = time.Now().UTC().Add(24 * time.Hour)
		}
		wait := time.Until(next)
		select {
		case <-ctx.Done():
			return
		case <-time.After(wait):
			s.runWeeklyRotation(ctx, next)
		}
	}
}

func (s *Scheduler) runWeeklyRotation(ctx context.Context, ranAt time.Time) {
	logger.Info(ctx, "🔄 running weekly league rotation", zap.Time("ran_at", ranAt))
	stats, err := s.svc.RunWeeklyRotation(ctx, false)
	if err != nil {
		logger.Warn(ctx, "weekly rotation failed", zap.Error(err))
		return
	}
	logger.Info(ctx, "✅ weekly rotation done",
		zap.Int("cohorts", stats.CohortsProcessed),
		zap.Int("promoted", stats.UsersPromoted),
		zap.Int("demoted", stats.UsersDemoted),
		zap.Int("sustained", stats.UsersSustained),
	)
}

// ----------------------------------------------------------------------------
// Snapshot ranks
// ----------------------------------------------------------------------------

func (s *Scheduler) runSnapshotLoop(ctx context.Context) {
	defer s.wg.Done()
	t := time.NewTicker(s.cfg.SnapshotEvery)
	defer t.Stop()
	for {
		select {
		case <-ctx.Done():
			return
		case <-t.C:
			s.runSnapshotRanks(ctx)
		}
	}
}

func (s *Scheduler) runSnapshotRanks(ctx context.Context) {
	updated, err := s.svc.SnapshotRanks(ctx)
	if err != nil {
		logger.Warn(ctx, "snapshot ranks failed", zap.Error(err))
		return
	}
	logger.Info(ctx, "📸 snapshot ranks done", zap.Int("updated", updated))
}

// ----------------------------------------------------------------------------
// Parsers
// ----------------------------------------------------------------------------

// nextWeeklyAt — следующий момент "Day HH:MM" в UTC. Day ∈ {Mon,Tue,Wed,Thu,Fri,Sat,Sun}.
func nextWeeklyAt(now time.Time, spec string) (time.Time, error) {
	parts := strings.Fields(strings.TrimSpace(spec))
	if len(parts) != 2 {
		return time.Time{}, fmt.Errorf("invalid spec: %q (want 'Day HH:MM')", spec)
	}
	day, err := parseWeekday(parts[0])
	if err != nil {
		return time.Time{}, err
	}
	hm := strings.Split(parts[1], ":")
	if len(hm) != 2 {
		return time.Time{}, fmt.Errorf("invalid HH:MM: %q", parts[1])
	}
	h, err := strconv.Atoi(hm[0])
	if err != nil {
		return time.Time{}, err
	}
	m, err := strconv.Atoi(hm[1])
	if err != nil {
		return time.Time{}, err
	}

	// Кол-во дней до целевого дня недели (0..6).
	delta := (int(day) - int(now.Weekday()) + 7) % 7

	cand := time.Date(now.Year(), now.Month(), now.Day()+delta, h, m, 0, 0, time.UTC)
	if !cand.After(now) {
		// Уже прошло сегодня — следующая неделя.
		cand = cand.AddDate(0, 0, 7)
	}
	return cand, nil
}

func parseWeekday(s string) (time.Weekday, error) {
	switch strings.ToLower(s) {
	case "sun", "sunday":
		return time.Sunday, nil
	case "mon", "monday":
		return time.Monday, nil
	case "tue", "tuesday":
		return time.Tuesday, nil
	case "wed", "wednesday":
		return time.Wednesday, nil
	case "thu", "thursday":
		return time.Thursday, nil
	case "fri", "friday":
		return time.Friday, nil
	case "sat", "saturday":
		return time.Saturday, nil
	default:
		return 0, fmt.Errorf("unknown weekday: %q", s)
	}
}
