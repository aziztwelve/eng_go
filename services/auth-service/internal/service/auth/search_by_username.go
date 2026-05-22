package auth

import (
	"context"
	"strings"

	"github.com/elearning/auth-service/internal/model"
)

// SearchByUsername — поиск пользователей по префиксу username.
// Тримминг + минимальная длина 2 символа.
func (s *service) SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID string) ([]model.User, error) {
	q := strings.TrimSpace(query)
	if len(q) < 2 {
		return []model.User{}, nil
	}
	return s.authRepository.SearchByUsername(ctx, q, limit, excludeUserID)
}
