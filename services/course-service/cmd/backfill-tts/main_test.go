package main

import (
	"context"
	"fmt"
	"testing"
)

func TestFillMissingAudioURLsBackfillsNestedAudioAndReusesSyntheses(t *testing.T) {
	content := map[string]any{
		"language":   "en",
		"audio_text": "Listen carefully",
		"options": []any{
			map[string]any{"audio_text": "Listen carefully"},
			map[string]any{"audio_text": "already ready", "audio_url": "https://cdn.example/ready.mp3"},
		},
		"pairs": []any{
			map[string]any{"audio_text": "match this"},
		},
	}

	calls := make(map[string]int)
	changed, attempted, failures := fillMissingAudioURLs(
		context.Background(), content, "ru", "nova", make(map[string]string),
		func(_ context.Context, text, language, voice string) (string, error) {
			calls[fmt.Sprintf("%s|%s|%s", language, voice, text)]++
			return "https://cdn.example/" + text + ".mp3", nil
		},
	)

	if !changed {
		t.Fatal("expected content to change")
	}
	if attempted != 3 || failures != 0 {
		t.Fatalf("attempted=%d failures=%d, want 3 and 0", attempted, failures)
	}
	if len(calls) != 2 || calls["en|nova|Listen carefully"] != 1 || calls["en|nova|match this"] != 1 {
		t.Fatalf("unexpected synthesis calls: %#v", calls)
	}
	if got := content["audio_url"]; got != "https://cdn.example/Listen carefully.mp3" {
		t.Fatalf("top-level audio_url=%v", got)
	}
	options := content["options"].([]any)
	if got := options[0].(map[string]any)["audio_url"]; got != "https://cdn.example/Listen carefully.mp3" {
		t.Fatalf("nested audio_url=%v", got)
	}
	if got := options[1].(map[string]any)["audio_url"]; got != "https://cdn.example/ready.mp3" {
		t.Fatalf("existing audio_url was changed to %v", got)
	}
}

func TestFillMissingAudioURLsContinuesAfterAFailure(t *testing.T) {
	content := map[string]any{
		"options": []any{
			map[string]any{"audio_text": "broken"},
			map[string]any{"audio_text": "works"},
		},
	}

	changed, attempted, failures := fillMissingAudioURLs(
		context.Background(), content, "en", "", make(map[string]string),
		func(_ context.Context, text, _, _ string) (string, error) {
			if text == "broken" {
				return "", fmt.Errorf("provider unavailable")
			}
			return "https://cdn.example/works.mp3", nil
		},
	)

	if !changed || attempted != 2 || failures != 1 {
		t.Fatalf("changed=%v attempted=%d failures=%d", changed, attempted, failures)
	}
	options := content["options"].([]any)
	if _, ok := options[0].(map[string]any)["audio_url"]; ok {
		t.Fatal("failed synthesis should not write audio_url")
	}
	if got := options[1].(map[string]any)["audio_url"]; got != "https://cdn.example/works.mp3" {
		t.Fatalf("successful sibling was not backfilled: %v", got)
	}
}
