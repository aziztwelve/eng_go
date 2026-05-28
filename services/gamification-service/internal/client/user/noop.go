package user

import "context"

// noopClient — заглушка для случаев, когда USER_SERVICE_ADDR не задан.
type noopClient struct{}

// NewNoopClient возвращает no-op реализацию.
func NewNoopClient() Client {
	return &noopClient{}
}

func (n *noopClient) DateOfBirthMMDD(_ context.Context, _ string) (string, error) {
	return "", nil
}

func (n *noopClient) Timezone(_ context.Context, _ string) (string, error) {
	return "", nil
}

func (n *noopClient) ReminderSlot(_ context.Context, _ string) (string, error) {
	return "", nil
}
