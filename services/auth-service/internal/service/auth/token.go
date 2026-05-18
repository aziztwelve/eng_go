package auth

import (
	"context"
	"time"

	"github.com/golang-jwt/jwt/v5"

	"github.com/elearning/auth-service/internal/model"
)

// guestRefreshTTL — отдельный TTL для guest refresh-токенов.
// Гость живёт максимум 90 дней (см. CleanupExpiredGuests cron). Refresh
// делаем 30 дней — если юзер вернётся через месяц, может рефрешнуть и
// продолжить.
const guestRefreshTTL = 30 * 24 * time.Hour

type accessTokenClaims struct {
	jwt.RegisteredClaims
	UserID  string `json:"user_id"`
	Role    string `json:"role"`
	IsGuest bool   `json:"is_guest,omitempty"`
}

type refreshTokenClaims struct {
	jwt.RegisteredClaims
	UserID  string `json:"user_id"`
	IsGuest bool   `json:"is_guest,omitempty"`
}

func (s *service) ValidateToken(ctx context.Context, tokenString string) (string, string, bool, error) {
	token, err := jwt.ParseWithClaims(tokenString, &accessTokenClaims{}, func(token *jwt.Token) (interface{}, error) {
		return []byte(s.jwtSecret), nil
	})

	if err != nil {
		return "", "", false, model.ErrInvalidToken
	}

	claims, ok := token.Claims.(*accessTokenClaims)
	if !ok || !token.Valid {
		return "", "", false, model.ErrInvalidToken
	}

	// Проверяем срок действия
	if claims.ExpiresAt.Before(time.Now()) {
		return "", "", false, model.ErrTokenExpired
	}

	return claims.UserID, claims.Role, claims.IsGuest, nil
}

func (s *service) RefreshToken(ctx context.Context, refreshTokenString string) (string, error) {
	token, err := jwt.ParseWithClaims(refreshTokenString, &refreshTokenClaims{}, func(token *jwt.Token) (interface{}, error) {
		return []byte(s.jwtSecret), nil
	})

	if err != nil {
		return "", model.ErrInvalidToken
	}

	claims, ok := token.Claims.(*refreshTokenClaims)
	if !ok || !token.Valid {
		return "", model.ErrInvalidToken
	}

	// Проверяем срок действия
	if claims.ExpiresAt.Before(time.Now()) {
		return "", model.ErrTokenExpired
	}

	// Получаем пользователя для получения роли + актуального is_guest флага
	// (на случай если юзер был claim'нут — refresh выдаёт already-non-guest токен).
	user, err := s.authRepository.GetByID(ctx, claims.UserID)
	if err != nil {
		return "", err
	}

	// Генерируем новый access token
	accessToken, err := s.generateAccessToken(user.ID, user.Role, user.IsGuest)
	if err != nil {
		return "", err
	}

	return accessToken, nil
}

func (s *service) generateAccessToken(userID, role string, isGuest bool) (string, error) {
	claims := accessTokenClaims{
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(s.getAccessTokenExpiry()),
			IssuedAt:  jwt.NewNumericDate(time.Now()),
		},
		UserID:  userID,
		Role:    role,
		IsGuest: isGuest,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(s.jwtSecret))
}

func (s *service) generateRefreshToken(userID string, isGuest bool) (string, error) {
	ttl := s.refreshTTL
	if isGuest {
		ttl = guestRefreshTTL
	}
	claims := refreshTokenClaims{
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(ttl)),
			IssuedAt:  jwt.NewNumericDate(time.Now()),
		},
		UserID:  userID,
		IsGuest: isGuest,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(s.jwtSecret))
}

func (s *service) getAccessTokenExpiry() time.Time {
	return time.Now().Add(s.accessTTL)
}
