package service

import (
	"context"
	"testing"
	"time"
)

func TestHearts_LoseSetsRegenTimer(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	stats, err := svc.LoseHeart(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.Hearts != 4 {
		t.Fatalf("hearts after lose = %d, want 4", stats.Hearts)
	}
	if stats.NextHeartAt == nil {
		t.Fatalf("next_heart_at should be set after first lose")
	}
	expected := c.now.Add(30 * time.Minute)
	if !stats.NextHeartAt.Equal(expected) {
		t.Fatalf("next_heart_at = %v, want %v", stats.NextHeartAt, expected)
	}
}

func TestHearts_LoseDoesNotResetTimerWhenAlreadyTicking(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	first, _ := svc.LoseHeart(context.Background(), "u1")
	firstTimer := *first.NextHeartAt

	c.advance(10 * time.Minute)
	second, _ := svc.LoseHeart(context.Background(), "u1")
	if second.Hearts != 3 {
		t.Fatalf("hearts after 2 lose = %d, want 3", second.Hearts)
	}
	if !second.NextHeartAt.Equal(firstTimer) {
		t.Fatalf("timer changed: was %v, now %v", firstTimer, second.NextHeartAt)
	}
}

func TestHearts_LoseAtZero(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)
	for i := 0; i < 6; i++ {
		_, _ = svc.LoseHeart(context.Background(), "u1")
	}
	stats, err := svc.LoseHeart(context.Background(), "u1")
	mustNotErr(t, err)
	if stats.Hearts != 0 {
		t.Fatalf("hearts should saturate at 0, got %d", stats.Hearts)
	}
}

func TestHearts_RefillToMaxClearsTimer(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	_, _ = svc.LoseHeart(context.Background(), "u1")
	stats, err := svc.RefillHearts(context.Background(), "u1", 0)
	mustNotErr(t, err)
	if stats.Hearts != 5 {
		t.Fatalf("hearts after refill = %d, want 5", stats.Hearts)
	}
	if stats.NextHeartAt != nil {
		t.Fatalf("timer should be cleared")
	}
}

func TestHearts_RegenerateOne(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	_, _ = svc.LoseHeart(context.Background(), "u1") // 4 hearts, timer=now+30m
	// до срока — не регенерим
	ok, err := svc.RegenerateOne(context.Background(), "u1")
	mustNotErr(t, err)
	if ok {
		t.Fatalf("regen should not fire before deadline")
	}

	c.advance(31 * time.Minute)
	ok, err = svc.RegenerateOne(context.Background(), "u1")
	mustNotErr(t, err)
	if !ok {
		t.Fatalf("regen should fire after deadline")
	}
}
