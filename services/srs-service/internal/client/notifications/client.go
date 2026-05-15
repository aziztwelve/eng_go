// Package notifications — узкий клиент к notifications-service.
//
// Используется cron'ом practice_reminder. Все вызовы non-fatal — отказ
// notifications-service не валит триггер.
package notifications

import (
	"context"
	"encoding/json"
)

// SendInput — параметры одного push'а.
type SendInput struct {
	UserID string
	// Channel — короткий slug: "practice_reminder".
	Channel string
	Title   string
	Body    string
	// Data — произвольный JSON, попадает в payload push'а (deep link и т.д.).
	Data json.RawMessage
	// DedupKey — пусто → сервис проставит "<channel>:YYYY-MM-DD".
	DedupKey string
	// IgnoreQuietHours — для срочных пушей. По умолчанию false.
	IgnoreQuietHours bool
}

// Client описывает контракт.
type Client interface {
	Send(ctx context.Context, in SendInput) error
}
