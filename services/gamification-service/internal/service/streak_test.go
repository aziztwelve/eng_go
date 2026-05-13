package service

import (
	"context"
	"testing"
	"time"
)

// helper: фиксированное "сейчас" с возможностью двигать.
type clock struct{ now time.Time }

func (c *clock) get() time.Time           { return c.now }
func (c *clock) advance(d time.Duration)  { c.now = c.now.Add(d) }
func (c *clock) setTo(t time.Time)        { c.now = t }

func TestStreak_FirstDay(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 1 {
		t.Fatalf("first day streak = %d, want 1", stats.CurrentStreak)
	}
	if stats.MaxStreak != 1 {
		t.Fatalf("max streak = %d, want 1", stats.MaxStreak)
	}
}

func TestStreak_TwoConsecutiveDays(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	_, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)

	c.advance(24 * time.Hour)
	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 2 {
		t.Fatalf("day2 streak = %d, want 2", stats.CurrentStreak)
	}
}

func TestStreak_SameDayIdempotent(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	_, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 1 {
		t.Fatalf("same-day double call streak = %d, want 1", stats.CurrentStreak)
	}
}

func TestStreak_BrokenByGap(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	_, _ = svc.UpdateStreak(context.Background(), "u1")
	c.advance(48 * time.Hour) // skip a day
	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 1 {
		t.Fatalf("after gap streak = %d, want 1 (reset)", stats.CurrentStreak)
	}
	if stats.MaxStreak != 1 {
		t.Fatalf("max streak = %d, want 1", stats.MaxStreak)
	}
}

func TestStreak_FreezeSavesGap(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, statsRepo, _, _, _, _ := buildService(c.get)

	// Day 1: build streak.
	_, _ = svc.UpdateStreak(context.Background(), "u1")

	// дать пользователю freeze
	s, _ := statsRepo.Get(context.Background(), "u1")
	s.StreakFreezes = 1
	_ = statsRepo.Update(context.Background(), s)

	// пропуск дня, потом возврат
	c.advance(48 * time.Hour)
	stats, err := svc.UpdateStreak(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.CurrentStreak != 2 {
		t.Fatalf("with freeze streak = %d, want 2", stats.CurrentStreak)
	}
	if stats.StreakFreezes != 0 {
		t.Fatalf("freeze should be consumed, got %d", stats.StreakFreezes)
	}
}
