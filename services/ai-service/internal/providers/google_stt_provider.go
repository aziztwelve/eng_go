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

// STTOptions — параметры распознавания речи.
type STTOptions struct {
	Language        string // 'en' | 'en-US' | 'ru' | ...
	Encoding        string // Google STT encoding (LINEAR16 | AMR_WB | OGG_OPUS | ...)
	SampleRateHertz int32  // напр. 16000
	MimeType        string // fallback для вывода encoding
}

// STTTranscriber — распознавание речи (audio → text). Отдельный от
// AIProvider.Transcribe интерфейс: STT-провайдеру (Google) нужны encoding /
// sample_rate, которых нет в общем TranscribeOptions.
type STTTranscriber interface {
	Transcribe(ctx context.Context, audio []byte, opts STTOptions) (text string, confidence float64, err error)
	Name() string
}

// GoogleSTTProvider — Google Cloud Speech-to-Text через REST v1 + API-ключ.
//
// Endpoint: POST https://speech.googleapis.com/v1/speech:recognize?key=KEY
// Тело: {config:{encoding, sampleRateHertz, languageCode, model,
//
//	enableAutomaticPunctuation}, audio:{content: base64}}
//
// Ответ: {results:[{alternatives:[{transcript, confidence}]}]}.
//
// Синхронный recognize — для коротких аудио (≤ 60 сек / 10 МБ), чего хватает
// для голосовых сообщений в чате.
type GoogleSTTProvider struct {
	apiKey string
	model  string
	http   *http.Client
}

// NewGoogleSTTProvider — конструктор. apiKey обязателен.
func NewGoogleSTTProvider(apiKey, model string) *GoogleSTTProvider {
	if strings.TrimSpace(model) == "" {
		model = "latest_short"
	}
	return &GoogleSTTProvider{
		apiKey: apiKey,
		model:  model,
		http:   &http.Client{Timeout: 60 * time.Second},
	}
}

// Name — идентификатор провайдера.
func (p *GoogleSTTProvider) Name() string { return "google-stt" }

const googleSTTEndpoint = "https://speech.googleapis.com/v1/speech:recognize"

type googleSTTRequest struct {
	Config struct {
		Encoding                   string `json:"encoding,omitempty"`
		SampleRateHertz            int32  `json:"sampleRateHertz,omitempty"`
		LanguageCode               string `json:"languageCode"`
		Model                      string `json:"model,omitempty"`
		EnableAutomaticPunctuation bool   `json:"enableAutomaticPunctuation"`
	} `json:"config"`
	Audio struct {
		Content string `json:"content"` // base64
	} `json:"audio"`
}

type googleSTTResponse struct {
	Results []struct {
		Alternatives []struct {
			Transcript string  `json:"transcript"`
			Confidence float64 `json:"confidence"`
		} `json:"alternatives"`
	} `json:"results"`
	Error *struct {
		Code    int    `json:"code"`
		Message string `json:"message"`
		Status  string `json:"status"`
	} `json:"error,omitempty"`
}

// Transcribe — реализация STTTranscriber.
func (p *GoogleSTTProvider) Transcribe(ctx context.Context, audio []byte, opts STTOptions) (string, float64, error) {
	if len(audio) == 0 {
		return "", 0, fmt.Errorf("google stt: empty audio")
	}
	if p.apiKey == "" {
		return "", 0, fmt.Errorf("google stt: api key not configured")
	}

	var body googleSTTRequest
	body.Config.LanguageCode = sttLanguageCode(opts.Language)
	body.Config.Model = p.model
	body.Config.EnableAutomaticPunctuation = true
	if enc := strings.TrimSpace(opts.Encoding); enc != "" {
		body.Config.Encoding = strings.ToUpper(enc)
	} else if e := encodingFromMime(opts.MimeType); e != "" {
		body.Config.Encoding = e
	}
	if opts.SampleRateHertz > 0 {
		body.Config.SampleRateHertz = opts.SampleRateHertz
	}
	body.Audio.Content = base64.StdEncoding.EncodeToString(audio)

	payload, err := json.Marshal(body)
	if err != nil {
		return "", 0, fmt.Errorf("google stt: marshal: %w", err)
	}

	url := googleSTTEndpoint + "?key=" + p.apiKey
	req, err := http.NewRequestWithContext(ctx, http.MethodPost, url, bytes.NewReader(payload))
	if err != nil {
		return "", 0, fmt.Errorf("google stt: new request: %w", err)
	}
	req.Header.Set("Content-Type", "application/json")

	resp, err := p.http.Do(req)
	if err != nil {
		return "", 0, fmt.Errorf("google stt: do: %w", err)
	}
	defer resp.Body.Close()

	raw, err := io.ReadAll(io.LimitReader(resp.Body, 4*1024*1024))
	if err != nil {
		return "", 0, fmt.Errorf("google stt: read body: %w", err)
	}

	var out googleSTTResponse
	if err := json.Unmarshal(raw, &out); err != nil {
		return "", 0, fmt.Errorf("google stt: decode (status %d): %w", resp.StatusCode, err)
	}
	if resp.StatusCode != http.StatusOK || out.Error != nil {
		msg := ""
		if out.Error != nil {
			msg = out.Error.Message
		}
		return "", 0, fmt.Errorf("google stt: api error (status %d): %s", resp.StatusCode, msg)
	}

	// Склеиваем транскрипты всех result'ов (для длинного аудио их несколько).
	var sb strings.Builder
	var conf float64
	var n int
	for _, r := range out.Results {
		if len(r.Alternatives) == 0 {
			continue
		}
		alt := r.Alternatives[0]
		if sb.Len() > 0 {
			sb.WriteByte(' ')
		}
		sb.WriteString(strings.TrimSpace(alt.Transcript))
		conf += alt.Confidence
		n++
	}
	avgConf := 0.0
	if n > 0 {
		avgConf = conf / float64(n)
	}
	return strings.TrimSpace(sb.String()), avgConf, nil
}

// sttLanguageCode — короткий код → BCP-47 (как у TTS).
func sttLanguageCode(lang string) string {
	l := strings.TrimSpace(lang)
	if l == "" {
		return "en-US"
	}
	if strings.Contains(l, "-") {
		return l
	}
	return languageCodeFor(l) // переиспользуем маппинг из google_tts_provider.go
}

// encodingFromMime — грубый вывод Google STT encoding из MIME-типа записи.
func encodingFromMime(mime string) string {
	m := strings.ToLower(strings.TrimSpace(mime))
	switch {
	case strings.Contains(m, "amr-wb") || strings.Contains(m, "amrwb"):
		return "AMR_WB"
	case strings.Contains(m, "3gpp") || strings.Contains(m, "3gp"):
		return "AMR_NB"
	case strings.Contains(m, "amr"):
		return "AMR"
	case strings.Contains(m, "wav") || strings.Contains(m, "wave") || strings.Contains(m, "x-wav") || strings.Contains(m, "l16") || strings.Contains(m, "pcm"):
		return "LINEAR16"
	case strings.Contains(m, "flac"):
		return "FLAC"
	case strings.Contains(m, "ogg") || strings.Contains(m, "opus"):
		return "OGG_OPUS"
	case strings.Contains(m, "webm"):
		return "WEBM_OPUS"
	default:
		return "" // пусть Google попробует определить сам (для headerful форматов)
	}
}
