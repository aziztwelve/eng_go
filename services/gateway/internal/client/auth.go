package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// AuthClient обертка над gRPC клиентом для Auth Service
type AuthClient struct {
	conn   *grpc.ClientConn
	client authv1.AuthServiceClient
}

// NewAuthClient создает новый клиент для Auth Service
func NewAuthClient(ctx context.Context, addr string) (*AuthClient, error) {
	conn, err := grpc.DialContext(
		ctx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithDefaultCallOptions(
			grpc.MaxCallRecvMsgSize(10*1024*1024), // 10MB
			grpc.MaxCallSendMsgSize(10*1024*1024),
		),
	)
	if err != nil {
		return nil, err
	}

	return &AuthClient{
		conn:   conn,
		client: authv1.NewAuthServiceClient(conn),
	}, nil
}

// Register регистрирует нового пользователя
func (c *AuthClient) Register(ctx context.Context, req *authv1.RegisterRequest) (*authv1.RegisterResponse, error) {
	return c.client.Register(ctx, req)
}

// Login выполняет вход пользователя
func (c *AuthClient) Login(ctx context.Context, req *authv1.LoginRequest) (*authv1.LoginResponse, error) {
	return c.client.Login(ctx, req)
}

// ValidateToken проверяет валидность токена
func (c *AuthClient) ValidateToken(ctx context.Context, req *authv1.ValidateTokenRequest) (*authv1.ValidateTokenResponse, error) {
	return c.client.ValidateToken(ctx, req)
}

// RefreshToken обновляет access token
func (c *AuthClient) RefreshToken(ctx context.Context, req *authv1.RefreshTokenRequest) (*authv1.RefreshTokenResponse, error) {
	return c.client.RefreshToken(ctx, req)
}

// GetUserInfo получает информацию о пользователе по ID
func (c *AuthClient) GetUserInfo(ctx context.Context, req *authv1.GetUserInfoRequest) (*authv1.GetUserInfoResponse, error) {
	return c.client.GetUserInfo(ctx, req)
}

// Close закрывает соединение
func (c *AuthClient) Close() error {
	return c.conn.Close()
}

// ListUsers возвращает список всех пользователей (admin)
func (c *AuthClient) ListUsers(ctx context.Context, req *authv1.ListUsersRequest) (*authv1.ListUsersResponse, error) {
	return c.client.ListUsers(ctx, req)
}

// UpdateUserRole обновляет роль пользователя (admin)
func (c *AuthClient) UpdateUserRole(ctx context.Context, req *authv1.UpdateUserRoleRequest) (*authv1.UpdateUserRoleResponse, error) {
	return c.client.UpdateUserRole(ctx, req)
}

// DeleteUser удаляет пользователя (admin)
func (c *AuthClient) DeleteUser(ctx context.Context, req *authv1.DeleteUserRequest) (*authv1.DeleteUserResponse, error) {
	return c.client.DeleteUser(ctx, req)
}
