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

// ListUsers возвращает список пользователей (admin)
func (c *UserClient) ListUsers(ctx context.Context, req *userv1.ListUsersRequest) (*userv1.ListUsersResponse, error) {
	return c.client.ListUsers(ctx, req)
}

// GetUser возвращает пользователя по ID (admin)
func (c *UserClient) GetUser(ctx context.Context, req *userv1.GetUserRequest) (*userv1.GetUserResponse, error) {
	return c.client.GetUser(ctx, req)
}

// UpdateUser обновляет пользователя (admin)
func (c *UserClient) UpdateUser(ctx context.Context, req *userv1.UpdateUserRequest) (*userv1.UpdateUserResponse, error) {
	return c.client.UpdateUser(ctx, req)
}

// DeleteUser удаляет пользователя (admin)
func (c *UserClient) DeleteUser(ctx context.Context, req *userv1.DeleteUserRequest) (*userv1.DeleteUserResponse, error) {
	return c.client.DeleteUser(ctx, req)
}

// Close закрывает соединение
func (c *UserClient) Close() error {
	return c.conn.Close()
}
