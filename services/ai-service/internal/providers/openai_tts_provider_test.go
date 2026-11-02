package providers

import (
	"context"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"
)

func TestOpenAITTS_SendsRequestAndReturnsAudio(t *testing.T) {
	var gotPath, gotAuth string
	var gotBody openAISpeechRequest
	srv := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		gotPath = r.URL.Path
		gotAuth = r.Header.Get("Authorization")
		_ = json.NewDecoder(r.Body).Decode(&gotBody)
		_, _ = w.Write([]byte("mp3-bytes"))
	}))
	defer srv.Close()

	p := NewOpenAITTSProvider("sk-test", srv.URL+"/", "tts-1", "nova")
	audio, mime, dur, err := p.Synthesize(context.Background(), "  Hello there my friend  ", TTSOptions{})
	if err != nil {
		t.Fatalf("synthesize: %v", err)
	}
	if string(audio) != "mp3-bytes" || mime != "audio/mpeg" {
		t.Errorf("audio=%q mime=%q", audio, mime)
	}
	if dur != 4*400 {
		t.Errorf("duration = %d, want 1600", dur)
	}
	if gotPath != "/audio/speech" {
		t.Errorf("path = %q, want /audio/speech", gotPath)
	}
	if gotAuth != "Bearer sk-test" {
		t.Errorf("auth = %q", gotAuth)
	}
	if gotBody.Model != "tts-1" || gotBody.Voice != "nova" || gotBody.ResponseFormat != "mp3" || gotBody.Input != "Hello there my friend" {
		t.Errorf("body = %+v", gotBody)
	}
}

func TestOpenAITTS_UnknownVoiceFallsBackToDefault(t *testing.T) {
	var gotBody openAISpeechRequest
	srv := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		_ = json.NewDecoder(r.Body).Decode(&gotBody)
		_, _ = w.Write([]byte("x"))
	}))
	defer srv.Close()

	p := NewOpenAITTSProvider("k", srv.URL, "tts-1", "not-a-voice")
	if _, _, _, err := p.Synthesize(context.Background(), "hi", TTSOptions{Voice: "en-US-Neural2-C"}); err != nil {
		t.Fatalf("synthesize: %v", err)
	}
	if gotBody.Voice != "alloy" {
		t.Errorf("voice = %q, want default alloy", gotBody.Voice)
	}

	if _, _, _, err := p.Synthesize(context.Background(), "hi", TTSOptions{Voice: "Onyx"}); err != nil {
		t.Fatalf("synthesize: %v", err)
	}
	if gotBody.Voice != "onyx" {
		t.Errorf("voice = %q, want onyx", gotBody.Voice)
	}
}

func TestOpenAITTS_ErrorStatusAndEmptyText(t *testing.T) {
	srv := httptest.NewServer(http.HandlerFunc(func(w http.ResponseWriter, _ *http.Request) {
		http.Error(w, `{"error":{"message":"bad key"}}`, http.StatusUnauthorized)
	}))
	defer srv.Close()

	p := NewOpenAITTSProvider("k", srv.URL, "", "")
	if _, _, _, err := p.Synthesize(context.Background(), "hi", TTSOptions{}); err == nil || !strings.Contains(err.Error(), "401") {
		t.Fatalf("expected 401 error, got %v", err)
	}
	if _, _, _, err := p.Synthesize(context.Background(), "   ", TTSOptions{}); err == nil {
		t.Fatal("expected error for empty text")
	}
}
