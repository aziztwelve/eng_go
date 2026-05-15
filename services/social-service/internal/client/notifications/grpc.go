package notifications

import (
	"context"
	"encoding/json"
	"fmt"
	"time"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/structpb"

	notifv1 "github.com/elearning/shared/pkg/proto/notifications/v1"
)

type grpcClient struct {
	conn   *grpc.ClientConn
	client notifv1.NotificationsServiceClient
}

// NewGRPCClient — устанавливает соединение и возвращает Client + closer.
func NewGRPCClient(ctx context.Context, addr string) (Client, func() error, error) {
	dialCtx, cancel := context.WithTimeout(ctx, 5*time.Second)
	defer cancel()
	conn, err := grpc.DialContext(
		dialCtx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, nil, fmt.Errorf("dial notifications %s: %w", addr, err)
	}
	return &grpcClient{
		conn:   conn,
		client: notifv1.NewNotificationsServiceClient(conn),
	}, conn.Close, nil
}

func channelToProto(c string) notifv1.Channel {
	switch c {
	case "practice_reminder":
		return notifv1.Channel_CHANNEL_PRACTICE_REMINDER
	case "streak_risk":
		return notifv1.Channel_CHANNEL_STREAK_RISK
	case "daily_goal":
		return notifv1.Channel_CHANNEL_DAILY_GOAL
	case "achievement":
		return notifv1.Channel_CHANNEL_ACHIEVEMENT
	default:
		return notifv1.Channel_CHANNEL_UNSPECIFIED
	}
}

func (c *grpcClient) Send(ctx context.Context, in SendInput) error {
	req := &notifv1.SendNotificationRequest{
		UserId:           in.UserID,
		Channel:          channelToProto(in.Channel),
		Title:            in.Title,
		Body:             in.Body,
		DedupKey:         in.DedupKey,
		IgnoreQuietHours: in.IgnoreQuietHours,
	}
	if len(in.Data) > 0 {
		var v map[string]any
		if err := json.Unmarshal(in.Data, &v); err == nil {
			if s, err := structpb.NewStruct(v); err == nil {
				req.Data = s
			}
		}
	}
	_, err := c.client.SendNotification(ctx, req)
	return err
}
