package course

import (
	"context"
	"errors"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/wrapperspb"

	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// ErrCourseUnavailable — возвращается, когда сервис недоступен (для
// fallback-логики в submission service).
var ErrCourseUnavailable = errors.New("course-service unavailable")

type grpcClient struct {
	conn   *grpc.ClientConn
	client coursev1.CourseServiceClient
}

// NewGRPCClient — клиент к course-service.
func NewGRPCClient(_ context.Context, addr string) (Client, func() error, error) {
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, nil, err
	}
	c := &grpcClient{
		conn:   conn,
		client: coursev1.NewCourseServiceClient(conn),
	}
	return c, conn.Close, nil
}

func (c *grpcClient) GetStep(ctx context.Context, stepID string) (*Step, error) {
	resp, err := c.client.GetStepContent(ctx, &coursev1.GetStepContentRequest{
		StepId: stepID,
	})
	if err != nil {
		// NotFound оставляем, остальное оборачиваем как unavailable.
		if st, ok := status.FromError(err); ok && st.Code().String() == "NotFound" {
			return nil, err
		}
		return nil, errors.Join(ErrCourseUnavailable, err)
	}
	return AsCourseProtoStep(resp.Step), nil
}

func (c *grpcClient) MarkStepComplete(ctx context.Context, req MarkCompletedRequest) error {
	r := &coursev1.MarkStepCompleteRequest{
		UserId:           req.UserID,
		StepId:           req.StepID,
		TimeSpentSeconds: req.TimeSpentSeconds,
	}
	if req.Score != nil {
		r.Score = wrapperspb.Double(*req.Score)
	}
	if req.Attempts != nil {
		r.Attempts = wrapperspb.Int32(*req.Attempts)
	}
	// SourceType / SourceID — пока не пробрасываются: course.proto не имеет
	// этих полей в MarkStepCompleteRequest. Оставлено как TODO для
	// возможного расширения, аналитика покрывается step_attempts таблицей.
	_ = req.SourceType
	_ = req.SourceID
	_, err := c.client.MarkStepComplete(ctx, r)
	return err
}

func (c *grpcClient) AddVocabularyAsFlashcard(ctx context.Context, userID, vocabularyID, source string) error {
	_, err := c.client.AddVocabularyAsFlashcard(ctx, &coursev1.AddVocabularyAsFlashcardRequest{
		UserId:       userID,
		VocabularyId: vocabularyID,
		Source:       source,
	})
	return err
}
