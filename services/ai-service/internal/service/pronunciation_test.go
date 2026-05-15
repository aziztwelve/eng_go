package service

import (
	"context"
	"errors"
	"testing"

	"github.com/elearning/ai-service/internal/providers"
)

func TestScorePronunciation_Perfect(t *testing.T) {
	score, words, _ := scorePronunciation("Hello world", "hello world")
	if score < 0.99 {
		t.Errorf("expected near-perfect score, got %v", score)
	}
	if len(words) != 2 {
		t.Errorf("expected 2 word_scores, got %d", len(words))
	}
}

func TestScorePronunciation_PartialMatch(t *testing.T) {
	score, _, _ := scorePronunciation("hello world", "hello word")
	if score < 0.5 || score > 0.99 {
		t.Errorf("expected partial score [0.5, 0.99], got %v", score)
	}
}

func TestScorePronunciation_Garbage(t *testing.T) {
	score, _, fb := scorePronunciation("buenos dias", "x x x")
	if score > 0.5 {
		t.Errorf("garbage transcription should score low, got %v", score)
	}
	if fb == "" {
		t.Error("expected feedback string")
	}
}

func TestScorePronunciation_PunctuationNormalized(t *testing.T) {
	// Punctuation/case must be ignored.
	score, _, _ := scorePronunciation("Hola, ¿cómo estás?", "hola como estas")
	if score < 0.85 {
		t.Errorf("normalized perfect-ish match scored too low: %v", score)
	}
}

func TestScorePronunciation_EmptyTarget(t *testing.T) {
	score, _, fb := scorePronunciation("", "anything")
	if score != 0 {
		t.Errorf("empty target → 0 score, got %v", score)
	}
	if fb == "" {
		t.Error("expected feedback for empty target")
	}
}

func TestCheckPronunciation_RequiresAudio(t *testing.T) {
	h := newHarness()
	_, err := h.svc.CheckPronunciation(context.Background(), CheckPronunciationInput{
		UserID: "u1", TargetText: "hello",
	})
	if !errors.Is(err, ErrInvalidArgument) {
		t.Errorf("expected ErrInvalidArgument, got %v", err)
	}
}

func TestCheckPronunciation_HappyPath(t *testing.T) {
	h := newHarness()
	h.provider.stt = func(_ []byte, _ providers.TranscribeOptions) (*providers.TranscribeResponse, error) {
		return &providers.TranscribeResponse{Text: "hello world", Confidence: 0.95, CostUSD: 0.001}, nil
	}
	attempt, err := h.svc.CheckPronunciation(context.Background(), CheckPronunciationInput{
		UserID: "u1", TargetText: "hello world",
		Audio: bytesPattern(1024 * 4), AudioMime: "audio/mp3", Language: "en",
	})
	if err != nil {
		t.Fatalf("CheckPronunciation: %v", err)
	}
	if attempt.AccuracyScore < 0.99 {
		t.Errorf("expected near-perfect, got %v", attempt.AccuracyScore)
	}
	if len(attempt.WordScores) != 2 {
		t.Errorf("expected 2 word scores")
	}
}

func bytesPattern(n int) []byte {
	out := make([]byte, n)
	for i := range out {
		out[i] = byte(i % 256)
	}
	return out
}
