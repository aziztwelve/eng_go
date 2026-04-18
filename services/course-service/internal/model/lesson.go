package model

import "time"

// Lesson представляет урок
type Lesson struct {
	ID          string
	ModuleID    string
	Title       string
	Description string
	OrderIndex  int32
	CreatedAt   time.Time
	UpdatedAt   time.Time
}
