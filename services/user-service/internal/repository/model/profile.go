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

	// === Onboarding fields (см. migration 002_onboarding_fields.sql) ===
	ProficiencyLevel sql.NullString
	DailyGoalXP      sql.NullInt32
	Motivation       []string // PG TEXT[] -- читается через pgx.Array
	SignupSource     sql.NullString
	PlacementScore   sql.NullInt32
	OnboardedAt      sql.NullTime
}
