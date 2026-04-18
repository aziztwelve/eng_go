package v1

import (
	"context"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) Register(ctx context.Context, req *authv1.RegisterRequest) (*authv1.RegisterResponse, error) {
	userID, err := a.authService.Register(ctx, req.GetEmail(), req.GetPassword(), req.GetUsername())
	if err != nil {
		return nil, err
	}

	return &authv1.RegisterResponse{
		UserId: userID,
	}, nil
}
