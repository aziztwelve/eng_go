package model

import "time"

// XPReason — причина начисления XP.
type XPReason string

const (
	XPReasonStepCompleted   XPReason = "step_completed"
	XPReasonLessonCompleted XPReason = "lesson_completed"
	XPReasonDailyGoal       XPReason = "daily_goal"
	XPReasonAchievement     XPReason = "achievement"
	XPReasonStreakBonus     XPReason = "streak_bonus"
	XPReasonPractice        XPReason = "practice"
)

// XPTransaction — одна запись в журнале XP.
type XPTransaction struct {
	ID        string
	UserID    string
	Amount    int
	Reason    XPReason
	SourceID  *string
	CreatedAt time.Time
}
