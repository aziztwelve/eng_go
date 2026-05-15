package service

import (
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

	provider providers.AIProvider
	user     user.Client

	conversations repository.ConversationRepository
	messages      repository.MessageRepository
	explanations  repository.ExplanationRepository
	writing       repository.WritingRepository
	pronunciation repository.PronunciationRepository
	quotas        repository.QuotaRepository
}

// Deps — все зависимости для сборки Service.
type Deps struct {
	Provider providers.AIProvider
	User     user.Client

	Conversations repository.ConversationRepository
	Messages      repository.MessageRepository
	Explanations  repository.ExplanationRepository
	Writing       repository.WritingRepository
	Pronunciation repository.PronunciationRepository
	Quotas        repository.QuotaRepository
}

// New — конструктор.
func New(cfg Config, d Deps) *Service {
	if cfg.DefaultModelChat == "" {
		cfg.DefaultModelChat = "gpt-4o-mini"
	}
	if cfg.DefaultModelHeavy == "" {
		cfg.DefaultModelHeavy = "gpt-4o"
	}
	return &Service{
		cfg:           cfg,
		provider:      d.Provider,
		user:          d.User,
		conversations: d.Conversations,
		messages:      d.Messages,
		explanations:  d.Explanations,
		writing:       d.Writing,
		pronunciation: d.Pronunciation,
		quotas:        d.Quotas,
	}
}
