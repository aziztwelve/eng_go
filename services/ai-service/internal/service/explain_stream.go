package service

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/ai-service/internal/repository"
)

// ExplainStreamEvent — событие потока ExplainMistakeStream.
//
// Контракт:
//   - cache hit  → ровно один Done event (без Delta).
//   - cache miss → 0..N Delta event'ов → ровно один Done или Err event.
//
// После terminal-event канал закрывается.
type ExplainStreamEvent struct {
	Delta string
	Done  *ExplainResult
	Err   error
}

// ExplainMistakeStream — server-streaming версия ExplainMistake (Phase 5.X).
//
// Логика идентична ExplainMistake (cache lookup → quota check → provider →
// save in cache → quota increment), но с важными отличиями:
//   - При cache-hit'е сразу возвращаем Done с cached=true без вызова
//     провайдера (никакие delta'ы — у нас уже готов полный ответ).
//   - При miss'е stream'им provider'а; в финале сохраняем полный текст
//     в кэш и инкрементим quota.
//   - В streaming-режиме prompt просит plain text reply, иначе streaming
//     JSON некрасиво показывать токенами по UI.
//
// Validation/lookup ошибки возвращаются СИНХРОННО (chan == nil).
func (s *Service) ExplainMistakeStream(ctx context.Context, in ExplainInput) (<-chan ExplainStreamEvent, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.IncorrectAnswer) == "" {
		return nil, fmt.Errorf("%w: incorrect_answer required", ErrInvalidArgument)
	}

	cleanIncorrect := s.redactPII(ctx, in.IncorrectAnswer, "explain.incorrect")
	cleanQuestion := s.redactPII(ctx, in.Question, "explain.question")

	md5sum := md5OfString(cleanIncorrect)
	var stepID *string
	if in.StepID != "" {
		s := in.StepID
		stepID = &s
	}

	// 1. Cache lookup — синхронно (не за счёт streaming overhead'а).
	if cached, err := s.explanations.Get(ctx, stepID, md5sum); err == nil && cached != nil {
		out := make(chan ExplainStreamEvent, 1)
		out <- ExplainStreamEvent{Done: &ExplainResult{
			Explanation: cached.Explanation,
			Cached:      true,
		}}
		close(out)
		return out, nil
	} else if err != nil && !errors.Is(err, repository.ErrNotFound) {
		return nil, fmt.Errorf("cache lookup: %w", err)
	}

	// 2. Quota check (cache miss).
	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindChat, 1); err != nil {
		return nil, err
	}

	pCtx := prompts.ExplainContext{
		TargetLanguage:  in.TargetLanguage,
		NativeLanguage:  in.NativeLanguage,
		Question:        cleanQuestion,
		CorrectAnswer:   in.CorrectAnswer,
		IncorrectAnswer: cleanIncorrect,
	}
	systemPrompt := prompts.ExplainSystemPrompt(pCtx) +
		"\n\nIMPORTANT: respond with plain text explanation only, no JSON wrapping."
	userPrompt := prompts.ExplainUserPrompt(pCtx)

	promptMessages := []providers.PromptMessage{
		{Role: "system", Content: systemPrompt},
		{Role: "user", Content: userPrompt},
	}
	chatOpts := providers.ChatOptions{
		Model:      s.cfg.DefaultModelChat,
		JSONOutput: false,
	}

	out := make(chan ExplainStreamEvent, 32)
	go s.runExplainStream(ctx, in, cleanIncorrect, md5sum, stepID, promptMessages, chatOpts, out)
	return out, nil
}

// runExplainStream — фоновый воркер ExplainMistakeStream.
func (s *Service) runExplainStream(
	ctx context.Context,
	in ExplainInput,
	cleanIncorrect, md5sum string,
	stepID *string,
	promptMessages []providers.PromptMessage,
	chatOpts providers.ChatOptions,
	out chan<- ExplainStreamEvent,
) {
	defer close(out)

	stream, native := s.openProviderStream(ctx, promptMessages, chatOpts)
	if stream == nil {
		out <- ExplainStreamEvent{Err: fmt.Errorf("%w: provider stream init failed", ErrProviderFailed)}
		return
	}

	var (
		replyBuilder strings.Builder
		tokensUsed   int32
		costUSD      float64
	)

	for chunk := range stream {
		if chunk.Err != nil {
			out <- ExplainStreamEvent{Err: fmt.Errorf("%w: %v", ErrProviderFailed, chunk.Err)}
			return
		}
		if chunk.Done {
			tokensUsed = chunk.TokensUsed
			costUSD = chunk.CostUSD
			break
		}
		if chunk.Delta == "" {
			continue
		}
		replyBuilder.WriteString(chunk.Delta)
		select {
		case out <- ExplainStreamEvent{Delta: chunk.Delta}:
		case <-ctx.Done():
			out <- ExplainStreamEvent{Err: ctx.Err()}
			return
		}
	}

	if !native && tokensUsed == 0 {
		tokensUsed = int32(replyBuilder.Len() / 4)
	}

	explanation := replyBuilder.String()
	if explanation == "" {
		out <- ExplainStreamEvent{Err: fmt.Errorf("%w: empty reply", ErrProviderFailed)}
		return
	}

	// Save in cache (PII-redacted версия).
	rec := &model.Explanation{
		UserID:             in.UserID,
		StepID:             stepID,
		IncorrectAnswer:    cleanIncorrect,
		IncorrectAnswerMD5: md5sum,
		CorrectAnswer:      in.CorrectAnswer,
		Explanation:        explanation,
		TargetLanguage:     in.TargetLanguage,
		NativeLanguage:     in.NativeLanguage,
		TokensUsed:         tokensUsed,
		CostUSD:            costUSD,
	}
	if err := s.explanations.Create(ctx, rec); err != nil {
		// Non-fatal — отдаём fresh explanation, кэш заполнится в следующий раз.
		_ = err
	}

	// Quota increment ТОЛЬКО при success.
	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindChat, 1)

	out <- ExplainStreamEvent{Done: &ExplainResult{
		Explanation: explanation,
		Cached:      false,
	}}
}
