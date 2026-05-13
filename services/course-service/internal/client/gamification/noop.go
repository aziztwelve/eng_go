package gamification

import (
	"context"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// noopClient — заглушка для случаев, когда gamification-service адрес не
// сконфигурирован. Только логирует события на debug-уровне и возвращает
// (nil, nil) — фронт фолбэкнется на diff-логику в use-gamification-fx.
type noopClient struct{}

// NewNoopClient создает no-op реализацию Client.
func NewNoopClient() Client {
	return &noopClient{}
}

func (n *noopClient) OnStepCompleted(ctx context.Context, event StepCompletedEvent) (*gamificationv1.AddXPResponse, error) {
	logger.Debug(ctx, "gamification.OnStepCompleted (noop)",
		zap.String("user_id", event.UserID),
		zap.String("step_id", event.StepID),
		zap.String("lesson_id", event.LessonID),
		zap.String("source_type", event.SourceType),
	)
	return nil, nil
}

func (n *noopClient) OnLessonCompleted(ctx context.Context, event LessonCompletedEvent) (*gamificationv1.AddXPResponse, error) {
	logger.Debug(ctx, "gamification.OnLessonCompleted (noop)",
		zap.String("user_id", event.UserID),
		zap.String("lesson_id", event.LessonID),
		zap.String("source_type", event.SourceType),
	)
	return nil, nil
}

func (n *noopClient) OnCourseCompleted(ctx context.Context, event CourseCompletedEvent) (*gamificationv1.AddXPResponse, error) {
	logger.Debug(ctx, "gamification.OnCourseCompleted (noop)",
		zap.String("user_id", event.UserID),
		zap.String("course_id", event.CourseID),
		zap.String("language", event.Language),
	)
	return nil, nil
}
