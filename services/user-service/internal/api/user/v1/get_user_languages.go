package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

func (a *api) GetUserLanguages(ctx context.Context, req *userv1.GetUserLanguagesRequest) (*userv1.GetUserLanguagesResponse, error) {
	nativeLang, targetLang, err := a.userService.GetUserLanguages(ctx, req.GetUserId())
	if err != nil {
		return nil, status.Error(codes.Internal, err.Error())
	}

	return &userv1.GetUserLanguagesResponse{
		NativeLang: nativeLang,
		TargetLang: targetLang,
	}, nil
}
