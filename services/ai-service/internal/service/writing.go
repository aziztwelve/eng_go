package service

import (
	"context"
	"encoding/json"
	"fmt"
	"strings"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
)

// AssessWritingInput — параметры writing assessment.
type AssessWritingInput struct {
	UserID         string
	Prompt         string
	UserText       string
	TargetLanguage string
	UserLevel      string
}

// AssessWriting — оценивает письменную работу через provider.Chat
// с heavy-моделью (writing требует точности).
func (s *Service) AssessWriting(ctx context.Context, in AssessWritingInput) (*model.WritingAssessment, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.UserText) == "" {
		return nil, fmt.Errorf("%w: user_text required", ErrInvalidArgument)
	}

	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindWriting, 1); err != nil {
		return nil, err
	}

	pCtx := prompts.WritingContext{
		TargetLanguage: in.TargetLanguage,
		UserLevel:      in.UserLevel,
		Prompt:         in.Prompt,
		UserText:       in.UserText,
	}

	resp, err := s.provider.Chat(ctx,
		[]providers.PromptMessage{
			{Role: "system", Content: prompts.WritingSystemPrompt(pCtx)},
			{Role: "user", Content: prompts.WritingUserPrompt(pCtx)},
		},
		providers.ChatOptions{Model: s.cfg.DefaultModelHeavy, JSONOutput: true},
	)
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	assessment := parseWritingAssessment(resp.Content)
	assessment.UserID = in.UserID
	assessment.Prompt = in.Prompt
	assessment.UserText = in.UserText
	assessment.TargetLanguage = in.TargetLanguage
	assessment.UserLevel = in.UserLevel
	assessment.TokensUsed = resp.TokensUsed
	assessment.CostUSD = resp.CostUSD

	if err := s.writing.Create(ctx, assessment); err != nil {
		return nil, fmt.Errorf("save assessment: %w", err)
	}

	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindWriting, 1)
	return assessment, nil
}

func parseWritingAssessment(content string) *model.WritingAssessment {
	var parsed struct {
		OverallScore   int32                    `json:"overall_score"`
		GrammarScore   int32                    `json:"grammar_score"`
		VocabScore     int32                    `json:"vocabulary_score"`
		CoherenceScore int32                    `json:"coherence_score"`
		StyleScore     int32                    `json:"style_score"`
		CorrectedText  string                   `json:"corrected_text"`
		Feedback       []model.WritingFeedback `json:"feedback"`
	}
	a := &model.WritingAssessment{}
	if err := json.Unmarshal([]byte(content), &parsed); err == nil {
		a.OverallScore = parsed.OverallScore
		a.GrammarScore = parsed.GrammarScore
		a.VocabScore = parsed.VocabScore
		a.CoherenceScore = parsed.CoherenceScore
		a.StyleScore = parsed.StyleScore
		a.CorrectedText = parsed.CorrectedText
		a.Feedback = parsed.Feedback
	}
	// Если overall_score пустой, но есть остальные — считаем среднее.
	if a.OverallScore == 0 && (a.GrammarScore+a.VocabScore+a.CoherenceScore+a.StyleScore) > 0 {
		a.OverallScore = (a.GrammarScore + a.VocabScore + a.CoherenceScore + a.StyleScore) / 4
	}
	return a
}
