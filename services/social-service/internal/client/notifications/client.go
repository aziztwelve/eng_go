// Package notifications — узкий клиент к notifications-service для
// промо-пушей league promotion ("You promoted to X League!").
//
// Реализации: gRPC (boundary) и noop (fallback, если адрес не задан).
// Все вызовы non-fatal — отказ notifications-service не валит rotation.
package notifications

import (
	"context"
	"encoding/json"
)

// SendInput — параметры одного push'а.
type SendInput struct {
	UserID  string
	Channel string // "achievement" — переиспользуем канал
	Title   string
	Body    string
	Data    json.RawMessage
	// DedupKey пуст → сервис проставит "<channel>:YYYY-MM-DD".
	// Для promotion лучше передавать "league_promotion:<cohort_id>" чтобы
	// одна когорта не дублировала push, если rotation запустится повторно.
	DedupKey         string
	IgnoreQuietHours bool
}

// Client описывает контракт.
type Client interface {
	Send(ctx context.Context, in SendInput) error
}
