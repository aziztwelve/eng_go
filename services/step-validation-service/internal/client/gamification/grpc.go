package gamification

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

type grpcClient struct {
	conn   *grpc.ClientConn
	client gamificationv1.GamificationServiceClient
}

// NewGRPCClient — клиент к gamification-service.
func NewGRPCClient(_ context.Context, addr string) (Client, func() error, error) {
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, nil, err
	}
	c := &grpcClient{
		conn:   conn,
		client: gamificationv1.NewGamificationServiceClient(conn),
	}
	return c, conn.Close, nil
}

func (c *grpcClient) AddXP(ctx context.Context, req AddXPRequest) (*gamificationv1.AddXPResponse, error) {
	return c.client.AddXP(ctx, &gamificationv1.AddXPRequest{
		UserId:   req.UserID,
		Amount:   req.Amount,
		Reason:   req.Reason,
		SourceId: req.SourceID,
	})
}

func (c *grpcClient) LoseHeart(ctx context.Context, userID, sourceID string) (*gamificationv1.Hearts, error) {
	return c.client.LoseHeart(ctx, &gamificationv1.LoseHeartRequest{
		UserId:   userID,
		SourceId: sourceID,
	})
}
