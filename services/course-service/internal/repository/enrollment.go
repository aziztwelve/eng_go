package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

// EnrollmentRepository определяет интерфейс для работы с записями на курсы
type EnrollmentRepository interface {
	Create(ctx context.Context, enrollment *model.Enrollment) error
	GetByID(ctx context.Context, id string) (*model.Enrollment, error)
	GetByUserAndCourse(ctx context.Context, userID, courseID string) (*model.Enrollment, error)
	CheckAccess(ctx context.Context, userID, courseID string) (bool, error)
	ListByUserID(ctx context.Context, userID string) ([]*model.Enrollment, error)
	ListByCourseID(ctx context.Context, courseID string) ([]*model.Enrollment, error)
}
