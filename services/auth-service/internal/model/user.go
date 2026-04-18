package model

import "time"

// User представляет пользователя в системе
type User struct {
	ID           string
	Email        string
	Username     string
	PasswordHash string
	Role         string
	CreatedAt    time.Time
}

// TokenPair содержит пару токенов
type TokenPair struct {
	AccessToken  string
	RefreshToken string
	ExpiresAt    time.Time
}
