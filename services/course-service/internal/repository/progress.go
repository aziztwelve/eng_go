package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

// ProgressRepository определяет интерфейс для работы с прогрессом
type ProgressRepository interface {
	// StepProgress operations
	CreateStepProgress(ctx context.Context, progress *model.StepProgress) error
	UpdateStepProgress(ctx context.Context, progress *model.StepProgress) error
	GetStepProgress(ctx context.Context, userID, stepID string) (*model.StepProgress, error)
	ListStepProgressByLesson(ctx context.Context, userID, lessonID string) ([]*model.StepProgress, error)

	// LessonProgress operations
	CreateLessonProgress(ctx context.Context, progress *model.LessonProgress) error
	UpdateLessonProgress(ctx context.Context, progress *model.LessonProgress) error
	GetLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, error)
	ListLessonProgressByCourse(ctx context.Context, userID, courseID string) ([]*model.LessonProgress, error)

	// Complex operations
	RecalculateLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, error)
}
