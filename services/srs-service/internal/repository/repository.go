package repository

import (
	"context"
	"errors"
	"time"

	"github.com/elearning/srs-service/internal/model"
)

// ErrNotFound — стандартный sentinel для NotFound маппинга.
var ErrNotFound = errors.New("not found")

// SRSItemRepository — хранилище SM-2 карточек.
type SRSItemRepository interface {
	// GetByKey — поиск по (user_id, item_type, item_id). ErrNotFound если нет.
	GetByKey(ctx context.Context, userID string, itemType model.ItemType, itemID string) (*model.SRSItem, error)
	// Create — вставка новой карточки. Если уникальность нарушена → ErrAlreadyExists.
	Create(ctx context.Context, item *model.SRSItem) error
	// Upsert — атомарно создаёт или возвращает существующий. Используется
	// в EnsureItem. Возвращает (item, created).
	Upsert(ctx context.Context, item *model.SRSItem) (*model.SRSItem, bool, error)
	// Update — обновляет SM-2 поля + статистику после ревью.
	Update(ctx context.Context, item *model.SRSItem) error
	// GetDue — карточки с next_review_at <= cutoff.
	// itemType="" → все типы. ORDER BY next_review_at ASC (самые просроченные первыми).
	GetDue(ctx context.Context, userID string, itemType model.ItemType, cutoff time.Time, limit int) ([]*model.SRSItem, int, error)
	// GetWeak — самые низкие strength. ORDER BY strength ASC, NULLS FIRST.
	GetWeak(ctx context.Context, userID string, itemType model.ItemType, limit int) ([]*model.SRSItem, error)
	// Stats — счётчики по статусам.
	Stats(ctx context.Context, userID string, now time.Time, todayStart time.Time) (*SRSStats, error)
	// ListUserIDsWithDue — DISTINCT user_id, у кого есть items с
	// next_review_at <= cutoff. Используется practice_reminder cron'ом для
	// энумерации кандидатов. Порядок стабильный (ORDER BY user_id),
	// пагинация по limit/offset.
	ListUserIDsWithDue(ctx context.Context, cutoff time.Time, limit, offset int) ([]string, error)
}

// ErrAlreadyExists — карточка с такой связкой уже существует.
var ErrAlreadyExists = errors.New("already exists")

// SRSStats — агрегаты для GetStats RPC.
type SRSStats struct {
	Total          int32
	DueNow         int32
	Mastered       int32
	Learning       int32
	Fresh          int32
	ReviewedToday  int32
}

// ReviewHistoryRepository — журнал ревью.
type ReviewHistoryRepository interface {
	Create(ctx context.Context, h *model.ReviewHistory) error
}

// SkillDecayRepository — ржавчина навыков.
type SkillDecayRepository interface {
	// Upsert — атомарно создаёт или возвращает существующий skill.
	// Возвращает (skill, created).
	Upsert(ctx context.Context, s *model.SkillDecay) (*model.SkillDecay, bool, error)
	// Get — по (user_id, skill_id). ErrNotFound если нет.
	Get(ctx context.Context, userID, skillID string) (*model.SkillDecay, error)
	// UpdateStrength — обновляет current_strength + last_practiced_at + updated_at.
	UpdateStrength(ctx context.Context, userID, skillID string, strength float64, practicedAt time.Time) error
	// List — все навыки юзера (filter по skill_type), пагинация.
	List(ctx context.Context, userID string, skillType model.SkillType, limit, offset int) ([]*model.SkillDecay, int, error)
	// GetWeak — top-N слабых.
	GetWeak(ctx context.Context, userID string, skillType model.SkillType, limit int) ([]*model.SkillDecay, error)
	// ApplyDailyDecay — атомарный батч UPDATE: для всех skills где
	// last_practiced_at < cutoff, current_strength -= decay_rate * days.
	// Возвращает количество затронутых строк. userID="" → все юзеры.
	ApplyDailyDecay(ctx context.Context, userID string, now time.Time) (int32, error)
}

// MistakeRepository — ошибки пользователя.
type MistakeRepository interface {
	// Upsert — если такая ошибка уже была (user_id, step_id, answer_hash) →
	// инкрементирует times_made, обновляет last_made_at и снимает is_resolved.
	// Возвращает (mistake, incremented).
	Upsert(ctx context.Context, m *model.Mistake) (*model.Mistake, bool, error)
	// ResolveByStep — помечает все неразрешённые ошибки юзера на данном
	// шаге как resolved. Возвращает количество затронутых строк.
	ResolveByStep(ctx context.Context, userID, stepID string) (int32, error)
	// List — список ошибок. resolvedFilter: -1=all, 0=unresolved, 1=resolved.
	List(ctx context.Context, userID string, resolvedFilter int, limit, offset int) ([]*model.Mistake, int, error)
}
