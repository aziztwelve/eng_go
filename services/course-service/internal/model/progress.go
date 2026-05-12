package model

import "time"

// SourceType описывает контекст, в котором пройден шаг
type SourceType string

const (
	SourceTypeCourse     SourceType = "course"
	SourceTypeTrack      SourceType = "track"
	SourceTypeStandalone SourceType = "standalone"
)

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
	// SourceType — где был пройден шаг (course | track | standalone).
	// Phase 0: пишем при первом создании, не перезаписываем.
	SourceType SourceType
	// SourceID — course_id, track_id или nil для pure standalone.
	SourceID  *string
	CreatedAt time.Time
	UpdatedAt time.Time
}

// LessonProgress представляет прогресс пользователя по уроку.
// CourseID == nil — урок standalone (не привязан к курсу).
type LessonProgress struct {
	ID                 string
	UserID             string
	LessonID           string
	CourseID           *string
	TotalSteps         int32
	CompletedSteps     int32
	ProgressPercentage float64
	StartedAt          time.Time
	LastActivityAt     time.Time
	CompletedAt        *time.Time
}
