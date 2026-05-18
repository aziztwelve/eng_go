package model

import (
	"database/sql"
	"time"
)

// User представляет пользователя в БД
type User struct {
	ID            string         `db:"id"`
	Email         sql.NullString `db:"email"`
	Username      string         `db:"username"`
	PasswordHash  sql.NullString `db:"password_hash"`
	Role          string         `db:"role"`
	CreatedAt     time.Time      `db:"created_at"`
	IsGuest       bool           `db:"is_guest"`
	GuestDeviceID sql.NullString `db:"guest_device_id"`
}
