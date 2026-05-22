package service

import (
	"context"
	"fmt"
	"strings"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
)

// WritingStreamEvent — событие потока AssessWritingStream.
//
// Контракт:
//   - 0..N Delta event'ов с сырыми JSON-токенами (для UI typing-indicator).
//   - Ровно один Done или Err event.
//
// После terminal-event канал закрывается.
type WritingStreamEvent struct {
	Delta string
	Done  *model.WritingAssessment
	Err   error
}

// AssessWritingStream — server-streaming версия AssessWriting (Phase 5.X).
//
// Особенности:
//   - Provider обязан вернуть валидный JSON (JSONOutput=true), потому что
//     в финале мы ПАРСИМ его в WritingAssessment. Поэтому delta'ы — это
//     сырые JSON-токены, и они полезны UI только как «typing indicator»,
//     не для пo-токеновой отрисовки финального ответа.
//   - Quota check / save / increment — как в AssessWriting. Quota
//     инкрементится только при успехе.
//   - Validation ошибки возвращаются СИНХРОННО (chan == nil).
func (s *Service) AssessWritingStream(ctx context.Context, in AssessWritingInput) (<-chan WritingStreamEvent, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.UserText) == "" {
		return nil, fmt.Errorf("%w: user_text required", ErrInvalidArgument)
	}

	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindWriting, 1); err != nil {
		return nil, err
	}

	cleanText := s.redactPII(ctx, in.UserText, "assess_writing_stream")

	pCtx := prompts.WritingContext{
		TargetLanguage: in.TargetLanguage,
		UserLevel:      in.UserLevel,
		Prompt:         in.Prompt,
		UserText:       cleanText,
	}

	promptMessages := []providers.PromptMessage{
		{Role: "system", Content: prompts.WritingSystemPrompt(pCtx)},
		{Role: "user", Content: prompts.WritingUserPrompt(pCtx)},
	}
	chatOpts := providers.ChatOptions{
		Model:      s.cfg.DefaultModelHeavy,
		JSONOutput: true,
	}

	out := make(chan WritingStreamEvent, 32)
	go s.runWritingStream(ctx, in, cleanText, promptMessages, chatOpts, out)
	return out, nil
}

// runWritingStream — фоновый воркер AssessWritingStream.
func (s *Service) runWritingStream(
	ctx context.Context,
	in AssessWritingInput,
	cleanText string,
	promptMessages []providers.PromptMessage,
	chatOpts providers.ChatOptions,
	out chan<- WritingStreamEvent,
) {
	defer close(out)

	stream, _ := s.openProviderStream(ctx, promptMessages, chatOpts)
	if stream == nil {
		out <- WritingStreamEvent{Err: fmt.Errorf("%w: provider stream init failed", ErrProviderFailed)}
		return
	}

	var (
		replyBuilder strings.Builder
		tokensUsed   int32
		costUSD      float64
	)

	for chunk := range stream {
		if chunk.Err != nil {
			out <- WritingStreamEvent{Err: fmt.Errorf("%w: %v", ErrProviderFailed, chunk.Err)}
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
		case out <- WritingStreamEvent{Delta: chunk.Delta}:
		case <-ctx.Done():
			out <- WritingStreamEvent{Err: ctx.Err()}
			return
		}
	}

	raw := replyBuilder.String()
	if raw == "" {
		out <- WritingStreamEvent{Err: fmt.Errorf("%w: empty reply", ErrProviderFailed)}
		return
	}

	// Парсим JSON в финале (provider всегда возвращает целый JSON-объект
	// после Done — даже если эмулировано через Chat()+EmulateStream).
	assessment := parseWritingAssessment(raw)
	assessment.UserID = in.UserID
	assessment.Prompt = in.Prompt
	assessment.UserText = cleanText
	assessment.TargetLanguage = in.TargetLanguage
	assessment.UserLevel = in.UserLevel
	assessment.TokensUsed = tokensUsed
	assessment.CostUSD = costUSD

	if err := s.writing.Create(ctx, assessment); err != nil {
		out <- WritingStreamEvent{Err: fmt.Errorf("save assessment: %w", err)}
		return
	}

	// Quota — только при успехе.
	_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindWriting, 1)

	out <- WritingStreamEvent{Done: assessment}
}
