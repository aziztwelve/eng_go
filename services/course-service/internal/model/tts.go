package model

import "time"

// TTSVoiceDefault — голос по умолчанию для tts_cache.
// Сейчас используется только как литерал; в Phase 5 (реальная
// интеграция с TTS-провайдером) появится список поддерживаемых голосов.
const TTSVoiceDefault = "default"

// TTSCacheEntry — кэшированная запись синтезированного аудио.
// На phase-2 сервис не делает реального синтеза: запись создаётся
// через SynthesizeTTS с уже готовым audio_url.
type TTSCacheEntry struct {
	ID         string
	Text       string
	TextMD5    string
	Language   string
	Voice      string
	AudioURL   string
	DurationMs int32
	CreatedAt  time.Time
}
