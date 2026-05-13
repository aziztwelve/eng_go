// Package gamification определяет интерфейс клиента к gamification-сервису.
// Реализации: grpc (boundary) и noop (fallback, активен если адрес не задан).
package gamification

import (
	"context"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// StepCompletedEvent — событие "пользователь успешно завершил шаг".
type StepCompletedEvent struct {
	UserID     string
	StepID     string
	LessonID   string
	StepType   string  // text | video | quiz | task | brain_game | ai_writing
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

// CourseCompletedEvent — событие "пользователь завершил все уроки курса".
// Срабатывает один раз — в момент перехода последнего урока в completed.
// Language передается для achievement `languages` (ISO 639-1).
type CourseCompletedEvent struct {
	UserID   string
	CourseID string
	Language string
}

// Client описывает контракт для gamification-сервиса.
// Реализации не должны паниковать; ошибки логируются и не пробрасываются
// в основной поток выполнения.
//
// `OnStepCompleted` возвращает `*gamificationv1.AddXPResponse` (XP-payload —
// transaction, stats, leveled_up, unlocked_achievements, daily_goal_progress)
// если сервис настроен и вызов прошел успешно. Иначе возвращает (nil, nil).
type Client interface {
	OnStepCompleted(ctx context.Context, event StepCompletedEvent) (*gamificationv1.AddXPResponse, error)
	OnLessonCompleted(ctx context.Context, event LessonCompletedEvent) (*gamificationv1.AddXPResponse, error)
	OnCourseCompleted(ctx context.Context, event CourseCompletedEvent) (*gamificationv1.AddXPResponse, error)
}
