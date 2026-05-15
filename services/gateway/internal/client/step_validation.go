package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	stepvalidationv1 "github.com/elearning/shared/pkg/proto/step_validation/v1"
)

// StepValidationClient — обёртка над step-validation-service.
type StepValidationClient struct {
	conn   *grpc.ClientConn
	client stepvalidationv1.StepValidationServiceClient
}

// NewStepValidationClient — gRPC-клиент к step-validation-service.
func NewStepValidationClient(ctx context.Context, addr string) (*StepValidationClient, error) {
	conn, err := grpc.DialContext(ctx, addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, err
	}
	return &StepValidationClient{
		conn:   conn,
		client: stepvalidationv1.NewStepValidationServiceClient(conn),
	}, nil
}

// SubmitAnswer — основной endpoint phase-2.
func (c *StepValidationClient) SubmitAnswer(ctx context.Context, req *stepvalidationv1.SubmitAnswerRequest) (*stepvalidationv1.SubmitAnswerResponse, error) {
	return c.client.SubmitAnswer(ctx, req)
}

// ListAttempts — история попыток.
func (c *StepValidationClient) ListAttempts(ctx context.Context, req *stepvalidationv1.ListAttemptsRequest) (*stepvalidationv1.ListAttemptsResponse, error) {
	return c.client.ListAttempts(ctx, req)
}

// Close — закрывает gRPC соединение.
func (c *StepValidationClient) Close() error {
	return c.conn.Close()
}
