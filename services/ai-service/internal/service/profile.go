package service

import (
	"context"

	"github.com/elearning/ai-service/internal/client/user"
)

// fetchProfile — best-effort получение профиля. Никогда не возвращает
// ошибку; при недоступности user-service возвращает пустой Profile.
func (s *Service) fetchProfile(ctx context.Context, userID string) user.Profile {
	if s.user == nil {
		return user.Profile{UserID: userID}
	}
	p, _ := s.user.GetProfile(ctx, userID)
	if p == nil {
		return user.Profile{UserID: userID}
	}
	return *p
}
