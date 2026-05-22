package auth

import (
	"context"

	"github.com/google/uuid"
)

type noopClient struct{}

// NewNoopClient — пустой клиент (auth-service не подключён).
func NewNoopClient() Client { return noopClient{} }

func (noopClient) SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID uuid.UUID) ([]*User, error) {
	return nil, nil
}

func (noopClient) BatchGetUsernames(ctx context.Context, userIDs []uuid.UUID) (map[uuid.UUID]string, error) {
	return map[uuid.UUID]string{}, nil
}

func (noopClient) Close() error { return nil }
