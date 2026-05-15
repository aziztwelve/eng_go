package notifications

import "context"

// noopClient — фолбэк, если NOTIFICATIONS_ADDR не задан. Все вызовы — no-op.
type noopClient struct{}

// NewNoop — конструктор noop-клиента.
func NewNoop() Client { return &noopClient{} }

func (n *noopClient) Send(ctx context.Context, in SendInput) error { return nil }
