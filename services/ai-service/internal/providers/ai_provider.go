// Package providers — абстракция AI-бэкенда.
//
// Любой реальный backend (OpenAI / Anthropic / локальная модель)
// реализует AIProvider. На MVP используется mock_provider.go,
// который возвращает реалистичные детерминированные ответы.
package providers

import (
	"context"
	"errors"
)

// PromptMessage — одно сообщение в chat-prompt'е.
type PromptMessage struct {
	Role    string // "system" | "user" | "assistant"
	Content string
}

// ChatOptions — настройки одиночного chat-запроса.
type ChatOptions struct {
	Model       string  // gpt-4o-mini | gpt-4o | claude-haiku
	Temperature float64 // default 0.7
	MaxTokens   int     // default 500
	JSONOutput  bool    // если true — провайдер форсит JSON-output (response_format)
}

// ChatResponse — ответ AI на chat-запрос.
type ChatResponse struct {
	Content    string
	TokensUsed int32
	CostUSD    float64
	Model      string
}

// TranscribeOptions — настройки speech-to-text.
type TranscribeOptions struct {
	Language  string
	AudioMime string
}

// TranscribeResponse — результат STT.
type TranscribeResponse struct {
	Text       string
	Confidence float64 // 0.0..1.0
	CostUSD    float64
}

// TTSOptions — настройки text-to-speech.
type TTSOptions struct {
	Voice    string // provider-specific
	Language string
}

// TTSResponse — результат TTS.
type TTSResponse struct {
	AudioURL   string
	DurationMs int32
	CostUSD    float64
}

// AIProvider — единый интерфейс backend-провайдера.
type AIProvider interface {
	// Name — идентификатор провайдера (openai | anthropic | mock).
	Name() string
	// Chat — основной endpoint: даёт messages + options, получает reply.
	Chat(ctx context.Context, messages []PromptMessage, opts ChatOptions) (*ChatResponse, error)
	// Transcribe — STT для pronunciation check.
	Transcribe(ctx context.Context, audio []byte, opts TranscribeOptions) (*TranscribeResponse, error)
	// SynthesizeTTS — TTS для assistant-replies в conversation.
	SynthesizeTTS(ctx context.Context, text string, opts TTSOptions) (*TTSResponse, error)
}

// ErrUnsupported — провайдер не реализует функцию (например, mock без TTS).
var ErrUnsupported = errors.New("operation not supported by provider")
