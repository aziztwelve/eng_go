package cron

import "testing"

func TestRemindersConfig_HoursForSlot(t *testing.T) {
	cfg := DefaultReminders

	cases := []struct {
		slot         string
		wantStreak   int
		wantDailyGoal int
	}{
		{"morning", 10, 11},
		{"day", 16, 17},
		{"evening", 20, 21},
		{"flex", cfg.StreakRiskHour, cfg.DailyGoalHour},
		{"", cfg.StreakRiskHour, cfg.DailyGoalHour},
		{"unknown_value", cfg.StreakRiskHour, cfg.DailyGoalHour},
	}

	for _, c := range cases {
		t.Run(c.slot, func(t *testing.T) {
			gotStreak, gotGoal := cfg.hoursForSlot(c.slot)
			if gotStreak != c.wantStreak || gotGoal != c.wantDailyGoal {
				t.Fatalf("slot=%q: got streak=%d goal=%d, want streak=%d goal=%d",
					c.slot, gotStreak, gotGoal, c.wantStreak, c.wantDailyGoal)
			}
		})
	}
}
