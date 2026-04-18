package v1

import (
	"github.com/elearning/auth-service/internal/service"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

type api struct {
	authv1.UnimplementedAuthServiceServer

	authService service.AuthService
}

// NewAPI создает новый экземпляр API
func NewAPI(authService service.AuthService) *api {
	return &api{
		authService: authService,
	}
}
