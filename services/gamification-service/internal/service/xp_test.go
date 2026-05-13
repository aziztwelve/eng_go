package service

import (
	"context"
	"testing"
	"time"

	"github.com/elearning/gamification-service/internal/model"
)

func TestAddXP_LevelUp(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	res, err := svc.AddXP(context.Background(), "u1", 50, model.XPReasonStepCompleted, nil)
	mustNotErr(t, err)
	if res.LeveledUp {
		t.Fatalf("should not level up at 50 XP")
	}

	res, err = svc.AddXP(context.Background(), "u1", 60, model.XPReasonStepCompleted, nil)
	mustNotErr(t, err)
	if !res.LeveledUp {
		t.Fatalf("should level up at 110 total XP")
	}
	if res.NewLevel != 2 {
		t.Fatalf("new level = %d, want 2", res.NewLevel)
	}
}

func TestAddXP_DailyGoalCompletes(t *testing.T) {
	c := &clock{now: time.Date(2026, 5, 12, 10, 0, 0, 0, time.UTC)}
	svc, _, _, _, _, _ := buildService(c.get)

	res, err := svc.AddXP(context.Background(), "u1", 15, model.XPReasonStepCompleted, nil)
	mustNotErr(t, err)
	if res.DailyGoalProgress.Completed {
		t.Fatalf("should not complete daily goal yet at 15/20")
	}

	res, err = svc.AddXP(context.Background(), "u1", 10, model.XPReasonStepCompleted, nil)
	mustNotErr(t, err)
	if !res.DailyGoalProgress.Completed {
		t.Fatalf("should complete daily goal at 25/20")
	}
	if res.DailyGoalProgress.XPEarned != 25 {
		t.Fatalf("xp earned = %d, want 25", res.DailyGoalProgress.XPEarned)
	}
}

func TestAddXP_RejectsNonPositive(t *testing.T) {
	svc, _, _, _, _, _ := buildService(nil)
	if _, err := svc.AddXP(context.Background(), "u1", 0, model.XPReasonStepCompleted, nil); err == nil {
		t.Fatalf("expected error for 0 XP")
	}
	if _, err := svc.AddXP(context.Background(), "u1", -5, model.XPReasonStepCompleted, nil); err == nil {
		t.Fatalf("expected error for negative XP")
	}
}
