package service

import (
	"context"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
)

func TestSendMessageStream_FullFlow_EmulatedProvider(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	// Стартуем conversation. fakeProvider.Chat по умолчанию вернёт JSON;
	// для streaming нам нужен plain text → подмена.
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return &providers.ChatResponse{
			Content:    "Hello world this is a streamed reply",
			TokensUsed: 9,
			CostUSD:    0.00012,
			Model:      "test-chat",
		}, nil
	}

	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID:   "u1",
		Scenario: model.ScenarioFreeChat,
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}

	events, err := h.svc.SendMessageStream(ctx, SendMessageInput{
		UserID:         "u1",
		ConversationID: conv.ID,
		Content:        "Hi there",
	})
	if err != nil {
		t.Fatalf("send stream: %v", err)
	}

	var (
		gotUser     *model.Message
		gotAssist   *model.Message
		streamedTxt strings.Builder
		gotErr      error
	)
	for ev := range events {
		switch {
		case ev.Err != nil:
			gotErr = ev.Err
		case ev.UserMessage != nil:
			gotUser = ev.UserMessage
		case ev.AssistantMessage != nil:
			gotAssist = ev.AssistantMessage
		case ev.Delta != "":
			streamedTxt.WriteString(ev.Delta)
		}
	}

	if gotErr != nil {
		t.Fatalf("unexpected error event: %v", gotErr)
	}
	if gotUser == nil || gotUser.Content == "" {
		t.Fatalf("missing user_message event")
	}
	if gotAssist == nil {
		t.Fatalf("missing assistant_message event")
	}
	if gotAssist.Content != "Hello world this is a streamed reply" {
		t.Errorf("assistant content mismatch: %q", gotAssist.Content)
	}
	if streamedTxt.String() != gotAssist.Content {
		t.Errorf("streamed deltas don't reconstruct full reply:\n  streamed=%q\n  full=%q",
			streamedTxt.String(), gotAssist.Content)
	}

	// Quota должна быть инкрементирована (счётчик chat = 1).
	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q == nil || q.ChatRequests != 1 {
		t.Errorf("expected chat_requests=1, got %+v", q)
	}
}

func TestSendMessageStream_ProviderError_EmitsErrorChunk(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID:   "u1",
		Scenario: model.ScenarioFreeChat,
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}

	wantErr := errors.New("provider down")
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return nil, wantErr
	}

	events, err := h.svc.SendMessageStream(ctx, SendMessageInput{
		UserID:         "u1",
		ConversationID: conv.ID,
		Content:        "Hi",
	})
	if err != nil {
		t.Fatalf("setup error not expected: %v", err)
	}

	var (
		gotErrEvent bool
		gotAssist   bool
	)
	for ev := range events {
		if ev.Err != nil {
			gotErrEvent = true
		}
		if ev.AssistantMessage != nil {
			gotAssist = true
		}
	}
	if !gotErrEvent {
		t.Errorf("expected error event")
	}
	if gotAssist {
		t.Errorf("assistant_message should NOT be emitted on provider error")
	}

	// Quota — НЕ должна быть инкрементирована при ошибке.
	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q != nil && q.ChatRequests > 0 {
		t.Errorf("quota should not increment on error, got chat_requests=%d", q.ChatRequests)
	}
}

func TestSendMessageStream_InvalidInputs(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	_, err := h.svc.SendMessageStream(ctx, SendMessageInput{
		UserID:         "",
		ConversationID: "x",
		Content:        "hi",
	})
	if !errors.Is(err, ErrInvalidArgument) {
		t.Errorf("expected ErrInvalidArgument for empty user_id, got %v", err)
	}

	_, err = h.svc.SendMessageStream(ctx, SendMessageInput{
		UserID:         "u",
		ConversationID: "c",
		Content:        "   ",
	})
	if !errors.Is(err, ErrInvalidArgument) {
		t.Errorf("expected ErrInvalidArgument for whitespace-only content, got %v", err)
	}

	_, err = h.svc.SendMessageStream(ctx, SendMessageInput{
		UserID:         "u1",
		ConversationID: "non-existent",
		Content:        "hi",
	})
	if !errors.Is(err, ErrNotFound) {
		t.Errorf("expected ErrNotFound for unknown conversation, got %v", err)
	}
}
