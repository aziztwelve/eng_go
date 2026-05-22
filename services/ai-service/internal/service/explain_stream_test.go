package service

import (
	"context"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/elearning/ai-service/internal/providers"
)

// При cache miss ExplainMistakeStream должен:
//  1. отправить N delta-chunk'ов, склеивающихся в полный explanation;
//  2. отправить ровно один Done с cached=false;
//  3. сохранить запись в кэш для следующего call'а;
//  4. инкрементировать quota на 1.
func TestExplainStream_CacheMiss_StreamsAndCaches(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	const reply = "Because in English present simple uses base form for I/you/we/they"
	calls := 0
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		calls++
		return &providers.ChatResponse{Content: reply, TokensUsed: 7, CostUSD: 0.0001}, nil
	}

	in := ExplainInput{
		UserID:          "u1",
		StepID:          "step-1",
		IncorrectAnswer: "i goes",
		CorrectAnswer:   "I go",
		Question:        "Conjugate go for I",
	}

	events, err := h.svc.ExplainMistakeStream(ctx, in)
	if err != nil {
		t.Fatalf("explain stream: %v", err)
	}

	var (
		streamed strings.Builder
		done     *ExplainResult
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
		t.Fatalf("unexpected error: %v", gotErr)
	}
	if done == nil || done.Cached {
		t.Fatalf("expected fresh (non-cached) Done, got %+v", done)
	}
	if streamed.String() != reply {
		t.Errorf("streamed deltas don't reconstruct reply:\n  streamed=%q\n  full=%q",
			streamed.String(), reply)
	}
	if done.Explanation != reply {
		t.Errorf("done.Explanation mismatch: %q vs %q", done.Explanation, reply)
	}
	if calls != 1 {
		t.Errorf("provider should be called exactly once, got %d", calls)
	}

	// Quota incremented.
	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q == nil || q.ChatRequests != 1 {
		t.Errorf("expected chat_requests=1, got %+v", q)
	}

	// Повторный stream-вызов с тем же step_id+answer → cache hit, без provider call.
	events2, err := h.svc.ExplainMistakeStream(ctx, in)
	if err != nil {
		t.Fatalf("second stream: %v", err)
	}
	var done2 *ExplainResult
	for ev := range events2 {
		if ev.Done != nil {
			done2 = ev.Done
		}
		if ev.Delta != "" {
			t.Errorf("cache hit should NOT emit deltas, got %q", ev.Delta)
		}
	}
	if done2 == nil || !done2.Cached {
		t.Errorf("expected cached Done on second call, got %+v", done2)
	}
	if calls != 1 {
		t.Errorf("provider should still be called only once after cache hit, got %d", calls)
	}
	// quota НЕ должна была инкрементироваться при cache hit.
	q2, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q2 == nil || q2.ChatRequests != 1 {
		t.Errorf("expected chat_requests=1 (cache hit doesn't increment), got %+v", q2)
	}
}

// При ошибке провайдера: ровно один Err event, quota НЕ инкрементится,
// в кэш ничего не сохраняется.
func TestExplainStream_ProviderError(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return nil, errors.New("provider down")
	}

	events, err := h.svc.ExplainMistakeStream(ctx, ExplainInput{
		UserID:          "u1",
		StepID:          "step-1",
		IncorrectAnswer: "wrong",
		CorrectAnswer:   "right",
	})
	if err != nil {
		t.Fatalf("explain stream setup: %v", err)
	}

	var (
		gotDone *ExplainResult
		gotErr  error
	)
	for ev := range events {
		if ev.Err != nil {
			gotErr = ev.Err
		}
		if ev.Done != nil {
			gotDone = ev.Done
		}
	}
	if gotDone != nil {
		t.Errorf("unexpected Done on provider error: %+v", gotDone)
	}
	if !errors.Is(gotErr, ErrProviderFailed) {
		t.Errorf("expected ErrProviderFailed, got %v", gotErr)
	}

	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q != nil && q.ChatRequests != 0 {
		t.Errorf("quota should not be incremented on failure, got %d", q.ChatRequests)
	}
}
