package user

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

type grpcClient struct {
	conn   *grpc.ClientConn
	client userv1.UserServiceClient
}

// NewGRPCClient — клиент user-service.
func NewGRPCClient(_ context.Context, addr string) (Client, func() error, error) {
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, nil, err
	}
	c := &grpcClient{
		conn:   conn,
		client: userv1.NewUserServiceClient(conn),
	}
	return c, conn.Close, nil
}

func (c *grpcClient) GetProfile(ctx context.Context, userID string) (*Profile, error) {
	resp, err := c.client.GetProfile(ctx, &userv1.GetProfileRequest{UserId: userID})
	if err != nil {
		// Не валим caller'а — пусть работает на дефолтах.
		return nil, nil //nolint:nilnil
	}
	p := resp.GetProfile()
	if p == nil {
		return &Profile{UserID: userID}, nil
	}
	return &Profile{
		UserID:         userID,
		NativeLanguage: p.GetNativeLang().GetValue(),
		TargetLanguage: p.GetTargetLang().GetValue(),
		// user-service пока не отдаёт user_level / is_premium — fallback'и
		// проставляются на уровне сервиса.
	}, nil
}
