package auth

import (
	"context"
	"errors"
	"time"

	"github.com/google/uuid"

	"github.com/elearning/auth-service/internal/model"
)

// CreateGuestSession — bootstrap анонимного пользователя.
//
// Идемпотентен по device_id: повторный вызов с тем же device_id вернёт
// того же гостя (с обновлёнными токенами). Это позволяет переустанавливать
// приложение и не терять прогресс если device_id сохранился (на iOS device
// keychain, на Android — keystore-based persistence).
//
// guest user имеет:
//   - Email == nil, PasswordHash == nil
//   - IsGuest = true
//   - GuestDeviceID = deviceID
//   - Role = "student" (CHECK constraint)
//   - Username = "guest_<short-uuid>" (только для не-NULL constraint)
func (s *service) CreateGuestSession(
	ctx context.Context,
	deviceID string,
) (model.User, model.TokenPair, bool, error) {
	if deviceID == "" {
		return model.User{}, model.TokenPair{}, false, model.ErrInvalidDeviceID
	}

	// 1. Idempotency: ищем существующего гостя по device_id.
	existing, err := s.authRepository.GetByGuestDeviceID(ctx, deviceID)
	if err == nil {
		// Гость уже существует — обновляем только токены.
		tokens, terr := s.issueTokens(existing.ID, existing.Role, true)
		if terr != nil {
			return model.User{}, model.TokenPair{}, false, terr
		}
		return existing, tokens, false, nil
	}
	if !errors.Is(err, model.ErrUserNotFound) {
		return model.User{}, model.TokenPair{}, false, err
	}

	// 2. Создаём нового гостя.
	id := uuid.NewString()
	guest := model.User{
		ID:            id,
		Email:         nil,
		Username:      "guest_" + id[:8],
		PasswordHash:  nil,
		Role:          defaultRole,
		CreatedAt:     time.Now(),
		IsGuest:       true,
		GuestDeviceID: &deviceID,
	}

	if err := s.authRepository.Create(ctx, guest); err != nil {
		return model.User{}, model.TokenPair{}, false, err
	}

	tokens, err := s.issueTokens(guest.ID, guest.Role, true)
	if err != nil {
		return model.User{}, model.TokenPair{}, false, err
	}

	return guest, tokens, true, nil
}

// CleanupExpiredGuests — удаляет старых гостей. Используется cron'ом.
func (s *service) CleanupExpiredGuests(ctx context.Context, cutoffDays int32) (int32, error) {
	return s.authRepository.CleanupExpiredGuests(ctx, cutoffDays)
}

// issueTokens — общий хелпер для генерации access+refresh токенов.
func (s *service) issueTokens(userID, role string, isGuest bool) (model.TokenPair, error) {
	access, err := s.generateAccessToken(userID, role, isGuest)
	if err != nil {
		return model.TokenPair{}, err
	}

	refresh, err := s.generateRefreshToken(userID, isGuest)
	if err != nil {
		return model.TokenPair{}, err
	}

	return model.TokenPair{
		AccessToken:  access,
		RefreshToken: refresh,
		ExpiresAt:    s.getAccessTokenExpiry(),
	}, nil
}
