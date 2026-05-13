package model

import "time"

// XPReason — причина начисления XP.
type XPReason string

const (
	XPReasonStepCompleted   XPReason = "step_completed"
	XPReasonLessonCompleted XPReason = "lesson_completed"
	XPReasonCourseCompleted XPReason = "course_completed"
	// XPReasonQuizCompleted — пройдена попытка квиза с проходным баллом
	// (любой score, главное is_passed=true). Используется как счетчик
	// для achievement-критериев `quiz_completed`.
	XPReasonQuizCompleted XPReason = "quiz_completed"
	// XPReasonQuizPerfect — пройден квиз со 100% результатом. Отдельная
	// reason для критерия `perfect_quizzes`.
	XPReasonQuizPerfect XPReason = "quiz_perfect"
	XPReasonDailyGoal   XPReason = "daily_goal"
	XPReasonAchievement XPReason = "achievement"
	XPReasonStreakBonus XPReason = "streak_bonus"
	XPReasonPractice    XPReason = "practice"
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
