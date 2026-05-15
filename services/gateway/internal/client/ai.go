package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	aiv1 "github.com/elearning/shared/pkg/proto/ai/v1"
)

// AIClient — обёртка над ai-service (Phase 5).
type AIClient struct {
	conn   *grpc.ClientConn
	client aiv1.AIServiceClient
}

// NewAIClient — gRPC-клиент к ai-service.
//
// MaxCallRecvMsgSize/SendMsgSize 16 MB — нужно для аудио в
// CheckPronunciation (10-30 сек ≈ 1-3 MB).
func NewAIClient(ctx context.Context, addr string) (*AIClient, error) {
	conn, err := grpc.DialContext(ctx, addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithDefaultCallOptions(
			grpc.MaxCallRecvMsgSize(16*1024*1024),
			grpc.MaxCallSendMsgSize(16*1024*1024),
		),
	)
	if err != nil {
		return nil, err
	}
	return &AIClient{
		conn:   conn,
		client: aiv1.NewAIServiceClient(conn),
	}, nil
}

// === Conversations ===

func (c *AIClient) StartConversation(ctx context.Context, req *aiv1.StartConversationRequest) (*aiv1.StartConversationResponse, error) {
	return c.client.StartConversation(ctx, req)
}

func (c *AIClient) SendMessage(ctx context.Context, req *aiv1.SendMessageRequest) (*aiv1.SendMessageResponse, error) {
	return c.client.SendMessage(ctx, req)
}

func (c *AIClient) ListConversations(ctx context.Context, req *aiv1.ListConversationsRequest) (*aiv1.ListConversationsResponse, error) {
	return c.client.ListConversations(ctx, req)
}

func (c *AIClient) GetConversation(ctx context.Context, req *aiv1.GetConversationRequest) (*aiv1.GetConversationResponse, error) {
	return c.client.GetConversation(ctx, req)
}

func (c *AIClient) DeleteConversation(ctx context.Context, req *aiv1.DeleteConversationRequest) (*aiv1.DeleteConversationResponse, error) {
	return c.client.DeleteConversation(ctx, req)
}

func (c *AIClient) ListScenarios(ctx context.Context, req *aiv1.ListScenariosRequest) (*aiv1.ListScenariosResponse, error) {
	return c.client.ListScenarios(ctx, req)
}

// === Explain ===

func (c *AIClient) ExplainMistake(ctx context.Context, req *aiv1.ExplainMistakeRequest) (*aiv1.ExplainMistakeResponse, error) {
	return c.client.ExplainMistake(ctx, req)
}

// === Writing ===

func (c *AIClient) AssessWriting(ctx context.Context, req *aiv1.AssessWritingRequest) (*aiv1.AssessWritingResponse, error) {
	return c.client.AssessWriting(ctx, req)
}

// === Pronunciation ===

func (c *AIClient) CheckPronunciation(ctx context.Context, req *aiv1.CheckPronunciationRequest) (*aiv1.CheckPronunciationResponse, error) {
	return c.client.CheckPronunciation(ctx, req)
}

// === Tutor ===

func (c *AIClient) AskTutor(ctx context.Context, req *aiv1.AskTutorRequest) (*aiv1.AskTutorResponse, error) {
	return c.client.AskTutor(ctx, req)
}

// === Content gen (admin) ===

func (c *AIClient) GenerateExercise(ctx context.Context, req *aiv1.GenerateExerciseRequest) (*aiv1.GenerateExerciseResponse, error) {
	return c.client.GenerateExercise(ctx, req)
}

// === Quota ===

func (c *AIClient) GetQuotaStatus(ctx context.Context, req *aiv1.GetQuotaStatusRequest) (*aiv1.GetQuotaStatusResponse, error) {
	return c.client.GetQuotaStatus(ctx, req)
}

// Close — закрывает gRPC-соединение.
func (c *AIClient) Close() error {
	return c.conn.Close()
}
