// Package model — доменные структуры srs-service.
package model

import (
	"encoding/json"
	"time"
)

// ItemType — тип SRS-карточки.
type ItemType string

const (
	ItemTypeVocabulary ItemType = "vocabulary"
	ItemTypeStep       ItemType = "step"
	ItemTypePhrase     ItemType = "phrase"
)

// IsValid — допустимый ли тип. Сверяется CHECK constraint миграции.
func (t ItemType) IsValid() bool {
	switch t {
	case ItemTypeVocabulary, ItemTypeStep, ItemTypePhrase:
		return true
	default:
		return false
	}
}

// SM-2 константы.
const (
	DefaultEasinessFactor = 2.5
	MinEasinessFactor     = 1.3
	MasteredThreshold     = 0.9
)

// SRSItem — карточка повторения (user_srs_items).
type SRSItem struct {
	ID       string
	UserID   string
	ItemType ItemType
	ItemID   string

	EasinessFactor float64
	IntervalDays   int32
	Repetitions    int32

	NextReviewAt   time.Time
	LastReviewedAt *time.Time

	TotalReviews      int32
	CorrectReviews    int32
	IncorrectReviews  int32
	AvgResponseTimeMs int32

	Strength float64

	CreatedAt time.Time
	UpdatedAt time.Time
}

// IsDue — карточка просрочена и должна быть показана пользователю.
func (i *SRSItem) IsDue(now time.Time) bool {
	return !i.NextReviewAt.After(now)
}

// IsMastered — strength >= 0.9, материал выучен.
func (i *SRSItem) IsMastered() bool {
	return i.Strength >= MasteredThreshold
}

// ReviewHistory — запись истории ревью (srs_review_history).
type ReviewHistory struct {
	ID             string
	SRSItemID      string
	UserID         string
	Quality        int32
	ResponseTimeMs int32
	UsedHint       bool
	ReviewedAt     time.Time

	NewIntervalDays   int32
	NewEasinessFactor float64
	NewRepetitions    int32
}

// Mistake — ошибка пользователя (user_mistakes).
type Mistake struct {
	ID              string
	UserID          string
	StepID          string
	IncorrectAnswer json.RawMessage
	AnswerHash      string
	TimesMade       int32
	LastMadeAt      time.Time
	IsResolved      bool
	ResolvedAt      *time.Time
	CreatedAt       time.Time
}

// SkillType — гранулярность skill_decay карточки.
type SkillType string

const (
	SkillTypeModule SkillType = "module"
	SkillTypeLesson SkillType = "lesson"
)

// IsValid — соответствует CHECK constraint миграции.
func (t SkillType) IsValid() bool {
	switch t {
	case SkillTypeModule, SkillTypeLesson:
		return true
	default:
		return false
	}
}

// Default decay параметры.
const (
	DefaultDecayRate = 0.05  // 20 дней до 0 без практики
	DefaultInitStrength = 1.0
)

// SkillDecay — ржавчина навыка (user_skill_decay).
type SkillDecay struct {
	UserID          string
	SkillID         string
	SkillType       SkillType
	InitialStrength float64
	CurrentStrength float64
	DecayRate       float64
	LastPracticedAt time.Time
	CreatedAt       time.Time
	UpdatedAt       time.Time
}
