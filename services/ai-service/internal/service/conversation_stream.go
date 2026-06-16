package service

import (
	"context"
	"errors"
	"fmt"
	"strings"
	"time"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/prompts"
	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/ai-service/internal/repository"
)

// streamEmulationDelay — пауза между «эмулированными» chunk'ами для
// типрайтер-эффекта когда provider не поддерживает native streaming.
const streamEmulationDelay = 25 * time.Millisecond
const streamEmulationChunkSize = 6

// StreamEvent — типизированное событие потока ответов SendMessageStream.
//
// Контракт упорядочивания:
//   1. Ровно один UserMessage event (первым).
//   2. Ноль или больше Delta event'ов.
//   3. Ровно один из: AssistantMessage event (success) или Err event (failure).
//   После terminal-event канал закрывается.
type StreamEvent struct {
	UserMessage      *model.Message
	Delta            string
	AssistantMessage *model.Message
	Err              error
}

// SendMessageStream — server-streaming версия SendMessage (Phase 5.27).
//
// Поведение:
//   - sanitize → PII-redact → moderation → quota — ровно один раз, до
//     старта стрима. Любая ошибка возвращается СИНХРОННО (chan == nil).
//   - user-message сохраняется до первого emit'а; первый event — копия
//     этого сообщения для UI echo.
//   - провайдер вызывается через ChatStream если умеет; иначе — Chat()
//     + EmulateStream (типрайтер-эффект).
//   - в streaming-режиме prompt НЕ требует JSON-output; reply = чистый
//     text. Translation/corrections в этом режиме не возвращаются —
//     для полного формата клиент использует обычный SendMessage.
//   - assistant-message персистится в момент terminal-event'а.
//   - quota incrementится только при успешном завершении.
func (s *Service) SendMessageStream(ctx context.Context, in SendMessageInput) (<-chan StreamEvent, error) {
	if in.UserID == "" || in.ConversationID == "" {
		return nil, fmt.Errorf("%w: user_id and conversation_id required", ErrInvalidArgument)
	}
	if strings.TrimSpace(in.Content) == "" {
		return nil, fmt.Errorf("%w: content must not be empty", ErrInvalidArgument)
	}

	conv, err := s.conversations.GetByID(ctx, in.ConversationID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, fmt.Errorf("get conversation: %w", err)
	}
	if conv.UserID != in.UserID {
		return nil, ErrForbidden
	}
	if conv.IsEnded() {
		return nil, fmt.Errorf("%w: conversation ended", ErrInvalidArgument)
	}

	if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindChat, 1); err != nil {
		return nil, err
	}

	sanitized, _ := providers.SanitizeUserInput(in.Content, s.sanitize)
	if sanitized == "" {
		return nil, fmt.Errorf("%w: content empty after sanitization", ErrInvalidArgument)
	}
	sanitized = s.redactPII(ctx, sanitized, "send_message_stream")
	if mod, err := s.moderator.Check(ctx, sanitized); err == nil && mod != nil && mod.Flagged {
		return nil, fmt.Errorf("%w: %s", ErrContentFlagged, mod.Reason)
	}

	userMsg := &model.Message{
		ConversationID: conv.ID,
		Role:           model.RoleUser,
		Content:        sanitized,
		CreatedAt:      time.Now().UTC(),
	}
	if err := s.messages.Create(ctx, userMsg); err != nil {
		return nil, fmt.Errorf("create user message: %w", err)
	}

	history, err := s.messages.GetLastN(ctx, conv.ID, historyDepth)
	if err != nil {
		return nil, fmt.Errorf("get history: %w", err)
	}

	profile := s.fetchProfile(ctx, in.UserID)
	scenarioCtx, scenarioRole, vocabFocus := scenarioFor(conv.Scenario)

	systemPrompt := prompts.ConversationSystemPrompt(prompts.ConversationContext{
		UserLevel:      conv.UserLevel,
		TargetLanguage: conv.TargetLanguage,
		NativeLanguage: firstNonEmpty(profile.NativeLanguage, "Russian"),
		ScenarioRole:   scenarioRole,
		ScenarioCtx:    scenarioCtx,
		VocabFocus:     vocabFocus,
	})
	// A/B (Phase 5.X): chat_prompt → дописать суффикс в system-prompt.
	if suffix := s.chatPromptSuffixFor(in.UserID); suffix != "" {
		systemPrompt += "\n\n" + suffix
	}
	// В streaming-режиме просим plain text reply (без JSON-обвязки):
	// streaming JSON неудобно парсить пo-чанково.
	systemPrompt += "\n\nIMPORTANT: respond with plain text reply only, no JSON wrapping."

	promptMessages := []providers.PromptMessage{
		{Role: "system", Content: systemPrompt},
	}
	for _, m := range history {
		promptMessages = append(promptMessages, providers.PromptMessage{
			Role:    string(m.Role),
			Content: m.Content,
		})
	}

	out := make(chan StreamEvent, 32)
	go s.runStream(ctx, conv, userMsg, promptMessages, in.UserID, out)
	return out, nil
}

// runStream — фоновый воркер, исполняет провайдер-вызов и эмитит события.
//
// Гарантии:
//   - Первое событие — UserMessage.
//   - Канал ВСЕГДА закрывается (defer close).
//   - Терминальное событие — либо AssistantMessage, либо Err.
func (s *Service) runStream(
	ctx context.Context,
	conv *model.Conversation,
	userMsg *model.Message,
	promptMessages []providers.PromptMessage,
	userID string,
	out chan<- StreamEvent,
) {
	defer close(out)

	// Echo user-message сразу, чтобы UI отрисовал bubble.
	out <- StreamEvent{UserMessage: userMsg}

	chatOpts := providers.ChatOptions{
		// A/B (Phase 5.X): chat_model → переопределить model для эксперимента.
		Model:      s.chatModelFor(userID, conv.Model),
		JSONOutput: false,
	}

	stream, native := s.openProviderStream(ctx, promptMessages, chatOpts)
	if stream == nil {
		out <- StreamEvent{Err: fmt.Errorf("%w: provider stream init failed", ErrProviderFailed)}
		return
	}

	var (
		replyBuilder strings.Builder
		tokensUsed   int32
		costUSD      float64
	)

	for chunk := range stream {
		if chunk.Err != nil {
			out <- StreamEvent{Err: fmt.Errorf("%w: %v", ErrProviderFailed, chunk.Err)}
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
		case out <- StreamEvent{Delta: chunk.Delta}:
		case <-ctx.Done():
			out <- StreamEvent{Err: ctx.Err()}
			return
		}
	}

	// При native-streaming провайдер обычно НЕ даёт точный token count; если
	// 0 — fallback на грубую оценку по длине reply (исторически ~4 chars/token).
	if !native && tokensUsed == 0 {
		tokensUsed = int32(replyBuilder.Len() / 4)
	}

	reply := replyBuilder.String()
	if reply == "" {
		out <- StreamEvent{Err: fmt.Errorf("%w: empty reply", ErrProviderFailed)}
		return
	}

	assistantMsg := &model.Message{
		ConversationID: conv.ID,
		Role:           model.RoleAssistant,
		Content:        reply,
		TokensUsed:     tokensUsed,
		CostUSD:        costUSD,
		CreatedAt:      time.Now().UTC(),
	}

	if err := s.messages.Create(ctx, assistantMsg); err != nil {
		out <- StreamEvent{Err: fmt.Errorf("create assistant message: %w", err)}
		return
	}

	if err := s.conversations.UpdateStats(ctx, conv.ID, tokensUsed, costUSD, assistantMsg.CreatedAt); err != nil {
		// Non-fatal — продолжаем, юзер всё равно получает ответ.
		_ = err
	}
	_ = s.IncrementQuota(ctx, userID, model.QuotaKindChat, 1)

	out <- StreamEvent{AssistantMessage: assistantMsg}
}

// openProviderStream возвращает канал chunk'ов и флаг native (true если
// provider реально стримит, false если эмулируется поверх Chat()).
//
// Если провайдер реализует StreamingProvider — используется он. Иначе —
// синхронный Chat() и EmulateStream поверх готового ChatResponse.
func (s *Service) openProviderStream(
	ctx context.Context,
	messages []providers.PromptMessage,
	opts providers.ChatOptions,
) (<-chan providers.ChatStreamChunk, bool) {
	if streamer, ok := s.provider.(providers.StreamingProvider); ok {
		ch, err := streamer.ChatStream(ctx, messages, opts)
		if err == nil {
			return ch, true
		}
		// При ошибке native-streaming откатываемся на эмуляцию,
		// чтобы не валить запрос совсем (best-effort).
	}

	resp, err := s.provider.Chat(ctx, messages, opts)
	if err != nil {
		// Возвращаем канал с error chunk'ом — runStream обработает.
		ch := make(chan providers.ChatStreamChunk, 1)
		ch <- providers.ChatStreamChunk{Err: err}
		close(ch)
		return ch, false
	}
	return providers.EmulateStream(ctx, resp, streamEmulationDelay, streamEmulationChunkSize), false
}

// IsStreamingProvider — публичный helper для тестов (не используется в проде).
func (s *Service) IsStreamingProvider() bool {
	_, ok := s.provider.(providers.StreamingProvider)
	return ok
}
