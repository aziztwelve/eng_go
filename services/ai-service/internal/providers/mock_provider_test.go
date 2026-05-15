package providers

import (
	"context"
	"encoding/json"
	"strings"
	"testing"
)

func TestMockProvider_Chat_PlainText(t *testing.T) {
	p := NewMockProvider()
	resp, err := p.Chat(context.Background(),
		[]PromptMessage{{Role: "user", Content: "hello"}},
		ChatOptions{Model: "mock-model"},
	)
	if err != nil {
		t.Fatalf("Chat: %v", err)
	}
	if resp.Content == "" {
		t.Fatal("expected non-empty content")
	}
	if !strings.Contains(resp.Content, "hello") {
		t.Errorf("plain-text reply should echo user message, got %q", resp.Content)
	}
	if resp.TokensUsed == 0 {
		t.Error("expected tokens > 0")
	}
	if resp.CostUSD < 0 {
		t.Errorf("cost must not be negative: %v", resp.CostUSD)
	}
}

func TestMockProvider_Chat_ConversationJSON(t *testing.T) {
	p := NewMockProvider()
	resp, err := p.Chat(context.Background(),
		[]PromptMessage{
			{Role: "system", Content: "You are a friendly language tutor for conversation practice. Respond JSON."},
			{Role: "user", Content: "Hola"},
		},
		ChatOptions{Model: "mock", JSONOutput: true},
	)
	if err != nil {
		t.Fatalf("Chat: %v", err)
	}
	var parsed struct {
		Reply       string `json:"reply"`
		Translation string `json:"translation"`
	}
	if err := json.Unmarshal([]byte(resp.Content), &parsed); err != nil {
		t.Fatalf("response is not valid JSON: %v", err)
	}
	if parsed.Reply == "" {
		t.Error("expected non-empty reply")
	}
	if parsed.Translation == "" {
		t.Error("expected non-empty translation")
	}
}

func TestMockProvider_Chat_DetectsCorrections(t *testing.T) {
	p := NewMockProvider()
	resp, err := p.Chat(context.Background(),
		[]PromptMessage{
			{Role: "system", Content: "language tutor"},
			{Role: "user", Content: "I goes to school"},
		},
		ChatOptions{JSONOutput: true},
	)
	if err != nil {
		t.Fatalf("Chat: %v", err)
	}
	var parsed struct {
		Corrections []map[string]string `json:"corrections"`
	}
	_ = json.Unmarshal([]byte(resp.Content), &parsed)
	if len(parsed.Corrections) == 0 {
		t.Error("expected mock to detect 'I goes' as a typical mistake")
	}
}

func TestMockProvider_Chat_WritingJSON(t *testing.T) {
	p := NewMockProvider()
	resp, err := p.Chat(context.Background(),
		[]PromptMessage{
			{Role: "system", Content: "Evaluate this writing exercise. Output JSON."},
			{Role: "user", Content: "I went to the store yesterday and bought some apples."},
		},
		ChatOptions{JSONOutput: true},
	)
	if err != nil {
		t.Fatalf("Chat: %v", err)
	}
	var parsed struct {
		OverallScore int                 `json:"overall_score"`
		GrammarScore int                 `json:"grammar_score"`
		Feedback     []map[string]string `json:"feedback"`
	}
	if err := json.Unmarshal([]byte(resp.Content), &parsed); err != nil {
		t.Fatalf("not valid JSON: %v", err)
	}
	if parsed.OverallScore <= 0 || parsed.OverallScore > 100 {
		t.Errorf("score out of range: %d", parsed.OverallScore)
	}
	if len(parsed.Feedback) == 0 {
		t.Error("expected non-empty feedback")
	}
}

func TestMockProvider_Transcribe(t *testing.T) {
	p := NewMockProvider()
	audio := bytesPattern(2048)
	resp, err := p.Transcribe(context.Background(), audio, TranscribeOptions{Language: "en"})
	if err != nil {
		t.Fatalf("Transcribe: %v", err)
	}
	if resp.Text == "" {
		t.Error("expected non-empty transcription")
	}
	if resp.Confidence < 0.5 || resp.Confidence > 1.0 {
		t.Errorf("confidence out of range: %v", resp.Confidence)
	}
}

func TestMockProvider_TranscribeRejectsEmpty(t *testing.T) {
	p := NewMockProvider()
	_, err := p.Transcribe(context.Background(), nil, TranscribeOptions{})
	if err == nil {
		t.Error("expected error on empty audio")
	}
}

func TestMockProvider_TTS_Deterministic(t *testing.T) {
	p := NewMockProvider()
	r1, err := p.SynthesizeTTS(context.Background(), "hello world", TTSOptions{Voice: "alloy", Language: "en"})
	if err != nil {
		t.Fatalf("TTS: %v", err)
	}
	r2, _ := p.SynthesizeTTS(context.Background(), "hello world", TTSOptions{Voice: "alloy", Language: "en"})
	if r1.AudioURL != r2.AudioURL {
		t.Error("expected deterministic mock TTS URL for same input")
	}
	if r1.DurationMs == 0 {
		t.Error("expected non-zero duration")
	}
}

func TestMockProvider_Cost(t *testing.T) {
	cases := []struct {
		model           string
		minInPerToken  float64
		maxInPerToken  float64
	}{
		{"gpt-4o-mini", 0.0000001, 0.0000005},
		{"gpt-4o", 0.000002, 0.000003},
		{"claude-haiku", 0.0000002, 0.0000003},
	}
	for _, tc := range cases {
		t.Run(tc.model, func(t *testing.T) {
			cost := estimateCost(tc.model, 1_000_000, 0)
			if cost < tc.minInPerToken*1_000_000 || cost > tc.maxInPerToken*1_000_000 {
				t.Errorf("cost for 1M input tokens %v out of expected band [%v..%v]", cost,
					tc.minInPerToken*1_000_000, tc.maxInPerToken*1_000_000)
			}
		})
	}
}

func bytesPattern(n int) []byte {
	out := make([]byte, n)
	for i := range out {
		out[i] = byte(i % 256)
	}
	return out
}
