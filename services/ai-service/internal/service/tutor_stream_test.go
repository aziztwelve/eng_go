package service

import (
	"context"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/elearning/ai-service/internal/providers"
)

// AskTutorStream должен:
//  1. отправить N delta-чанков, склеивающихся в полный ответ;
//  2. отправить ровно один Done с тем же answer'ом;
//  3. инкрементировать quota чата ровно на 1.
func TestAskTutorStream_FullFlow_EmulatedProvider(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	const reply = "Past simple is used for finished actions in the past"
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return &providers.ChatResponse{
			Content:    reply,
			TokensUsed: 11,
			CostUSD:    0.00015,
			Model:      "test-chat",
		}, nil
	}

	events, err := h.svc.AskTutorStream(ctx, AskTutorInput{
		UserID:         "u1",
		Question:       "When do I use past simple?",
		TargetLanguage: "en",
		NativeLanguage: "ru",
	})
	if err != nil {
		t.Fatalf("ask stream: %v", err)
	}

	var (
		streamed strings.Builder
		done     *AskTutorResult
		gotErr   error
	)
	for ev := range events {
		switch {
		case ev.Err != nil:
			gotErr = ev.Err
		case ev.Done != nil:
			done = ev.Done
		case ev.Delta != "":
			streamed.WriteString(ev.Delta)
		}
	}

	if gotErr != nil {
		t.Fatalf("unexpected error event: %v", gotErr)
	}
	if done == nil {
		t.Fatalf("missing done event")
	}
	if done.Answer != reply {
		t.Errorf("done.Answer mismatch: %q vs %q", done.Answer, reply)
	}
	if streamed.String() != reply {
		t.Errorf("streamed deltas don't reconstruct full reply:\n  streamed=%q\n  full=%q",
			streamed.String(), reply)
	}

	// quota chat = 1
	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q == nil || q.ChatRequests != 1 {
		t.Errorf("expected chat_requests=1, got %+v", q)
	}
}

// При ошибке провайдера ДО старта стрима AskTutorStream должен вернуть
// канал, который эмитит ровно один Err event и закрывается. Quota
// НЕ инкрементится.
func TestAskTutorStream_ProviderError_EmitsErrorEvent(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return nil, errors.New("provider down")
	}

	events, err := h.svc.AskTutorStream(ctx, AskTutorInput{
		UserID:   "u1",
		Question: "How are you?",
	})
	if err != nil {
		t.Fatalf("ask stream: %v", err)
	}

	var (
		gotDone *AskTutorResult
		gotErr  error
	)
	for ev := range events {
		switch {
		case ev.Err != nil:
			gotErr = ev.Err
		case ev.Done != nil:
			gotDone = ev.Done
		}
	}
	if gotDone != nil {
		t.Errorf("unexpected done event: %+v", gotDone)
	}
	if gotErr == nil {
		t.Fatalf("expected error event, got none")
	}
	if !errors.Is(gotErr, ErrProviderFailed) {
		t.Errorf("expected ErrProviderFailed, got %v", gotErr)
	}

	// Quota НЕ инкрементилась.
	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q != nil && q.ChatRequests != 0 {
		t.Errorf("expected chat_requests=0 on failure, got %d", q.ChatRequests)
	}
}

// Validation errors возвращаются СИНХРОННО (chan == nil).
func TestAskTutorStream_ValidationErrors(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	tests := []struct {
		name string
		in   AskTutorInput
	}{
		{"empty user_id", AskTutorInput{UserID: "", Question: "x"}},
		{"empty question", AskTutorInput{UserID: "u1", Question: "  "}},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			events, err := h.svc.AskTutorStream(ctx, tt.in)
			if err == nil {
				t.Fatalf("expected sync error, got nil (events=%v)", events)
			}
			if events != nil {
				t.Errorf("expected nil channel on sync error, got %v", events)
			}
			if !errors.Is(err, ErrInvalidArgument) {
				t.Errorf("expected ErrInvalidArgument, got %v", err)
			}
		})
	}
}
