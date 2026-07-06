package model

import "time"

// TrackType классифицирует трек.
const (
	TrackTypeThematic = "thematic"
	TrackTypeDaily    = "daily"
	TrackTypeStories  = "stories"
	TrackTypePodcast  = "podcast"
)

// Track — тематическая группа standalone уроков (Daily English, Stories, etc.).
type Track struct {
	ID          string
	Code        string
	Title       string
	Description string
	IconURL     string
	Language    string
	Level       string
	TrackType   string
	IsPublished bool
	SortOrder   int32
	Motivation  []string // цели юзера: work, travel, exam, etc.
	CreatedBy   string   // UUID или "" если не задан
	CreatedAt   time.Time
	UpdatedAt   time.Time
}

// TrackLesson — связь many-to-many между треком и уроком.
type TrackLesson struct {
	TrackID    string
	LessonID   string
	OrderIndex int32
	CreatedAt  time.Time
}

// UserTrack-статусы и источники (Phase 8 — персональный план).
const (
	UserTrackStatusActive    = "active"
	UserTrackStatusLocked    = "locked"
	UserTrackStatusCompleted = "completed"

	UserTrackSourceOnboarding = "onboarding"
	UserTrackSourceManual     = "manual"
	UserTrackSourceRecommend  = "recommend"
)

// UserTrack — элемент персонального плана пользователя (Phase 8).
// Материализованная связь user <-> track с порядком и статусом.
type UserTrack struct {
	UserID     string
	Track      *Track // заполняется при чтении (JOIN с learning_tracks)
	OrderIndex int32
	Status     string // active | locked | completed
	Source     string // onboarding | manual | recommend
	AddedAt    time.Time
}
