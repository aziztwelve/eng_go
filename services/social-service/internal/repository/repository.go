// Package repository содержит интерфейсы хранилищ social-service.
//
// Backing storage:
//   - Postgres (источник правды): leagues / cohorts / user_leagues / league_history
//   - Redis (горячий кэш leaderboard): ZSet leaderboard:cohort:{id}
package repository

import (
	"context"
	"errors"
	"time"

	"github.com/google/uuid"

	"github.com/elearning/social-service/internal/model"
)

// ErrNotFound — sentinel для "записи нет".
var ErrNotFound = errors.New("repository: not found")

// LeagueRepo — справочник лиг (read-only после миграции).
type LeagueRepo interface {
	List(ctx context.Context) ([]*model.League, error)
	GetByID(ctx context.Context, id int) (*model.League, error)
}

// CohortRepo — управление когортами.
type CohortRepo interface {
	// FindOpen ищет когорту league_id текущего цикла где member_count < 30
	// и is_finished=false. Если нет — возвращает (nil, ErrNotFound).
	FindOpen(ctx context.Context, leagueID int, cycleStart, cycleEnd time.Time) (*model.Cohort, error)
	Create(ctx context.Context, c *model.Cohort) error
	IncrementMemberCount(ctx context.Context, cohortID uuid.UUID) error
	MarkFinished(ctx context.Context, cohortID uuid.UUID) error
	// ListActive возвращает все когорты с is_finished=false и cycle_end_at <= now.
	// Эти когорты должны быть обработаны WeeklyRotation.
	ListActiveExpired(ctx context.Context, now time.Time) ([]*model.Cohort, error)
	GetByID(ctx context.Context, id uuid.UUID) (*model.Cohort, error)
}

// UserLeagueRepo — текущая привязка юзера.
type UserLeagueRepo interface {
	Get(ctx context.Context, userID uuid.UUID) (*model.UserLeague, error)
	Upsert(ctx context.Context, ul *model.UserLeague) error
	IncrementWeeklyXP(ctx context.Context, userID uuid.UUID, amount int) error
	UpdateRank(ctx context.Context, userID uuid.UUID, rank int) error
	ResetWeeklyXPInCohort(ctx context.Context, cohortID uuid.UUID) error
	ListByCohort(ctx context.Context, cohortID uuid.UUID) ([]*model.UserLeague, error)
}

// LeagueHistoryRepo — архив выступлений.
type LeagueHistoryRepo interface {
	Create(ctx context.Context, h *model.LeagueHistoryEntry) error
	ListByUser(ctx context.Context, userID uuid.UUID, limit, offset int) ([]*model.LeagueHistoryEntry, int, error)
}

// LeaderboardRepo — Redis sorted set операции на cohort:{id}.
type LeaderboardRepo interface {
	// AddXP — ZIncrBy weekly_xp юзера в когорте на amount.
	AddXP(ctx context.Context, cohortID uuid.UUID, userID uuid.UUID, amount int) error
	// SetXP — ZAdd с конкретным значением (для bootstrap при assignToCohort).
	SetXP(ctx context.Context, cohortID uuid.UUID, userID uuid.UUID, score int) error
	// GetTop — топ N по убыванию score. Возвращает (user_id, weekly_xp).
	GetTop(ctx context.Context, cohortID uuid.UUID, limit int) ([]LeaderboardScore, error)
	// GetRank — позиция юзера (1-based). Если нет в наборе — (0, ErrNotFound).
	GetRank(ctx context.Context, cohortID uuid.UUID, userID uuid.UUID) (int, error)
	// GetScore — текущий weekly_xp юзера.
	GetScore(ctx context.Context, cohortID uuid.UUID, userID uuid.UUID) (int, error)
	// Reset — удалить sorted set когорты целиком.
	Reset(ctx context.Context, cohortID uuid.UUID) error
}

// LeaderboardScore — pair (user, score) из Redis.
type LeaderboardScore struct {
	UserID   uuid.UUID
	WeeklyXP int
}
