package v1

import (
	"context"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) ValidateToken(ctx context.Context, req *authv1.ValidateTokenRequest) (*authv1.ValidateTokenResponse, error) {
	userID, role, err := a.authService.ValidateToken(ctx, req.GetToken())
	if err != nil {
		return &authv1.ValidateTokenResponse{
			Valid: false,
		}, nil
	}

	return &authv1.ValidateTokenResponse{
		Valid:  true,
		UserId: userID,
		Role:   role,
	}, nil
}
