package repository

import (
	"context"

	"github.com/elearning/course-service/internal/model"
)

// CourseRepository определяет интерфейс для работы с курсами
type CourseRepository interface {
	// Course operations
	Create(ctx context.Context, course *model.Course) error
	GetByID(ctx context.Context, id string) (*model.Course, error)
	Update(ctx context.Context, course *model.Course) error
	Delete(ctx context.Context, id string) error
	List(ctx context.Context, filters ListFilters) ([]*model.Course, int, error)
	Publish(ctx context.Context, id string, isPublished bool) error

	// Module operations
	CreateModule(ctx context.Context, module *model.Module) error
	GetModuleByID(ctx context.Context, id string) (*model.Module, error)
	UpdateModule(ctx context.Context, module *model.Module) error
	DeleteModule(ctx context.Context, id string) error
	ListModulesByCourseID(ctx context.Context, courseID string) ([]*model.Module, error)

	// Lesson operations
	CreateLesson(ctx context.Context, lesson *model.Lesson) error
	GetLessonByID(ctx context.Context, id string) (*model.Lesson, error)
	UpdateLesson(ctx context.Context, lesson *model.Lesson) error
	DeleteLesson(ctx context.Context, id string) error
	ListLessonsByModuleID(ctx context.Context, moduleID string) ([]*model.Lesson, error)

	// Step operations
	CreateStep(ctx context.Context, step *model.Step) error
	GetStepByID(ctx context.Context, id string) (*model.Step, error)
	UpdateStep(ctx context.Context, step *model.Step) error
	DeleteStep(ctx context.Context, id string) error
	ListStepsByLessonID(ctx context.Context, lessonID string) ([]*model.Step, error)

	// Complex queries
	GetCourseWithModules(ctx context.Context, courseID string) (*model.Course, []*model.Module, error)
}

// ListFilters содержит параметры фильтрации для списка курсов
type ListFilters struct {
	Language           *string
	Level              *string
	MinPrice           *float64
	MaxPrice           *float64
	Limit              int
	Offset             int
	IncludeUnpublished bool // For admin: show all courses including drafts
}
