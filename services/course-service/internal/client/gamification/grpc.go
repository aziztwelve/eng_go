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

func mapStepType(s string) gamificationv1.StepKind {
	switch s {
	case "text":
		return gamificationv1.StepKind_STEP_KIND_TEXT
	case "video":
		return gamificationv1.StepKind_STEP_KIND_VIDEO
	case "quiz":
		return gamificationv1.StepKind_STEP_KIND_QUIZ
	default:
		return gamificationv1.StepKind_STEP_KIND_UNSPECIFIED
	}
}

func mapSourceType(s string) gamificationv1.SourceType {
	switch s {
	case "course":
		return gamificationv1.SourceType_SOURCE_TYPE_COURSE
	case "track":
		return gamificationv1.SourceType_SOURCE_TYPE_TRACK
	case "standalone":
		return gamificationv1.SourceType_SOURCE_TYPE_STANDALONE
	default:
		return gamificationv1.SourceType_SOURCE_TYPE_UNSPECIFIED
	}
}

func (c *grpcClient) OnStepCompleted(ctx context.Context, ev StepCompletedEvent) error {
	srcID := ""
	if ev.SourceID != nil {
		srcID = *ev.SourceID
	}
	score := 0.0
	if ev.Score != nil {
		score = *ev.Score
	}
	_, err := c.client.OnStepCompleted(ctx, &gamificationv1.OnStepCompletedRequest{
		UserId:     ev.UserID,
		StepId:     ev.StepID,
		LessonId:   ev.LessonID,
		StepKind:   mapStepType(ev.StepType),
		SourceType: mapSourceType(ev.SourceType),
		SourceId:   srcID,
		IsCorrect:  ev.IsCorrect,
		Score:      score,
	})
	if err != nil {
		logger.Warn(ctx, "gamification.OnStepCompleted failed (non-fatal)",
			zap.String("user_id", ev.UserID),
			zap.String("step_id", ev.StepID),
			zap.Error(err),
		)
	}
	return nil
}

func (c *grpcClient) OnLessonCompleted(ctx context.Context, ev LessonCompletedEvent) error {
	srcID := ""
	if ev.SourceID != nil {
		srcID = *ev.SourceID
	}
	_, err := c.client.OnLessonCompleted(ctx, &gamificationv1.OnLessonCompletedRequest{
		UserId:     ev.UserID,
		LessonId:   ev.LessonID,
		SourceType: mapSourceType(ev.SourceType),
		SourceId:   srcID,
	})
	if err != nil {
		logger.Warn(ctx, "gamification.OnLessonCompleted failed (non-fatal)",
			zap.String("user_id", ev.UserID),
			zap.String("lesson_id", ev.LessonID),
			zap.Error(err),
		)
	}
	return nil
}
