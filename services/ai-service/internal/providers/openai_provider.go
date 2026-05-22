package providers

import (
	"bytes"
	"context"
	"crypto/md5"
	"encoding/hex"
	"errors"
	"fmt"
	"io"
	"strings"

	openai "github.com/sashabaranov/go-openai"
)

// OpenAIProvider — реализация AIProvider поверх OpenAI API
// через github.com/sashabaranov/go-openai.
//
// Phase 5.X-real:
//   - Chat: chat/completions с response_format=json_object при JSONOutput.
//   - Transcribe: Whisper-1 (audio/transcriptions).
//   - SynthesizeTTS: tts-1 / tts-1-hd, результат загружается через
//     AudioUploader (на MVP — Noop с фейковым URL).
//
// Стоимость считается по ChatResponse.Usage (точный счёт от API), а не
// по нашей эвристике estimate*.
type OpenAIProvider struct {
	client      *openai.Client
	tts         string // "tts-1" | "tts-1-hd"
	ttsVoice    string // default "alloy"
	whisper     string // "whisper-1"
	uploader    AudioUploader
	defaultChat string
	defaultHeavy string
}

// OpenAIConfig — параметры конструктора.
type OpenAIConfig struct {
	// APIKey — обязательно.
	APIKey string
	// BaseURL — override для proxy / Azure / self-hosted. Пусто → дефолт OpenAI.
	BaseURL string
	// Organization — опционально.
	Organization string
	// TTSModel — "tts-1" (быстрая, дешевле) | "tts-1-hd" (качественнее).
	TTSModel string
	// TTSVoice — alloy | echo | fable | onyx | nova | shimmer. Default alloy.
	TTSVoice string
	// WhisperModel — обычно "whisper-1".
	WhisperModel string
	// Uploader — куда складывать TTS audio bytes. Если nil — Noop.
	Uploader AudioUploader
	// DefaultModelChat — для случая если ChatOptions.Model пустой.
	DefaultModelChat string
	// DefaultModelHeavy — фолбэк для тяжёлых задач (writing assessment).
	DefaultModelHeavy string
}

// NewOpenAIProvider — конструктор. Возвращает ошибку если APIKey пустой.
func NewOpenAIProvider(cfg OpenAIConfig) (*OpenAIProvider, error) {
	if cfg.APIKey == "" {
		return nil, errors.New("openai: APIKey is required")
	}
	clientCfg := openai.DefaultConfig(cfg.APIKey)
	if cfg.BaseURL != "" {
		clientCfg.BaseURL = cfg.BaseURL
	}
	if cfg.Organization != "" {
		clientCfg.OrgID = cfg.Organization
	}
	tts := cfg.TTSModel
	if tts == "" {
		tts = string(openai.TTSModel1)
	}
	voice := cfg.TTSVoice
	if voice == "" {
		voice = string(openai.VoiceAlloy)
	}
	whisper := cfg.WhisperModel
	if whisper == "" {
		whisper = openai.Whisper1
	}
	up := cfg.Uploader
	if up == nil {
		up = NewNoopAudioUploader("")
	}
	defaultChat := cfg.DefaultModelChat
	if defaultChat == "" {
		defaultChat = openai.GPT4oMini
	}
	defaultHeavy := cfg.DefaultModelHeavy
	if defaultHeavy == "" {
		defaultHeavy = openai.GPT4o
	}
	return &OpenAIProvider{
		client:       openai.NewClientWithConfig(clientCfg),
		tts:          tts,
		ttsVoice:     voice,
		whisper:      whisper,
		uploader:     up,
		defaultChat:  defaultChat,
		defaultHeavy: defaultHeavy,
	}, nil
}

// Name — "openai".
func (p *OpenAIProvider) Name() string { return "openai" }

// Chat — обёртка над chat/completions. При JSONOutput=true ставит
// response_format=json_object — модель форсированно вернёт валидный JSON.
//
// cost_usd считаем по фактическому usage (если API его вернул) либо
// по нашей эвристике estimate.
func (p *OpenAIProvider) Chat(ctx context.Context, messages []PromptMessage, opts ChatOptions) (*ChatResponse, error) {
	if len(messages) == 0 {
		return nil, fmt.Errorf("openai: messages must not be empty")
	}

	model := opts.Model
	if model == "" {
		model = p.defaultChat
	}

	chatMessages := make([]openai.ChatCompletionMessage, 0, len(messages))
	for _, m := range messages {
		chatMessages = append(chatMessages, openai.ChatCompletionMessage{
			Role:    mapRole(m.Role),
			Content: m.Content,
		})
	}

	req := openai.ChatCompletionRequest{
		Model:       model,
		Messages:    chatMessages,
		Temperature: float32(temperatureOrDefault(opts.Temperature)),
		MaxTokens:   maxTokensOrDefault(opts.MaxTokens),
	}
	if opts.JSONOutput {
		req.ResponseFormat = &openai.ChatCompletionResponseFormat{
			Type: openai.ChatCompletionResponseFormatTypeJSONObject,
		}
	}

	resp, err := p.client.CreateChatCompletion(ctx, req)
	if err != nil {
		return nil, fmt.Errorf("openai chat: %w", err)
	}
	if len(resp.Choices) == 0 {
		return nil, fmt.Errorf("openai chat: empty choices")
	}

	content := resp.Choices[0].Message.Content
	usage := resp.Usage
	in := int32(usage.PromptTokens)
	out := int32(usage.CompletionTokens)
	total := int32(usage.TotalTokens)
	if total == 0 {
		total = in + out
	}
	cost := estimateCost(model, in, out)

	return &ChatResponse{
		Content:    content,
		TokensUsed: total,
		CostUSD:    cost,
		Model:      model,
	}, nil
}

// ChatStream — native server-streaming через OpenAI SSE
// (`stream=true` в chat/completions). Возвращает канал chunk'ов:
//   - delta — кусочки content по мере прихода (типично — token/слово);
//   - финальный chunk Done=true с usage.
// При ошибке середины потока — chunk с Err и закрытие канала без Done.
//
// Для streaming-режима НЕ рекомендуется JSONOutput=true: OpenAI не
// гарантирует валидный JSON в потоке token'ов; парсинг возможен только
// после `[DONE]`. Service-слой использует ChatStream только для plain
// text reply (без translation/corrections — это решает SendMessageStream).
func (p *OpenAIProvider) ChatStream(ctx context.Context, messages []PromptMessage, opts ChatOptions) (<-chan ChatStreamChunk, error) {
	if len(messages) == 0 {
		return nil, fmt.Errorf("openai: messages must not be empty")
	}

	model := opts.Model
	if model == "" {
		model = p.defaultChat
	}

	chatMessages := make([]openai.ChatCompletionMessage, 0, len(messages))
	for _, m := range messages {
		chatMessages = append(chatMessages, openai.ChatCompletionMessage{
			Role:    mapRole(m.Role),
			Content: m.Content,
		})
	}

	req := openai.ChatCompletionRequest{
		Model:       model,
		Messages:    chatMessages,
		Temperature: float32(temperatureOrDefault(opts.Temperature)),
		MaxTokens:   maxTokensOrDefault(opts.MaxTokens),
		Stream:      true,
		StreamOptions: &openai.StreamOptions{
			IncludeUsage: true, // OpenAI пришлёт usage финальным chunk'ом
		},
	}

	stream, err := p.client.CreateChatCompletionStream(ctx, req)
	if err != nil {
		return nil, fmt.Errorf("openai chat stream: %w", err)
	}

	out := make(chan ChatStreamChunk, 16)
	go func() {
		defer close(out)
		defer stream.Close()

		var (
			usageIn, usageOut, usageTotal int32
		)
		for {
			select {
			case <-ctx.Done():
				out <- ChatStreamChunk{Err: ctx.Err()}
				return
			default:
			}
			resp, err := stream.Recv()
			if errors.Is(err, io.EOF) {
				cost := estimateCost(model, usageIn, usageOut)
				if usageTotal == 0 {
					usageTotal = usageIn + usageOut
				}
				out <- ChatStreamChunk{Done: true, TokensUsed: usageTotal, CostUSD: cost}
				return
			}
			if err != nil {
				out <- ChatStreamChunk{Err: fmt.Errorf("openai stream recv: %w", err)}
				return
			}
			if resp.Usage != nil {
				usageIn = int32(resp.Usage.PromptTokens)
				usageOut = int32(resp.Usage.CompletionTokens)
				usageTotal = int32(resp.Usage.TotalTokens)
			}
			if len(resp.Choices) == 0 {
				continue
			}
			delta := resp.Choices[0].Delta.Content
			if delta == "" {
				continue
			}
			out <- ChatStreamChunk{Delta: delta}
		}
	}()
	return out, nil
}

// Transcribe — Whisper API. opts.AudioMime подсказывает расширение
// (Whisper требует имя файла с расширением). opts.Language — ISO-639-1
// (опционально, ускоряет/улучшает результат).
//
// Confidence у Whisper API формально нет. Возвращаем 0.95 как фолбэк
// (типичный «нормальный» уровень), service-слой не критичен к точности
// этого поля.
func (p *OpenAIProvider) Transcribe(ctx context.Context, audio []byte, opts TranscribeOptions) (*TranscribeResponse, error) {
	if len(audio) == 0 {
		return nil, fmt.Errorf("openai transcribe: audio must not be empty")
	}
	filename := "audio." + audioExtension(opts.AudioMime)
	req := openai.AudioRequest{
		Model:    p.whisper,
		Reader:   bytes.NewReader(audio),
		FilePath: filename,
		Language: opts.Language,
	}
	resp, err := p.client.CreateTranscription(ctx, req)
	if err != nil {
		return nil, fmt.Errorf("openai transcribe: %w", err)
	}
	return &TranscribeResponse{
		Text:       resp.Text,
		Confidence: 0.95, // Whisper API does not expose token-level confidence.
		CostUSD:    estimateAudioCost(len(audio)),
	}, nil
}

// SynthesizeTTS — генерит аудио через `tts-1` / `tts-1-hd` и заливает
// через AudioUploader. На MVP uploader = Noop → возвращается мок-URL,
// сами байты теряются. Реальный путь — MinIO uploader.
func (p *OpenAIProvider) SynthesizeTTS(ctx context.Context, text string, opts TTSOptions) (*TTSResponse, error) {
	if text == "" {
		return &TTSResponse{}, nil
	}
	voice := opts.Voice
	if voice == "" {
		voice = p.ttsVoice
	}

	req := openai.CreateSpeechRequest{
		Model:          openai.SpeechModel(p.tts),
		Input:          text,
		Voice:          openai.SpeechVoice(voice),
		ResponseFormat: openai.SpeechResponseFormatMp3,
	}
	resp, err := p.client.CreateSpeech(ctx, req)
	if err != nil {
		return nil, fmt.Errorf("openai tts: %w", err)
	}
	defer resp.Close()
	audioBytes, err := io.ReadAll(resp)
	if err != nil {
		return nil, fmt.Errorf("openai tts: read body: %w", err)
	}

	// Стабильный key — md5(text|voice|language).
	h := md5.Sum([]byte(text + "|" + voice + "|" + opts.Language))
	key := hex.EncodeToString(h[:])
	url, err := p.uploader.Upload(ctx, key, audioBytes, "audio/mpeg")
	if err != nil {
		return nil, fmt.Errorf("openai tts: upload: %w", err)
	}

	// Стоимость: tts-1 = $15 / 1M chars, tts-1-hd = $30 / 1M chars.
	costPerChar := 15.0 / 1_000_000
	if p.tts == string(openai.TTSModel1HD) {
		costPerChar = 30.0 / 1_000_000
	}
	cost := float64(len(text)) * costPerChar

	// Прикидываем длительность как 150 wpm.
	words := len(strings.Fields(text))
	durationMs := int32(words * 400)
	return &TTSResponse{
		AudioURL:   url,
		DurationMs: durationMs,
		CostUSD:    cost,
	}, nil
}

// =====================================================================
// Helpers
// =====================================================================

func mapRole(r string) string {
	switch r {
	case "system":
		return openai.ChatMessageRoleSystem
	case "user":
		return openai.ChatMessageRoleUser
	case "assistant":
		return openai.ChatMessageRoleAssistant
	default:
		return openai.ChatMessageRoleUser
	}
}

func temperatureOrDefault(t float64) float64 {
	if t <= 0 {
		return 0.7
	}
	return t
}

func maxTokensOrDefault(n int) int {
	if n <= 0 {
		return 800
	}
	return n
}

func audioExtension(mime string) string {
	switch mime {
	case "audio/wav", "audio/wave":
		return "wav"
	case "audio/ogg":
		return "ogg"
	case "audio/m4a", "audio/mp4":
		return "m4a"
	case "audio/flac":
		return "flac"
	case "audio/webm":
		return "webm"
	default:
		return "mp3"
	}
}
