package gamification

import (
	"context"

	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// noopClient — заглушка для случаев, когда gamification-service адрес не
// сконфигурирован. Только логирует событие на debug-уровне и возвращает
// (nil, nil) — фронт не будет обновлять heart-cache.
type noopClient struct{}

// NewNoopClient создает no-op реализацию Client.
func NewNoopClient() Client {
	return &noopClient{}
}

func (n *noopClient) OnWrongAnswer(ctx context.Context, ev WrongAnswerEvent) (*gamificationv1.Hearts, error) {
	logger.Debug(ctx, "gamification.OnWrongAnswer (noop)",
		zap.String("user_id", ev.UserID),
		zap.String("question_id", ev.QuestionID),
	)
	return nil, nil
}

func (n *noopClient) OnQuizCompleted(ctx context.Context, ev QuizCompletedEvent) (*gamificationv1.AddXPResponse, error) {
	logger.Debug(ctx, "gamification.OnQuizCompleted (noop)",
		zap.String("user_id", ev.UserID),
		zap.String("quiz_id", ev.QuizID),
		zap.Float64("score_percentage", ev.ScorePercentage),
		zap.Bool("is_passed", ev.IsPassed),
	)
	return nil, nil
}
