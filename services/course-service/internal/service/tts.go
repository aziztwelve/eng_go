package service

import (
	"context"
	"crypto/md5"
	"encoding/hex"
	"errors"
	"strings"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// TTSService — TTS-кэш (Phase 2 stub: реальный синтез — Phase 5).
type TTSService interface {
	// Synthesize: на phase-2 ожидает audio_url в request'е и пишет
	// его в кэш. Возвращает запись и флаг `created` (false = взято из кэша).
	Synthesize(ctx context.Context, req SynthesizeRequest) (*model.TTSCacheEntry, bool, error)

	// GetByText — читает кэш. ErrTTSNotCached если не нашли.
	GetByText(ctx context.Context, text, language, voice string) (*model.TTSCacheEntry, error)
}

// SynthesizeRequest — параметры синтеза.
type SynthesizeRequest struct {
	Text       string
	Language   string
	Voice      string
	AudioURL   string
	DurationMs int32
}

// ErrTTSNotCached — нет записи в кэше под (text, language, voice).
var ErrTTSNotCached = errors.New("tts: not cached")

// ErrTTSProviderNotConfigured — попытка синтезировать без audio_url
// на phase-2, где провайдер ещё не подключён.
var ErrTTSProviderNotConfigured = errors.New("tts: provider not configured (phase 2 stub requires audio_url)")

type ttsService struct {
	repo repository.TTSRepository
}

// NewTTSService — конструктор TTS-сервиса.
func NewTTSService(repo repository.TTSRepository) TTSService {
	return &ttsService{repo: repo}
}

func md5hex(s string) string {
	sum := md5.Sum([]byte(s))
	return hex.EncodeToString(sum[:])
}

func normalizeVoice(v string) string {
	v = strings.TrimSpace(v)
	if v == "" {
		return model.TTSVoiceDefault
	}
	return v
}

func validateTTSKey(text, lang string) error {
	if strings.TrimSpace(text) == "" {
		return errors.New("tts: text is required")
	}
	if strings.TrimSpace(lang) == "" {
		return errors.New("tts: language is required")
	}
	return nil
}

func (s *ttsService) Synthesize(ctx context.Context, req SynthesizeRequest) (*model.TTSCacheEntry, bool, error) {
	if err := validateTTSKey(req.Text, req.Language); err != nil {
		return nil, false, err
	}
	if strings.TrimSpace(req.AudioURL) == "" {
		return nil, false, ErrTTSProviderNotConfigured
	}
	entry := &model.TTSCacheEntry{
		Text:       req.Text,
		TextMD5:    md5hex(req.Text),
		Language:   strings.ToLower(strings.TrimSpace(req.Language)),
		Voice:      normalizeVoice(req.Voice),
		AudioURL:   strings.TrimSpace(req.AudioURL),
		DurationMs: req.DurationMs,
	}
	created, err := s.repo.Upsert(ctx, entry)
	if err != nil {
		return nil, false, err
	}
	return entry, created, nil
}

func (s *ttsService) GetByText(ctx context.Context, text, language, voice string) (*model.TTSCacheEntry, error) {
	if err := validateTTSKey(text, language); err != nil {
		return nil, err
	}
	entry, err := s.repo.GetByText(ctx,
		md5hex(text),
		strings.ToLower(strings.TrimSpace(language)),
		normalizeVoice(voice),
	)
	if err != nil {
		// Любая ошибка от pgx (включая ErrNoRows) — конвертируем в наш sentinel.
		return nil, ErrTTSNotCached
	}
	return entry, nil
}
