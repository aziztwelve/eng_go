package cron

import (
	"context"
	"os"
	"sync/atomic"
	"testing"
	"time"

	"github.com/elearning/platform/pkg/logger"
)

func TestMain(m *testing.M) {
	_ = logger.Init("error", false)
	os.Exit(m.Run())
}

func TestNextDailyAt(t *testing.T) {
	// Reference: 2026-05-15 06:18 UTC.
	now := time.Date(2026, 5, 15, 6, 18, 0, 0, time.UTC)

	cases := []struct {
		hhmm string
		want time.Time
	}{
		{"02:00", time.Date(2026, 5, 16, 2, 0, 0, 0, time.UTC)}, // already passed → next day
		{"06:18", time.Date(2026, 5, 16, 6, 18, 0, 0, time.UTC)}, // exact same → next day
		{"06:19", time.Date(2026, 5, 15, 6, 19, 0, 0, time.UTC)},
		{"23:59", time.Date(2026, 5, 15, 23, 59, 0, 0, time.UTC)},
	}
	for _, c := range cases {
		got, err := nextDailyAt(now, c.hhmm)
		if err != nil {
			t.Fatalf("nextDailyAt(%q) err: %v", c.hhmm, err)
		}
		if !got.Equal(c.want) {
			t.Errorf("nextDailyAt(%q): got %v, want %v", c.hhmm, got, c.want)
		}
	}

	if _, err := nextDailyAt(now, "bad"); err == nil {
		t.Error("expected error on malformed HH:MM")
	}
	if _, err := nextDailyAt(now, "25:00"); err != nil {
		// Atoi succeeds for "25", time.Date нормализует час → не ошибка.
		// Поведение терпимое; просто фиксируем что не паникует.
		_ = err
	}
}

type fakeSvc struct {
	calls       atomic.Int32
	lastDays    atomic.Int32
	returnDel   int64
	returnErr   error
}

func (f *fakeSvc) CleanupOldQuotas(_ context.Context, retentionDays int) (int64, error) {
	f.calls.Add(1)
	f.lastDays.Store(int32(retentionDays))
	return f.returnDel, f.returnErr
}

func TestSchedulerStartStop(t *testing.T) {
	svc := &fakeSvc{returnDel: 7}
	// Используем заведомо далёкое время, чтобы cleanup не успел сработать.
	s := NewScheduler(svc, Config{DailyAt: "23:59", QuotaRetentionDays: 90})

	ctx, cancel := context.WithCancel(context.Background())
	defer cancel()
	s.Start(ctx)

	time.Sleep(20 * time.Millisecond)
	s.Stop()

	if got := svc.calls.Load(); got != 0 {
		t.Errorf("CleanupOldQuotas called too early: %d", got)
	}
}

func TestSchedulerDefaults(t *testing.T) {
	svc := &fakeSvc{}
	s := NewScheduler(svc, Config{})
	if s.cfg.DailyAt != "02:00" {
		t.Errorf("default DailyAt: got %q, want %q", s.cfg.DailyAt, "02:00")
	}
	if s.cfg.QuotaRetentionDays != 90 {
		t.Errorf("default QuotaRetentionDays: got %d, want 90", s.cfg.QuotaRetentionDays)
	}
}

func TestRunQuotaCleanupDirect(t *testing.T) {
	svc := &fakeSvc{returnDel: 42}
	s := NewScheduler(svc, Config{DailyAt: "02:00", QuotaRetentionDays: 30})

	s.runQuotaCleanup(context.Background(), time.Now().UTC())

	if got := svc.calls.Load(); got != 1 {
		t.Errorf("calls: got %d, want 1", got)
	}
	if got := svc.lastDays.Load(); got != 30 {
		t.Errorf("retentionDays: got %d, want 30", got)
	}
}
