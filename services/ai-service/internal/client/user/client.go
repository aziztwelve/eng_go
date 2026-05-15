// Package user — клиент user-service для ai-service.
package user

import "context"

// Profile — узкий профиль для AI-prompts.
type Profile struct {
	UserID         string
	NativeLanguage string
	TargetLanguage string
	UserLevel      string // CEFR. На MVP — пусто, fallback в сервисе.
	IsPremium      bool   // на MVP всегда false (нет соответствующего поля в user-service).
}

// Client — узкий интерфейс user-service.
type Client interface {
	// GetProfile — fetch profile + ml-настройки. При ошибке/недоступности
	// сервиса должен возвращать nil + nil (caller трактует как «нет данных»,
	// продолжает с дефолтами).
	GetProfile(ctx context.Context, userID string) (*Profile, error)
}
