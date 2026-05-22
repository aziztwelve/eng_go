package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// SearchByUsername — public RPC для friend-search (Phase 4.5).
func (a *api) SearchByUsername(ctx context.Context, req *authv1.SearchByUsernameRequest) (*authv1.SearchByUsernameResponse, error) {
	users, err := a.authService.SearchByUsername(ctx, req.GetQuery(), req.GetLimit(), req.GetExcludeUserId())
	if err != nil {
		return nil, status.Errorf(codes.Internal, "search by username: %v", err)
	}

	out := make([]*authv1.UserInfo, 0, len(users))
	for _, u := range users {
		out = append(out, &authv1.UserInfo{
			Id:        u.ID,
			Email:     u.EmailValue(),
			Username:  u.Username,
			Role:      u.Role,
			CreatedAt: timestamppb.New(u.CreatedAt),
		})
	}
	return &authv1.SearchByUsernameResponse{Users: out}, nil
}
