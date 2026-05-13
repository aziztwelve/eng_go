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
	// LearnedLanguages — ISO 639-1 коды языков курсов, которые пользователь
	// успешно завершил. Денормализованный slice для быстрого matchCriteria
	// `languages` без обращений к course-service на каждый чек.
	LearnedLanguages []string
	CreatedAt        time.Time
	UpdatedAt        time.Time
}
