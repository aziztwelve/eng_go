package model

import "errors"

var (
	// ErrProfileNotFound возвращается когда профиль не найден
	ErrProfileNotFound = errors.New("profile not found")
	// ErrInvalidUserID возвращается при невалидном user ID
	ErrInvalidUserID = errors.New("invalid user ID")
	// ErrInvalidData возвращается при невалидных данных профиля
	ErrInvalidData = errors.New("invalid profile data")
)
