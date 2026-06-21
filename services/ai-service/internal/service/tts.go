package service

import (
	"context"
	"fmt"
	"strings"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
)

// maxTTSChars — жёсткий потолок длины текста на один синтез. Защита от
// abuse (один POST с мегабайтом текста = десятки $ за вызов): озвучка
// рассчитана на слова/короткие фразы, а не на простыни.
const maxTTSChars = 500

// ttsWordsPerMinute — эвристика для оценки «минут речи» из текста.
// Совпадает с провайдерской прикидкой длительности (≈150 wpm / 400ms на
// слово). Используется для списания QuotaKindVoice ДО синтеза.
const ttsWordsPerMinute = 150.0

// SynthesizeTTSInput — параметры on-demand озвучки.
type SynthesizeTTSInput struct {
	// UserID — для квоты (QuotaKindVoice). Пусто → квота не проверяется
	// (admin/backfill-путь).
	UserID   string
	Text     string
	Language string
	Voice    string // optional; пусто → provider default voice
}

// SynthesizeTTSOutput — результат синтеза. Один из двух режимов:
//   - path B (storage): AudioURL заполнен (MinIO).
//   - path A (inline): AudioContent + MimeType заполнены (Google TTS),
//     AudioURL пустой.
type SynthesizeTTSOutput struct {
	AudioURL     string
	DurationMs   int32
	CostUSD      float64
	AudioContent []byte // inline mp3 (path A)
	MimeType     string // напр. "audio/mpeg"
}

// SynthesizeTTS — генерит аудио из текста через активный провайдер
// (OpenAI tts-1 → mp3 → MinIO) и возвращает публичный URL.
//
// Reusable endpoint: озвучка слов во флешкартах/словаре, listening-шаги,
// backfill-скрипты. Кэш по тексту живёт в course-service (tts_cache) и
// оркеструется gateway'ем ДО вызова этого метода — сюда долетают только
// cache-miss'ы, поэтому здесь всегда реальный синтез (и списание квоты).
//
// Защита:
//   - длина текста ограничена maxTTSChars;
//   - при непустом UserID списывается QuotaKindVoice (минуты речи).
func (s *Service) SynthesizeTTS(ctx context.Context, in SynthesizeTTSInput) (*SynthesizeTTSOutput, error) {
	text := strings.TrimSpace(in.Text)
	if text == "" {
		return nil, fmt.Errorf("%w: text required", ErrInvalidArgument)
	}
	if n := len([]rune(text)); n > maxTTSChars {
		return nil, fmt.Errorf("%w: text too long (%d chars, max %d)", ErrInvalidArgument, n, maxTTSChars)
	}

	// Квота: только для клиентских (user-attributed) вызовов. Backfill/admin
	// передаёт пустой UserID и не расходует лимиты.
	estMinutes := estimateTTSMinutes(text)
	if in.UserID != "" {
		if err := s.CheckQuota(ctx, in.UserID, model.QuotaKindVoice, estMinutes); err != nil {
			return nil, err
		}
	}

	// Path A (inline): если сконфигурирован отдельный TTS-синтезатор
	// (напр. Google Cloud TTS) — возвращаем аудио-байты, минуя storage.
	if s.ttsSynth != nil {
		audio, mime, durationMs, err := s.ttsSynth.Synthesize(ctx, text, providers.TTSOptions{
			Voice:    strings.TrimSpace(in.Voice),
			Language: strings.ToLower(strings.TrimSpace(in.Language)),
		})
		if err != nil {
			return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
		}
		if len(audio) == 0 {
			return nil, fmt.Errorf("%w: tts synthesizer returned empty audio", ErrProviderFailed)
		}
		if in.UserID != "" {
			_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindVoice, estMinutes)
		}
		return &SynthesizeTTSOutput{
			DurationMs:   durationMs,
			MimeType:     mime,
			AudioContent: audio,
		}, nil
	}

	// Path B (storage): провайдер синтезирует и заливает в MinIO, отдаёт URL.
	resp, err := s.provider.SynthesizeTTS(ctx, text, providers.TTSOptions{
		Voice:    strings.TrimSpace(in.Voice),
		Language: strings.ToLower(strings.TrimSpace(in.Language)),
	})
	if err != nil {
		return nil, fmt.Errorf("%w: %v", ErrProviderFailed, err)
	}
	if resp == nil || resp.AudioURL == "" {
		return nil, fmt.Errorf("%w: provider returned empty audio_url", ErrProviderFailed)
	}

	if in.UserID != "" {
		// Non-fatal: ошибка инкремента не должна валить успешный синтез.
		_ = s.IncrementQuota(ctx, in.UserID, model.QuotaKindVoice, estMinutes)
	}

	return &SynthesizeTTSOutput{
		AudioURL:   resp.AudioURL,
		DurationMs: resp.DurationMs,
		CostUSD:    resp.CostUSD,
	}, nil
}

// estimateTTSMinutes — приблизительные «минуты речи» из текста (для квоты).
// Минимум — одно слово, чтобы любой синтез стоил хотя бы немного квоты.
func estimateTTSMinutes(text string) float64 {
	words := len(strings.Fields(text))
	if words == 0 {
		words = 1
	}
	return float64(words) / ttsWordsPerMinute
}
