package users

import (
	"context"
	"fmt"

	"github.com/google/uuid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

type grpcClient struct {
	conn *grpc.ClientConn
	api  userv1.UserServiceClient
}

// NewGRPCClient подключается к user-service. Возвращает ошибку при недоступности.
func NewGRPCClient(addr string) (Client, error) {
	if addr == "" {
		return nil, fmt.Errorf("users: empty addr")
	}
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, fmt.Errorf("users: dial %s: %w", addr, err)
	}
	return &grpcClient{conn: conn, api: userv1.NewUserServiceClient(conn)}, nil
}

func (c *grpcClient) BatchGetProfiles(ctx context.Context, userIDs []uuid.UUID) (map[uuid.UUID]*Profile, error) {
	if len(userIDs) == 0 {
		return map[uuid.UUID]*Profile{}, nil
	}
	ids := make([]string, 0, len(userIDs))
	for _, id := range userIDs {
		ids = append(ids, id.String())
	}

	resp, err := c.api.BatchGetProfiles(ctx, &userv1.BatchGetProfilesRequest{UserIds: ids})
	if err != nil {
		return nil, fmt.Errorf("users: batch get profiles: %w", err)
	}

	out := make(map[uuid.UUID]*Profile, len(resp.GetProfiles()))
	for k, v := range resp.GetProfiles() {
		uid, err := uuid.Parse(k)
		if err != nil {
			continue
		}
		fullName := ""
		if v.GetFirstName() != nil {
			fullName = v.GetFirstName().GetValue()
		}
		if v.GetLastName() != nil {
			if fullName != "" {
				fullName += " "
			}
			fullName += v.GetLastName().GetValue()
		}
		avatar := ""
		if v.GetAvatarUrl() != nil {
			avatar = v.GetAvatarUrl().GetValue()
		}
		out[uid] = &Profile{UserID: uid, FullName: fullName, AvatarURL: avatar}
	}
	return out, nil
}

func (c *grpcClient) Close() error {
	return c.conn.Close()
}
