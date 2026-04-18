package model

import "time"

// Course представляет курс
type Course struct {
	ID           string
	Title        string
	Description  string
	Price        float64
	InstructorID string
	Level        string
	Language     string
	ThumbnailURL string
	IsPublished  bool
	CreatedAt    time.Time
	UpdatedAt    time.Time
}
