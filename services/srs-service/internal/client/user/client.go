// Package user — узкий клиент к user-service для srs.
//
// Используется только cron'ом practice_reminder: ему нужна IANA-зона
// пользователя, чтобы решить, какой сейчас локальный час и слать ли
// напоминание именно ему. Реализации: gRPC (с TTL-кэшем) и noop.
package user

import "context"

// Client описывает контракт. Отсутствие данных не должно паниковать —
// возвращайте "" (вызывающий код трактует как UTC).
type Client interface {
	Timezone(ctx context.Context, userID string) (string, error)
}
