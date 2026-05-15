// Package model — доменные структуры ai-service.
package model

import (
	"encoding/json"
	"time"
)

// MessageRole — роль автора message внутри Conversation.
type MessageRole string

const (
	RoleUser      MessageRole = "user"
	RoleAssistant MessageRole = "assistant"
	RoleSystem    MessageRole = "system"
)

// IsValid — соответствует CHECK-набору в migrations/000002.
func (r MessageRole) IsValid() bool {
	switch r {
	case RoleUser, RoleAssistant, RoleSystem:
		return true
	default:
		return false
	}
}

// Известные scenario-префиксы.
const (
	ScenarioFreeChat = "free_chat"
	ScenarioTutorQA  = "tutor_qa"
	// Все остальные начинаются с "roleplay_" + id.
)

// Conversation — AI-беседа (ai_conversations).
type Conversation struct {
	ID             string
	UserID         string
	Title          string
	Scenario       string
	TargetLanguage string
	UserLevel      string
	Model          string

	MessageCount int32
	TotalTokens  int32
	CostUSD      float64

	StartedAt     time.Time
	LastMessageAt time.Time
	EndedAt       *time.Time
}

// IsEnded — soft-deleted.
func (c *Conversation) IsEnded() bool {
	return c.EndedAt != nil
}

// Correction — единичная грамматическая поправка.
type Correction struct {
	Original    string `json:"original"`
	Corrected   string `json:"corrected"`
	Explanation string `json:"explanation"`
}

// Message — одно сообщение в Conversation (ai_messages).
type Message struct {
	ID             string
	ConversationID string
	Role           MessageRole
	Content        string
	AudioURL       string
	Corrections    []Correction
	Translation    string

	TokensUsed int32
	CostUSD    float64

	CreatedAt time.Time
}

// CorrectionsJSON — сериализация для записи в JSONB.
func (m *Message) CorrectionsJSON() ([]byte, error) {
	if len(m.Corrections) == 0 {
		return []byte("[]"), nil
	}
	return json.Marshal(m.Corrections)
}

// CorrectionsFromJSON — парсинг JSONB.
func CorrectionsFromJSON(b []byte) ([]Correction, error) {
	if len(b) == 0 {
		return nil, nil
	}
	var out []Correction
	if err := json.Unmarshal(b, &out); err != nil {
		return nil, err
	}
	return out, nil
}
