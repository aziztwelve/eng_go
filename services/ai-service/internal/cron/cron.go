// Package cron — периодические задачи ai-service.
//
// На Phase 5 — единственная задача: ежедневный cleanup
// `ai_usage_quota`. Старые суточные счётчики (по умолчанию >90 дней)
// удаляются, чтобы таблица не росла вечно. Текущие per-day счётчики
// продолжают работать без изменений: они просто хранятся как новый row
// на каждый день.
//
// Запуск — раз в сутки в HH:MM UTC (`CRON_DAILY_AT`, default "02:00").
package cron

import (
	"context"
	"fmt"
	"strconv"
	"strings"
	"sync"
	"time"

	"go.uber.org/zap"

	"github.com/elearning/ai-service/internal/service"
	"github.com/elearning/platform/pkg/logger"
)

// Config — расписание + параметры очистки.
type Config struct {
	// DailyAt — "HH:MM" UTC. Default "02:00".
	DailyAt string
	// QuotaRetentionDays — сколько дней истории храним. <=0 → no-op.
	// Default 90.
	QuotaRetentionDays int
}

// Service — минимальный интерфейс, который cron требует от service-слоя.
// Позволяет подменять *service.Service в тестах.
type Service interface {
	CleanupOldQuotas(ctx context.Context, retentionDays int) (int64, error)
}

// compile-time check.
var _ Service = (*service.Service)(nil)

// Scheduler управляет горутинами.
type Scheduler struct {
	svc Service
	cfg Config

	cancel context.CancelFunc
	wg     sync.WaitGroup
}

// NewScheduler — конструктор.
func NewScheduler(svc Service, cfg Config) *Scheduler {
	if cfg.DailyAt == "" {
		cfg.DailyAt = "02:00"
	}
	if cfg.QuotaRetentionDays == 0 {
		cfg.QuotaRetentionDays = 90
	}
	return &Scheduler{svc: svc, cfg: cfg}
}

// Start — запускает горутину ежедневного cleanup'а. Возвращается мгновенно.
func (s *Scheduler) Start(ctx context.Context) {
	ctx, cancel := context.WithCancel(ctx)
	s.cancel = cancel

	s.wg.Add(1)
	go s.runDailyLoop(ctx)

	logger.Info(ctx, "⏰ ai cron started",
		zap.String("daily_at_utc", s.cfg.DailyAt),
		zap.Int("quota_retention_days", s.cfg.QuotaRetentionDays),
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
			s.runQuotaCleanup(ctx, next)
		}
	}
}

func (s *Scheduler) runQuotaCleanup(ctx context.Context, ranAt time.Time) {
	logger.Info(ctx, "🧹 running ai quota cleanup",
		zap.Time("ran_at", ranAt),
		zap.Int("retention_days", s.cfg.QuotaRetentionDays),
	)
	deleted, err := s.svc.CleanupOldQuotas(ctx, s.cfg.QuotaRetentionDays)
	if err != nil {
		logger.Warn(ctx, "ai quota cleanup failed", zap.Error(err))
		return
	}
	logger.Info(ctx, "✅ ai quota cleanup done",
		zap.Int64("deleted", deleted),
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
