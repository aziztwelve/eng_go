// Package gamification определяет интерфейс клиента к будущему
// gamification-сервису (Phase 1). На данный момент Phase 0 использует
// noop-реализацию (см. noop.go) — точки вызова уже расставлены, чтобы
// при появлении сервиса достаточно было подменить реализацию в DI.
package gamification

import "context"

// StepCompletedEvent — событие "пользователь успешно завершил шаг".
type StepCompletedEvent struct {
	UserID     string
	StepID     string
	LessonID   string
	SourceType string  // course | track | standalone
	SourceID   *string // course_id, track_id или nil
	IsCorrect  bool
	Score      *float64
}

// LessonCompletedEvent — событие "пользователь завершил все шаги урока".
type LessonCompletedEvent struct {
	UserID     string
	LessonID   string
	SourceType string
	SourceID   *string
}

// Client описывает контракт для gamification-сервиса.
// Реализации не должны паниковать; ошибки логируются и не пробрасываются
// в основной поток выполнения.
type Client interface {
	OnStepCompleted(ctx context.Context, event StepCompletedEvent) error
	OnLessonCompleted(ctx context.Context, event LessonCompletedEvent) error
}
