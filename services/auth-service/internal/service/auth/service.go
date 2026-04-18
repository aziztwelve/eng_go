package auth

import (
	"time"

	"github.com/elearning/auth-service/internal/repository"
	def "github.com/elearning/auth-service/internal/service"
)

var _ def.AuthService = (*service)(nil)

type service struct {
	authRepository repository.AuthRepository
	jwtSecret      string
	accessTTL      time.Duration
	refreshTTL     time.Duration
}

// NewService создает новый экземпляр сервиса аутентификации
func NewService(
	authRepository repository.AuthRepository,
	jwtSecret string,
	accessTTL time.Duration,
	refreshTTL time.Duration,
) *service {
	return &service{
		authRepository: authRepository,
		jwtSecret:      jwtSecret,
		accessTTL:      accessTTL,
		refreshTTL:     refreshTTL,
	}
}
