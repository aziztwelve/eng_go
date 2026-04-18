package v1

import (
	"context"
	"time"

	"google.golang.org/protobuf/types/known/timestamppb"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) RefreshToken(ctx context.Context, req *authv1.RefreshTokenRequest) (*authv1.RefreshTokenResponse, error) {
	accessToken, err := a.authService.RefreshToken(ctx, req.GetRefreshToken())
	if err != nil {
		return nil, err
	}

	return &authv1.RefreshTokenResponse{
		AccessToken: accessToken,
		ExpiresAt:   timestamppb.New(time.Now().Add(15 * time.Minute)), // TODO: get from config
	}, nil
}
