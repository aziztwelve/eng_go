package model

import (
	"database/sql"
	"time"
)

// Profile представляет профиль пользователя в БД
type Profile struct {
	ID          string
	UserID      string
	FirstName   sql.NullString
	LastName    sql.NullString
	NativeLang  sql.NullString
	TargetLang  sql.NullString
	Bio         sql.NullString
	AvatarURL   sql.NullString
	DateOfBirth sql.NullTime
	Timezone    sql.NullString
	CreatedAt   time.Time
	UpdatedAt   time.Time
}
