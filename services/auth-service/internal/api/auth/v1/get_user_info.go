package v1

import (
	"context"

	"google.golang.org/protobuf/types/known/timestamppb"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

func (a *api) GetUserInfo(ctx context.Context, req *authv1.GetUserInfoRequest) (*authv1.GetUserInfoResponse, error) {
	user, err := a.authService.GetUserByID(ctx, req.GetUserId())
	if err != nil {
		return nil, err
	}

	return &authv1.GetUserInfoResponse{
		Id:        user.ID,
		Email:     user.Email,
		Username:  user.Username,
		Role:      user.Role,
		CreatedAt: timestamppb.New(user.CreatedAt),
	}, nil
}
