package model

import (
	"encoding/json"
	"time"
)

// VocabularyBankWordSummary is the safe, learner-facing projection of a
// canonical Vocabulary Bank word.
type VocabularyBankWordSummary struct {
	ExternalID   string
	Word         string
	Translation  string
	PartOfSpeech string
	CEFRLevel    string
	HasAudio     bool
}

type VocabularyBankQuestionSet struct {
	GrammarFamily string
	Tense         string
	QuestionForm  string
	Question      string
	Positive      json.RawMessage
	Negative      json.RawMessage
}

type VocabularyBankActivity struct {
	Step        int
	Type        string
	Instruction string
	Payload     json.RawMessage
}

type VocabularyBankWordDetail struct {
	VocabularyBankWordSummary
	Lemma        string
	Meaning      string
	QuestionSets []VocabularyBankQuestionSet
	Activities   []VocabularyBankActivity
}

type VocabularyBankProgress struct {
	ExternalID     string
	CurrentStep    int
	CompletedAt    *time.Time
	LastActivityAt time.Time
}

type VocabularyBankAttempt struct {
	UserID             string
	ExternalID         string
	Step               int
	Answer             json.RawMessage
	IsCorrect          bool
	Score              int
	TimeSpentMS        int
	PronunciationScore float64
}

type VocabularyBankFeedEntry struct {
	VocabularyBankWordSummary
	Status         string
	CurrentStep    int
	LastActivityAt *time.Time
}

type VocabularyBankFeed struct {
	InProgress []VocabularyBankFeedEntry
	NewWords   []VocabularyBankFeedEntry
}
