package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/converter"
)

func (a *api) UpdateProfile(ctx context.Context, req *userv1.UpdateProfileRequest) (*userv1.UpdateProfileResponse, error) {
	data := converter.ToUpdateProfileData(req)

	profile, err := a.userService.UpdateProfile(ctx, req.GetUserId(), data)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &userv1.UpdateProfileResponse{
		Profile: converter.ToProtoProfile(profile),
	}, nil
}
