package model

import "time"

// Module представляет модуль курса
type Module struct {
	ID          string
	CourseID    string
	Title       string
	Description string
	OrderIndex  int32
	CreatedAt   time.Time
	UpdatedAt   time.Time
}
