package v1

import (
	"context"
	"errors"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/converter"
	"github.com/elearning/user-service/internal/model"
)

func (a *api) PatchOnboardingState(ctx context.Context, req *userv1.PatchOnboardingStateRequest) (*userv1.PatchOnboardingStateResponse, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}

	data := converter.ToPatchOnboardingData(req)

	state, err := a.onboardingService.PatchState(ctx, req.GetUserId(), data)
	if err != nil {
		if errors.Is(err, model.ErrInvalidData) {
			return nil, status.Error(codes.InvalidArgument, err.Error())
		}
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &userv1.PatchOnboardingStateResponse{
		State: converter.ToProtoOnboardingState(state),
	}, nil
}
