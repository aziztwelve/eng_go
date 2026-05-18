// Package cron — периодические задачи auth-service.
//
// На Sprint 1 (Onboarding) — только GuestCleanup: раз в сутки удаляет
// гостей старше CUTOFF_DAYS (default 90).
package cron

import (
	"context"
	"fmt"
	"strconv"
	"strings"
	"sync"
	"time"

	"go.uber.org/zap"

	"github.com/elearning/auth-service/internal/service"
	"github.com/elearning/platform/pkg/logger"
)

// Config — расписание.
type Config struct {
	// DailyAt — "HH:MM" UTC. Default "03:00".
	DailyAt string
	// CutoffDays — минимальный возраст guest user для удаления. Default 90.
	CutoffDays int32
}

// Scheduler управляет горутинами cron.
type Scheduler struct {
	svc service.AuthService
	cfg Config

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// NewScheduler — конструктор.
func NewScheduler(svc service.AuthService, cfg Config) *Scheduler {
	if cfg.DailyAt == "" {
		cfg.DailyAt = "03:00"
	}
	if cfg.CutoffDays <= 0 {
		cfg.CutoffDays = 90
	}
	return &Scheduler{svc: svc, cfg: cfg}
}

// Start — запускает горутину GuestCleanup.
func (s *Scheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	s.cancel = cancel

	s.wg.Add(1)
	go s.runDailyLoop(ctx)

	logger.Info(ctx, "⏰ auth cron started",
		zap.String("daily_at_utc", s.cfg.DailyAt),
		zap.Int32("guest_cutoff_days", s.cfg.CutoffDays),
	)
}

// Stop — graceful shutdown.
func (s *Scheduler) Stop() {
	if s.cancel != nil {
		s.cancel()
	}
	s.wg.Wait()
}

func (s *Scheduler) runDailyLoop(ctx context.Context) {
	defer s.wg.Done()
	for {
		next, err := nextDailyAt(time.Now().UTC(), s.cfg.DailyAt)
		if err != nil {
			logger.Warn(ctx, "parse daily_at, falling back to +24h",
				zap.String("value", s.cfg.DailyAt), zap.Error(err))
			next = time.Now().UTC().Add(24 * time.Hour)
		}
		wait := time.Until(next)
		select {
		case <-ctx.Done():
			return
		case <-time.After(wait):
			s.runGuestCleanup(ctx, next)
		}
	}
}

func (s *Scheduler) runGuestCleanup(ctx context.Context, ranAt time.Time) {
	logger.Info(ctx, "🧹 running guest cleanup",
		zap.Time("ran_at", ranAt),
		zap.Int32("cutoff_days", s.cfg.CutoffDays),
	)
	deleted, err := s.svc.CleanupExpiredGuests(ctx, s.cfg.CutoffDays)
	if err != nil {
		logger.Warn(ctx, "guest cleanup failed", zap.Error(err))
		return
	}
	logger.Info(ctx, "✅ guest cleanup done",
		zap.Int32("deleted", deleted),
		zap.Time("ran_at", ranAt),
	)
}

// nextDailyAt — следующий момент "HH:MM" в UTC.
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
