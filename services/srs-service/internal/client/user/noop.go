package user

import "context"

type noopClient struct{}

// NewNoopClient — фолбэк, если USER_SERVICE_ADDR не задан. Всегда "" → UTC.
func NewNoopClient() Client { return &noopClient{} }

func (n *noopClient) Timezone(_ context.Context, _ string) (string, error) {
	return "", nil
}
