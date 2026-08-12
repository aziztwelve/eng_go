package model

import (
	"encoding/json"
	"time"
)

// StepType — тип интерактивного шага.
type StepType string

const (
	StepTypeQuiz               StepType = "quiz"
	StepTypeTranslate          StepType = "translate"
	StepTypeMatchPairs         StepType = "match_pairs"
	StepTypeMatchPairsVoice    StepType = "match_pairs_voice"
	StepTypeListening          StepType = "listening"
	StepTypeListeningShadowing StepType = "listening_shadowing"
	StepTypeFillBlank          StepType = "fill_blank"
	StepTypeTapWords           StepType = "tap_words"
	StepTypeStory              StepType = "story"
	StepTypeChooseDefinition   StepType = "choose_definition"
	StepTypeListenChooseWord   StepType = "listen_choose_word"
	StepTypeMissingWord        StepType = "missing_word"
	StepTypeCompleteChat       StepType = "complete_chat"
)

// Attempt — попытка прохождения шага. Сохраняется как есть (даже если
// is_correct=false), чтобы потом можно было аналитику делать.
type Attempt struct {
	ID          string
	UserID      string
	StepID      string
	LessonID    string
	StepType    StepType
	Answer      json.RawMessage // сырая JSON-структура ответа
	IsCorrect   bool
	Score       float64
	TimeSpentMs int32
	CreatedAt   time.Time
}
