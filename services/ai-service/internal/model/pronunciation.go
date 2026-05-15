package model

import (
	"encoding/json"
	"time"
)

// WordScore — оценка одного слова при pronunciation check.
type WordScore struct {
	Word     string  `json:"word"`
	Score    float64 `json:"score"`
	Feedback string  `json:"feedback,omitempty"`
}

// PronunciationAttempt — попытка произношения (ai_pronunciation_attempts).
type PronunciationAttempt struct {
	ID              string
	UserID          string
	StepID          *string
	TargetText      string
	AudioURL        string
	AudioMime       string
	TranscribedText string
	Language        string

	AccuracyScore float64
	WordScores    []WordScore
	Feedback      string

	TokensUsed int32
	CostUSD    float64

	CreatedAt time.Time
}

// WordScoresJSON — сериализация для JSONB.
func (a *PronunciationAttempt) WordScoresJSON() ([]byte, error) {
	if len(a.WordScores) == 0 {
		return []byte("[]"), nil
	}
	return json.Marshal(a.WordScores)
}

// WordScoresFromJSON — парсинг JSONB.
func WordScoresFromJSON(b []byte) ([]WordScore, error) {
	if len(b) == 0 {
		return nil, nil
	}
	var out []WordScore
	if err := json.Unmarshal(b, &out); err != nil {
		return nil, err
	}
	return out, nil
}
