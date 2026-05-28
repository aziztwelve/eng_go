package auth

import (
	"context"
	"crypto/sha256"
	"encoding/hex"
	"strings"

	"golang.org/x/crypto/bcrypt"

	"github.com/elearning/auth-service/internal/model"
)

// validOAuthProviders — допустимые провайдеры для ClaimGuestWithOAuth.
// 'guest_fake' — Sprint 1 stub, accepts any id_token without verification.
// Реальная Google/Apple JWKS-валидация — Sprint 2.
var validOAuthProviders = map[string]struct{}{
	"google":     {},
	"apple":      {},
	"guest_fake": {},
}

// ClaimGuestAccount — конвертация гостя в registered user.
//
// Caller обязан передать guestUserID гостя из его JWT. После успеха:
//   - user.IsGuest = false
//   - user.Email, user.Username, user.PasswordHash заполнены
//   - user.GuestDeviceID = NULL
//   - user_id PRESERVED — все downstream-данные (XP/streak/SRS) остаются
//     привязаны к тому же user_id, без необходимости их миграции.
//
// Возвращает:
//   - ErrInvalidCredentials если guestUserID/email/password пустые
//   - ErrUserAlreadyExists если email занят
//   - ErrUserNotFound если guest не существует или уже не is_guest
func (s *service) ClaimGuestAccount(
	ctx context.Context,
	guestUserID, email, password, username string,
) (model.User, model.TokenPair, error) {
	if guestUserID == "" || email == "" || password == "" || username == "" {
		return model.User{}, model.TokenPair{}, model.ErrInvalidCredentials
	}

	// Hash пароля (тот же bcrypt cost что для Register).
	passwordHash, err := bcrypt.GenerateFromPassword([]byte(password), bcryptCost)
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	user, err := s.authRepository.ClaimGuest(ctx, guestUserID, email, username, string(passwordHash))
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	// Выдаём fresh-токены БЕЗ is_guest claim.
	tokens, err := s.issueTokens(user.ID, user.Role, false)
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	return user, tokens, nil
}

// ClaimGuestWithOAuth — конвертация гостя в registered user через OAuth.
//
// Sprint 1: верификация id_token stub'нута; принимаем любой id_token и
// доверяем email/displayName из request'а. provider='guest_fake' — тот же
// stub, явно помеченный для тестов. Реальные google/apple JWKS-проверки
// делаем в Sprint 2 (см. spec §2.4 "Что НЕ делаем").
//
// Если displayName пустое — генерируем username = "user_<sha8 sub>".
//
// Возвращает:
//   - ErrInvalidCredentials — если обязательные поля пустые или provider
//     неизвестный
//   - ErrUserAlreadyExists — если email или (provider, sub) уже заняты
//   - ErrUserNotFound — если гость не существует или уже не is_guest
func (s *service) ClaimGuestWithOAuth(
	ctx context.Context,
	guestUserID, provider, idToken, email, displayName string,
) (model.User, model.TokenPair, error) {
	if guestUserID == "" || idToken == "" || email == "" {
		return model.User{}, model.TokenPair{}, model.ErrInvalidCredentials
	}
	provider = strings.ToLower(strings.TrimSpace(provider))
	if _, ok := validOAuthProviders[provider]; !ok {
		return model.User{}, model.TokenPair{}, model.ErrInvalidCredentials
	}

	// Sprint 1 stub: subject = hex(sha256(provider || ":" || idToken)).
	// В Sprint 2 заменим на real-извлечение `sub` из верифицированного JWT.
	sub := sha256Hex(provider + ":" + idToken)

	username := strings.TrimSpace(displayName)
	if username == "" {
		username = "user_" + sub[:8]
	}

	user, err := s.authRepository.ClaimGuestWithOAuth(ctx, guestUserID, email, username, provider, sub)
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	tokens, err := s.issueTokens(user.ID, user.Role, false)
	if err != nil {
		return model.User{}, model.TokenPair{}, err
	}

	return user, tokens, nil
}

func sha256Hex(s string) string {
	sum := sha256.Sum256([]byte(s))
	return hex.EncodeToString(sum[:])
}
