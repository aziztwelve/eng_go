package service

import (
	"context"
	"fmt"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
)

// maxSTTAudioBytes — потолок размера записи (синхронный Google recognize
// ограничен ~10 МБ / 60 сек). Голосовые сообщения в чате короткие.
const maxSTTAudioBytes = 10 * 1024 * 1024

// TranscribeAudioInput — параметры распознавания.
type TranscribeAudioInput struct {
	UserID          string
	Audio           []byte
	MimeType        string
	Language        string
	Encoding        string
	SampleRateHertz int32
}

// TranscribeAudioOutput — результат STT.
type TranscribeAudioOutput struct {
	Text       string
	Confidence float64
}

// TranscribeAudio — расшифровывает голос в текст через STT-провайдер
// (Google). Без оценки произношения — просто audio → text для голосового
// ввода в чат.
func (s *Service) TranscribeAudio(ctx context.Context, in TranscribeAudioInput) (*TranscribeAudioOutput, error) {
	if s.sttTranscriber == nil {
		return nil, fmt.Errorf("%w: STT not configured", ErrInvalidArgument)
	}
	if len(in.Audio) == 0 {
		return nil, fmt.Errorf("%w: audio required", ErrInvalidArgument)
	}
	if len(in.Audio) > maxSTTAudioBytes {
		return nil, fmt.Errorf("%w: audio too large (%d bytes, max %d)", ErrInvalidArgument, len(in.Audio), maxSTTAudioBytes)
	}

	// Квота voice: блокируем, если пользователь уже исчерпал лимит минут.
	// Длительность аудио заранее неизвестна (разные кодеки), поэтому
	// списываем по факту — оценкой минут из распознанного текста (ниже).
	if in.UserID != "" {
		if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindVoice, 0); err != nil {
			return nil, err
		}
	}

	text, conf, err := s.sttTranscriber.Transcribe(ctx, in.Audio, providers.STTOptions{
		Language:        in.Language,
		Encoding:        in.Encoding,
		SampleRateHertz: in.SampleRateHertz,
		MimeType:        in.MimeType,
	})
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}

	// Списываем потраченные «минуты речи» (оценка из текста, как у TTS).
	if in.UserID != "" {
		_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindVoice, estimateTTSMinutes(text))
	}

	return &TranscribeAudioOutput{Text: text, Confidence: conf}, nil
}
