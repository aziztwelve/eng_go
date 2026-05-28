package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"

	"github.com/elearning/auth-service/internal/model"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// CreateGuestSession создаёт нового гостя (или возвращает существующего по
// device_id) и выдаёт JWT с is_guest=true claim.
func (a *api) CreateGuestSession(
	ctx context.Context,
	req *authv1.CreateGuestSessionRequest,
) (*authv1.CreateGuestSessionResponse, error) {
	user, tokens, created, err := a.authService.CreateGuestSession(ctx, req.GetDeviceId())
	if err != nil {
		if errors.Is(err, model.ErrInvalidDeviceID) {
			return nil, status.Error(codes.InvalidArgument, "device_id is required")
		}
		return nil, status.Errorf(codes.Internal, "create guest session: %v", err)
	}

	return &authv1.CreateGuestSessionResponse{
		UserId:       user.ID,
		AccessToken:  tokens.AccessToken,
		RefreshToken: tokens.RefreshToken,
		ExpiresAt:    timestamppb.New(tokens.ExpiresAt),
		Created:      created,
	}, nil
}

// ClaimGuestAccount конвертирует гостя в registered user.
func (a *api) ClaimGuestAccount(
	ctx context.Context,
	req *authv1.ClaimGuestAccountRequest,
) (*authv1.ClaimGuestAccountResponse, error) {
	user, tokens, err := a.authService.ClaimGuestAccount(
		ctx,
		req.GetGuestUserId(),
		req.GetEmail(),
		req.GetPassword(),
		req.GetUsername(),
	)
	if err != nil {
		switch {
		case errors.Is(err, model.ErrInvalidCredentials):
			return nil, status.Error(codes.InvalidArgument, "invalid credentials")
		case errors.Is(err, model.ErrUserAlreadyExists):
			return nil, status.Error(codes.AlreadyExists, "email already taken")
		case errors.Is(err, model.ErrUserNotFound):
			return nil, status.Error(codes.FailedPrecondition, "guest not found or already claimed")
		default:
			return nil, status.Errorf(codes.Internal, "claim guest account: %v", err)
		}
	}

	return &authv1.ClaimGuestAccountResponse{
		UserId:       user.ID,
		AccessToken:  tokens.AccessToken,
		RefreshToken: tokens.RefreshToken,
		ExpiresAt:    timestamppb.New(tokens.ExpiresAt),
	}, nil
}

// ClaimGuestWithOAuth — конвертирует гостя через OAuth (Google / Apple).
// Sprint 1 stub'нут (см. service/auth/claim.go ClaimGuestWithOAuth).
func (a *api) ClaimGuestWithOAuth(
	ctx context.Context,
	req *authv1.ClaimGuestWithOAuthRequest,
) (*authv1.ClaimGuestAccountResponse, error) {
	user, tokens, err := a.authService.ClaimGuestWithOAuth(
		ctx,
		req.GetGuestUserId(),
		req.GetProvider(),
		req.GetIdToken(),
		req.GetEmail(),
		req.GetDisplayName(),
	)
	if err != nil {
		switch {
		case errors.Is(err, model.ErrInvalidCredentials):
			return nil, status.Error(codes.InvalidArgument, "invalid oauth credentials")
		case errors.Is(err, model.ErrUserAlreadyExists):
			return nil, status.Error(codes.AlreadyExists, "email or oauth identity already taken")
		case errors.Is(err, model.ErrUserNotFound):
			return nil, status.Error(codes.FailedPrecondition, "guest not found or already claimed")
		default:
			return nil, status.Errorf(codes.Internal, "claim guest oauth: %v", err)
		}
	}

	return &authv1.ClaimGuestAccountResponse{
		UserId:       user.ID,
		AccessToken:  tokens.AccessToken,
		RefreshToken: tokens.RefreshToken,
		ExpiresAt:    timestamppb.New(tokens.ExpiresAt),
	}, nil
}

// CleanupExpiredGuests — RPC для cron'а (или admin-инструмента).
func (a *api) CleanupExpiredGuests(
	ctx context.Context,
	req *authv1.CleanupExpiredGuestsRequest,
) (*authv1.CleanupExpiredGuestsResponse, error) {
	deleted, err := a.authService.CleanupExpiredGuests(ctx, req.GetCutoffDays())
	if err != nil {
		return nil, status.Errorf(codes.Internal, "cleanup expired guests: %v", err)
	}
	return &authv1.CleanupExpiredGuestsResponse{
		DeletedCount: deleted,
	}, nil
}
