package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

// UserClient обертка над gRPC клиентом для User Service
type UserClient struct {
	conn   *grpc.ClientConn
	client userv1.UserServiceClient
}

// NewUserClient создает новый клиент для User Service
func NewUserClient(ctx context.Context, addr string) (*UserClient, error) {
	conn, err := grpc.DialContext(
		ctx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithDefaultCallOptions(
			grpc.MaxCallRecvMsgSize(10*1024*1024),
			grpc.MaxCallSendMsgSize(10*1024*1024),
		),
	)
	if err != nil {
		return nil, err
	}

	return &UserClient{
		conn:   conn,
		client: userv1.NewUserServiceClient(conn),
	}, nil
}

// GetProfile получает профиль пользователя
func (c *UserClient) GetProfile(ctx context.Context, req *userv1.GetProfileRequest) (*userv1.GetProfileResponse, error) {
	return c.client.GetProfile(ctx, req)
}

// UpdateProfile обновляет профиль пользователя
func (c *UserClient) UpdateProfile(ctx context.Context, req *userv1.UpdateProfileRequest) (*userv1.UpdateProfileResponse, error) {
	return c.client.UpdateProfile(ctx, req)
}

// GetUserLanguages получает языковые настройки пользователя
func (c *UserClient) GetUserLanguages(ctx context.Context, req *userv1.GetUserLanguagesRequest) (*userv1.GetUserLanguagesResponse, error) {
	return c.client.GetUserLanguages(ctx, req)
}

// GetOnboardingState читает текущее состояние онбординга юзера.
func (c *UserClient) GetOnboardingState(ctx context.Context, req *userv1.GetOnboardingStateRequest) (*userv1.GetOnboardingStateResponse, error) {
	return c.client.GetOnboardingState(ctx, req)
}

// PatchOnboardingState — partial update.
func (c *UserClient) PatchOnboardingState(ctx context.Context, req *userv1.PatchOnboardingStateRequest) (*userv1.PatchOnboardingStateResponse, error) {
	return c.client.PatchOnboardingState(ctx, req)
}

// CompleteOnboarding ставит onboarded_at = NOW().
func (c *UserClient) CompleteOnboarding(ctx context.Context, req *userv1.CompleteOnboardingRequest) (*userv1.CompleteOnboardingResponse, error) {
	return c.client.CompleteOnboarding(ctx, req)
}





// Close закрывает соединение
func (c *UserClient) Close() error {
	return c.conn.Close()
}
