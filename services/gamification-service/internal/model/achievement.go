package model

import "time"

// Achievement — каталожная запись.
type Achievement struct {
	ID          string
	Code        string
	Title       string
	Description string
	IconURL     string
	Category    string
	Tier        int
	XPReward    int
	GemsReward  int
	Criteria    []byte // raw JSON
	IsHidden    bool
	CreatedAt   time.Time
}

// UserAchievement — связка пользователь ↔ достижение.
type UserAchievement struct {
	UserID         string
	AchievementID  string
	Progress       int
	UnlockedAt     time.Time
	AchievementRef *Achievement // подтягивается join'ом при чтении
}
