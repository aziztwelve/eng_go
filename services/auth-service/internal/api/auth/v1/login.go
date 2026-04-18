package v1

import (
	"context"

	"github.com/elearning/auth-service/internal/converter"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) Login(ctx context.Context, req *authv1.LoginRequest) (*authv1.LoginResponse, error) {
	tokenPair, err := a.authService.Login(ctx, req.GetEmail(), req.GetPassword())
	if err != nil {
		return nil, err
	}

	return converter.TokenPairToProto(tokenPair), nil
}
