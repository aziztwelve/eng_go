package auth

import (
	"context"

	"golang.org/x/crypto/bcrypt"

	"github.com/elearning/auth-service/internal/model"
)

func (s *service) Login(ctx context.Context, email, password string) (model.TokenPair, error) {
	// Получаем пользователя по email
	user, err := s.authRepository.GetByEmail(ctx, email)
	if err != nil {
		if err == model.ErrUserNotFound {
			return model.TokenPair{}, model.ErrInvalidCredentials
		}
		return model.TokenPair{}, err
	}

	// Проверяем пароль
	if err := bcrypt.CompareHashAndPassword([]byte(user.PasswordHash), []byte(password)); err != nil {
		return model.TokenPair{}, model.ErrInvalidCredentials
	}

	// Генерируем токены
	accessToken, err := s.generateAccessToken(user.ID, user.Role)
	if err != nil {
		return model.TokenPair{}, err
	}

	refreshToken, err := s.generateRefreshToken(user.ID)
	if err != nil {
		return model.TokenPair{}, err
	}

	return model.TokenPair{
		AccessToken:  accessToken,
		RefreshToken: refreshToken,
		ExpiresAt:    s.getAccessTokenExpiry(),
	}, nil
}
