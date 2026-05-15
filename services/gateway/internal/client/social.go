package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	socialv1 "github.com/elearning/shared/pkg/proto/social/v1"
)

// SocialClient — Phase 4: gRPC-клиент к social-service (leagues, leaderboards).
type SocialClient struct {
	conn   *grpc.ClientConn
	client socialv1.SocialServiceClient
}

func NewSocialClient(ctx context.Context, addr string) (*SocialClient, error) {
	conn, err := grpc.DialContext(ctx, addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, err
	}
	return &SocialClient{
		conn:   conn,
		client: socialv1.NewSocialServiceClient(conn),
	}, nil
}

func (c *SocialClient) ListLeagues(ctx context.Context, req *socialv1.ListLeaguesRequest) (*socialv1.ListLeaguesResponse, error) {
	return c.client.ListLeagues(ctx, req)
}

func (c *SocialClient) EnsureUserInLeague(ctx context.Context, req *socialv1.EnsureUserInLeagueRequest) (*socialv1.EnsureUserInLeagueResponse, error) {
	return c.client.EnsureUserInLeague(ctx, req)
}

func (c *SocialClient) GetMyLeague(ctx context.Context, req *socialv1.GetMyLeagueRequest) (*socialv1.GetMyLeagueResponse, error) {
	return c.client.GetMyLeague(ctx, req)
}

func (c *SocialClient) GetMyLeaderboard(ctx context.Context, req *socialv1.GetMyLeaderboardRequest) (*socialv1.GetMyLeaderboardResponse, error) {
	return c.client.GetMyLeaderboard(ctx, req)
}

func (c *SocialClient) GetHistory(ctx context.Context, req *socialv1.GetHistoryRequest) (*socialv1.GetHistoryResponse, error) {
	return c.client.GetHistory(ctx, req)
}

func (c *SocialClient) RunWeeklyRotation(ctx context.Context, req *socialv1.RunWeeklyRotationRequest) (*socialv1.RunWeeklyRotationResponse, error) {
	return c.client.RunWeeklyRotation(ctx, req)
}

func (c *SocialClient) Close() error {
	return c.conn.Close()
}
