package auth

import (
	"context"
	"time"

	"github.com/golang-jwt/jwt/v5"

	"github.com/elearning/auth-service/internal/model"
)

type accessTokenClaims struct {
	jwt.RegisteredClaims
	UserID string `json:"user_id"`
	Role   string `json:"role"`
}

type refreshTokenClaims struct {
	jwt.RegisteredClaims
	UserID string `json:"user_id"`
}

func (s *service) ValidateToken(ctx context.Context, tokenString string) (string, string, error) {
	token, err := jwt.ParseWithClaims(tokenString, &accessTokenClaims{}, func(token *jwt.Token) (interface{}, error) {
		return []byte(s.jwtSecret), nil
	})

	if err != nil {
		return "", "", model.ErrInvalidToken
	}

	claims, ok := token.Claims.(*accessTokenClaims)
	if !ok || !token.Valid {
		return "", "", model.ErrInvalidToken
	}

	// Проверяем срок действия
	if claims.ExpiresAt.Before(time.Now()) {
		return "", "", model.ErrTokenExpired
	}

	return claims.UserID, claims.Role, nil
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

	// Получаем пользователя для получения роли
	user, err := s.authRepository.GetByID(ctx, claims.UserID)
	if err != nil {
		return "", err
	}

	// Генерируем новый access token
	accessToken, err := s.generateAccessToken(user.ID, user.Role)
	if err != nil {
		return "", err
	}

	return accessToken, nil
}

func (s *service) generateAccessToken(userID, role string) (string, error) {
	claims := accessTokenClaims{
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(s.getAccessTokenExpiry()),
			IssuedAt:  jwt.NewNumericDate(time.Now()),
		},
		UserID: userID,
		Role:   role,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(s.jwtSecret))
}

func (s *service) generateRefreshToken(userID string) (string, error) {
	claims := refreshTokenClaims{
		RegisteredClaims: jwt.RegisteredClaims{
			ExpiresAt: jwt.NewNumericDate(time.Now().Add(s.refreshTTL)),
			IssuedAt:  jwt.NewNumericDate(time.Now()),
		},
		UserID: userID,
	}

	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	return token.SignedString([]byte(s.jwtSecret))
}

func (s *service) getAccessTokenExpiry() time.Time {
	return time.Now().Add(s.accessTTL)
}
