package providers

import (
	"bytes"
	"context"
	"encoding/base64"
	"encoding/json"
	"io"
	"net/http"
	"os"
	"strings"
	"testing"
)

type sttTestTransport func(*http.Request) (*http.Response, error)

func (f sttTestTransport) RoundTrip(r *http.Request) (*http.Response, error) { return f(r) }

func TestGoogleSTTIOSRecording(t *testing.T) {
	audio, err := os.ReadFile("testdata/ios-aac.m4a")
	if err != nil {
		t.Fatal(err)
	}
	tmp := t.TempDir()
	t.Setenv("TMPDIR", tmp)
	p := NewGoogleSTTProvider("test-key", "")
	called := false
	p.http = &http.Client{Transport: sttTestTransport(func(r *http.Request) (*http.Response, error) {
		called = true
		var body googleSTTRequest
		if err := json.NewDecoder(r.Body).Decode(&body); err != nil {
			t.Fatal(err)
		}
		if body.Config.Encoding != "LINEAR16" || body.Config.SampleRateHertz != 16000 {
			t.Fatalf("wrong converted format: %+v", body.Config)
		}
		pcm, err := base64.StdEncoding.DecodeString(body.Audio.Content)
		if err != nil || len(pcm) < 32000 || len(pcm) > 34000 || bytes.Equal(pcm, audio) {
			t.Fatalf("expected approximately one second of mono PCM, got %d bytes: %v", len(pcm), err)
		}
		return &http.Response{StatusCode: 200, Body: io.NopCloser(strings.NewReader(`{"results":[{"alternatives":[{"transcript":"hello","confidence":0.9}]}]}`)), Header: make(http.Header)}, nil
	})}
	text, _, err := p.Transcribe(context.Background(), audio, STTOptions{MimeType: "audio/m4a", Language: "en"})
	if err != nil || text != "hello" || !called {
		t.Fatalf("transcription failed: %q, %v, called=%v", text, err, called)
	}
	entries, _ := os.ReadDir(tmp)
	if len(entries) != 0 {
		t.Fatal("temporary recording was not deleted")
	}
}

func TestSTTAudioInvalidAndCanceled(t *testing.T) {
	tmp := t.TempDir()
	t.Setenv("TMPDIR", tmp)
	if _, err := decodeSTTAudio(context.Background(), []byte("invalid audio")); err == nil {
		t.Fatal("invalid recording accepted")
	}
	ctx, cancel := context.WithCancel(context.Background())
	cancel()
	if _, err := decodeSTTAudio(ctx, []byte("invalid audio")); err != context.Canceled {
		t.Fatalf("expected cancellation, got %v", err)
	}
	entries, _ := os.ReadDir(tmp)
	if len(entries) != 0 {
		t.Fatal("temporary recording leaked after failure")
	}
}

func TestSTTConversionFormats(t *testing.T) {
	for _, value := range []string{"audio/m4a", "audio/x-m4a", "audio/mp4; codecs=mp4a.40.2", "audio/aac"} {
		if !needsSTTConversion(value) {
			t.Errorf("missing conversion for %s", value)
		}
	}
	for _, value := range []string{"audio/3gpp", "audio/amr", "audio/wav", "audio/flac", "audio/webm", "audio/ogg"} {
		if needsSTTConversion(value) {
			t.Errorf("existing format must stay unchanged: %s", value)
		}
	}
}
