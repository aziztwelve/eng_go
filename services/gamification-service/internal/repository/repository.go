package repository

import (
	"context"
	"errors"
	"time"

	"github.com/elearning/gamification-service/internal/model"
)

// ErrNotFound — каноническая ошибка отсутствия записи.
var ErrNotFound = errors.New("not found")

// StatsRepository — операции над таблицей user_stats.
// Все мутации идут через UpdateInTx + Get/Create, чтобы изолировать конкурентные апдейты.
type StatsRepository interface {
	Get(ctx context.Context, userID string) (*model.UserStats, error)
	Create(ctx context.Context, stats *model.UserStats) error
	GetOrCreate(ctx context.Context, userID string, maxHearts int) (*model.UserStats, error)
	Update(ctx context.Context, stats *model.UserStats) error

	// ListReadyForHeartRegen возвращает user_id, у которых hearts < max_hearts
	// и next_heart_at <= now. Используется cron-ом.
	ListReadyForHeartRegen(ctx context.Context, now time.Time, limit int) ([]string, error)

	// ResetWeeklyXP обнуляет weekly_xp у всех пользователей.
	ResetWeeklyXP(ctx context.Context) error
}

// XPRepository — журнал XP-транзакций.
type XPRepository interface {
	Insert(ctx context.Context, tx *model.XPTransaction) error
	ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.XPTransaction, int, error)
}

// DailyGoalRepository — daily goal + дневной прогресс.
type DailyGoalRepository interface {
	GetGoal(ctx context.Context, userID string) (*model.DailyGoal, error)
	UpsertGoal(ctx context.Context, goal *model.DailyGoal) error

	GetProgress(ctx context.Context, userID string, date time.Time) (*model.DailyGoalProgress, error)
	UpsertProgress(ctx context.Context, p *model.DailyGoalProgress) error

	// CountCompleted считает, сколько дней пользователь закрыл daily-goal.
	CountCompleted(ctx context.Context, userID string) (int, error)
}

// StreakRepository — журнал streak'а.
type StreakRepository interface {
	Get(ctx context.Context, userID string, date time.Time) (*model.StreakDay, error)
	Upsert(ctx context.Context, day *model.StreakDay) error
	ListLast(ctx context.Context, userID string, days int) ([]*model.StreakDay, error)
}

// AchievementRepository — каталог + связка с пользователем.
type AchievementRepository interface {
	ListCatalog(ctx context.Context, category string, includeHidden bool) ([]*model.Achievement, error)
	GetByCode(ctx context.Context, code string) (*model.Achievement, error)

	ListUser(ctx context.Context, userID string) ([]*model.UserAchievement, error)
	HasUnlocked(ctx context.Context, userID, achievementID string) (bool, error)
	Unlock(ctx context.Context, ua *model.UserAchievement) error
}
