package v1

import (
	"context"
	"errors"
	"github.com/elearning/auth-service/internal/model"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) ValidateToken(ctx context.Context, req *authv1.ValidateTokenRequest) (*authv1.ValidateTokenResponse, error) {
	userID, role, isGuest, err := a.authService.ValidateToken(ctx, req.GetToken())
	if err != nil {
		if !errors.Is(err, model.ErrInvalidToken) && !errors.Is(err, model.ErrTokenExpired) {
			return nil, status.Error(codes.Unavailable, "authentication temporarily unavailable")
		}
		return &authv1.ValidateTokenResponse{
			Valid: false,
		}, nil
	}

	return &authv1.ValidateTokenResponse{
		Valid:   true,
		UserId:  userID,
		Role:    role,
		IsGuest: isGuest,
	}, nil
}
