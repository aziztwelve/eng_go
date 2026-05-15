package model

import (
	"encoding/json"
	"time"
)

// StepType — тип интерактивного шага.
type StepType string

const (
	StepTypeQuiz       StepType = "quiz"
	StepTypeTranslate  StepType = "translate"
	StepTypeMatchPairs StepType = "match_pairs"
	StepTypeListening  StepType = "listening"
	StepTypeFillBlank  StepType = "fill_blank"
	StepTypeTapWords   StepType = "tap_words"
	StepTypeStory      StepType = "story"
)

// Attempt — попытка прохождения шага. Сохраняется как есть (даже если
// is_correct=false), чтобы потом можно было аналитику делать.
type Attempt struct {
	ID           string
	UserID       string
	StepID       string
	LessonID     string
	StepType     StepType
	Answer       json.RawMessage // сырая JSON-структура ответа
	IsCorrect    bool
	Score        float64
	TimeSpentMs  int32
	CreatedAt    time.Time
}
