package converter

import (
	"github.com/elearning/auth-service/internal/model"
	repoModel "github.com/elearning/auth-service/internal/repository/model"
)

// ToRepoUser конвертирует доменную модель в модель репозитория
func ToRepoUser(user model.User) repoModel.User {
	return repoModel.User{
		ID:           user.ID,
		Email:        user.Email,
		Username:     user.Username,
		PasswordHash: user.PasswordHash,
		Role:         user.Role,
		CreatedAt:    user.CreatedAt,
	}
}

// ToDomainUser конвертирует модель репозитория в доменную модель
func ToDomainUser(user repoModel.User) model.User {
	return model.User{
		ID:           user.ID,
		Email:        user.Email,
		Username:     user.Username,
		PasswordHash: user.PasswordHash,
		Role:         user.Role,
		CreatedAt:    user.CreatedAt,
	}
}
