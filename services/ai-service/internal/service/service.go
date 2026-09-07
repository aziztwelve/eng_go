package service

import (
	"github.com/elearning/ai-service/internal/abtest"
	"github.com/elearning/ai-service/internal/client/user"
	"github.com/elearning/ai-service/internal/providers"
	"github.com/elearning/ai-service/internal/repository"
)

// Config — внешние параметры service-слоя (лимиты квоты, имена моделей).
type Config struct {
	DefaultModelChat  string
	DefaultModelHeavy string

	FreeChatLimit         int32
	FreeVoiceMinutesLimit float64
	FreeWritingLimit      int32

	PremiumChatLimit         int32
	PremiumVoiceMinutesLimit float64
	PremiumWritingLimit      int32
}

// Service — корневой бизнес-сервис, объединяющий все AI-фичи.
type Service struct {
	cfg Config

	provider  providers.AIProvider
	moderator providers.Moderator
	// ttsSynth — опциональный inline-TTS (path A, напр. Google). Если задан,
	// SynthesizeTTS возвращает аудио-байты, минуя MinIO. nil → fallback на
	// provider.SynthesizeTTS (URL/storage).
	ttsSynth providers.TTSSynthesizer
	// audioUploader — опциональный storage для path A: inline-аудио
	// дополнительно заливается в MinIO, чтобы gateway закэшировал публичный
	// URL в courses.tts_cache и повторные запросы не ходили в Google.
	// nil → path A без upload (только inline-байты).
	audioUploader providers.AudioUploader
	// sttTranscriber — опциональный STT (Google). nil → TranscribeAudio
	// вернёт ErrInvalidArgument (фича выключена).
	sttTranscriber providers.STTTranscriber
	sanitize       providers.SanitizeOpts
	pii            providers.PIIRedactOpts
	abtests        *abtest.Registry
	abExposures    repository.ABExposureRepository
	user           user.Client

	conversations repository.ConversationRepository
	messages      repository.MessageRepository
	explanations  repository.ExplanationRepository
	writing       repository.WritingRepository
	pronunciation repository.PronunciationRepository
	quotas        repository.QuotaRepository
	feedback      repository.FeedbackRepository
}

// Deps — все зависимости для сборки Service.
type Deps struct {
	Provider providers.AIProvider
	// Moderator — content-filter (Phase 5.33). nil → NoopModerator.
	Moderator providers.Moderator
	// TTSSynth — опциональный inline-TTS синтезатор (path A, напр. Google
	// Cloud TTS). Если задан — SynthesizeTTS возвращает байты, минуя MinIO.
	TTSSynth providers.TTSSynthesizer
	// AudioUploader — опциональный storage (MinIO/S3) для path A: аудио
	// заливается в bucket, публичный URL возвращается вместе с байтами —
	// gateway кладёт его в courses.tts_cache (дедупликация Google-вызовов).
	// nil или NoopAudioUploader → upload отключён.
	AudioUploader providers.AudioUploader
	// STTTranscriber — опциональный STT (Google). Если задан — TranscribeAudio
	// расшифровывает голос в текст.
	STTTranscriber providers.STTTranscriber
	// SanitizeOpts — настройки prompt-injection sanitizer (Phase 5.34).
	// Zero-value → DefaultSanitizeOpts().
	SanitizeOpts providers.SanitizeOpts
	// PIIOpts — Phase 5.X: redact email/phone/cards/etc. перед отправкой
	// в LLM и сохранением в БД. Zero-value (Enabled=false) → no-op.
	PIIOpts providers.PIIRedactOpts
	// ABTests — Phase 5.X: A/B-эксперименты (модели, промпты).
	// nil → EmptyRegistry (никакие эксперименты не активны).
	ABTests *abtest.Registry
	// ABExposures — Phase 5.X: журнал назначений variant'ов (опционально).
	// Если nil — exposure-events не пишутся в БД (only in-memory hash-bucketing).
	ABExposures repository.ABExposureRepository
	User        user.Client

	Conversations repository.ConversationRepository
	Messages      repository.MessageRepository
	Explanations  repository.ExplanationRepository
	Writing       repository.WritingRepository
	Pronunciation repository.PronunciationRepository
	Quotas        repository.QuotaRepository
	// Feedback — Phase 5.X: thumbs up/down оценки assistant-сообщений.
	// Опционален: если nil — Submit/Delete/Get вернут InvalidArgument /
	// NotFound, остальные фичи работают как раньше.
	Feedback repository.FeedbackRepository
}

// New — конструктор.
func New(cfg Config, d Deps) *Service {
	if cfg.DefaultModelChat == "" {
		cfg.DefaultModelChat = "gpt-4o-mini"
	}
	if cfg.DefaultModelHeavy == "" {
		cfg.DefaultModelHeavy = "gpt-4o"
	}
	mod := d.Moderator
	if mod == nil {
		mod = providers.NewNoopModerator()
	}
	san := d.SanitizeOpts
	if san.MaxLength == 0 {
		san = providers.DefaultSanitizeOpts()
	}
	abReg := d.ABTests
	if abReg == nil {
		abReg = abtest.EmptyRegistry()
	}
	return &Service{
		cfg:            cfg,
		provider:       d.Provider,
		moderator:      mod,
		ttsSynth:       d.TTSSynth,
		audioUploader:  d.AudioUploader,
		sttTranscriber: d.STTTranscriber,
		sanitize:       san,
		pii:            d.PIIOpts,
		abtests:        abReg,
		abExposures:    d.ABExposures,
		user:           d.User,
		conversations:  d.Conversations,
		messages:       d.Messages,
		explanations:   d.Explanations,
		writing:        d.Writing,
		pronunciation:  d.Pronunciation,
		quotas:         d.Quotas,
		feedback:       d.Feedback,
	}
}
