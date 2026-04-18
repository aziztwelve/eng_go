package v1

import (
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/service"
)

type api struct {
	userv1.UnimplementedUserServiceServer

	userService service.UserService
}

// NewAPI создает новый экземпляр API
func NewAPI(userService service.UserService) *api {
	return &api{
		userService: userService,
	}
}
