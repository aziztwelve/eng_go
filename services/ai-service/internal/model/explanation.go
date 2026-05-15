package model

import "time"

// Explanation — кэшированное объяснение ошибки (ai_explanations).
type Explanation struct {
	ID                 string
	UserID             string
	StepID             *string
	IncorrectAnswer    string
	IncorrectAnswerMD5 string
	CorrectAnswer      string
	Explanation        string
	TargetLanguage     string
	NativeLanguage     string

	TokensUsed int32
	CostUSD    float64

	CreatedAt time.Time
}
