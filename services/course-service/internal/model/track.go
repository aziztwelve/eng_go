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
	ID           string
	Code         string
	Title        string
	Description  string
	IconURL      string
	Language     string
	Level        string
	TrackType    string
	IsPublished  bool
	SortOrder    int32
	CreatedBy    string // UUID или "" если не задан
	CreatedAt    time.Time
	UpdatedAt    time.Time
}

// TrackLesson — связь many-to-many между треком и уроком.
type TrackLesson struct {
	TrackID    string
	LessonID   string
	OrderIndex int32
	CreatedAt  time.Time
}
