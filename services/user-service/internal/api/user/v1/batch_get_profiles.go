package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/converter"
)

func (a *api) BatchGetProfiles(ctx context.Context, req *userv1.BatchGetProfilesRequest) (*userv1.BatchGetProfilesResponse, error) {
	ids := req.GetUserIds()
	profiles, err := a.userService.BatchGetProfiles(ctx, ids)
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	out := make(map[string]*userv1.Profile, len(profiles))
	for k, v := range profiles {
		out[k] = converter.ToProtoProfile(v)
	}
	return &userv1.BatchGetProfilesResponse{Profiles: out}, nil
}
