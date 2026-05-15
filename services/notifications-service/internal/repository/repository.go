// Package repository — интерфейсы хранилищ notifications-service.
package repository

import (
	"context"
	"errors"
	"time"

	"github.com/elearning/notifications-service/internal/model"
)

// ErrNotFound — стандартный sentinel.
var ErrNotFound = errors.New("not found")

// ErrAlreadyExists — нарушение уникальности (например dedup).
var ErrAlreadyExists = errors.New("already exists")

// DeviceTokenRepository — хранилище push-токенов.
type DeviceTokenRepository interface {
	// Upsert — атомарно регистрирует/обновляет device. Возвращает (device, created).
	// Если запись была revoked_at != NULL — снимает revoked_at и возвращает created=false.
	Upsert(ctx context.Context, d *model.DeviceToken) (*model.DeviceToken, bool, error)
	// RevokeByID — мягкий отзыв device по id.
	RevokeByID(ctx context.Context, userID, id string) (int32, error)
	// RevokeByToken — мягкий отзыв по (user_id, platform, token).
	RevokeByToken(ctx context.Context, userID string, platform model.Platform, token string) (int32, error)
	// ListActive — все НЕ отозванные устройства юзера.
	ListActive(ctx context.Context, userID string) ([]*model.DeviceToken, error)
	// ListAll — устройства с учётом revoked (для UI настроек).
	ListAll(ctx context.Context, userID string) ([]*model.DeviceToken, error)
}

// PreferencesRepository — настройки пользователя.
type PreferencesRepository interface {
	// Get — текущие prefs. ErrNotFound если записи ещё нет.
	Get(ctx context.Context, userID string) (*model.UserPreferences, error)
	// Upsert — PUT-семантика. Возвращает финальную запись.
	Upsert(ctx context.Context, p *model.UserPreferences) (*model.UserPreferences, error)
}

// NotificationLogRepository — журнал отправок (он же in-app inbox).
type NotificationLogRepository interface {
	// Create — INSERT. ErrAlreadyExists если (user_id, channel, dedup_key) уже есть.
	Create(ctx context.Context, n *model.NotificationLog) error

	// FindDedup — поиск ранее созданной записи в окне (для idempotent SendNotification).
	// ErrNotFound если в окне ничего нет.
	FindDedup(ctx context.Context, userID string, channel model.Channel, dedupKey string, since time.Time) (*model.NotificationLog, error)

	// UpdateStatus — обновляет status / error / счётчики устройств / sent_at.
	UpdateStatus(ctx context.Context, id string, status model.SendStatus, errMsg string, attempted, succeeded int32, sentAt *time.Time) error

	// List — лента inbox.
	// readFilter: -1 = все, 0 = только непрочитанные, 1 = только прочитанные.
	List(ctx context.Context, userID string, readFilter int, limit, offset int) ([]*model.NotificationLog, int, int, error)

	// MarkRead — помечает один (notificationID != "") или все (== "") как прочитанные.
	MarkRead(ctx context.Context, userID, notificationID string) (int32, error)
}
