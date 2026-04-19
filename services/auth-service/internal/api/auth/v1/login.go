package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/auth-service/internal/converter"
	"github.com/elearning/auth-service/internal/model"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) Login(ctx context.Context, req *authv1.LoginRequest) (*authv1.LoginResponse, error) {
	tokenPair, err := a.authService.Login(ctx, req.GetEmail(), req.GetPassword())
	if err != nil {
		if errors.Is(err, model.ErrInvalidCredentials) {
			return nil, status.Error(codes.Unauthenticated, "invalid credentials")
		}
		return nil, status.Error(codes.Internal, "internal error")
	}

	return converter.TokenPairToProto(tokenPair), nil
}
