package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	srsv1 "github.com/elearning/shared/pkg/proto/srs/v1"
)

// SRSClient — обёртка над srs-service.
type SRSClient struct {
	conn   *grpc.ClientConn
	client srsv1.SRSServiceClient
}

// NewSRSClient — gRPC-клиент к srs-service.
func NewSRSClient(ctx context.Context, addr string) (*SRSClient, error) {
	conn, err := grpc.DialContext(ctx, addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, err
	}
	return &SRSClient{
		conn:   conn,
		client: srsv1.NewSRSServiceClient(conn),
	}, nil
}

// === SRS ===

func (c *SRSClient) EnsureItem(ctx context.Context, req *srsv1.EnsureItemRequest) (*srsv1.EnsureItemResponse, error) {
	return c.client.EnsureItem(ctx, req)
}

func (c *SRSClient) RecordReview(ctx context.Context, req *srsv1.RecordReviewRequest) (*srsv1.RecordReviewResponse, error) {
	return c.client.RecordReview(ctx, req)
}

func (c *SRSClient) GetDueItems(ctx context.Context, req *srsv1.GetDueItemsRequest) (*srsv1.GetDueItemsResponse, error) {
	return c.client.GetDueItems(ctx, req)
}

func (c *SRSClient) GetWeakItems(ctx context.Context, req *srsv1.GetWeakItemsRequest) (*srsv1.GetWeakItemsResponse, error) {
	return c.client.GetWeakItems(ctx, req)
}

func (c *SRSClient) GetStats(ctx context.Context, req *srsv1.GetStatsRequest) (*srsv1.GetStatsResponse, error) {
	return c.client.GetStats(ctx, req)
}

// === Mistakes ===

func (c *SRSClient) RecordMistake(ctx context.Context, req *srsv1.RecordMistakeRequest) (*srsv1.RecordMistakeResponse, error) {
	return c.client.RecordMistake(ctx, req)
}

func (c *SRSClient) ResolveMistakesForStep(ctx context.Context, req *srsv1.ResolveMistakesForStepRequest) (*srsv1.ResolveMistakesForStepResponse, error) {
	return c.client.ResolveMistakesForStep(ctx, req)
}

func (c *SRSClient) ListMistakes(ctx context.Context, req *srsv1.ListMistakesRequest) (*srsv1.ListMistakesResponse, error) {
	return c.client.ListMistakes(ctx, req)
}

// === Practice ===

func (c *SRSClient) GeneratePracticeSession(ctx context.Context, req *srsv1.GeneratePracticeSessionRequest) (*srsv1.GeneratePracticeSessionResponse, error) {
	return c.client.GeneratePracticeSession(ctx, req)
}

// === Skill decay ===

func (c *SRSClient) InitSkill(ctx context.Context, req *srsv1.InitSkillRequest) (*srsv1.InitSkillResponse, error) {
	return c.client.InitSkill(ctx, req)
}

func (c *SRSClient) StrengthenSkill(ctx context.Context, req *srsv1.StrengthenSkillRequest) (*srsv1.StrengthenSkillResponse, error) {
	return c.client.StrengthenSkill(ctx, req)
}

func (c *SRSClient) GetSkillStrengths(ctx context.Context, req *srsv1.GetSkillStrengthsRequest) (*srsv1.GetSkillStrengthsResponse, error) {
	return c.client.GetSkillStrengths(ctx, req)
}

func (c *SRSClient) GetWeakSkills(ctx context.Context, req *srsv1.GetWeakSkillsRequest) (*srsv1.GetWeakSkillsResponse, error) {
	return c.client.GetWeakSkills(ctx, req)
}

// Close — закрывает gRPC соединение.
func (c *SRSClient) Close() error {
	return c.conn.Close()
}
