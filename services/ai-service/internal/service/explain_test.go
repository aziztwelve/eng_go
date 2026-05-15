package service

import (
	"context"
	"errors"
	"testing"

	"github.com/elearning/ai-service/internal/providers"
)

func TestExplain_CacheHit(t *testing.T) {
	h := newHarness()

	calls := 0
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		calls++
		return &providers.ChatResponse{
			Content: `{"explanation":"because grammar rule X"}`,
			TokensUsed: 30, CostUSD: 0.0001,
		}, nil
	}

	in := ExplainInput{
		UserID:          "u1",
		StepID:          "step-1",
		IncorrectAnswer: "i goes",
		CorrectAnswer:   "I go",
	}

	r1, err := h.svc.ExplainMistake(context.Background(), in)
	if err != nil {
		t.Fatalf("first call: %v", err)
	}
	if r1.Cached {
		t.Error("first call must not be cached")
	}
	if r1.Explanation == "" {
		t.Error("expected non-empty explanation")
	}

	r2, err := h.svc.ExplainMistake(context.Background(), in)
	if err != nil {
		t.Fatalf("second call: %v", err)
	}
	if !r2.Cached {
		t.Error("second call must be cached")
	}
	if r2.Explanation != r1.Explanation {
		t.Errorf("cached explanation should match original: %q vs %q", r2.Explanation, r1.Explanation)
	}
	if calls != 1 {
		t.Errorf("provider called %d times; expected 1 (cached on second)", calls)
	}
}

func TestExplain_DifferentAnswers_NoCacheCollision(t *testing.T) {
	h := newHarness()
	calls := 0
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		calls++
		return &providers.ChatResponse{Content: `{"explanation":"x"}`, TokensUsed: 30}, nil
	}

	_, _ = h.svc.ExplainMistake(context.Background(), ExplainInput{
		UserID: "u1", StepID: "s1", IncorrectAnswer: "answer1", CorrectAnswer: "ok",
	})
	_, _ = h.svc.ExplainMistake(context.Background(), ExplainInput{
		UserID: "u1", StepID: "s1", IncorrectAnswer: "answer2", CorrectAnswer: "ok",
	})
	if calls != 2 {
		t.Errorf("expected 2 provider calls for different incorrect answers, got %d", calls)
	}
}

func TestExplain_NoStepID_NoCaching(t *testing.T) {
	h := newHarness()
	calls := 0
	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		calls++
		return &providers.ChatResponse{Content: `{"explanation":"x"}`, TokensUsed: 1}, nil
	}
	in := ExplainInput{UserID: "u1", IncorrectAnswer: "wrong", CorrectAnswer: "right"}
	_, _ = h.svc.ExplainMistake(context.Background(), in)
	_, _ = h.svc.ExplainMistake(context.Background(), in)
	if calls != 2 {
		t.Errorf("without step_id every call must hit provider, got %d", calls)
	}
}

func TestExplain_QuotaExceeded(t *testing.T) {
	h := newHarness() // chat limit 3
	for i := 0; i < 3; i++ {
		_, err := h.svc.ExplainMistake(context.Background(), ExplainInput{
			UserID: "u1", StepID: "step-X", IncorrectAnswer: "a" + string(rune('0'+i)), CorrectAnswer: "ok",
		})
		if err != nil {
			t.Fatalf("call %d: %v", i, err)
		}
	}
	_, err := h.svc.ExplainMistake(context.Background(), ExplainInput{
		UserID: "u1", StepID: "step-X", IncorrectAnswer: "anew", CorrectAnswer: "ok",
	})
	if !errors.Is(err, ErrQuotaExceeded) {
		t.Errorf("expected ErrQuotaExceeded, got %v", err)
	}
}

func TestExplain_RequiresUserAndAnswer(t *testing.T) {
	h := newHarness()
	if _, err := h.svc.ExplainMistake(context.Background(), ExplainInput{IncorrectAnswer: "x"}); !errors.Is(err, ErrInvalidArgument) {
		t.Error("expected ErrInvalidArgument for missing user_id")
	}
	if _, err := h.svc.ExplainMistake(context.Background(), ExplainInput{UserID: "u1"}); !errors.Is(err, ErrInvalidArgument) {
		t.Error("expected ErrInvalidArgument for empty incorrect_answer")
	}
}
