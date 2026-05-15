package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	notifv1 "github.com/elearning/shared/pkg/proto/notifications/v1"
)

// NotificationsClient — обёртка над notifications-service.
type NotificationsClient struct {
	conn   *grpc.ClientConn
	client notifv1.NotificationsServiceClient
}

// NewNotificationsClient — gRPC-клиент к notifications-service.
func NewNotificationsClient(ctx context.Context, addr string) (*NotificationsClient, error) {
	conn, err := grpc.DialContext(ctx, addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
	)
	if err != nil {
		return nil, err
	}
	return &NotificationsClient{
		conn:   conn,
		client: notifv1.NewNotificationsServiceClient(conn),
	}, nil
}

// === Devices ===

func (c *NotificationsClient) RegisterDevice(ctx context.Context, req *notifv1.RegisterDeviceRequest) (*notifv1.RegisterDeviceResponse, error) {
	return c.client.RegisterDevice(ctx, req)
}

func (c *NotificationsClient) UnregisterDevice(ctx context.Context, req *notifv1.UnregisterDeviceRequest) (*notifv1.UnregisterDeviceResponse, error) {
	return c.client.UnregisterDevice(ctx, req)
}

func (c *NotificationsClient) ListDevices(ctx context.Context, req *notifv1.ListDevicesRequest) (*notifv1.ListDevicesResponse, error) {
	return c.client.ListDevices(ctx, req)
}

// === Preferences ===

func (c *NotificationsClient) GetPreferences(ctx context.Context, req *notifv1.GetPreferencesRequest) (*notifv1.GetPreferencesResponse, error) {
	return c.client.GetPreferences(ctx, req)
}

func (c *NotificationsClient) UpdatePreferences(ctx context.Context, req *notifv1.UpdatePreferencesRequest) (*notifv1.UpdatePreferencesResponse, error) {
	return c.client.UpdatePreferences(ctx, req)
}

// === Send (внутренний RPC, gateway не выставляет наружу) ===

func (c *NotificationsClient) SendNotification(ctx context.Context, req *notifv1.SendNotificationRequest) (*notifv1.SendNotificationResponse, error) {
	return c.client.SendNotification(ctx, req)
}

// === Inbox ===

func (c *NotificationsClient) ListNotifications(ctx context.Context, req *notifv1.ListNotificationsRequest) (*notifv1.ListNotificationsResponse, error) {
	return c.client.ListNotifications(ctx, req)
}

func (c *NotificationsClient) MarkRead(ctx context.Context, req *notifv1.MarkReadRequest) (*notifv1.MarkReadResponse, error) {
	return c.client.MarkRead(ctx, req)
}

// Close — закрывает gRPC соединение.
func (c *NotificationsClient) Close() error {
	return c.conn.Close()
}
