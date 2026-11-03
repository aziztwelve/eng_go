package service

import (
	"strings"
	"testing"
)

func TestEmotionPrefixAcrossChunks(t *testing.T) {
	tests := []struct {
		name                  string
		chunks                []string
		wantEmotion, wantText string
	}{
		{"tag split across tokens", []string{"[[emo", "tion:hap", "py]]", " Great job!"}, "happy", " Great job!"},
		{"tag and text together", []string{"[[emotion:thinking]] Why?"}, "thinking", "Why?"},
		{"no tag", []string{"Hello", " there"}, "", "Hello there"},
		{"invalid tag", []string{"[[emotion:angry]] Hello"}, "", "Hello"},
		{"partial tag", []string{"[[emo"}, "", "[[emo"},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			var p emotionPrefix
			var emotion string
			var text strings.Builder
			for _, chunk := range tt.chunks {
				e, v := p.feed(chunk, false)
				if e != "" {
					emotion = e
				}
				text.WriteString(v)
			}
			e, v := p.feed("", true)
			if e != "" {
				emotion = e
			}
			text.WriteString(v)
			if emotion != tt.wantEmotion || text.String() != tt.wantText {
				t.Fatalf("got emotion %q text %q", emotion, text.String())
			}
		})
	}
}
