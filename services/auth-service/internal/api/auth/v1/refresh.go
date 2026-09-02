package v1

import (
	"context"

	"google.golang.org/protobuf/types/known/timestamppb"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) RefreshToken(ctx context.Context, req *authv1.RefreshTokenRequest) (*authv1.RefreshTokenResponse, error) {
	tokens, err := a.authService.RefreshToken(ctx, req.GetRefreshToken())
	if err != nil {
		return nil, err
	}

	return &authv1.RefreshTokenResponse{
		AccessToken:  tokens.AccessToken,
		RefreshToken: tokens.RefreshToken,
		ExpiresAt:    timestamppb.New(tokens.ExpiresAt),
	}, nil
}
