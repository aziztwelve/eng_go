package model

import "time"

// Profile представляет профиль пользователя
type Profile struct {
	ID          string
	UserID      string
	FirstName   *string
	LastName    *string
	NativeLang  *string
	TargetLang  *string
	Bio         *string
	AvatarURL   *string
	DateOfBirth *time.Time
	Timezone    *string
	CreatedAt   time.Time
	UpdatedAt   time.Time
}

// UpdateProfileData содержит данные для обновления профиля
type UpdateProfileData struct {
	FirstName   *string
	LastName    *string
	NativeLang  *string
	TargetLang  *string
	Bio         *string
	AvatarURL   *string
	DateOfBirth *string // ISO 8601 format: "1990-01-15"
	Timezone    *string
}
