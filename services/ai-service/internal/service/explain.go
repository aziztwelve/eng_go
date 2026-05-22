package service

import (
	"context"
	"crypto/md5"
	"encoding/hex"
	"encoding/json"
	"errors"
	"fmt"
	"strings"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/ai-service/internal/repository"
)

// ExplainInput — параметры объяснения ошибки.
type ExplainInput struct {
	UserID          string
	StepID          string // optional — если есть, кэшируем
	Question        string
	IncorrectAnswer string
	CorrectAnswer   string
	TargetLanguage  string
	NativeLanguage  string
}

// ExplainResult — результат с флагом cached.
type ExplainResult struct {
	Explanation string
	Cached      bool
}

// ExplainMistake — основная функция фичи Explain.
//
// Алгоритм:
//   1. Если step_id не пусто — поиск в кэше по (step_id, md5(incorrect)).
//   2. Hit — возвращаем cached=true, без quota-инкремента.
//   3. Miss — провайдер.Chat → парсим JSON → сохраняем в кэш.
func (s *Service) ExplainMistake(ctx context.Context, in ExplainInput) (*ExplainResult, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.IncorrectAnswer) == "" {
		return nil, fmt.Errorf("%w: incorrect_answer required", ErrInvalidArgument)
	}

	// PII redact для incorrect_answer + question (correct_answer обычно
	// от системы и не содержит PII). Cache key — на основе redacted
	// варианта (иначе одинаковый ответ с разными «случайными» PII даст
	// cache miss каждый раз).
	cleanIncorrect := s.redactPII(ctx, in.IncorrectAnswer, "explain.incorrect")
	cleanQuestion := s.redactPII(ctx, in.Question, "explain.question")

	md5sum := md5OfString(cleanIncorrect)
	var stepID *string
	if in.StepID != "" {
		s := in.StepID
		stepID = &s
	}

	// 1. Cache lookup.
	if cached, err := s.explanations.Get(ctx, stepID, md5sum); err == nil && cached != nil {
		return &ExplainResult{Explanation: cached.Explanation, Cached: true}, nil
	} else if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("cache lookup: %w", err)
	}

	// 2. Quota check (explain == chat counter).
	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindChat, 1); err != nil {
		return nil, err
	}

	// 3. Provider call.
	pCtx := prompts.ExplainContext{
		TargetLanguage:  in.TargetLanguage,
		NativeLanguage:  in.NativeLanguage,
		Question:        cleanQuestion,
		CorrectAnswer:   in.CorrectAnswer,
		IncorrectAnswer: cleanIncorrect,
	}
	resp, err := s.provider.Chat(ctx,
		[]providers.PromptMessage{
			{Role: "system", Content: prompts.ExplainSystemPrompt(pCtx)},
			{Role: "user", Content: prompts.ExplainUserPrompt(pCtx)},
		},
		providers.ChatOptions{Model: s.cfg.DefaultModelChat, JSONOutput: true},
	)
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	explanation := parseExplanation(resp.Content)

	// 4. Save in cache (с redacted версией!).
	rec := &model.Explanation{
		UserID:             in.UserID,
		StepID:             stepID,
		IncorrectAnswer:    cleanIncorrect,
		IncorrectAnswerMD5: md5sum,
		CorrectAnswer:      in.CorrectAnswer,
		Explanation:        explanation,
		TargetLanguage:     in.TargetLanguage,
		NativeLanguage:     in.NativeLanguage,
		TokensUsed:         resp.TokensUsed,
		CostUSD:            resp.CostUSD,
	}
	if err := s.explanations.Create(ctx, rec); err != nil {
		// Non-fatal: вернём fresh explanation, кэш заполнится в следующий раз.
		_ = err
	}

	// 5. Quota increment.
	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindChat, 1)

	return &ExplainResult{Explanation: explanation, Cached: false}, nil
}

// =====================================================================
// Helpers
// =====================================================================

func md5OfString(s string) string {
	sum := md5.Sum([]byte(s))
	return hex.EncodeToString(sum[:])
}

func parseExplanation(content string) string {
	var parsed struct {
		Explanation string `json:"explanation"`
	}
	if err := json.Unmarshal([]byte(content), &parsed); err == nil && parsed.Explanation != "" {
		return parsed.Explanation
	}
	// Fallback: чистый текст.
	return content
}
