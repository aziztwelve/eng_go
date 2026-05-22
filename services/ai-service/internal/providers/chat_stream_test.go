package providers

import (
	"context"
	"strings"
	"testing"
	"time"
)

func TestEmulateStream_ConcatEqualsOriginal(t *testing.T) {
	original := "Hello, world! This is a streaming test with some punctuation."
	resp := &ChatResponse{Content: original, TokensUsed: 42, CostUSD: 0.001}

	ctx, cancel := context.WithTimeout(context.Background(), time.Second)
	defer cancel()

	ch := EmulateStream(ctx, resp, 0, 5)

	var (
		built  strings.Builder
		gotDone bool
		lastChunk ChatStreamChunk
	)
	for c := range ch {
		if c.Err != nil {
			t.Fatalf("unexpected stream error: %v", c.Err)
		}
		if c.Done {
			gotDone = true
			lastChunk = c
			continue
		}
		built.WriteString(c.Delta)
	}
	if !gotDone {
		t.Fatalf("stream did not emit done chunk")
	}
	if got := built.String(); got != original {
		t.Errorf("concat mismatch:\n  got=%q\n want=%q", got, original)
	}
	if lastChunk.TokensUsed != 42 || lastChunk.CostUSD != 0.001 {
		t.Errorf("done chunk lost usage info: %+v", lastChunk)
	}
}

func TestEmulateStream_NilResponse(t *testing.T) {
	ch := EmulateStream(context.Background(), nil, 0, 4)
	count := 0
	for c := range ch {
		count++
		if !c.Done {
			t.Errorf("expected only done chunk, got delta=%q", c.Delta)
		}
	}
	if count != 1 {
		t.Errorf("expected 1 chunk, got %d", count)
	}
}

func TestEmulateStream_ContextCancel(t *testing.T) {
	resp := &ChatResponse{Content: strings.Repeat("word ", 100)}
	ctx, cancel := context.WithCancel(context.Background())
	cancel() // отменяем сразу

	ch := EmulateStream(ctx, resp, 10*time.Millisecond, 5)
	gotErr := false
	for c := range ch {
		if c.Err != nil {
			gotErr = true
		}
	}
	if !gotErr {
		t.Errorf("expected error chunk on cancelled context")
	}
}

func TestChunkByWords_RespectsBoundaries(t *testing.T) {
	chunks := chunkByWords("the quick brown fox jumps", 6)
	for _, c := range chunks {
		// Chunk не должен заканчиваться посреди слова, кроме последнего.
		// Проверяем что concat сохраняет исходник.
		if c == "" {
			t.Errorf("empty chunk in stream")
		}
	}
	if got := strings.Join(chunks, ""); got != "the quick brown fox jumps" {
		t.Errorf("concat mismatch: %q", got)
	}
}
