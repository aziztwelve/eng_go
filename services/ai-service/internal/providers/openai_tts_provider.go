package providers

import (
	"bytes"
	"context"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"strings"
	"time"
)

// openAIVoices — voices accepted by the speech endpoint. Anything else (for
// example a Google voice name sent by an older client) falls back to the default.
var openAIVoices = map[string]bool{
	"alloy": true, "ash": true, "ballad": true, "coral": true, "echo": true,
	"fable": true, "nova": true, "onyx": true, "sage": true, "shimmer": true,
}

// OpenAITTSProvider is an inline TTSSynthesizer on top of OpenAI
// `POST /audio/speech`: it returns mp3 bytes straight to the caller and does
// not touch object storage, like GoogleTTSProvider (path A). That keeps the
// round trip short, which matters for voice chat where each sentence is
// synthesized separately.
type OpenAITTSProvider struct {
	apiKey       string
	baseURL      string
	model        string
	defaultVoice string
	http         *http.Client
}

// NewOpenAITTSProvider builds the synthesizer. An empty baseURL means the
// public OpenAI API; model is e.g. "tts-1" (low latency) or "gpt-4o-mini-tts".
func NewOpenAITTSProvider(apiKey, baseURL, model, defaultVoice string) *OpenAITTSProvider {
	if baseURL == "" {
		baseURL = "https://api.openai.com/v1"
	}
	if model == "" {
		model = "tts-1"
	}
	if !openAIVoices[defaultVoice] {
		defaultVoice = "alloy"
	}
	return &OpenAITTSProvider{
		apiKey:       apiKey,
		baseURL:      strings.TrimRight(baseURL, "/"),
		model:        model,
		defaultVoice: defaultVoice,
		http:         &http.Client{Timeout: 30 * time.Second},
	}
}

// Name implements TTSSynthesizer.
func (p *OpenAITTSProvider) Name() string { return "openai-tts" }

type openAISpeechRequest struct {
	Model          string `json:"model"`
	Input          string `json:"input"`
	Voice          string `json:"voice"`
	ResponseFormat string `json:"response_format"`
}

// Synthesize implements TTSSynthesizer.
func (p *OpenAITTSProvider) Synthesize(ctx context.Context, text string, opts TTSOptions) ([]byte, string, int32, error) {
	text = strings.TrimSpace(text)
	if text == "" {
		return nil, "", 0, fmt.Errorf("openai tts: text must not be empty")
	}
	voice := strings.ToLower(strings.TrimSpace(opts.Voice))
	if !openAIVoices[voice] {
		voice = p.defaultVoice
	}
	payload, err := json.Marshal(openAISpeechRequest{
		Model: p.model, Input: text, Voice: voice, ResponseFormat: "mp3",
	})
	if err != nil {
		return nil, "", 0, fmt.Errorf("openai tts: marshal: %w", err)
	}

	req, err := http.NewRequestWithContext(ctx, http.MethodPost, p.baseURL+"/audio/speech", bytes.NewReader(payload))
	if err != nil {
		return nil, "", 0, fmt.Errorf("openai tts: build request: %w", err)
	}
	req.Header.Set("Authorization", "Bearer "+p.apiKey)
	req.Header.Set("Content-Type", "application/json")

	resp, err := p.http.Do(req)
	if err != nil {
		return nil, "", 0, fmt.Errorf("openai tts: request: %w", err)
	}
	defer resp.Body.Close()

	body, err := io.ReadAll(io.LimitReader(resp.Body, 16<<20))
	if err != nil {
		return nil, "", 0, fmt.Errorf("openai tts: read body: %w", err)
	}
	if resp.StatusCode != http.StatusOK {
		msg := strings.TrimSpace(string(body))
		if len(msg) > 300 {
			msg = msg[:300]
		}
		return nil, "", 0, fmt.Errorf("openai tts: http %d: %s", resp.StatusCode, msg)
	}
	if len(body) == 0 {
		return nil, "", 0, fmt.Errorf("openai tts: empty audio")
	}
	// Rough speaking time: about 400 ms per word (same estimate as the Google path).
	durationMs := int32(len(strings.Fields(text)) * 400)
	return body, "audio/mpeg", durationMs, nil
}
