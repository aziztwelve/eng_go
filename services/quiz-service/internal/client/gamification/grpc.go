package gamification

import (
	"context"
	"fmt"
	"time"

	"go.uber.org/zap"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	"github.com/elearning/platform/pkg/logger"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// grpcClient — реальная реализация Client, общающаяся с gamification-service.
type grpcClient struct {
	conn   *grpc.ClientConn
	client gamificationv1.GamificationServiceClient
}

// NewGRPCClient устанавливает соединение и возвращает Client.
// Закрытие соединения должно регистрироваться в closer'е приложением.
func NewGRPCClient(ctx context.Context, addr string) (Client, func() error, error) {
	dialCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()
	conn, err := grpc.DialContext(
		dialCtx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, nil, fmt.Errorf("dial gamification %s: %w", addr, err)
	}
	c := &grpcClient{conn: conn, client: gamificationv1.NewGamificationServiceClient(conn)}
	return c, conn.Close, nil
}

func (c *grpcClient) OnWrongAnswer(ctx context.Context, ev WrongAnswerEvent) (*gamificationv1.Hearts, error) {
	hearts, err := c.client.LoseHeart(ctx, &gamificationv1.LoseHeartRequest{
		UserId:   ev.UserID,
		SourceId: ev.QuestionID,
	})
	if err != nil {
		logger.Warn(ctx, "gamification.LoseHeart failed (non-fatal)",
			zap.String("user_id", ev.UserID),
			zap.String("question_id", ev.QuestionID),
			zap.Error(err),
		)
		return nil, nil
	}
	return hearts, nil
}

func (c *grpcClient) OnQuizCompleted(ctx context.Context, ev QuizCompletedEvent) (*gamificationv1.AddXPResponse, error) {
	resp, err := c.client.OnQuizCompleted(ctx, &gamificationv1.OnQuizCompletedRequest{
		UserId:          ev.UserID,
		QuizId:          ev.QuizID,
		ScorePercentage: ev.ScorePercentage,
		IsPassed:        ev.IsPassed,
	})
	if err != nil {
		logger.Warn(ctx, "gamification.OnQuizCompleted failed (non-fatal)",
			zap.String("user_id", ev.UserID),
			zap.String("quiz_id", ev.QuizID),
			zap.Error(err),
		)
		return nil, nil
	}
	return resp.GetXp(), nil
}
