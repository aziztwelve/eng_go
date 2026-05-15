// Package v1 — gRPC API notifications-service.
package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/notifications-service/internal/converter"
	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/notifications-service/internal/service"
	notifv1 "github.com/elearning/shared/pkg/proto/notifications/v1"
)

type api struct {
	notifv1.UnimplementedNotificationsServiceServer
	svc *service.Service
}

// NewAPI — конструктор.
func NewAPI(svc *service.Service) *api {
	return &api{svc: svc}
}

// === Devices ===

func (a *api) RegisterDevice(ctx context.Context, req *notifv1.RegisterDeviceRequest) (*notifv1.RegisterDeviceResponse, error) {
	platform := converter.PlatformFromProto(req.Platform)
	if platform == "" {
		return nil, status.Error(codes.InvalidArgument, "platform is required")
	}
	d := &model.DeviceToken{
		UserID:    req.UserId,
		Platform:  platform,
		Token:     req.Token,
		Endpoint:  req.Endpoint,
		P256DH:    req.P256Dh,
		Auth:      req.Auth,
		UserAgent: req.UserAgent,
		Locale:    req.Locale,
	}
	out, created, err := a.svc.RegisterDevice(ctx, d)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &notifv1.RegisterDeviceResponse{
		Device:  converter.ToDeviceTokenProto(out),
		Created: created,
	}, nil
}

func (a *api) UnregisterDevice(ctx context.Context, req *notifv1.UnregisterDeviceRequest) (*notifv1.UnregisterDeviceResponse, error) {
	platform := converter.PlatformFromProto(req.Platform)
	n, err := a.svc.UnregisterDevice(ctx, req.UserId, req.DeviceId, platform, req.Token)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &notifv1.UnregisterDeviceResponse{Unregistered: n}, nil
}

func (a *api) ListDevices(ctx context.Context, req *notifv1.ListDevicesRequest) (*notifv1.ListDevicesResponse, error) {
	devices, err := a.svc.ListDevices(ctx, req.UserId, req.IncludeRevoked)
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &notifv1.ListDevicesResponse{}
	for _, d := range devices {
		out.Devices = append(out.Devices, converter.ToDeviceTokenProto(d))
	}
	return out, nil
}

// === Preferences ===

func (a *api) GetPreferences(ctx context.Context, req *notifv1.GetPreferencesRequest) (*notifv1.GetPreferencesResponse, error) {
	prefs, defaults, err := a.svc.GetPreferences(ctx, req.UserId)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &notifv1.GetPreferencesResponse{
		Prefs:         converter.ToPreferencesProto(prefs),
		DefaultsUsed:  defaults,
	}, nil
}

func (a *api) UpdatePreferences(ctx context.Context, req *notifv1.UpdatePreferencesRequest) (*notifv1.UpdatePreferencesResponse, error) {
	if req.Prefs == nil {
		return nil, status.Error(codes.InvalidArgument, "prefs is required")
	}
	p := converter.PreferencesFromProto(req.Prefs)
	out, err := a.svc.UpdatePreferences(ctx, p)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &notifv1.UpdatePreferencesResponse{Prefs: converter.ToPreferencesProto(out)}, nil
}

// === Send ===

func (a *api) SendNotification(ctx context.Context, req *notifv1.SendNotificationRequest) (*notifv1.SendNotificationResponse, error) {
	channel := converter.ChannelFromProto(req.Channel)
	if channel == "" {
		return nil, status.Error(codes.InvalidArgument, "channel is required")
	}
	in := service.SendInput{
		UserID:           req.UserId,
		Channel:          channel,
		Title:            req.Title,
		Body:             req.Body,
		DedupKey:         req.DedupKey,
		DedupWindowSec:   req.DedupWindowSec,
		IgnoreQuietHours: req.IgnoreQuietHours,
		IgnorePrefs:      req.IgnorePrefs,
	}
	if data, err := converter.StructToJSON(req.Data); err == nil && data != nil {
		in.Data = data
	}
	if req.ScheduledAt != nil {
		t := req.ScheduledAt.AsTime()
		in.ScheduledAt = &t
	}
	res, err := a.svc.SendNotification(ctx, in)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &notifv1.SendNotificationResponse{
		Log:                converter.ToNotificationLogProto(res.Log),
		SkippedPref:        res.SkippedPref,
		SkippedQuietHours:  res.SkippedQuiet,
		SkippedDedup:       res.SkippedDedup,
		SkippedNoDevices:   res.SkippedNoDevices,
	}, nil
}

// === Inbox ===

func (a *api) ListNotifications(ctx context.Context, req *notifv1.ListNotificationsRequest) (*notifv1.ListNotificationsResponse, error) {
	readFilter := -1
	if req.Read >= -1 {
		readFilter = int(req.Read)
	}
	limit := int(req.Limit)
	if limit <= 0 {
		limit = 20
	}
	notifs, total, unread, err := a.svc.ListNotifications(ctx, req.UserId, readFilter, limit, int(req.Offset))
	if err != nil {
		return nil, mapServiceError(err)
	}
	out := &notifv1.ListNotificationsResponse{Total: int32(total), Unread: int32(unread)}
	for _, n := range notifs {
		out.Notifications = append(out.Notifications, converter.ToNotificationLogProto(n))
	}
	return out, nil
}

func (a *api) MarkRead(ctx context.Context, req *notifv1.MarkReadRequest) (*notifv1.MarkReadResponse, error) {
	n, err := a.svc.MarkRead(ctx, req.UserId, req.NotificationId)
	if err != nil {
		return nil, mapServiceError(err)
	}
	return &notifv1.MarkReadResponse{Marked: n}, nil
}

// mapServiceError — sentinel → grpc code.
func mapServiceError(err error) error {
	switch {
	case errors.Is(err, service.ErrInvalidArgument):
		return status.Error(codes.InvalidArgument, err.Error())
	case errors.Is(err, service.ErrUserNotFound):
		return status.Error(codes.NotFound, err.Error())
	default:
		return status.Error(codes.Internal, err.Error())
	}
}

