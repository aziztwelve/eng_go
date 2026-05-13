package model

import "time"

type DailyGoal struct {
	UserID    string
	TargetXP  int
	UpdatedAt time.Time
}

// DailyGoalProgress — прогресс за конкретную дату.
type DailyGoalProgress struct {
	UserID      string
	Date        time.Time // нормализованная дата (00:00 UTC)
	XPEarned    int
	Goal        int
	Completed   bool
	CompletedAt *time.Time
}
