package srs

import (
	"context"
	"encoding/json"
	"fmt"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/structpb"

	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

type grpcClient struct {
	conn   *grpc.ClientConn
	client srsv1.SRSServiceClient
}

// NewGRPCClient — клиент к srs-service.
func NewGRPCClient(_ context.Context, addr string) (Client, func() error, error) {
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, nil, err
	}
	c := &grpcClient{
		conn:   conn,
		client: srsv1.NewSRSServiceClient(conn),
	}
	return c, conn.Close, nil
}

func (c *grpcClient) RecordReview(ctx context.Context, req RecordReviewRequest) (*srsv1.SRSItem, error) {
	resp, err := c.client.RecordReview(ctx, &srsv1.RecordReviewRequest{
		UserId:         req.UserID,
		ItemType:       srsv1.ItemType_ITEM_TYPE_STEP,
		ItemId:         req.StepID,
		Quality:        req.Quality,
		ResponseTimeMs: req.ResponseTimeMs,
		UsedHint:       req.UsedHint,
	})
	if err != nil {
		return nil, err
	}
	return resp.GetItem(), nil
}

func (c *grpcClient) RecordMistake(ctx context.Context, userID, stepID string, answer json.RawMessage) error {
	if len(answer) == 0 {
		return fmt.Errorf("empty answer")
	}
	var m map[string]any
	if err := json.Unmarshal(answer, &m); err != nil {
		// Если ответ не объект (например, число / массив), оборачиваем
		// в { "value": ... }, чтобы влезло в structpb.
		var raw any
		if err2 := json.Unmarshal(answer, &raw); err2 != nil {
			return fmt.Errorf("unmarshal answer: %w", err2)
		}
		m = map[string]any{"value": raw}
	}
	s, err := structpb.NewStruct(m)
	if err != nil {
		return fmt.Errorf("structpb: %w", err)
	}
	_, err = c.client.RecordMistake(ctx, &srsv1.RecordMistakeRequest{
		UserId:          userID,
		StepId:          stepID,
		IncorrectAnswer: s,
	})
	return err
}

func (c *grpcClient) ResolveMistakesForStep(ctx context.Context, userID, stepID string) (int32, error) {
	resp, err := c.client.ResolveMistakesForStep(ctx, &srsv1.ResolveMistakesForStepRequest{
		UserId: userID,
		StepId: stepID,
	})
	if err != nil {
		return 0, err
	}
	return resp.GetResolvedCount(), nil
}
