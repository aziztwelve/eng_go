package onboarding

import (
	"github.com/elearning/user-service/internal/repository"
	"github.com/elearning/user-service/internal/service"
)

type serv struct {
	repo repository.OnboardingRepository
}

// NewService создаёт OnboardingService.
func NewService(repo repository.OnboardingRepository) service.OnboardingService {
	return &serv{repo: repo}
}
