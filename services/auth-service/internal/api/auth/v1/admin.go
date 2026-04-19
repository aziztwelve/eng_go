package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"

	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// ListUsers возвращает список всех пользователей (admin)
func (a *api) ListUsers(ctx context.Context, req *authv1.ListUsersRequest) (*authv1.ListUsersResponse, error) {
	users, err := a.authService.ListUsers(ctx)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to list users: %v", err)
	}

	protoUsers := make([]*authv1.UserInfo, 0, len(users))
	for _, u := range users {
		protoUsers = append(protoUsers, &authv1.UserInfo{
			Id:        u.ID,
			Email:     u.Email,
			Username:  u.Username,
			Role:      u.Role,
			CreatedAt: timestamppb.New(u.CreatedAt),
		})
	}

	return &authv1.ListUsersResponse{
		Users: protoUsers,
	}, nil
}

// UpdateUserRole обновляет роль пользователя (admin)
func (a *api) UpdateUserRole(ctx context.Context, req *authv1.UpdateUserRoleRequest) (*authv1.UpdateUserRoleResponse, error) {
	user, err := a.authService.UpdateUserRole(ctx, req.UserId, req.Role)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to update user role: %v", err)
	}

	return &authv1.UpdateUserRoleResponse{
		User: &authv1.UserInfo{
			Id:        user.ID,
			Email:     user.Email,
			Username:  user.Username,
			Role:      user.Role,
			CreatedAt: timestamppb.New(user.CreatedAt),
		},
	}, nil
}

// DeleteUser удаляет пользователя (admin)
func (a *api) DeleteUser(ctx context.Context, req *authv1.DeleteUserRequest) (*authv1.DeleteUserResponse, error) {
	err := a.authService.DeleteUser(ctx, req.UserId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete user: %v", err)
	}

	return &authv1.DeleteUserResponse{}, nil
}
