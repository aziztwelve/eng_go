package service

import (
	"context"
	"time"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// ProgressService определяет интерфейс бизнес-логики для прогресса
type ProgressService interface {
	MarkStepComplete(ctx context.Context, userID, stepID string, timeSpentSeconds int32, attempts *int32, score *float64) (*model.StepProgress, *model.LessonProgress, error)
	GetStepProgress(ctx context.Context, userID, stepID string) (*model.StepProgress, error)
	GetLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, []*model.StepProgress, error)
	GetCourseProgress(ctx context.Context, userID, courseID string) ([]*model.LessonProgress, int32, int32, float64, error)
}

type progressService struct {
	progressRepo   repository.ProgressRepository
	courseRepo     repository.CourseRepository
	enrollmentRepo repository.EnrollmentRepository
}

// NewProgressService создает новый экземпляр сервиса прогресса
func NewProgressService(
	progressRepo repository.ProgressRepository,
	courseRepo repository.CourseRepository,
	enrollmentRepo repository.EnrollmentRepository,
) ProgressService {
	return &progressService{
		progressRepo:   progressRepo,
		courseRepo:     courseRepo,
		enrollmentRepo: enrollmentRepo,
	}
}

// MarkStepComplete отмечает шаг как завершенный
func (s *progressService) MarkStepComplete(
	ctx context.Context,
	userID, stepID string,
	timeSpentSeconds int32,
	attempts *int32,
	score *float64,
) (*model.StepProgress, *model.LessonProgress, error) {
	// Получаем информацию о шаге
	step, err := s.courseRepo.GetStepByID(ctx, stepID)
	if err != nil {
		return nil, nil, err
	}

	// Получаем lesson_id
	lessonID := step.LessonID

	// Получаем урок для получения course_id
	lesson, err := s.courseRepo.GetLessonByID(ctx, lessonID)
	if err != nil {
		return nil, nil, err
	}

	// Получаем модуль для получения course_id
	module, err := s.courseRepo.GetModuleByID(ctx, lesson.ModuleID)
	if err != nil {
		return nil, nil, err
	}

	courseID := module.CourseID

	// Проверяем enrollment пользователя
	hasAccess, err := s.enrollmentRepo.CheckAccess(ctx, userID, courseID)
	if err != nil {
		return nil, nil, err
	}
	if !hasAccess {
		return nil, nil, ErrNoAccess
	}

	// Проверяем существующий прогресс
	existingProgress, err := s.progressRepo.GetStepProgress(ctx, userID, stepID)
	if err != nil {
		return nil, nil, err
	}

	now := time.Now()
	stepProgress := &model.StepProgress{
		UserID:           userID,
		StepID:           stepID,
		LessonID:         lessonID,
		Completed:        true,
		CompletedAt:      &now,
		TimeSpentSeconds: timeSpentSeconds,
		Attempts:         1,
		Score:            score,
	}

	if attempts != nil {
		stepProgress.Attempts = *attempts
	}

	// Если прогресс уже существует, обновляем
	if existingProgress != nil {
		stepProgress.ID = existingProgress.ID
		stepProgress.CreatedAt = existingProgress.CreatedAt

		// Увеличиваем количество попыток если уже был завершен
		if existingProgress.Completed {
			stepProgress.Attempts = existingProgress.Attempts + 1
			// Обновляем score только если новый выше
			if score != nil && existingProgress.Score != nil && *score <= *existingProgress.Score {
				stepProgress.Score = existingProgress.Score
			}
		}

		err = s.progressRepo.UpdateStepProgress(ctx, stepProgress)
	} else {
		err = s.progressRepo.CreateStepProgress(ctx, stepProgress)
	}

	if err != nil {
		return nil, nil, err
	}

	// Пересчитываем прогресс урока
	lessonProgress, err := s.progressRepo.RecalculateLessonProgress(ctx, userID, lessonID)
	if err != nil {
		return nil, nil, err
	}

	return stepProgress, lessonProgress, nil
}

// GetStepProgress получает прогресс по шагу
func (s *progressService) GetStepProgress(ctx context.Context, userID, stepID string) (*model.StepProgress, error) {
	return s.progressRepo.GetStepProgress(ctx, userID, stepID)
}

// GetLessonProgress получает прогресс по уроку
func (s *progressService) GetLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, []*model.StepProgress, error) {
	lessonProgress, err := s.progressRepo.GetLessonProgress(ctx, userID, lessonID)
	if err != nil {
		return nil, nil, err
	}

	stepProgresses, err := s.progressRepo.ListStepProgressByLesson(ctx, userID, lessonID)
	if err != nil {
		return nil, nil, err
	}

	return lessonProgress, stepProgresses, nil
}

// GetCourseProgress получает прогресс по курсу
func (s *progressService) GetCourseProgress(ctx context.Context, userID, courseID string) ([]*model.LessonProgress, int32, int32, float64, error) {
	// Получаем все прогрессы по урокам курса
	lessonProgresses, err := s.progressRepo.ListLessonProgressByCourse(ctx, userID, courseID)
	if err != nil {
		return nil, 0, 0, 0, err
	}

	// Подсчитываем общее количество уроков в курсе
	modules, err := s.courseRepo.ListModulesByCourseID(ctx, courseID)
	if err != nil {
		return nil, 0, 0, 0, err
	}

	var totalLessons int32
	for _, module := range modules {
		lessons, err := s.courseRepo.ListLessonsByModuleID(ctx, module.ID)
		if err != nil {
			return nil, 0, 0, 0, err
		}
		totalLessons += int32(len(lessons))
	}

	// Подсчитываем завершенные уроки
	var completedLessons int32
	for _, lp := range lessonProgresses {
		if lp.CompletedAt != nil {
			completedLessons++
		}
	}

	// Вычисляем общий прогресс
	var overallProgress float64
	if totalLessons > 0 {
		overallProgress = (float64(completedLessons) / float64(totalLessons)) * 100
	}

	return lessonProgresses, totalLessons, completedLessons, overallProgress, nil
}

// ErrNoAccess возвращается когда у пользователя нет доступа к курсу
var ErrNoAccess = &ServiceError{Code: "NO_ACCESS", Message: "User does not have access to this course"}

// ServiceError представляет ошибку сервиса
type ServiceError struct {
	Code    string
	Message string
}

func (e *ServiceError) Error() string {
	return e.Message
}
