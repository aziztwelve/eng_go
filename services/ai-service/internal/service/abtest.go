package service

import (
	"context"
	"time"

	"github.com/elearning/ai-service/internal/abtest"
)

// Известные имена экспериментов. Хардкод чтобы не было typo на местах
// использования; ENV-конфиг должен использовать ровно эти имена,
// иначе experiment будет проигнорирован.
const (
	// ExperimentChatModel — переопределяет model в conversation chat.
	// Variant.Params["model"] — имя модели (e.g. "gpt-4o", "gpt-4o-mini").
	ExperimentChatModel = "chat_model"

	// ExperimentChatPrompt — добавляет суффикс к системному промпту.
	// Variant.Params["system_prompt_suffix"] — текст, который дописывается
	// в конец system-prompt'а (после основного).
	ExperimentChatPrompt = "chat_prompt"
)

// abExposureWriteTimeout — DB-write timeout для exposure logging. Запись
// идёт в фоновой goroutine с собственным контекстом, чтобы parent ctx
// (cancelled клиентом) не отменил logging.
const abExposureWriteTimeout = 3 * time.Second

// pickWithExposure — обёртка над abtest.Registry.Pick, которая
// АСИНХРОННО логирует exposure event'ы в БД (если abExposures repo задан).
//
// Решения:
//   - Async (go), чтобы не блокировать hot path AI-вызова. Запись в БД
//     для каждого Pick'а добавляет ~1мс — небольшой, но систематический
//     overhead, который суммируется при streaming chat.
//   - Свой ctx (background + 3s timeout) — мы НЕ хотим терять exposure
//     event если клиент абортит запрос: нам нужно знать, что юзер был
//     "exposed", даже если он сразу нажал escape.
//   - userID == "" — НЕ логируем (нет смысла; exposure для анонима — шум).
func (s *Service) pickWithExposure(experimentName, userID string) (*abtest.Variant, bool) {
	v, ok := s.abtests.Pick(experimentName, userID)
	if !ok {
		return nil, false
	}
	if s.abExposures != nil && userID != "" {
		variantID := v.ID
		go func() {
			ctx, cancel := context.WithTimeout(context.Background(), abExposureWriteTimeout)
			defer cancel()
			// Ошибки игнорируем — exposure logging non-fatal. В проде
			// можно добавить metric counter для отслеживания DB issues.
			_ = s.abExposures.LogExposure(ctx, userID, experimentName, variantID)
		}()
	}
	return v, true
}

// chatModelFor возвращает model для conversation, учитывая активный
// эксперимент `chat_model`. Если эксперимент не активен / variant без
// param — возвращает defaultModel как есть.
func (s *Service) chatModelFor(userID, defaultModel string) string {
	v, ok := s.pickWithExposure(ExperimentChatModel, userID)
	if !ok {
		return defaultModel
	}
	return v.StringParam("model", defaultModel)
}

// chatPromptSuffixFor — суффикс системного промпта для conversation.
// Пустая строка если эксперимент не активен / variant без param.
func (s *Service) chatPromptSuffixFor(userID string) string {
	v, ok := s.pickWithExposure(ExperimentChatPrompt, userID)
	if !ok {
		return ""
	}
	return v.StringParam("system_prompt_suffix", "")
}
