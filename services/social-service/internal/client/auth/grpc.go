package auth

import (
	"context"
	"fmt"

	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/grpc/status"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

type grpcClient struct {
	conn *grpc.ClientConn
	api  authv1.AuthServiceClient
}

// NewGRPCClient подключается к auth-service.
func NewGRPCClient(addr string) (Client, error) {
	if addr == "" {
		return nil, fmt.Errorf("auth: empty addr")
	}
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, fmt.Errorf("auth: dial %s: %w", addr, err)
	}
	return &grpcClient{conn: conn, api: authv1.NewAuthServiceClient(conn)}, nil
}

func (c *grpcClient) SearchByUsername(ctx context.Context, query string, limit int32, excludeUserID uuid.UUID) ([]*User, error) {
	exclude := ""
	if excludeUserID != uuid.Nil {
		exclude = excludeUserID.String()
	}

	resp, err := c.api.SearchByUsername(ctx, &authv1.SearchByUsernameRequest{
		Query:         query,
		Limit:         limit,
		ExcludeUserId: exclude,
	})
	if err != nil {
		return nil, fmt.Errorf("auth: search by username: %w", err)
	}

	out := make([]*User, 0, len(resp.GetUsers()))
	for _, u := range resp.GetUsers() {
		uid, err := uuid.Parse(u.GetId())
		if err != nil {
			continue
		}
		out = append(out, &User{UserID: uid, Username: u.GetUsername()})
	}
	return out, nil
}

func (c *grpcClient) BatchGetUsernames(ctx context.Context, userIDs []uuid.UUID) (map[uuid.UUID]string, error) {
	out := make(map[uuid.UUID]string, len(userIDs))
	if len(userIDs) == 0 {
		return out, nil
	}
	// auth-service не имеет batch-RPC — N independent GetUserInfo. Для friends-list
	// (max ~100) это приемлемо. Если потребуется — добавим BatchGetUsers.
	for _, id := range userIDs {
		resp, err := c.api.GetUserInfo(ctx, &authv1.GetUserInfoRequest{UserId: id.String()})
		if err != nil {
			if status.Code(err) == codes.NotFound {
				continue
			}
			return nil, fmt.Errorf("auth: get user info %s: %w", id, err)
		}
		out[id] = resp.GetUsername()
	}
	return out, nil
}

func (c *grpcClient) Close() error {
	return c.conn.Close()
}
