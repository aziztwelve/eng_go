// Package repository — интерфейсы хранилищ ai-service.
package repository

import (
	"context"
	"errors"
	"time"

	"github.com/elearning/ai-service/internal/model"
)

// ErrNotFound — стандартный sentinel для NotFound маппинга.
var ErrNotFound = errors.New("not found")

// ConversationRepository — хранилище AI-бесед.
type ConversationRepository interface {
	Create(ctx context.Context, c *model.Conversation) error
	GetByID(ctx context.Context, id string) (*model.Conversation, error)
	ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.Conversation, int64, error)
	// UpdateStats — пересчитывает message_count / total_tokens / cost_usd / last_message_at
	// после добавления message. Один атомарный UPDATE с инкрементами.
	UpdateStats(ctx context.Context, conversationID string, addTokens int32, addCost float64, lastMessageAt time.Time) error
	// MarkEnded — soft-delete (ended_at = NOW).
	MarkEnded(ctx context.Context, id string) error
}

// MessageRepository — хранилище сообщений.
type MessageRepository interface {
	Create(ctx context.Context, m *model.Message) error
	// GetByID — для feedback / streaming флоу. ErrNotFound если нет.
	GetByID(ctx context.Context, id string) (*model.Message, error)
	// ListByConversation — все сообщения, ORDER BY created_at ASC.
	ListByConversation(ctx context.Context, conversationID string) ([]*model.Message, error)
	// GetLastN — последние N сообщений (для prompt history). ORDER BY created_at DESC.
	GetLastN(ctx context.Context, conversationID string, n int) ([]*model.Message, error)
}

// ExplanationRepository — кэш объяснений.
type ExplanationRepository interface {
	// Get — поиск по (step_id, md5(incorrect)). nil-step_id = NULL match
	// в БД (никогда не вернёт строки → cache miss). Возвращает ErrNotFound
	// при miss.
	Get(ctx context.Context, stepID *string, incorrectMD5 string) (*model.Explanation, error)
	Create(ctx context.Context, e *model.Explanation) error
}

// WritingRepository — оценки writing.
type WritingRepository interface {
	Create(ctx context.Context, a *model.WritingAssessment) error
	ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.WritingAssessment, int64, error)
}

// PronunciationRepository — попытки произношения.
type PronunciationRepository interface {
	Create(ctx context.Context, a *model.PronunciationAttempt) error
	ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.PronunciationAttempt, int64, error)
}

// FeedbackRepository — оценки юзером assistant-сообщений (Phase 5.X).
//
// Запись уникальна по (user_id, message_id). Upsert — переключает
// thumbs up ↔ thumbs down, либо обновляет comment.
type FeedbackRepository interface {
	Upsert(ctx context.Context, f *model.MessageFeedback) error
	Get(ctx context.Context, userID, messageID string) (*model.MessageFeedback, error)
	Delete(ctx context.Context, userID, messageID string) error
	// ListByMessageIDs — pre-загрузка для GetConversation. Возвращает
	// map keyed by message_id.
	ListByMessageIDs(ctx context.Context, userID string, messageIDs []string) (map[string]*model.MessageFeedback, error)
	GetConversationStats(ctx context.Context, conversationID string) (*model.FeedbackStats, error)
}

// ABExposureRepository — журнал A/B exposure events (Phase 5.X).
//
// Идемпотентный upsert по (user_id, experiment, variant_id):
//   - первый assignment → INSERT (first_seen_at = last_seen_at = now,
//     exposure_count = 1).
//   - повторные → UPDATE last_seen_at = now, exposure_count++.
//
// Запись non-blocking: вызывается асинхронно из service.Pick, чтобы
// не задерживать hot path AI-вызовов.
type ABExposureRepository interface {
	// LogExposure — fire-and-store для одного assignment'а. Неблокирующий
	// вызов уровня DB; caller обычно вызывает в горутине.
	LogExposure(ctx context.Context, userID, experiment, variantID string) error
}

// QuotaRepository — суточные счётчики.
type QuotaRepository interface {
	// Get — счётчик за конкретную дату. Если строки нет — возвращает
	// нулевую запись (не ErrNotFound), чтобы quota-check работал
	// идемпотентно для новых юзеров.
	Get(ctx context.Context, userID string, date time.Time) (*model.UsageQuota, error)
	// Increment — атомарный UPSERT с инкрементом нужного поля.
	// Один из chatDelta / voiceMinutesDelta / writingDelta задан, остальные = 0.
	Increment(ctx context.Context, userID string, date time.Time, chatDelta int32, voiceMinutesDelta float64, writingDelta int32) error
	// DeleteOlderThan — удаляет все строки с date < before. Возвращает
	// количество удалённых записей. Используется ежедневным cron'ом
	// для cleanup старых счётчиков (по умолчанию >90 дней).
	DeleteOlderThan(ctx context.Context, before time.Time) (int64, error)
}
