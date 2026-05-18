package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/converter"
)

func (a *api) CompleteOnboarding(ctx context.Context, req *userv1.CompleteOnboardingRequest) (*userv1.CompleteOnboardingResponse, error) {
	if req.GetUserId() == "" {
		return nil, status.Error(codes.InvalidArgument, "user_id is required")
	}

	state, err := a.onboardingService.Complete(ctx, req.GetUserId())
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &userv1.CompleteOnboardingResponse{
		State: converter.ToProtoOnboardingState(state),
	}, nil
}
