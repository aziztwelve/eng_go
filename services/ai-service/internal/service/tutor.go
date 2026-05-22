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

// TutorStreamEvent — типизированное событие потока AskTutorStream.
//
// Контракт упорядочивания:
//  1. Ноль или больше Delta event'ов.
//  2. Ровно один из: Done event (success) или Err event (failure).
//
// После terminal-event канал закрывается.
type TutorStreamEvent struct {
	Delta string
	Done  *AskTutorResult
	Err   error
}

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

	// PII redact перед отправкой в provider (privacy-by-default).
	question := s.redactPII(ctx, in.Question, "ask_tutor")

	pCtx := prompts.TutorContext{
		TargetLanguage: in.TargetLanguage,
		NativeLanguage: in.NativeLanguage,
	}
	resp, err := s.provider.Chat(ctx,
		[]providers.PromptMessage{
			{Role: "system", Content: prompts.TutorSystemPrompt(pCtx)},
			{Role: "user", Content: question},
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

// AskTutorStream — server-streaming версия AskTutor (Phase 5.X).
//
// Поведение:
//   - Validation + PII-redact + quota — синхронно (chan == nil при ошибке).
//   - Провайдер вызывается через ChatStream если умеет; иначе — Chat()
//     + EmulateStream (типрайтер-эффект поверх готового ответа).
//   - В streaming-режиме prompt просит plain text reply (без JSON-обвязки):
//     streaming JSON неудобно парсить пo-чанково.
//   - quota incrementится только при успешном завершении (Done event).
func (s *Service) AskTutorStream(ctx context.Context, in AskTutorInput) (<-chan TutorStreamEvent, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.Question) == "" {
		return nil, fmt.Errorf("%w: question required", ErrInvalidArgument)
	}

	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindChat, 1); err != nil {
		return nil, err
	}

	question := s.redactPII(ctx, in.Question, "ask_tutor_stream")

	pCtx := prompts.TutorContext{
		TargetLanguage: in.TargetLanguage,
		NativeLanguage: in.NativeLanguage,
	}
	systemPrompt := prompts.TutorSystemPrompt(pCtx) +
		"\n\nIMPORTANT: respond with plain text answer only, no JSON wrapping."

	promptMessages := []providers.PromptMessage{
		{Role: "system", Content: systemPrompt},
		{Role: "user", Content: question},
	}
	chatOpts := providers.ChatOptions{
		Model:      s.cfg.DefaultModelChat,
		JSONOutput: false,
	}

	out := make(chan TutorStreamEvent, 32)
	go s.runTutorStream(ctx, in.UserID, promptMessages, chatOpts, out)
	return out, nil
}

// runTutorStream — фоновый воркер AskTutorStream.
//
// Гарантии:
//   - Канал ВСЕГДА закрывается (defer close).
//   - Терминальное событие — ровно один Done или Err.
func (s *Service) runTutorStream(
	ctx context.Context,
	userID string,
	promptMessages []providers.PromptMessage,
	chatOpts providers.ChatOptions,
	out chan<- TutorStreamEvent,
) {
	defer close(out)

	stream, native := s.openProviderStream(ctx, promptMessages, chatOpts)
	if stream == nil {
		out <- TutorStreamEvent{Err: fmt.Errorf("%w: provider stream init failed", ErrProviderFailed)}
		return
	}

	var (
		replyBuilder strings.Builder
		tokensUsed   int32
		costUSD      float64
	)

	for chunk := range stream {
		if chunk.Err != nil {
			out <- TutorStreamEvent{Err: fmt.Errorf("%w: %v", ErrProviderFailed, chunk.Err)}
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
		case out <- TutorStreamEvent{Delta: chunk.Delta}:
		case <-ctx.Done():
			out <- TutorStreamEvent{Err: ctx.Err()}
			return
		}
	}

	if !native && tokensUsed == 0 {
		tokensUsed = int32(replyBuilder.Len() / 4)
	}

	answer := replyBuilder.String()
	if answer == "" {
		out <- TutorStreamEvent{Err: fmt.Errorf("%w: empty reply", ErrProviderFailed)}
		return
	}

	// quota incrementится ТОЛЬКО при успешном завершении.
	_ = s.IncrementQuota(ctx, userID, model.QuotaKindChat, 1)

	out <- TutorStreamEvent{Done: &AskTutorResult{
		Answer:     answer,
		TokensUsed: tokensUsed,
		CostUSD:    costUSD,
	}}
}
