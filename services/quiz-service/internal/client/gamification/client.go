// Package gamification определяет интерфейс клиента к gamification-сервису.
// Реализации: grpc (boundary) и noop (fallback, активен если адрес не задан).
//
// Quiz-service использует клиент для:
//   - `LoseHeart` при неправильном ответе (OnWrongAnswer);
//   - `OnQuizCompleted` при завершении попытки квиза — бонусный XP и
//     achievements (perfect_quizzes, quiz_completed).
package gamification

import (
	"context"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// WrongAnswerEvent — событие "пользователь дал неправильный ответ на вопрос".
type WrongAnswerEvent struct {
	UserID     string
	QuestionID string // используется как source_id для аналитики
}

// QuizCompletedEvent — событие "попытка квиза завершена".
// Фаерится один раз при первом transition'е attempt → completed (фронт может
// re-submit'ить /complete; вызывающий код гарантирует guard).
type QuizCompletedEvent struct {
	UserID          string
	QuizID          string
	ScorePercentage float64 // 0..100
	IsPassed        bool
}

// Client описывает контракт для gamification-сервиса.
// Реализации не должны паниковать; ошибки логируются и не пробрасываются в
// основной поток выполнения.
//
// `OnWrongAnswer` возвращает обновленное состояние hearts (см.
// `gamification.LoseHeart`). Если сервис не сконфигурирован или вызов упал —
// возвращает (nil, nil).
//
// `OnQuizCompleted` возвращает XP-payload (XP transaction, stats,
// leveled_up, unlocked_achievements, daily_goal_progress). Если квиз не
// passed, gamification-сервис вернет nil XP — это нормально.
type Client interface {
	OnWrongAnswer(ctx context.Context, event WrongAnswerEvent) (*gamificationv1.Hearts, error)
	OnQuizCompleted(ctx context.Context, event QuizCompletedEvent) (*gamificationv1.AddXPResponse, error)
}
