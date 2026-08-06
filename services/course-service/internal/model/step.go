package model

import "time"

// StepType представляет тип шага.
// Legacy типы остались с Phase 0; интерактивные форматы добавлены в
// Phase 2 (миграция 000009). Структура `content` зависит от типа —
// см. docs/tasks/phase-2-step-formats.md.
type StepType string

const (
	// Legacy (Phase 0).
	StepTypeVideo     StepType = "video"
	StepTypeText      StepType = "text"
	StepTypeQuiz      StepType = "quiz"
	StepTypeTask      StepType = "task"
	StepTypeBrainGame StepType = "brain_game"
	StepTypeAIWriting StepType = "ai_writing"

	// Phase 2 — интерактивные форматы.
	StepTypeTranslate  StepType = "translate"
	StepTypeMatchPairs StepType = "match_pairs"
	StepTypeListening  StepType = "listening"
	StepTypeFillBlank  StepType = "fill_blank"
	StepTypeTapWords   StepType = "tap_words"
	StepTypeStory      StepType = "story"

	// Canonical package activity. Its subtype and payload live in content.
	StepTypeActivity StepType = "activity"
)

// IsInteractive возвращает true для шагов, отправляющих ответ через
// step-validation-service (translate / match_pairs / listening /
// fill_blank / tap_words / story / quiz).
func (t StepType) IsInteractive() bool {
	switch t {
	case StepTypeQuiz,
		StepTypeTranslate,
		StepTypeMatchPairs,
		StepTypeListening,
		StepTypeFillBlank,
		StepTypeTapWords,
		StepTypeStory:
		return true
	}
	return false
}

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
