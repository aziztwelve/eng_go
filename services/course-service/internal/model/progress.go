package model

import "time"

// StepProgress представляет прогресс пользователя по шагу
type StepProgress struct {
	ID               string
	UserID           string
	StepID           string
	LessonID         string
	Completed        bool
	CompletedAt      *time.Time
	TimeSpentSeconds int32
	Attempts         int32
	Score            *float64
	CreatedAt        time.Time
	UpdatedAt        time.Time
}

// LessonProgress представляет прогресс пользователя по уроку
type LessonProgress struct {
	ID                 string
	UserID             string
	LessonID           string
	CourseID           string
	TotalSteps         int32
	CompletedSteps     int32
	ProgressPercentage float64
	StartedAt          time.Time
	LastActivityAt     time.Time
	CompletedAt        *time.Time
}
