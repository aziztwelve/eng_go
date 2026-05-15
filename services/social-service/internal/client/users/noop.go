package users

import (
	"context"

	"github.com/google/uuid"
)

type noopClient struct{}

// NewNoopClient — пустой клиент. Возвращает пустую карту, не валит запросы.
func NewNoopClient() Client { return noopClient{} }

func (noopClient) BatchGetProfiles(ctx context.Context, userIDs []uuid.UUID) (map[uuid.UUID]*Profile, error) {
	return map[uuid.UUID]*Profile{}, nil
}

func (noopClient) Close() error { return nil }
