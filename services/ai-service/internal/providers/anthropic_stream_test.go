package providers

import (
	"context"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
	"time"
)

// Mock SSE server, имитирующий Anthropic Messages API streaming response.
func newAnthropicSSEServer(t *testing.T, events []string) *httptest.Server {
	t.Helper()
	return httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "text/event-stream")
		w.Header().Set("Cache-Control", "no-cache")
		w.WriteHeader(http.StatusOK)
		flusher, _ := w.(http.Flusher)
		for _, ev := range events {
			_, _ = w.Write([]byte(ev))
			if flusher != nil {
				flusher.Flush()
			}
		}
	}))
}

func TestAnthropicChatStream_TextDeltas(t *testing.T) {
	events := []string{
		"event: message_start\ndata: {\"type\":\"message_start\",\"message\":{\"id\":\"m1\",\"usage\":{\"input_tokens\":12}}}\n\n",
		"event: content_block_start\ndata: {\"type\":\"content_block_start\",\"index\":0,\"content_block\":{\"type\":\"text\",\"text\":\"\"}}\n\n",
		"event: content_block_delta\ndata: {\"type\":\"content_block_delta\",\"index\":0,\"delta\":{\"type\":\"text_delta\",\"text\":\"Hello \"}}\n\n",
		"event: content_block_delta\ndata: {\"type\":\"content_block_delta\",\"index\":0,\"delta\":{\"type\":\"text_delta\",\"text\":\"world!\"}}\n\n",
		"event: content_block_stop\ndata: {\"type\":\"content_block_stop\",\"index\":0}\n\n",
		"event: message_delta\ndata: {\"type\":\"message_delta\",\"delta\":{\"stop_reason\":\"end_turn\"},\"usage\":{\"output_tokens\":7}}\n\n",
		"event: message_stop\ndata: {\"type\":\"message_stop\"}\n\n",
	}
	srv := newAnthropicSSEServer(t, events)
	defer srv.Close()

	p, err := NewAnthropicProvider(AnthropicConfig{
		APIKey:       "test-key",
		BaseURL:      srv.URL,
		DefaultModel: "claude-test",
		HTTPClient:   &http.Client{Timeout: 5 * time.Second},
	})
	if err != nil {
		t.Fatalf("provider: %v", err)
	}

	ctx, cancel := context.WithTimeout(context.Background(), 5*time.Second)
	defer cancel()

	ch, err := p.ChatStream(ctx, []PromptMessage{{Role: "user", Content: "Hi"}}, ChatOptions{})
	if err != nil {
		t.Fatalf("ChatStream: %v", err)
	}

	var text strings.Builder
	var done bool
	var tokens int32
	for chunk := range ch {
		if chunk.Err != nil {
			t.Fatalf("stream error: %v", chunk.Err)
		}
		if chunk.Done {
			done = true
			tokens = chunk.TokensUsed
			continue
		}
		text.WriteString(chunk.Delta)
	}
	if !done {
		t.Errorf("expected Done chunk")
	}
	if got := text.String(); got != "Hello world!" {
		t.Errorf("text mismatch: %q", got)
	}
	if tokens != 12+7 {
		t.Errorf("expected tokens=19, got %d", tokens)
	}
}

func TestAnthropicChatStream_ErrorEvent(t *testing.T) {
	events := []string{
		"event: message_start\ndata: {\"type\":\"message_start\",\"message\":{\"id\":\"m1\",\"usage\":{\"input_tokens\":5}}}\n\n",
		"event: error\ndata: {\"type\":\"error\",\"error\":{\"type\":\"overloaded_error\",\"message\":\"Service overloaded\"}}\n\n",
	}
	srv := newAnthropicSSEServer(t, events)
	defer srv.Close()

	p, _ := NewAnthropicProvider(AnthropicConfig{
		APIKey: "k", BaseURL: srv.URL, DefaultModel: "claude-test",
	})

	ch, err := p.ChatStream(context.Background(), []PromptMessage{{Role: "user", Content: "Hi"}}, ChatOptions{})
	if err != nil {
		t.Fatalf("ChatStream: %v", err)
	}

	var gotErr bool
	var gotDone bool
	for c := range ch {
		if c.Err != nil {
			gotErr = true
			if !strings.Contains(c.Err.Error(), "overloaded_error") {
				t.Errorf("error message lost: %v", c.Err)
			}
		}
		if c.Done {
			gotDone = true
		}
	}
	if !gotErr {
		t.Errorf("expected error chunk")
	}
	if gotDone {
		t.Errorf("Done should NOT be emitted after error event")
	}
}

func TestAnthropicChatStream_HTTPError(t *testing.T) {
	srv := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		w.WriteHeader(http.StatusUnauthorized)
		_, _ = w.Write([]byte(`{"type":"error","error":{"type":"authentication_error","message":"invalid key"}}`))
	}))
	defer srv.Close()

	p, _ := NewAnthropicProvider(AnthropicConfig{APIKey: "bad", BaseURL: srv.URL})
	_, err := p.ChatStream(context.Background(), []PromptMessage{{Role: "user", Content: "Hi"}}, ChatOptions{})
	if err == nil || !strings.Contains(err.Error(), "401") {
		t.Errorf("expected 401 error, got %v", err)
	}
}
