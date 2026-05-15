// Package model содержит domain-структуры social-service.
package model

import (
	"time"

	"github.com/google/uuid"
)

// CohortSize — фиксированный размер когорты (Duolingo классика).
const CohortSize = 30

// PromotionTopN / DemotionBottomN — границы зон.
const (
	PromotionTopN     = 7  // rank 1..7 → следующая лига
	DemotionBottomN   = 5  // rank 26..30 → предыдущая лига (если не Bronze)
	MinLeagueTier     = 1  // Bronze
	MaxLeagueTier     = 10 // Diamond
)

// League — каталог лиг.
type League struct {
	ID      int
	Code    string
	Name    string
	IconURL string
	Color   string
	Tier    int
}

// Cohort — группа до 30 юзеров на одну неделю.
type Cohort struct {
	ID            uuid.UUID
	LeagueID      int
	CycleStartAt  time.Time
	CycleEndAt    time.Time
	IsFinished    bool
	MemberCount   int
	CreatedAt     time.Time
}

// IsFull — true если когорта набрала 30 человек.
func (c *Cohort) IsFull() bool {
	return c.MemberCount >= CohortSize
}

// UserLeague — текущая запись юзера в лиге/когорте.
type UserLeague struct {
	UserID         uuid.UUID
	LeagueID       int
	CohortID       uuid.UUID
	WeeklyXP       int
	RankInCohort   *int // nullable до первого snapshot
	JoinedAt       time.Time
	LastUpdatedAt  time.Time
}

// LeagueHistoryEntry — финальный итог недели.
type LeagueHistoryEntry struct {
	ID           uuid.UUID
	UserID       uuid.UUID
	LeagueID     int
	CohortID     uuid.UUID
	CycleStartAt time.Time
	CycleEndAt   time.Time
	FinalXP      int
	FinalRank    int
	Promoted     bool
	Demoted      bool
	GemsEarned   int
	CreatedAt    time.Time
}

// LeaderboardEntry — представление одного юзера в leaderboard'е.
// FullName/AvatarURL опциональны — обогащаются user-service'ом.
type LeaderboardEntry struct {
	Rank      int
	UserID    uuid.UUID
	WeeklyXP  int
	FullName  string
	AvatarURL string
}

// PromotionGems — gems за rank в зависимости от позиции (rank 1-based).
// Согласно phase-4-social.md: 50 / 40 / 30 / 25 / 20 / 15 / 10.
func PromotionGems(rank int) int {
	switch rank {
	case 1:
		return 50
	case 2:
		return 40
	case 3:
		return 30
	case 4:
		return 25
	case 5:
		return 20
	case 6:
		return 15
	case 7:
		return 10
	default:
		return 0
	}
}

// CycleBoundaries возвращает (cycle_start_at, cycle_end_at) для недели в
// которую попадает now (UTC). Понедельник 00:00:00 UTC ↔ воскресенье 23:59:59 UTC.
func CycleBoundaries(now time.Time) (time.Time, time.Time) {
	utc := now.UTC()
	// time.Weekday: Sunday=0..Saturday=6. Нужен Monday=0..Sunday=6.
	wd := int(utc.Weekday())
	offset := (wd + 6) % 7 // дни назад от Monday
	monday := time.Date(utc.Year(), utc.Month(), utc.Day()-offset, 0, 0, 0, 0, time.UTC)
	end := monday.AddDate(0, 0, 7).Add(-time.Second)
	return monday, end
}
