package model

import "time"

// UserStats — агрегированная статистика пользователя.
type UserStats struct {
	UserID        string
	Level         int
	TotalXP       int
	WeeklyXP      int
	CurrentStreak int
	MaxStreak     int
	LastLessonAt  *time.Time
	Hearts        int
	MaxHearts     int
	NextHeartAt   *time.Time
	Gems          int
	StreakFreezes int
	CreatedAt     time.Time
	UpdatedAt     time.Time
}
