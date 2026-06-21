package providers

import (
	"bytes"
	"context"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"io"
	"net/http"
	"strings"
	"time"
)

// TTSSynthesizer — синтез речи, возвращающий СЫРЫЕ аудио-байты (path A:
// inline, без upload в storage). Используется для on-demand озвучки
// флешкарт/словаря: клиент получает mp3 прямо в ответе и кэширует локально.
//
// Отличие от AIProvider.SynthesizeTTS (которая возвращает URL после
// заливки в MinIO): здесь хранилище не задействовано вовсе.
type TTSSynthesizer interface {
	// Synthesize — text → (audio bytes, mime, прибл. длительность).
	Synthesize(ctx context.Context, text string, opts TTSOptions) (audio []byte, mime string, durationMs int32, err error)
	// Name — идентификатор (для логов).
	Name() string
}

// GoogleTTSProvider — Google Cloud Text-to-Speech через REST API + API-ключ.
//
// Endpoint: POST https://texttospeech.googleapis.com/v1/text:synthesize?key=KEY
// Тело: {input:{text}, voice:{languageCode,name?}, audioConfig:{audioEncoding:MP3}}
// Ответ: {audioContent: "<base64 mp3>"}.
type GoogleTTSProvider struct {
	apiKey       string
	defaultVoice string // optional, напр. "en-US-Neural2-C"
	http         *http.Client
}

// NewGoogleTTSProvider — конструктор. apiKey обязателен.
func NewGoogleTTSProvider(apiKey, defaultVoice string) *GoogleTTSProvider {
	return &GoogleTTSProvider{
		apiKey:       apiKey,
		defaultVoice: strings.TrimSpace(defaultVoice),
		http:         &http.Client{Timeout: 30 * time.Second},
	}
}

// Name — идентификатор провайдера.
func (p *GoogleTTSProvider) Name() string { return "google-tts" }

const googleTTSEndpoint = "https://texttospeech.googleapis.com/v1/text:synthesize"

type googleTTSRequest struct {
	Input struct {
		Text string `json:"text"`
	} `json:"input"`
	Voice struct {
		LanguageCode string `json:"languageCode"`
		Name         string `json:"name,omitempty"`
	} `json:"voice"`
	AudioConfig struct {
		AudioEncoding string `json:"audioEncoding"`
	} `json:"audioConfig"`
}

type googleTTSResponse struct {
	AudioContent string `json:"audioContent"` // base64 mp3
	Error        *struct {
		Code    int    `json:"code"`
		Message string `json:"message"`
		Status  string `json:"status"`
	} `json:"error,omitempty"`
}

// Synthesize — реализация TTSSynthesizer.
func (p *GoogleTTSProvider) Synthesize(ctx context.Context, text string, opts TTSOptions) ([]byte, string, int32, error) {
	if strings.TrimSpace(text) == "" {
		return nil, "", 0, fmt.Errorf("google tts: empty text")
	}
	if p.apiKey == "" {
		return nil, "", 0, fmt.Errorf("google tts: api key not configured")
	}

	var body googleTTSRequest
	body.Input.Text = text
	body.Voice.LanguageCode = languageCodeFor(opts.Language)
	// Приоритет: явный voice из opts → дефолтный из конфига → пусто (Google
	// выберет голос по languageCode сам).
	if v := strings.TrimSpace(opts.Voice); v != "" {
		body.Voice.Name = v
	} else if p.defaultVoice != "" {
		body.Voice.Name = p.defaultVoice
	}
	body.AudioConfig.AudioEncoding = "MP3"

	payload, err := json.Marshal(body)
	if err != nil {
		return nil, "", 0, fmt.Errorf("google tts: marshal: %w", err)
	}

	url := googleTTSEndpoint + "?key=" + p.apiKey
	req, err := http.NewRequestWithContext(ctx, http.MethodPost, url, bytes.NewReader(payload))
	if err != nil {
		return nil, "", 0, fmt.Errorf("google tts: new request: %w", err)
	}
	req.Header.Set("Content-Type", "application/json")

	resp, err := p.http.Do(req)
	if err != nil {
		return nil, "", 0, fmt.Errorf("google tts: do: %w", err)
	}
	defer resp.Body.Close()

	raw, err := io.ReadAll(io.LimitReader(resp.Body, 8*1024*1024))
	if err != nil {
		return nil, "", 0, fmt.Errorf("google tts: read body: %w", err)
	}

	var out googleTTSResponse
	if err := json.Unmarshal(raw, &out); err != nil {
		return nil, "", 0, fmt.Errorf("google tts: decode (status %d): %w", resp.StatusCode, err)
	}
	if resp.StatusCode != http.StatusOK || out.Error != nil {
		msg := ""
		if out.Error != nil {
			msg = out.Error.Message
		}
		return nil, "", 0, fmt.Errorf("google tts: api error (status %d): %s", resp.StatusCode, msg)
	}
	if out.AudioContent == "" {
		return nil, "", 0, fmt.Errorf("google tts: empty audioContent")
	}

	audio, err := base64.StdEncoding.DecodeString(out.AudioContent)
	if err != nil {
		return nil, "", 0, fmt.Errorf("google tts: base64 decode: %w", err)
	}

	// Google не возвращает длительность — оцениваем как ~150 wpm.
	words := len(strings.Fields(text))
	if words == 0 {
		words = 1
	}
	durationMs := int32(words * 400)

	return audio, "audio/mpeg", durationMs, nil
}

// languageCodeFor — нормализует короткий код языка ('en') в BCP-47
// languageCode, который ждёт Google ('en-US'). Если уже похоже на BCP-47
// ('en-US') — возвращаем как есть.
func languageCodeFor(lang string) string {
	l := strings.TrimSpace(lang)
	if l == "" {
		return "en-US"
	}
	if strings.Contains(l, "-") {
		return l
	}
	switch strings.ToLower(l) {
	case "en":
		return "en-US"
	case "ru":
		return "ru-RU"
	case "es":
		return "es-ES"
	case "de":
		return "de-DE"
	case "fr":
		return "fr-FR"
	case "it":
		return "it-IT"
	case "pt":
		return "pt-PT"
	case "ja":
		return "ja-JP"
	case "ko":
		return "ko-KR"
	case "zh":
		return "cmn-CN"
	case "ar":
		return "ar-XA"
	case "tr":
		return "tr-TR"
	case "uk":
		return "uk-UA"
	default:
		return l
	}
}
