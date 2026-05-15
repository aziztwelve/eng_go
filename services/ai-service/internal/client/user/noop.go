package user

import "context"

// noopClient — fallback если USER_SERVICE_ADDR не задан.
type noopClient struct{}

// NewNoopClient — конструктор no-op клиента.
func NewNoopClient() Client {
	return &noopClient{}
}

// GetProfile — возвращает nil + nil. Caller использует свои дефолты.
func (n *noopClient) GetProfile(ctx context.Context, userID string) (*Profile, error) {
	return nil, nil //nolint:nilnil
}
