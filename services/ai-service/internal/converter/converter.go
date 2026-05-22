// Package converter — proto↔model маппинги для ai-service.
package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/scenarios"
	"github.com/elearning/ai-service/internal/service"
	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

// =====================================================================
// Conversation
// =====================================================================

// ToConversationProto — model → proto.
func ToConversationProto(c *model.Conversation) *aiv1.Conversation {
	if c == nil {
		return nil
	}
	out := &aiv1.Conversation{
		Id:             c.ID,
		UserId:         c.UserID,
		Title:          c.Title,
		Scenario:       c.Scenario,
		TargetLanguage: c.TargetLanguage,
		UserLevel:      c.UserLevel,
		Model:          c.Model,
		MessageCount:   c.MessageCount,
		TotalTokens:    c.TotalTokens,
		CostUsd:        c.CostUSD,
	}
	if !c.StartedAt.IsZero() {
		out.StartedAt = timestamppb.New(c.StartedAt)
	}
	if !c.LastMessageAt.IsZero() {
		out.LastMessageAt = timestamppb.New(c.LastMessageAt)
	}
	if c.EndedAt != nil {
		out.EndedAt = timestamppb.New(*c.EndedAt)
	}
	return out
}

// =====================================================================
// Message
// =====================================================================

// ToMessageProto — model → proto.
func ToMessageProto(m *model.Message) *aiv1.Message {
	if m == nil {
		return nil
	}
	out := &aiv1.Message{
		Id:             m.ID,
		ConversationId: m.ConversationID,
		Role:           messageRoleToProto(m.Role),
		Content:        m.Content,
		AudioUrl:       m.AudioURL,
		Translation:    m.Translation,
		TokensUsed:     m.TokensUsed,
		CostUsd:        m.CostUSD,
	}
	for _, c := range m.Corrections {
		out.Corrections = append(out.Corrections, &aiv1.Correction{
			Original:    c.Original,
			Corrected:   c.Corrected,
			Explanation: c.Explanation,
		})
	}
	if !m.CreatedAt.IsZero() {
		out.CreatedAt = timestamppb.New(m.CreatedAt)
	}
	return out
}

// MessageRoleFromProto — proto → model.
func MessageRoleFromProto(r aiv1.MessageRole) model.MessageRole {
	switch r {
	case aiv1.MessageRole_MESSAGE_ROLE_USER:
		return model.RoleUser
	case aiv1.MessageRole_MESSAGE_ROLE_ASSISTANT:
		return model.RoleAssistant
	case aiv1.MessageRole_MESSAGE_ROLE_SYSTEM:
		return model.RoleSystem
	default:
		return ""
	}
}

func messageRoleToProto(r model.MessageRole) aiv1.MessageRole {
	switch r {
	case model.RoleUser:
		return aiv1.MessageRole_MESSAGE_ROLE_USER
	case model.RoleAssistant:
		return aiv1.MessageRole_MESSAGE_ROLE_ASSISTANT
	case model.RoleSystem:
		return aiv1.MessageRole_MESSAGE_ROLE_SYSTEM
	default:
		return aiv1.MessageRole_MESSAGE_ROLE_UNSPECIFIED
	}
}

// =====================================================================
// Scenario
// =====================================================================

// ToScenarioProto — model (scenarios.Scenario) → proto.
func ToScenarioProto(s scenarios.Scenario) *aiv1.Scenario {
	return &aiv1.Scenario{
		Id:               s.ID,
		Title:            s.Title,
		Description:      s.Description,
		UserLevel:        s.UserLevel,
		Language:         s.Language,
		AiRole:           s.AIRole,
		Context:          s.Context,
		InitialMessage:   s.InitialMessage,
		VocabularyFocus:  append([]string(nil), s.VocabularyFocus...),
		SuccessCriteria:  append([]string(nil), s.SuccessCriteria...),
	}
}

// =====================================================================
// Writing assessment
// =====================================================================

// ToWritingFeedbackProto — model → proto.
func ToWritingFeedbackProto(f model.WritingFeedback) *aiv1.WritingFeedback {
	return &aiv1.WritingFeedback{
		Category:   f.Category,
		Issue:      f.Issue,
		Suggestion: f.Suggestion,
	}
}

// =====================================================================
// Pronunciation
// =====================================================================

// ToWordScoreProto — model → proto.
func ToWordScoreProto(w model.WordScore) *aiv1.WordScore {
	return &aiv1.WordScore{
		Word:     w.Word,
		Score:    w.Score,
		Feedback: w.Feedback,
	}
}

// =====================================================================
// Feedback (Phase 5.X)
// =====================================================================

// ToFeedbackProto — model → proto.
func ToFeedbackProto(f *model.MessageFeedback) *aiv1.MessageFeedback {
	if f == nil {
		return nil
	}
	out := &aiv1.MessageFeedback{
		Id:             f.ID,
		MessageId:      f.MessageID,
		ConversationId: f.ConversationID,
		UserId:         f.UserID,
		Rating:         int32(f.Rating),
		Comment:        f.Comment,
	}
	if !f.CreatedAt.IsZero() {
		out.CreatedAt = timestamppb.New(f.CreatedAt)
	}
	if !f.UpdatedAt.IsZero() {
		out.UpdatedAt = timestamppb.New(f.UpdatedAt)
	}
	return out
}

// =====================================================================
// Quota
// =====================================================================

// ToQuotaStatusProto — service.QuotaStatus → proto.
func ToQuotaStatusProto(q *service.QuotaStatus) *aiv1.GetQuotaStatusResponse {
	out := &aiv1.GetQuotaStatusResponse{
		ChatUsed:           q.ChatUsed,
		ChatLimit:          q.ChatLimit,
		VoiceMinutesUsed:   q.VoiceMinutesUsed,
		VoiceMinutesLimit:  q.VoiceMinutesLimit,
		WritingUsed:        q.WritingUsed,
		WritingLimit:       q.WritingLimit,
		Plan:               q.Plan,
	}
	if !q.ResetsAt.IsZero() {
		out.ResetsAt = timestamppb.New(q.ResetsAt)
	}
	return out
}
