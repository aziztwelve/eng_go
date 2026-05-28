// Package user определяет узкий клиент к user-service.
//
// Используется для lookup'а профильных полей, которые нужны для:
//   - achievement-критериев (date_of_birth → `birthday`);
//   - timezone-aware streak/daily-goal (date in user's local timezone).
//
// Реализации: gRPC (boundary, с in-memory TTL-кэшем профиля) и noop
// (fallback, если адрес не задан).
package user

import "context"

// Client описывает контракт. Ошибки и отсутствие данных трактуются как
// «значение по умолчанию» — реализации не должны паниковать.
type Client interface {
	// DateOfBirthMMDD возвращает "MM-DD" формат, либо "" если профиль /
	// date_of_birth отсутствуют или сервис недоступен.
	DateOfBirthMMDD(ctx context.Context, userID string) (string, error)
	// Timezone возвращает IANA-имя зоны (например, "Europe/Moscow").
	// Если профиль отсутствует, поле пусто или сервис недоступен — возвращает
	// "" (вызывающий код должен трактовать как UTC).
	Timezone(ctx context.Context, userID string) (string, error)
	// ReminderSlot возвращает онбординговое окно напоминаний пользователя:
	// "morning" | "day" | "evening" | "flex". Пусто → не задано (caller
	// использует default-окно).
	ReminderSlot(ctx context.Context, userID string) (string, error)
}
