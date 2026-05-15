// Package cron — периодические задачи srs-service.
//
// На Phase 3 full — только DailyDecay (раз в сутки в HH:MM UTC).
// При расширении сюда добавятся cleanup stale items и др.
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
	"github.com/elearning/srs-service/internal/service"
)

// Config — расписание.
type Config struct {
	// DailyAt — "HH:MM" UTC. Default "01:00".
	DailyAt string
}

// Scheduler управляет горутинами.
type Scheduler struct {
	svc service.Service
	cfg Config

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// NewScheduler — конструктор.
func NewScheduler(svc service.Service, cfg Config) *Scheduler {
	if cfg.DailyAt == "" {
		cfg.DailyAt = "01:00"
	}
	return &Scheduler{svc: svc, cfg: cfg}
}

// Start — запускает горутину DailyDecay. Возвращается мгновенно.
func (s *Scheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	s.cancel = cancel

	s.wg.Add(1)
	go s.runDailyLoop(ctx)

	logger.Info(ctx, "⏰ srs cron started",
		zap.String("daily_at_utc", s.cfg.DailyAt),
	)
}

// Stop — graceful stop.
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
			s.runDailyDecay(ctx, next)
		}
	}
}

func (s *Scheduler) runDailyDecay(ctx context.Context, ranAt time.Time) {
	logger.Info(ctx, "🌧 running daily skill decay", zap.Time("ran_at", ranAt))
	affected, err := s.svc.RunDailyDecay(ctx, "")
	if err != nil {
		logger.Warn(ctx, "daily decay failed", zap.Error(err))
		return
	}
	logger.Info(ctx, "✅ daily skill decay done",
		zap.Int32("affected", affected),
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
