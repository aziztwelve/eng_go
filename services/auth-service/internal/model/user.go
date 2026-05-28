package model

import "time"

// User представляет пользователя в системе.
//
// Гость (is_guest=true) не имеет email/password_hash, но имеет
// guest_device_id для идемпотентности bootstrap'а. Все downstream-сервисы
// (gamification/srs/social) работают для гостя ровно так же — отличие
// только в auth-таблице.
type User struct {
	ID            string
	Email         *string
	Username      string
	PasswordHash  *string
	Role          string
	CreatedAt     time.Time
	IsGuest       bool
	GuestDeviceID *string
	// Onboarding v3 — OAuth claim. nil для regular email-password users.
	OAuthProvider *string // 'google' | 'apple' | 'guest_fake'
	OAuthSub      *string // subject claim из id_token
}

// EmailValue возвращает email или пустую строку (для proto-конверсии).
func (u User) EmailValue() string {
	if u.Email == nil {
		return ""
	}
	return *u.Email
}

// TokenPair содержит пару токенов
type TokenPair struct {
	AccessToken  string
	RefreshToken string
	ExpiresAt    time.Time
}
