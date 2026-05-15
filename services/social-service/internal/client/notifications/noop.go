package notifications

import "context"

// noopClient — фолбэк, если NOTIFICATIONS_SERVICE_ADDR не задан.
type noopClient struct{}

// NewNoop — конструктор noop-клиента.
func NewNoop() Client { return &noopClient{} }

func (n *noopClient) Send(_ context.Context, _ SendInput) error { return nil }
