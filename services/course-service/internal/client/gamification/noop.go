package gamification

import (
	"context"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
)

// noopClient — заглушка, активная до появления настоящего gamification-сервиса.
// Только логирует события на debug-уровне.
type noopClient struct{}

// NewNoopClient создает no-op реализацию Client.
func NewNoopClient() Client {
	return &noopClient{}
}

func (n *noopClient) OnStepCompleted(ctx context.Context, event StepCompletedEvent) error {
	logger.Debug(ctx, "gamification.OnStepCompleted (noop)",
		zap.String("user_id", event.UserID),
		zap.String("step_id", event.StepID),
		zap.String("lesson_id", event.LessonID),
		zap.String("source_type", event.SourceType),
	)
	return nil
}

func (n *noopClient) OnLessonCompleted(ctx context.Context, event LessonCompletedEvent) error {
	logger.Debug(ctx, "gamification.OnLessonCompleted (noop)",
		zap.String("user_id", event.UserID),
		zap.String("lesson_id", event.LessonID),
		zap.String("source_type", event.SourceType),
	)
	return nil
}
