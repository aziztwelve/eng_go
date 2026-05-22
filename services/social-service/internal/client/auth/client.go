// Package auth — gRPC клиент к auth-service.
//
// Используется для:
//   - SearchByUsername — поиск пользователей для friend-add (Phase 4.5).
//   - GetUserInfo — получить username по user_id (для обогащения friends-списка).
//
// Если AUTH_SERVICE_ADDR пуст — используется noop-клиент.
package auth

import (
	"context"

	"github.com/google/uuid"
)

// User — минимальный набор полей из auth-service.
type User struct {
	UserID   uuid.UUID
	Username string
}

// Client — интерфейс для friend-search/enrichment.
type Client interface {
	// SearchByUsername — поиск пользователей по префиксу.
	// excludeUserID — опционально исключаемый id (обычно self).
	SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID uuid.UUID) ([]*User, error)
	// BatchGetUsernames — для каждого id возвращает username (если найден).
	BatchGetUsernames(ctx context.Context, userIDs []uuid.UUID) (map[uuid.UUID]string, error)
	Close() error
}
