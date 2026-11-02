package providers

import (
	"context"
	"errors"
	"testing"
)

type fakeTranscriber struct {
	got  TranscribeOptions
	text string
	err  error
}

func (f *fakeTranscriber) Transcribe(_ context.Context, _ []byte, opts TranscribeOptions) (*TranscribeResponse, error) {
	f.got = opts
	if f.err != nil {
		return nil, f.err
	}
	return &TranscribeResponse{Text: f.text, Confidence: 0.9}, nil
}

func TestProviderSTT_PassesLanguageAndMime(t *testing.T) {
	f := &fakeTranscriber{text: "  Here is my passport  "}
	stt := NewProviderSTT(f)

	text, conf, err := stt.Transcribe(context.Background(), []byte("x"), STTOptions{
		Language: "en-US", MimeType: "audio/m4a", Encoding: "AAC", SampleRateHertz: 16000,
	})
	if err != nil {
		t.Fatalf("transcribe: %v", err)
	}
	if text != "Here is my passport" {
		t.Errorf("text = %q, want trimmed text", text)
	}
	if conf != 0.9 {
		t.Errorf("confidence = %v, want 0.9", conf)
	}
	if f.got.Language != "en" {
		t.Errorf("language = %q, want ISO-639-1 \"en\"", f.got.Language)
	}
	if f.got.AudioMime != "audio/m4a" {
		t.Errorf("mime = %q, want audio/m4a", f.got.AudioMime)
	}
}

func TestProviderSTT_EmptyAudio(t *testing.T) {
	if _, _, err := NewProviderSTT(&fakeTranscriber{}).Transcribe(context.Background(), nil, STTOptions{}); err == nil {
		t.Fatal("expected error for empty audio")
	}
}

func TestProviderSTT_PropagatesProviderError(t *testing.T) {
	boom := errors.New("boom")
	_, _, err := NewProviderSTT(&fakeTranscriber{err: boom}).Transcribe(context.Background(), []byte("x"), STTOptions{})
	if !errors.Is(err, boom) {
		t.Fatalf("expected provider error, got %v", err)
	}
}

func TestIsoLanguage(t *testing.T) {
	cases := map[string]string{"en-US": "en", "EN": "en", " ru ": "ru", "": "", "kk": "kk"}
	for in, want := range cases {
		if got := isoLanguage(in); got != want {
			t.Errorf("isoLanguage(%q) = %q, want %q", in, got, want)
		}
	}
}
