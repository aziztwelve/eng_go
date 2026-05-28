package service

import (
	"context"

	"github.com/elearning/auth-service/internal/model"
)

// AuthService определяет интерфейс для бизнес-логики аутентификации
type AuthService interface {
	Register(ctx context.Context, email, password, username string) (string, error)
	Login(ctx context.Context, email, password string) (model.TokenPair, error)

	// ValidateToken возвращает (user_id, role, is_guest, error).
	// is_guest=true для guest-сессий (см. CreateGuestSession).
	ValidateToken(ctx context.Context, token string) (string, string, bool, error)
	RefreshToken(ctx context.Context, refreshToken string) (string, error)
	GetUserByID(ctx context.Context, userID string) (*model.User, error)

	// Admin methods
	ListUsers(ctx context.Context, limit, offset int32, search, role string) ([]model.User, int32, error)
	UpdateUserRole(ctx context.Context, userID, role string) (model.User, error)
	DeleteUser(ctx context.Context, userID string) error

	// SearchByUsername — public-поиск по префиксу username для friends.
	SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID string) ([]model.User, error)

	// === Guest mode (onboarding-spec.md §3.2) ===

	// CreateGuestSession создаёт нового гостя или возвращает существующего
	// по device_id, выдаёт JWT с is_guest=true claim.
	// created=true если был создан новый user, false если переиспользован.
	CreateGuestSession(ctx context.Context, deviceID string) (user model.User, tokens model.TokenPair, created bool, err error)

	// ClaimGuestAccount конвертирует гостя (по userID) в registered user
	// и выдаёт fresh-токены без is_guest claim. user_id preserve'ится.
	ClaimGuestAccount(ctx context.Context, guestUserID, email, password, username string) (user model.User, tokens model.TokenPair, err error)

	// ClaimGuestWithOAuth — claim guest через OAuth (Google / Apple).
	// В Sprint 1 верификация id_token stub'нута: provider='guest_fake'
	// принимает любой id_token, использует email/displayName из request.
	// См. docs/tasks/mob/onboarding-v3-oki-style.md §2.4.
	ClaimGuestWithOAuth(ctx context.Context, guestUserID, provider, idToken, email, displayName string) (user model.User, tokens model.TokenPair, err error)

	// CleanupExpiredGuests удаляет гостей старше cutoffDays (default 90).
	CleanupExpiredGuests(ctx context.Context, cutoffDays int32) (int32, error)
}
