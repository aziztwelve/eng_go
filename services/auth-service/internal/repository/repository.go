package repository

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

// AuthRepository определяет интерфейс для работы с данными пользователей
type AuthRepository interface {
	Create(ctx context.Context, user model.User) error
	GetByEmail(ctx context.Context, email string) (model.User, error)
	GetByID(ctx context.Context, id string) (model.User, error)

	// Admin methods
	ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error)
	UpdateUserRole(ctx context.Context, userID, role string) (model.User, error)
	DeleteUser(ctx context.Context, userID string) error

	// SearchByUsername — public-поиск по префиксу username (ILIKE).
	// excludeUserID — опционально исключаемый id (обычно self).
	SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID string) ([]model.User, error)

	// === Guest mode (onboarding-spec.md §3.2) ===

	// GetByGuestDeviceID — поиск гостя по device_id (idempotent bootstrap).
	GetByGuestDeviceID(ctx context.Context, deviceID string) (model.User, error)
	// ClaimGuest конвертирует гостя (is_guest=true) в registered user
	// одним атомарным UPDATE'ом, сохраняя user_id.
	ClaimGuest(ctx context.Context, userID, email, username, passwordHash string) (model.User, error)

	// ClaimGuestWithOAuth — claim guest через OAuth (Google / Apple /
	// guest_fake). Conflict-handling такой же как у ClaimGuest:
	// ErrUserAlreadyExists если email или (provider, sub) заняты,
	// ErrUserNotFound если гость не существует/не is_guest.
	ClaimGuestWithOAuth(ctx context.Context, userID, email, username, provider, sub string) (model.User, error)
	// CleanupExpiredGuests удаляет всех гостей старше cutoffDays.
	CleanupExpiredGuests(ctx context.Context, cutoffDays int32) (int32, error)
}
