package auth

import (
	"time"

	"github.com/elearning/auth-service/internal/social"

	"github.com/elearning/auth-service/internal/repository"
	def "github.com/elearning/auth-service/internal/service"
)

var _ def.AuthService = (*service)(nil)

type service struct {
	social         socialVerifier
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
		social:         social.NewFromEnv(),
		authRepository: authRepository,
		jwtSecret:      jwtSecret,
		accessTTL:      accessTTL,
		refreshTTL:     refreshTTL,
	}
}
