package model

import (
	"encoding/json"
	"time"
)

// WritingFeedback — единичный пункт фидбэка writing assessment.
type WritingFeedback struct {
	Category   string `json:"category"`
	Issue      string `json:"issue"`
	Suggestion string `json:"suggestion"`
}

// WritingAssessment — оценка письменной работы (ai_writing_assessments).
type WritingAssessment struct {
	ID             string
	UserID         string
	Prompt         string
	UserText       string
	TargetLanguage string
	UserLevel      string

	OverallScore   int32
	GrammarScore   int32
	VocabScore     int32
	CoherenceScore int32
	StyleScore     int32

	CorrectedText string
	Feedback      []WritingFeedback

	TokensUsed int32
	CostUSD    float64

	CreatedAt time.Time
}

// FeedbackJSON — сериализация для JSONB.
func (a *WritingAssessment) FeedbackJSON() ([]byte, error) {
	if len(a.Feedback) == 0 {
		return []byte("[]"), nil
	}
	return json.Marshal(a.Feedback)
}

// WritingFeedbackFromJSON — парсинг JSONB.
func WritingFeedbackFromJSON(b []byte) ([]WritingFeedback, error) {
	if len(b) == 0 {
		return nil, nil
	}
	var out []WritingFeedback
	if err := json.Unmarshal(b, &out); err != nil {
		return nil, err
	}
	return out, nil
}
