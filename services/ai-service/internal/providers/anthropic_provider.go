package providers

import (
	"bufio"
	"bytes"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"io"
	"net/http"
	"strings"
	"time"
)

// AnthropicProvider — реализация AIProvider поверх Anthropic Messages API.
//
// Минимальный HTTP-клиент без SDK — Anthropic API простой, и мы используем
// только Chat (Transcribe/SynthesizeTTS Anthropic не предоставляет —
// возвращают ErrUnsupported).
//
// Гибридная стратегия (5.32): если в качестве target_language идёт `ru`,
// service-слой направляет на anthropic для лучшего качества русского;
// остальные языки — OpenAI mini.
type AnthropicProvider struct {
	apiKey       string
	baseURL      string
	apiVersion   string
	httpClient   *http.Client
	defaultModel string
}

// AnthropicConfig — параметры конструктора.
type AnthropicConfig struct {
	APIKey       string
	BaseURL      string // override, default https://api.anthropic.com
	APIVersion   string // default "2023-06-01"
	DefaultModel string // default claude-3-5-haiku-latest
	HTTPClient   *http.Client
}

// NewAnthropicProvider — конструктор. Возвращает ошибку если APIKey пустой.
func NewAnthropicProvider(cfg AnthropicConfig) (*AnthropicProvider, error) {
	if cfg.APIKey == "" {
		return nil, errors.New("anthropic: APIKey is required")
	}
	baseURL := cfg.BaseURL
	if baseURL == "" {
		baseURL = "https://api.anthropic.com"
	}
	version := cfg.APIVersion
	if version == "" {
		version = "2023-06-01"
	}
	model := cfg.DefaultModel
	if model == "" {
		model = "claude-3-5-haiku-latest"
	}
	httpCli := cfg.HTTPClient
	if httpCli == nil {
		httpCli = &http.Client{Timeout: 60 * time.Second}
	}
	return &AnthropicProvider{
		apiKey:       cfg.APIKey,
		baseURL:      strings.TrimRight(baseURL, "/"),
		apiVersion:   version,
		httpClient:   httpCli,
		defaultModel: model,
	}, nil
}

// Name — "anthropic".
func (p *AnthropicProvider) Name() string { return "anthropic" }

// anthropicMessage — формат API.
type anthropicMessage struct {
	Role    string `json:"role"`
	Content string `json:"content"`
}

// anthropicRequest — Messages API request payload.
type anthropicRequest struct {
	Model       string             `json:"model"`
	System      string             `json:"system,omitempty"`
	Messages    []anthropicMessage `json:"messages"`
	MaxTokens   int                `json:"max_tokens"`
	Temperature float64            `json:"temperature,omitempty"`
}

// anthropicResponse — Messages API response.
type anthropicResponse struct {
	Content []struct {
		Type string `json:"type"`
		Text string `json:"text"`
	} `json:"content"`
	Usage struct {
		InputTokens  int `json:"input_tokens"`
		OutputTokens int `json:"output_tokens"`
	} `json:"usage"`
	Model string `json:"model"`
	Error *struct {
		Type    string `json:"type"`
		Message string `json:"message"`
	} `json:"error,omitempty"`
}

// Chat — Anthropic Messages endpoint.
//
// Anthropic не имеет нативного "json mode" (как OpenAI response_format).
// При JSONOutput=true приклеиваем явный suffix к system-prompt'у:
// «Respond with VALID JSON only.». Service-слой уже умеет fallback'нуть
// если parse не удался.
func (p *AnthropicProvider) Chat(ctx context.Context, messages []PromptMessage, opts ChatOptions) (*ChatResponse, error) {
	if len(messages) == 0 {
		return nil, fmt.Errorf("anthropic: messages must not be empty")
	}

	model := opts.Model
	if model == "" {
		model = p.defaultModel
	}

	// Anthropic API: system отдельным полем, остальные — в messages.
	var systemContent strings.Builder
	apiMessages := make([]anthropicMessage, 0, len(messages))
	for _, m := range messages {
		switch m.Role {
		case "system":
			if systemContent.Len() > 0 {
				systemContent.WriteString("\n\n")
			}
			systemContent.WriteString(m.Content)
		case "assistant", "user":
			apiMessages = append(apiMessages, anthropicMessage{
				Role:    m.Role,
				Content: m.Content,
			})
		default:
			apiMessages = append(apiMessages, anthropicMessage{
				Role:    "user",
				Content: m.Content,
			})
		}
	}

	if opts.JSONOutput {
		if systemContent.Len() > 0 {
			systemContent.WriteString("\n\n")
		}
		systemContent.WriteString("Respond with VALID JSON only — no prose, no markdown fences.")
	}

	reqBody := anthropicRequest{
		Model:       model,
		System:      systemContent.String(),
		Messages:    apiMessages,
		MaxTokens:   maxTokensOrDefault(opts.MaxTokens),
		Temperature: temperatureOrDefault(opts.Temperature),
	}
	body, err := json.Marshal(reqBody)
	if err != nil {
		return nil, fmt.Errorf("anthropic: marshal: %w", err)
	}

	httpReq, err := http.NewRequestWithContext(ctx, http.MethodPost, p.baseURL+"/v1/messages", bytes.NewReader(body))
	if err != nil {
		return nil, fmt.Errorf("anthropic: new request: %w", err)
	}
	httpReq.Header.Set("Content-Type", "application/json")
	httpReq.Header.Set("x-api-key", p.apiKey)
	httpReq.Header.Set("anthropic-version", p.apiVersion)

	resp, err := p.httpClient.Do(httpReq)
	if err != nil {
		return nil, fmt.Errorf("anthropic: http: %w", err)
	}
	defer resp.Body.Close()
	respBytes, err := io.ReadAll(resp.Body)
	if err != nil {
		return nil, fmt.Errorf("anthropic: read body: %w", err)
	}

	var parsed anthropicResponse
	if err := json.Unmarshal(respBytes, &parsed); err != nil {
		return nil, fmt.Errorf("anthropic: parse: %w (body=%s)", err, truncate(string(respBytes), 300))
	}
	if resp.StatusCode >= 400 {
		if parsed.Error != nil {
			return nil, fmt.Errorf("anthropic: %s (%s): %s", parsed.Error.Type, http.StatusText(resp.StatusCode), parsed.Error.Message)
		}
		return nil, fmt.Errorf("anthropic: http %d: %s", resp.StatusCode, truncate(string(respBytes), 300))
	}

	var content strings.Builder
	for _, c := range parsed.Content {
		if c.Type == "text" {
			content.WriteString(c.Text)
		}
	}

	in := int32(parsed.Usage.InputTokens)
	out := int32(parsed.Usage.OutputTokens)
	total := in + out

	return &ChatResponse{
		Content:    content.String(),
		TokensUsed: total,
		CostUSD:    estimateCost(model, in, out),
		Model:      model,
	}, nil
}

// ChatStream — native SSE streaming через Anthropic Messages API
// (`stream: true`). Phase 5.27.1.
//
// Anthropic SSE event types (https://docs.anthropic.com/en/api/messages-streaming):
//   - message_start         → message metadata (usage.input_tokens)
//   - content_block_start   → новый content block
//   - content_block_delta   → delta.type="text_delta", delta.text — текст
//   - content_block_stop    → конец блока
//   - message_delta         → финальный usage (output_tokens)
//   - message_stop          → конец потока
//   - error                 → ошибка mid-stream
//
// Для streaming используем JSONOutput=false независимо от opts (валидный JSON
// в потоке ивентов гарантировать нельзя; service-слой использует ChatStream
// только для plain text reply).
func (p *AnthropicProvider) ChatStream(ctx context.Context, messages []PromptMessage, opts ChatOptions) (<-chan ChatStreamChunk, error) {
	if len(messages) == 0 {
		return nil, fmt.Errorf("anthropic: messages must not be empty")
	}

	model := opts.Model
	if model == "" {
		model = p.defaultModel
	}

	var systemContent strings.Builder
	apiMessages := make([]anthropicMessage, 0, len(messages))
	for _, m := range messages {
		switch m.Role {
		case "system":
			if systemContent.Len() > 0 {
				systemContent.WriteString("\n\n")
			}
			systemContent.WriteString(m.Content)
		case "assistant", "user":
			apiMessages = append(apiMessages, anthropicMessage{Role: m.Role, Content: m.Content})
		default:
			apiMessages = append(apiMessages, anthropicMessage{Role: "user", Content: m.Content})
		}
	}

	reqBody := struct {
		anthropicRequest
		Stream bool `json:"stream"`
	}{
		anthropicRequest: anthropicRequest{
			Model:       model,
			System:      systemContent.String(),
			Messages:    apiMessages,
			MaxTokens:   maxTokensOrDefault(opts.MaxTokens),
			Temperature: temperatureOrDefault(opts.Temperature),
		},
		Stream: true,
	}
	body, err := json.Marshal(reqBody)
	if err != nil {
		return nil, fmt.Errorf("anthropic stream: marshal: %w", err)
	}

	httpReq, err := http.NewRequestWithContext(ctx, http.MethodPost, p.baseURL+"/v1/messages", bytes.NewReader(body))
	if err != nil {
		return nil, fmt.Errorf("anthropic stream: new request: %w", err)
	}
	httpReq.Header.Set("Content-Type", "application/json")
	httpReq.Header.Set("Accept", "text/event-stream")
	httpReq.Header.Set("x-api-key", p.apiKey)
	httpReq.Header.Set("anthropic-version", p.apiVersion)

	resp, err := p.httpClient.Do(httpReq)
	if err != nil {
		return nil, fmt.Errorf("anthropic stream: http: %w", err)
	}
	if resp.StatusCode >= 400 {
		respBytes, _ := io.ReadAll(resp.Body)
		_ = resp.Body.Close()
		return nil, fmt.Errorf("anthropic stream: http %d: %s", resp.StatusCode, truncate(string(respBytes), 300))
	}

	out := make(chan ChatStreamChunk, 16)
	go func() {
		defer close(out)
		defer resp.Body.Close()

		var (
			inputTokens  int32
			outputTokens int32
		)
		scanner := bufio.NewScanner(resp.Body)
		// Anthropic event'ы могут быть длинными; увеличим buffer до 1 MB.
		scanner.Buffer(make([]byte, 0, 64*1024), 1024*1024)

		var currentEvent string
		for scanner.Scan() {
			select {
			case <-ctx.Done():
				out <- ChatStreamChunk{Err: ctx.Err()}
				return
			default:
			}
			line := scanner.Text()
			if line == "" {
				currentEvent = ""
				continue
			}
			if strings.HasPrefix(line, "event: ") {
				currentEvent = strings.TrimPrefix(line, "event: ")
				continue
			}
			if !strings.HasPrefix(line, "data: ") {
				continue
			}
			data := strings.TrimPrefix(line, "data: ")
			if data == "[DONE]" {
				break
			}

			switch currentEvent {
			case "message_start":
				var ms struct {
					Message struct {
						Usage struct {
							InputTokens int `json:"input_tokens"`
						} `json:"usage"`
					} `json:"message"`
				}
				if err := json.Unmarshal([]byte(data), &ms); err == nil {
					inputTokens = int32(ms.Message.Usage.InputTokens)
				}
			case "content_block_delta":
				var cbd struct {
					Delta struct {
						Type string `json:"type"`
						Text string `json:"text"`
					} `json:"delta"`
				}
				if err := json.Unmarshal([]byte(data), &cbd); err == nil && cbd.Delta.Type == "text_delta" && cbd.Delta.Text != "" {
					out <- ChatStreamChunk{Delta: cbd.Delta.Text}
				}
			case "message_delta":
				var md struct {
					Usage struct {
						OutputTokens int `json:"output_tokens"`
					} `json:"usage"`
				}
				if err := json.Unmarshal([]byte(data), &md); err == nil {
					outputTokens = int32(md.Usage.OutputTokens)
				}
			case "error":
				var ae struct {
					Error struct {
						Type    string `json:"type"`
						Message string `json:"message"`
					} `json:"error"`
				}
				if err := json.Unmarshal([]byte(data), &ae); err == nil {
					out <- ChatStreamChunk{Err: fmt.Errorf("anthropic stream: %s: %s", ae.Error.Type, ae.Error.Message)}
					return
				}
				out <- ChatStreamChunk{Err: fmt.Errorf("anthropic stream: error event: %s", truncate(data, 200))}
				return
			}
		}
		if err := scanner.Err(); err != nil {
			out <- ChatStreamChunk{Err: fmt.Errorf("anthropic stream: scanner: %w", err)}
			return
		}

		out <- ChatStreamChunk{
			Done:       true,
			TokensUsed: inputTokens + outputTokens,
			CostUSD:    estimateCost(model, inputTokens, outputTokens),
		}
	}()
	return out, nil
}

// Transcribe — Anthropic не предоставляет STT.
func (p *AnthropicProvider) Transcribe(_ context.Context, _ []byte, _ TranscribeOptions) (*TranscribeResponse, error) {
	return nil, fmt.Errorf("anthropic transcribe: %w", ErrUnsupported)
}

// SynthesizeTTS — Anthropic не предоставляет TTS.
func (p *AnthropicProvider) SynthesizeTTS(_ context.Context, _ string, _ TTSOptions) (*TTSResponse, error) {
	return nil, fmt.Errorf("anthropic tts: %w", ErrUnsupported)
}

func truncate(s string, max int) string {
	if len(s) <= max {
		return s
	}
	return s[:max] + "..."
}
