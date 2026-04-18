package service

import (
	"context"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// EnrollmentService определяет интерфейс бизнес-логики для записей на курсы
type EnrollmentService interface {
	EnrollUser(ctx context.Context, userID, courseID string) (*model.Enrollment, error)
	CheckAccess(ctx context.Context, userID, courseID string) (bool, error)
	GetEnrollment(ctx context.Context, userID, courseID string) (*model.Enrollment, error)
}

type enrollmentService struct {
	repo repository.EnrollmentRepository
}

// NewEnrollmentService создает новый экземпляр сервиса записей
func NewEnrollmentService(repo repository.EnrollmentRepository) EnrollmentService {
	return &enrollmentService{repo: repo}
}

// EnrollUser записывает пользователя на курс
func (s *enrollmentService) EnrollUser(ctx context.Context, userID, courseID string) (*model.Enrollment, error) {
	// Проверяем, не записан ли уже пользователь
	existing, err := s.repo.GetByUserAndCourse(ctx, userID, courseID)
	if err == nil && existing != nil {
		return existing, nil
	}

	enrollment := &model.Enrollment{
		UserID:      userID,
		CourseID:    courseID,
		Status:      model.EnrollmentStatusActive,
		AccessUntil: nil, // Lifetime access
	}

	if err := s.repo.Create(ctx, enrollment); err != nil {
		return nil, err
	}

	return enrollment, nil
}

// CheckAccess проверяет доступ пользователя к курсу
func (s *enrollmentService) CheckAccess(ctx context.Context, userID, courseID string) (bool, error) {
	return s.repo.CheckAccess(ctx, userID, courseID)
}

// GetEnrollment получает запись пользователя на курс
func (s *enrollmentService) GetEnrollment(ctx context.Context, userID, courseID string) (*model.Enrollment, error) {
	return s.repo.GetByUserAndCourse(ctx, userID, courseID)
}
