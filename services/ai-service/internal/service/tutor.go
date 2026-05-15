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

// AskTutorInput — параметры одиночного Q&A.
type AskTutorInput struct {
	UserID         string
	Question       string
	TargetLanguage string
	NativeLanguage string
}

// AskTutorResult — ответ + метаданные.
type AskTutorResult struct {
	Answer     string
	TokensUsed int32
	CostUSD    float64
}

// AskTutor — короткий вопрос «учителю». Без persistence: caller
// просто получает ответ. Если пользователю нужен контекст — пусть
// открывает Conversation со scenario=tutor_qa.
func (s *Service) AskTutor(ctx context.Context, in AskTutorInput) (*AskTutorResult, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.Question) == "" {
		return nil, fmt.Errorf("%w: question required", ErrInvalidArgument)
	}

	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindChat, 1); err != nil {
		return nil, err
	}

	pCtx := prompts.TutorContext{
		TargetLanguage: in.TargetLanguage,
		NativeLanguage: in.NativeLanguage,
	}
	resp, err := s.provider.Chat(ctx,
		[]providers.PromptMessage{
			{Role: "system", Content: prompts.TutorSystemPrompt(pCtx)},
			{Role: "user", Content: in.Question},
		},
		providers.ChatOptions{Model: s.cfg.DefaultModelChat, JSONOutput: true},
	)
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	answer := parseTutorAnswer(resp.Content)
	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindChat, 1)
	return &AskTutorResult{
		Answer:     answer,
		TokensUsed: resp.TokensUsed,
		CostUSD:    resp.CostUSD,
	}, nil
}

func parseTutorAnswer(content string) string {
	var parsed struct {
		Answer string `json:"answer"`
	}
	if err := json.Unmarshal([]byte(content), &parsed); err == nil && parsed.Answer != "" {
		return parsed.Answer
	}
	return content
}
