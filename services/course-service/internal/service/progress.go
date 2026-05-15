package service

import (
	"context"
	"time"

	"github.com/elearning/course-service/internal/client/gamification"
	"github.com/elearning/course-service/internal/client/srs"
	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
	gamificationv1 "github.com/elearning/shared/pkg/proto/gamification/v1"
)

// ProgressService определяет интерфейс бизнес-логики для прогресса.
//
// MarkStepComplete возвращает дополнительный 3-й параметр —
// `*gamificationv1.AddXPResponse`. Он будет nil если gamification-клиент
// не настроен (noop) или вызов упал — это не ошибка основного потока,
// а graceful degradation; фронт фолбэкнется на /gamification/stats.
type ProgressService interface {
	MarkStepComplete(ctx context.Context, userID, stepID string, timeSpentSeconds int32, attempts *int32, score *float64) (*model.StepProgress, *model.LessonProgress, *gamificationv1.AddXPResponse, error)
	GetStepProgress(ctx context.Context, userID, stepID string) (*model.StepProgress, error)
	GetLessonProgress(ctx context.Context, userID, lessonID string) (*model.LessonProgress, []*model.StepProgress, error)
	GetCourseProgress(ctx context.Context, userID, courseID string) ([]*model.LessonProgress, int32, int32, float64, error)
}

type progressService struct {
	progressRepo       repository.ProgressRepository
	courseRepo         repository.CourseRepository
	enrollmentRepo     repository.EnrollmentRepository
	gamificationClient gamification.Client
	srsClient          srs.Client
}

// NewProgressService создает новый экземпляр сервиса прогресса.
// gamificationClient / srsClient могут быть nil — тогда noop клиенты.
func NewProgressService(
	progressRepo repository.ProgressRepository,
	courseRepo repository.CourseRepository,
	enrollmentRepo repository.EnrollmentRepository,
	gamificationClient gamification.Client,
	srsClient srs.Client,
) ProgressService {
	if gamificationClient == nil {
		gamificationClient = gamification.NewNoopClient()
	}
	if srsClient == nil {
		srsClient = srs.NewNoopClient()
	}
	return &progressService{
		progressRepo:       progressRepo,
		courseRepo:         courseRepo,
		enrollmentRepo:     enrollmentRepo,
		gamificationClient: gamificationClient,
		srsClient:          srsClient,
	}
}

// MarkStepComplete отмечает шаг как завершенный.
// Phase 0: поддерживает standalone-уроки (без модуля/курса). Для них
// access-check пропускается, а source_type = "standalone".
func (s *progressService) MarkStepComplete(
	ctx context.Context,
	userID, stepID string,
	timeSpentSeconds int32,
	attempts *int32,
	score *float64,
) (*model.StepProgress, *model.LessonProgress, *gamificationv1.AddXPResponse, error) {
	step, err := s.courseRepo.GetStepByID(ctx, stepID)
	if err != nil {
		return nil, nil, nil, err
	}

	lesson, err := s.courseRepo.GetLessonByID(ctx, step.LessonID)
	if err != nil {
		return nil, nil, nil, err
	}

	// Резолвим контекст урока: course | standalone
	var (
		sourceType = model.SourceTypeCourse
		sourceID   *string // course_id для course-урока, nil для standalone
	)

	if lesson.ModuleID == "" {
		// Standalone: ни enrollment, ни course-id не нужны
		sourceType = model.SourceTypeStandalone
	} else {
		module, err := s.courseRepo.GetModuleByID(ctx, lesson.ModuleID)
		if err != nil {
			return nil, nil, nil, err
		}
		hasAccess, err := s.enrollmentRepo.CheckAccess(ctx, userID, module.CourseID)
		if err != nil {
			return nil, nil, nil, err
		}
		if !hasAccess {
			return nil, nil, nil, ErrNoAccess
		}
		cID := module.CourseID
		sourceID = &cID
	}

	existingProgress, err := s.progressRepo.GetStepProgress(ctx, userID, stepID)
	if err != nil {
		return nil, nil, nil, err
	}

	now := time.Now()
	stepProgress := &model.StepProgress{
		UserID:           userID,
		StepID:           stepID,
		LessonID:         step.LessonID,
		Completed:        true,
		CompletedAt:      &now,
		TimeSpentSeconds: timeSpentSeconds,
		Attempts:         1,
		Score:            score,
		SourceType:       sourceType,
		SourceID:         sourceID,
	}

	if attempts != nil {
		stepProgress.Attempts = *attempts
	}

	if existingProgress != nil {
		stepProgress.ID = existingProgress.ID
		stepProgress.CreatedAt = existingProgress.CreatedAt
		// source_* у существующей записи сохраняем
		stepProgress.SourceType = existingProgress.SourceType
		stepProgress.SourceID = existingProgress.SourceID

		if existingProgress.Completed {
			stepProgress.Attempts = existingProgress.Attempts + 1
			if score != nil && existingProgress.Score != nil && *score <= *existingProgress.Score {
				stepProgress.Score = existingProgress.Score
			}
		}

		err = s.progressRepo.UpdateStepProgress(ctx, stepProgress)
	} else {
		err = s.progressRepo.CreateStepProgress(ctx, stepProgress)
	}

	if err != nil {
		return nil, nil, nil, err
	}

	lessonProgress, err := s.progressRepo.RecalculateLessonProgress(ctx, userID, step.LessonID)
	if err != nil {
		return nil, nil, nil, err
	}

	// Phase 1: вызываем gamification после успешной записи прогресса.
	// Ошибки логирует сам клиент и возвращает (nil, nil) — основной поток
	// продолжаем как обычно.
	xpResp, _ := s.gamificationClient.OnStepCompleted(ctx, gamification.StepCompletedEvent{
		UserID:     userID,
		StepID:     stepID,
		LessonID:   step.LessonID,
		StepType:   string(step.Type),
		SourceType: string(stepProgress.SourceType),
		SourceID:   stepProgress.SourceID,
		IsCorrect:  true, // Phase 0/1: квизы пока не различают correct/incorrect здесь
		Score:      score,
	})

	if lessonProgress.CompletedAt != nil && (existingProgress == nil || !existingProgress.Completed) {
		// Бонус за окончание урока. Если есть ответ — переписываем им
		// step-уровневый xpResp, чтобы у фронта была актуальная картинка
		// (новый level / unlocked_achievements / daily_goal).
		if lessonXP, _ := s.gamificationClient.OnLessonCompleted(ctx, gamification.LessonCompletedEvent{
			UserID:     userID,
			LessonID:   step.LessonID,
			SourceType: string(stepProgress.SourceType),
			SourceID:   stepProgress.SourceID,
		}); lessonXP != nil {
			xpResp = lessonXP
		}

		// Phase 3: инициализируем skill_decay карточку при первом
		// прохождении урока. Ошибки srs — non-fatal.
		_ = s.srsClient.InitSkill(ctx, srs.InitSkillEvent{
			UserID:    userID,
			SkillID:   step.LessonID,
			SkillType: srs.SkillTypeLesson,
		})
		// Если у урока есть модуль — пробуем заинитить module-уровень
		// тоже (idempotent на стороне srs-service).
		if lesson, err := s.courseRepo.GetLessonByID(ctx, step.LessonID); err == nil &&
			lesson != nil && lesson.ModuleID != "" {
			_ = s.srsClient.InitSkill(ctx, srs.InitSkillEvent{
				UserID:    userID,
				SkillID:   lesson.ModuleID,
				SkillType: srs.SkillTypeModule,
			})
		}

		// Если этот урок только что закрыл course — фаерим OnCourseCompleted
		// (один раз, благодаря guard'у выше — повторно сюда не зайдем).
		// Standalone-уроки не имеют source_id, их пропускаем.
		if stepProgress.SourceType == model.SourceTypeCourse && stepProgress.SourceID != nil {
			if courseXP := s.maybeFireCourseCompleted(ctx, userID, *stepProgress.SourceID); courseXP != nil {
				xpResp = courseXP
			}
		}
	} else if lessonProgress.CompletedAt != nil && existingProgress != nil && existingProgress.Completed {
		// Повторное прохождение шага в уже-завершённом уроке —
		// подпинаем strength (decay-rust фикс). Non-fatal.
		_ = s.srsClient.StrengthenSkill(ctx, srs.StrengthenSkillEvent{
			UserID:    userID,
			SkillID:   step.LessonID,
			SkillType: srs.SkillTypeLesson,
			Amount:    0.1,
		})
	}

	return stepProgress, lessonProgress, xpResp, nil
}

// maybeFireCourseCompleted проверяет, что все уроки курса завершены, и если
// да — однократно дергает gamification.OnCourseCompleted. Идемпотентность
// обеспечивается guard'ом в MarkStepComplete (срабатывает только в момент
// transition lesson → completed).
func (s *progressService) maybeFireCourseCompleted(ctx context.Context, userID, courseID string) *gamificationv1.AddXPResponse {
	_, totalLessons, completedLessons, _, err := s.GetCourseProgress(ctx, userID, courseID)
	if err != nil || totalLessons == 0 || completedLessons < totalLessons {
		return nil
	}
	course, err := s.courseRepo.GetByID(ctx, courseID)
	if err != nil {
		return nil
	}
	xp, _ := s.gamificationClient.OnCourseCompleted(ctx, gamification.CourseCompletedEvent{
		UserID:   userID,
		CourseID: courseID,
		Language: course.Language,
	})
	return xp
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
	lessonProgresses, err := s.progressRepo.ListLessonProgressByCourse(ctx, userID, courseID)
	if err != nil {
		return nil, 0, 0, 0, err
	}

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

	var completedLessons int32
	for _, lp := range lessonProgresses {
		if lp.CompletedAt != nil {
			completedLessons++
		}
	}

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
