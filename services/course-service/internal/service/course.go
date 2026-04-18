package service

import (
	"context"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// CourseService определяет интерфейс бизнес-логики для курсов
type CourseService interface {
	// Course operations
	CreateCourse(ctx context.Context, course *model.Course) (*model.Course, error)
	GetCourse(ctx context.Context, id string) (*model.Course, error)
	UpdateCourse(ctx context.Context, course *model.Course) (*model.Course, error)
	DeleteCourse(ctx context.Context, id string) error
	ListCourses(ctx context.Context, filters repository.ListFilters) ([]*model.Course, int, error)
	PublishCourse(ctx context.Context, id string, isPublished bool) (*model.Course, error)

	// Module operations
	CreateModule(ctx context.Context, module *model.Module) (*model.Module, error)
	GetModule(ctx context.Context, id string) (*model.Module, error)
	UpdateModule(ctx context.Context, module *model.Module) (*model.Module, error)
	DeleteModule(ctx context.Context, id string) error

	// Lesson operations
	CreateLesson(ctx context.Context, lesson *model.Lesson) (*model.Lesson, error)
	GetLesson(ctx context.Context, id string) (*model.Lesson, error)
	UpdateLesson(ctx context.Context, lesson *model.Lesson) (*model.Lesson, error)
	DeleteLesson(ctx context.Context, id string) error

	// Step operations
	CreateStep(ctx context.Context, step *model.Step) (*model.Step, error)
	GetStep(ctx context.Context, id string) (*model.Step, error)
	UpdateStep(ctx context.Context, step *model.Step) (*model.Step, error)
	DeleteStep(ctx context.Context, id string) error

	// Complex queries
	GetCourseWithContent(ctx context.Context, courseID string) (*model.Course, []*model.Module, map[string][]*model.Lesson, map[string][]*model.Step, error)
	GetLessonWithSteps(ctx context.Context, lessonID string) (*model.Lesson, []*model.Step, error)
	GetStepContent(ctx context.Context, stepID, userID string) (*model.Step, string, error)
}

type courseService struct {
	repo        repository.CourseRepository
	videoClient VideoClient
}

// NewCourseService создает новый экземпляр сервиса курсов
func NewCourseService(repo repository.CourseRepository, videoClient VideoClient) CourseService {
	return &courseService{
		repo:        repo,
		videoClient: videoClient,
	}
}

// CreateCourse создает новый курс
func (s *courseService) CreateCourse(ctx context.Context, course *model.Course) (*model.Course, error) {
	if err := s.repo.Create(ctx, course); err != nil {
		return nil, err
	}
	return course, nil
}

// GetCourse получает курс по ID
func (s *courseService) GetCourse(ctx context.Context, id string) (*model.Course, error) {
	return s.repo.GetByID(ctx, id)
}

// UpdateCourse обновляет курс
func (s *courseService) UpdateCourse(ctx context.Context, course *model.Course) (*model.Course, error) {
	if err := s.repo.Update(ctx, course); err != nil {
		return nil, err
	}
	return course, nil
}

// DeleteCourse удаляет курс
func (s *courseService) DeleteCourse(ctx context.Context, id string) error {
	return s.repo.Delete(ctx, id)
}

// ListCourses возвращает список курсов
func (s *courseService) ListCourses(ctx context.Context, filters repository.ListFilters) ([]*model.Course, int, error) {
	return s.repo.List(ctx, filters)
}

// PublishCourse публикует или снимает с публикации курс
func (s *courseService) PublishCourse(ctx context.Context, id string, isPublished bool) (*model.Course, error) {
	if err := s.repo.Publish(ctx, id, isPublished); err != nil {
		return nil, err
	}
	return s.repo.GetByID(ctx, id)
}

// CreateModule создает новый модуль
func (s *courseService) CreateModule(ctx context.Context, module *model.Module) (*model.Module, error) {
	if err := s.repo.CreateModule(ctx, module); err != nil {
		return nil, err
	}
	return module, nil
}

// GetModule получает модуль по ID
func (s *courseService) GetModule(ctx context.Context, id string) (*model.Module, error) {
	return s.repo.GetModuleByID(ctx, id)
}

// UpdateModule обновляет модуль
func (s *courseService) UpdateModule(ctx context.Context, module *model.Module) (*model.Module, error) {
	if err := s.repo.UpdateModule(ctx, module); err != nil {
		return nil, err
	}
	return module, nil
}

// DeleteModule удаляет модуль
func (s *courseService) DeleteModule(ctx context.Context, id string) error {
	return s.repo.DeleteModule(ctx, id)
}

// CreateLesson создает новый урок
func (s *courseService) CreateLesson(ctx context.Context, lesson *model.Lesson) (*model.Lesson, error) {
	if err := s.repo.CreateLesson(ctx, lesson); err != nil {
		return nil, err
	}
	return lesson, nil
}

// GetLesson получает урок по ID
func (s *courseService) GetLesson(ctx context.Context, id string) (*model.Lesson, error) {
	return s.repo.GetLessonByID(ctx, id)
}

// UpdateLesson обновляет урок
func (s *courseService) UpdateLesson(ctx context.Context, lesson *model.Lesson) (*model.Lesson, error) {
	if err := s.repo.UpdateLesson(ctx, lesson); err != nil {
		return nil, err
	}
	return lesson, nil
}

// DeleteLesson удаляет урок
func (s *courseService) DeleteLesson(ctx context.Context, id string) error {
	return s.repo.DeleteLesson(ctx, id)
}

// CreateStep создает новый шаг
func (s *courseService) CreateStep(ctx context.Context, step *model.Step) (*model.Step, error) {
	if err := s.repo.CreateStep(ctx, step); err != nil {
		return nil, err
	}
	return step, nil
}

// GetStep получает шаг по ID
func (s *courseService) GetStep(ctx context.Context, id string) (*model.Step, error) {
	return s.repo.GetStepByID(ctx, id)
}

// UpdateStep обновляет шаг
func (s *courseService) UpdateStep(ctx context.Context, step *model.Step) (*model.Step, error) {
	if err := s.repo.UpdateStep(ctx, step); err != nil {
		return nil, err
	}
	return step, nil
}

// DeleteStep удаляет шаг
func (s *courseService) DeleteStep(ctx context.Context, id string) error {
	return s.repo.DeleteStep(ctx, id)
}

// GetCourseWithContent получает курс со всем содержимым
func (s *courseService) GetCourseWithContent(ctx context.Context, courseID string) (*model.Course, []*model.Module, map[string][]*model.Lesson, map[string][]*model.Step, error) {
	course, modules, err := s.repo.GetCourseWithModules(ctx, courseID)
	if err != nil {
		return nil, nil, nil, nil, err
	}

	lessonsMap := make(map[string][]*model.Lesson)
	stepsMap := make(map[string][]*model.Step)

	for _, module := range modules {
		lessons, err := s.repo.ListLessonsByModuleID(ctx, module.ID)
		if err != nil {
			return nil, nil, nil, nil, err
		}
		lessonsMap[module.ID] = lessons

		for _, lesson := range lessons {
			steps, err := s.repo.ListStepsByLessonID(ctx, lesson.ID)
			if err != nil {
				return nil, nil, nil, nil, err
			}
			stepsMap[lesson.ID] = steps
		}
	}

	return course, modules, lessonsMap, stepsMap, nil
}

// GetLessonWithSteps получает урок со всеми шагами
func (s *courseService) GetLessonWithSteps(ctx context.Context, lessonID string) (*model.Lesson, []*model.Step, error) {
	lesson, err := s.repo.GetLessonByID(ctx, lessonID)
	if err != nil {
		return nil, nil, err
	}

	steps, err := s.repo.ListStepsByLessonID(ctx, lessonID)
	if err != nil {
		return nil, nil, err
	}

	return lesson, steps, nil
}

// GetStepContent получает содержимое шага с видео URL если нужно
func (s *courseService) GetStepContent(ctx context.Context, stepID, userID string) (*model.Step, string, error) {
	step, err := s.repo.GetStepByID(ctx, stepID)
	if err != nil {
		return nil, "", err
	}

	var videoURL string
	if step.Type == model.StepTypeVideo {
		// Извлекаем video_id из JSON content и получаем URL
		videoURL, err = s.videoClient.GetVideoURL(ctx, step.Content, userID)
		if err != nil {
			// Не критично, просто логируем
			videoURL = ""
		}
	}

	return step, videoURL, nil
}
