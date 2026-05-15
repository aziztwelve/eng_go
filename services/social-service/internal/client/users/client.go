// Package users — gRPC клиент к user-service для enrichment leaderboard.
//
// Если USER_SERVICE_ADDR пуст — используется noop-клиент (возвращает пустую
// карту), сервис стартует без зависимости.
package users

import (
	"context"

	"github.com/google/uuid"
)

// Profile — минимальный набор полей для leaderboard'а.
type Profile struct {
	UserID    uuid.UUID
	FullName  string
	AvatarURL string
}

// Client — интерфейс для enrichment.
type Client interface {
	BatchGetProfiles(ctx context.Context, userIDs []uuid.UUID) (map[uuid.UUID]*Profile, error)
	Close() error
}
