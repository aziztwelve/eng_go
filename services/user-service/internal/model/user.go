package model

import "time"

// User представляет пользователя
type User struct {
	ID        string
	Email     string
	FullName  string
	Role      string
	CreatedAt time.Time
	UpdatedAt time.Time
}
