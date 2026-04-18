package model

import "time"

// StepType представляет тип шага
type StepType string

const (
	StepTypeVideo     StepType = "video"
	StepTypeText      StepType = "text"
	StepTypeQuiz      StepType = "quiz"
	StepTypeTask      StepType = "task"
	StepTypeBrainGame StepType = "brain_game"
	StepTypeAIWriting StepType = "ai_writing"
)

// Step представляет атомарную единицу контента
type Step struct {
	ID         string
	LessonID   string
	Type       StepType
	Title      string
	Content    string // JSON string
	OrderIndex int32
	CreatedAt  time.Time
	UpdatedAt  time.Time
}
