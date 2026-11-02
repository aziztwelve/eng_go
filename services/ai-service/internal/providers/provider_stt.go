package providers

import (
	"context"
	"fmt"
	"strings"
)

// audioTranscriber — the part of AIProvider that ProviderSTT needs. AIProvider
// satisfies it, tests use a fake.
type audioTranscriber interface {
	Transcribe(ctx context.Context, audio []byte, opts TranscribeOptions) (*TranscribeResponse, error)
}

// ProviderSTT adapts the provider's Transcribe (OpenAI Whisper / gpt-4o-transcribe)
// to the STTTranscriber interface used by the chat voice input, so that
// AI_STT_PROVIDER=openai can replace Google STT without touching the service.
//
// OpenAI accepts mp3, mp4, m4a, wav, webm, ogg, flac. It does not accept AMR,
// so the client has to send one of those (the mime type picks the file extension).
// Encoding and sample rate are Google-only hints and are ignored here.
type ProviderSTT struct {
	inner audioTranscriber
}

// NewProviderSTT wraps a provider that can transcribe audio.
func NewProviderSTT(inner audioTranscriber) *ProviderSTT {
	return &ProviderSTT{inner: inner}
}

// Name implements STTTranscriber.
func (p *ProviderSTT) Name() string { return "openai-stt" }

// Transcribe implements STTTranscriber.
func (p *ProviderSTT) Transcribe(ctx context.Context, audio []byte, opts STTOptions) (string, float64, error) {
	if len(audio) == 0 {
		return "", 0, fmt.Errorf("stt: audio must not be empty")
	}
	resp, err := p.inner.Transcribe(ctx, audio, TranscribeOptions{
		Language:  isoLanguage(opts.Language),
		AudioMime: opts.MimeType,
	})
	if err != nil {
		return "", 0, err
	}
	return strings.TrimSpace(resp.Text), resp.Confidence, nil
}

// isoLanguage turns "en-US" / "EN" into the ISO-639-1 code OpenAI expects.
func isoLanguage(lang string) string {
	lang = strings.ToLower(strings.TrimSpace(lang))
	if len(lang) > 2 {
		lang = lang[:2]
	}
	return lang
}
