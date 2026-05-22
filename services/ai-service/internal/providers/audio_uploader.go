package providers

import (
	"context"
	"crypto/md5"
	"encoding/hex"
	"fmt"
)

// AudioUploader — абстракция для сохранения сгенерированного TTS-аудио
// в публичное хранилище (MinIO / S3) и получения URL.
//
// На MVP-реализации возвращает мок-URL (без реального upload'а) — это
// позволяет тестировать SynthesizeTTS флоу без MinIO-инфры. Real impl
// будет в video-service / dedicated audio bucket (Phase 5.X-real).
type AudioUploader interface {
	// Upload — заливает аудио-байты в bucket и возвращает публичный URL.
	// key — стабильный идентификатор (например md5(text|voice|lang)),
	// нужен для идемпотентности (один и тот же текст не реаплоадится).
	// mime — `audio/mpeg`, `audio/wav`, etc.
	Upload(ctx context.Context, key string, audio []byte, mime string) (url string, err error)
}

// NoopAudioUploader — не делает реальный upload, возвращает фейковый URL.
// Используется когда MinIO / video-service не сконфигурированы — TTS
// флоу всё равно работает, но audio_url ведёт на placeholder.
type NoopAudioUploader struct {
	BaseURL string // например "https://example.com/tts-cache"
}

// NewNoopAudioUploader — конструктор.
func NewNoopAudioUploader(baseURL string) *NoopAudioUploader {
	if baseURL == "" {
		baseURL = "https://example.com/tts-cache"
	}
	return &NoopAudioUploader{BaseURL: baseURL}
}

// Upload — игнорирует audio bytes, возвращает фейковый URL.
func (u *NoopAudioUploader) Upload(_ context.Context, key string, audio []byte, mime string) (string, error) {
	_ = audio
	ext := mimeToExt(mime)
	if key == "" {
		// На случай если caller забыл — генерим из контента.
		h := md5.Sum(audio)
		key = hex.EncodeToString(h[:])
	}
	return fmt.Sprintf("%s/%s.%s", u.BaseURL, key, ext), nil
}

func mimeToExt(mime string) string {
	switch mime {
	case "audio/mpeg", "audio/mp3":
		return "mp3"
	case "audio/wav", "audio/wave":
		return "wav"
	case "audio/ogg":
		return "ogg"
	case "audio/m4a", "audio/mp4":
		return "m4a"
	case "audio/flac":
		return "flac"
	case "audio/opus":
		return "opus"
	default:
		return "mp3"
	}
}
