package user

import (
	"github.com/elearning/user-service/internal/repository"
	"github.com/elearning/user-service/internal/service"
)

type serv struct {
	userRepository repository.UserRepository
}

// NewService создает новый экземпляр сервиса
func NewService(userRepository repository.UserRepository) service.UserService {
	return &serv{
		userRepository: userRepository,
	}
}
