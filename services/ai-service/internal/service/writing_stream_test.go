package service

import (
	"context"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/elearning/ai-service/internal/providers"
)

// AssessWritingStream должен:
//  1. Сэмитить N delta-чанков (сырые JSON-токены) — для UI как
//     typing indicator;
//  2. Распарсить аккумулированный JSON и сэмитить Done со
//     структурированным WritingAssessment;
//  3. Сохранить assessment в БД (writingRepo);
//  4. Инкрементировать writing-квоту на 1.
func TestAssessWritingStream_FullFlow(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	const json = `{"overall_score":85,"grammar_score":80,"vocabulary_score":90,` +
		`"coherence_score":85,"style_score":85,"corrected_text":"My day was great.",` +
		`"feedback":[{"category":"grammar","message":"Use past simple","severity":"low"}]}`

	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return &providers.ChatResponse{
			Content: json, TokensUsed: 100, CostUSD: 0.001, Model: "test-heavy",
		}, nil
	}

	events, err := h.svc.AssessWritingStream(ctx, AssessWritingInput{
		UserID:         "u1",
		Prompt:         "Describe your day",
		UserText:       "My day were great",
		TargetLanguage: "en",
		UserLevel:      "B1",
	})
	if err != nil {
		t.Fatalf("stream setup: %v", err)
	}

	var (
		streamed strings.Builder
		gotErr   error
		gotDone  bool
	)
	for ev := range events {
		switch {
		case ev.Err != nil:
			gotErr = ev.Err
		case ev.Done != nil:
			gotDone = true
			if ev.Done.OverallScore != 85 {
				t.Errorf("overall_score: want 85, got %d", ev.Done.OverallScore)
			}
			if ev.Done.GrammarScore != 80 {
				t.Errorf("grammar_score: want 80, got %d", ev.Done.GrammarScore)
			}
			if ev.Done.CorrectedText != "My day was great." {
				t.Errorf("corrected_text: %q", ev.Done.CorrectedText)
			}
			if len(ev.Done.Feedback) != 1 {
				t.Errorf("feedback len: want 1, got %d", len(ev.Done.Feedback))
			}
		case ev.Delta != "":
			streamed.WriteString(ev.Delta)
		}
	}

	if gotErr != nil {
		t.Fatalf("unexpected error: %v", gotErr)
	}
	if !gotDone {
		t.Fatalf("expected Done event")
	}
	// Все delta'ы вместе должны давать исходный JSON.
	if streamed.String() != json {
		t.Errorf("streamed deltas != original JSON:\n  streamed=%q\n  full=%q",
			streamed.String(), json)
	}

	// Запись в writing-репозитории.
	rows, _, err := h.writing.ListByUser(ctx, "u1", 10, 0)
	if err != nil {
		t.Fatalf("list writing: %v", err)
	}
	if len(rows) != 1 {
		t.Errorf("expected 1 saved assessment, got %d", len(rows))
	}

	// Writing quota = 1.
	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q == nil || q.WritingChecks != 1 {
		t.Errorf("expected writing_checks=1, got %+v", q)
	}
}

// При ошибке провайдера: Err event, quota не инкрементится, ничего
// не сохраняется в writingRepo.
func TestAssessWritingStream_ProviderError(t *testing.T) {
	h := newHarness()
	ctx := context.Background()

	h.provider.chat = func(_ []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		return nil, errors.New("provider down")
	}

	events, err := h.svc.AssessWritingStream(ctx, AssessWritingInput{
		UserID:   "u1",
		UserText: "test",
	})
	if err != nil {
		t.Fatalf("setup: %v", err)
	}

	var gotErr error
	var gotDone bool
	for ev := range events {
		if ev.Err != nil {
			gotErr = ev.Err
		}
		if ev.Done != nil {
			gotDone = true
		}
	}
	if gotDone {
		t.Errorf("should not get Done on provider error")
	}
	if !errors.Is(gotErr, ErrProviderFailed) {
		t.Errorf("expected ErrProviderFailed, got %v", gotErr)
	}

	rows, _, _ := h.writing.ListByUser(ctx, "u1", 10, 0)
	if len(rows) != 0 {
		t.Errorf("expected 0 saved assessments on error, got %d", len(rows))
	}

	q, _ := h.quota.Get(ctx, "u1", time.Now().UTC())
	if q != nil && q.WritingChecks != 0 {
		t.Errorf("quota should not increment on failure, got %d", q.WritingChecks)
	}
}
