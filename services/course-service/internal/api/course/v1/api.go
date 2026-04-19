package v1

import (
	"context"

	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/course-service/internal/converter"
	"github.com/elearning/course-service/internal/repository"
	"github.com/elearning/course-service/internal/service"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

type api struct {
	coursev1.UnimplementedCourseServiceServer

	courseService     service.CourseService
	enrollmentService service.EnrollmentService
	progressService   service.ProgressService
}

// NewAPI создает новый экземпляр API
func NewAPI(courseService service.CourseService, enrollmentService service.EnrollmentService, progressService service.ProgressService) *api {
	return &api{
		courseService:     courseService,
		enrollmentService: enrollmentService,
		progressService:   progressService,
	}
}

// ListCourses получает список курсов с фильтрацией
func (a *api) ListCourses(ctx context.Context, req *coursev1.ListCoursesRequest) (*coursev1.ListCoursesResponse, error) {
	filters := repository.ListFilters{
		Limit:              int(req.Limit),
		Offset:             int(req.Offset),
		IncludeUnpublished: req.IncludeUnpublished,
		Search:             req.Search,
		Status:             req.Status,
	}

	if req.Language != nil {
		lang := req.Language.Value
		filters.Language = &lang
	}

	if req.Level != nil {
		level := req.Level.Value
		filters.Level = &level
	}

	if req.MinPrice != nil {
		minPrice := req.MinPrice.Value
		filters.MinPrice = &minPrice
	}

	if req.MaxPrice != nil {
		maxPrice := req.MaxPrice.Value
		filters.MaxPrice = &maxPrice
	}

	if filters.Limit == 0 {
		filters.Limit = 20
	}

	courses, total, err := a.courseService.ListCourses(ctx, filters)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to list courses: %v", err)
	}

	coursesProto := make([]*coursev1.Course, 0, len(courses))
	for _, course := range courses {
		coursesProto = append(coursesProto, converter.ToCourseProto(course))
	}

	return &coursev1.ListCoursesResponse{
		Courses: coursesProto,
		Total:   int32(total),
	}, nil
}

// GetCourse получает детальную информацию о курсе
func (a *api) GetCourse(ctx context.Context, req *coursev1.GetCourseRequest) (*coursev1.GetCourseResponse, error) {
	course, modules, lessonsMap, stepsMap, err := a.courseService.GetCourseWithContent(ctx, req.CourseId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "course not found: %v", err)
	}

	modulesWithLessons := make([]*coursev1.ModuleWithLessons, 0, len(modules))
	for _, module := range modules {
		lessons := lessonsMap[module.ID]
		modulesWithLessons = append(modulesWithLessons, converter.ToModuleWithLessonsProto(module, lessons, stepsMap))
	}

	return &coursev1.GetCourseResponse{
		Course:  converter.ToCourseProto(course),
		Modules: modulesWithLessons,
	}, nil
}

// GetLesson получает информацию об уроке
func (a *api) GetLesson(ctx context.Context, req *coursev1.GetLessonRequest) (*coursev1.GetLessonResponse, error) {
	lesson, steps, err := a.courseService.GetLessonWithSteps(ctx, req.LessonId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "lesson not found: %v", err)
	}

	stepsProto := make([]*coursev1.Step, 0, len(steps))
	for _, step := range steps {
		stepsProto = append(stepsProto, converter.ToStepProto(step))
	}

	return &coursev1.GetLessonResponse{
		Lesson: converter.ToLessonProto(lesson),
		Steps:  stepsProto,
	}, nil
}

// GetStepContent получает содержимое шага
func (a *api) GetStepContent(ctx context.Context, req *coursev1.GetStepContentRequest) (*coursev1.GetStepContentResponse, error) {
	step, videoURL, err := a.courseService.GetStepContent(ctx, req.StepId, req.UserId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "step not found: %v", err)
	}

	return &coursev1.GetStepContentResponse{
		Step:     converter.ToStepProto(step),
		VideoUrl: videoURL,
	}, nil
}

// EnrollUser записывает пользователя на курс
func (a *api) EnrollUser(ctx context.Context, req *coursev1.EnrollUserRequest) (*coursev1.EnrollUserResponse, error) {
	enrollment, err := a.enrollmentService.EnrollUser(ctx, req.UserId, req.CourseId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to enroll user: %v", err)
	}

	return &coursev1.EnrollUserResponse{
		Enrollment: converter.ToEnrollmentProto(enrollment),
	}, nil
}

// CheckAccess проверяет доступ пользователя к курсу
func (a *api) CheckAccess(ctx context.Context, req *coursev1.CheckAccessRequest) (*coursev1.CheckAccessResponse, error) {
	hasAccess, err := a.enrollmentService.CheckAccess(ctx, req.UserId, req.CourseId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to check access: %v", err)
	}

	return &coursev1.CheckAccessResponse{
		HasAccess: hasAccess,
	}, nil
}

// CreateCourse создает новый курс
func (a *api) CreateCourse(ctx context.Context, req *coursev1.CreateCourseRequest) (*coursev1.CreateCourseResponse, error) {
	course := converter.FromCreateCourseRequest(req)

	createdCourse, err := a.courseService.CreateCourse(ctx, course)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create course: %v", err)
	}

	return &coursev1.CreateCourseResponse{
		Course: converter.ToCourseProto(createdCourse),
	}, nil
}

// UpdateCourse обновляет курс
func (a *api) UpdateCourse(ctx context.Context, req *coursev1.UpdateCourseRequest) (*coursev1.UpdateCourseResponse, error) {
	course, err := a.courseService.GetCourse(ctx, req.CourseId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "course not found: %v", err)
	}

	converter.FromUpdateCourseRequest(course, req)

	updatedCourse, err := a.courseService.UpdateCourse(ctx, course)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to update course: %v", err)
	}

	return &coursev1.UpdateCourseResponse{
		Course: converter.ToCourseProto(updatedCourse),
	}, nil
}

// DeleteCourse удаляет курс
func (a *api) DeleteCourse(ctx context.Context, req *coursev1.DeleteCourseRequest) (*coursev1.DeleteCourseResponse, error) {
	if err := a.courseService.DeleteCourse(ctx, req.CourseId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete course: %v", err)
	}

	return &coursev1.DeleteCourseResponse{
		Success: true,
	}, nil
}

// PublishCourse публикует или снимает с публикации курс
func (a *api) PublishCourse(ctx context.Context, req *coursev1.PublishCourseRequest) (*coursev1.PublishCourseResponse, error) {
	course, err := a.courseService.PublishCourse(ctx, req.CourseId, req.IsPublished)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to publish course: %v", err)
	}

	return &coursev1.PublishCourseResponse{
		Course: converter.ToCourseProto(course),
	}, nil
}

// CreateModule создает новый модуль
func (a *api) CreateModule(ctx context.Context, req *coursev1.CreateModuleRequest) (*coursev1.CreateModuleResponse, error) {
	module := converter.FromCreateModuleRequest(req)

	createdModule, err := a.courseService.CreateModule(ctx, module)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create module: %v", err)
	}

	return &coursev1.CreateModuleResponse{
		Module: converter.ToModuleProto(createdModule),
	}, nil
}

// UpdateModule обновляет модуль
func (a *api) UpdateModule(ctx context.Context, req *coursev1.UpdateModuleRequest) (*coursev1.UpdateModuleResponse, error) {
	module, err := a.courseService.GetModule(ctx, req.ModuleId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "module not found: %v", err)
	}

	converter.FromUpdateModuleRequest(module, req)

	updatedModule, err := a.courseService.UpdateModule(ctx, module)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to update module: %v", err)
	}

	return &coursev1.UpdateModuleResponse{
		Module: converter.ToModuleProto(updatedModule),
	}, nil
}

// DeleteModule удаляет модуль
func (a *api) DeleteModule(ctx context.Context, req *coursev1.DeleteModuleRequest) (*coursev1.DeleteModuleResponse, error) {
	if err := a.courseService.DeleteModule(ctx, req.ModuleId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete module: %v", err)
	}

	return &coursev1.DeleteModuleResponse{
		Success: true,
	}, nil
}

// CreateLesson создает новый урок
func (a *api) CreateLesson(ctx context.Context, req *coursev1.CreateLessonRequest) (*coursev1.CreateLessonResponse, error) {
	lesson := converter.FromCreateLessonRequest(req)

	createdLesson, err := a.courseService.CreateLesson(ctx, lesson)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create lesson: %v", err)
	}

	return &coursev1.CreateLessonResponse{
		Lesson: converter.ToLessonProto(createdLesson),
	}, nil
}

// UpdateLesson обновляет урок
func (a *api) UpdateLesson(ctx context.Context, req *coursev1.UpdateLessonRequest) (*coursev1.UpdateLessonResponse, error) {
	lesson, err := a.courseService.GetLesson(ctx, req.LessonId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "lesson not found: %v", err)
	}

	converter.FromUpdateLessonRequest(lesson, req)

	updatedLesson, err := a.courseService.UpdateLesson(ctx, lesson)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to update lesson: %v", err)
	}

	return &coursev1.UpdateLessonResponse{
		Lesson: converter.ToLessonProto(updatedLesson),
	}, nil
}

// DeleteLesson удаляет урок
func (a *api) DeleteLesson(ctx context.Context, req *coursev1.DeleteLessonRequest) (*coursev1.DeleteLessonResponse, error) {
	if err := a.courseService.DeleteLesson(ctx, req.LessonId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete lesson: %v", err)
	}

	return &coursev1.DeleteLessonResponse{
		Success: true,
	}, nil
}

// CreateStep создает новый шаг
func (a *api) CreateStep(ctx context.Context, req *coursev1.CreateStepRequest) (*coursev1.CreateStepResponse, error) {
	step := converter.FromCreateStepRequest(req)

	createdStep, err := a.courseService.CreateStep(ctx, step)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to create step: %v", err)
	}

	return &coursev1.CreateStepResponse{
		Step: converter.ToStepProto(createdStep),
	}, nil
}

// UpdateStep обновляет шаг
func (a *api) UpdateStep(ctx context.Context, req *coursev1.UpdateStepRequest) (*coursev1.UpdateStepResponse, error) {
	step, err := a.courseService.GetStep(ctx, req.StepId)
	if err != nil {
		return nil, status.Errorf(codes.NotFound, "step not found: %v", err)
	}

	converter.FromUpdateStepRequest(step, req)

	updatedStep, err := a.courseService.UpdateStep(ctx, step)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to update step: %v", err)
	}

	return &coursev1.UpdateStepResponse{
		Step: converter.ToStepProto(updatedStep),
	}, nil
}

// DeleteStep удаляет шаг
func (a *api) DeleteStep(ctx context.Context, req *coursev1.DeleteStepRequest) (*coursev1.DeleteStepResponse, error) {
	if err := a.courseService.DeleteStep(ctx, req.StepId); err != nil {
		return nil, status.Errorf(codes.Internal, "failed to delete step: %v", err)
	}

	return &coursev1.DeleteStepResponse{
		Success: true,
	}, nil
}

// MarkStepComplete отмечает шаг как завершенный
func (a *api) MarkStepComplete(ctx context.Context, req *coursev1.MarkStepCompleteRequest) (*coursev1.MarkStepCompleteResponse, error) {
	var attempts *int32
	if req.Attempts != nil {
		val := req.Attempts.Value
		attempts = &val
	}

	var score *float64
	if req.Score != nil {
		val := req.Score.Value
		score = &val
	}

	stepProgress, lessonProgress, err := a.progressService.MarkStepComplete(
		ctx,
		req.UserId,
		req.StepId,
		req.TimeSpentSeconds,
		attempts,
		score,
	)

	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to mark step complete: %v", err)
	}

	return &coursev1.MarkStepCompleteResponse{
		StepProgress:   converter.ToStepProgressProto(stepProgress),
		LessonProgress: converter.ToLessonProgressProto(lessonProgress),
	}, nil
}

// GetStepProgress получает прогресс по шагу
func (a *api) GetStepProgress(ctx context.Context, req *coursev1.GetStepProgressRequest) (*coursev1.GetStepProgressResponse, error) {
	progress, err := a.progressService.GetStepProgress(ctx, req.UserId, req.StepId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get step progress: %v", err)
	}

	exists := progress != nil

	return &coursev1.GetStepProgressResponse{
		Progress: converter.ToStepProgressProto(progress),
		Exists:   exists,
	}, nil
}

// GetLessonProgress получает прогресс по уроку
func (a *api) GetLessonProgress(ctx context.Context, req *coursev1.GetLessonProgressRequest) (*coursev1.GetLessonProgressResponse, error) {
	lessonProgress, stepProgresses, err := a.progressService.GetLessonProgress(ctx, req.UserId, req.LessonId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get lesson progress: %v", err)
	}

	stepProgressesProto := make([]*coursev1.StepProgress, 0, len(stepProgresses))
	for _, sp := range stepProgresses {
		stepProgressesProto = append(stepProgressesProto, converter.ToStepProgressProto(sp))
	}

	return &coursev1.GetLessonProgressResponse{
		Progress:       converter.ToLessonProgressProto(lessonProgress),
		StepProgresses: stepProgressesProto,
	}, nil
}

// GetCourseProgress получает прогресс по курсу
func (a *api) GetCourseProgress(ctx context.Context, req *coursev1.GetCourseProgressRequest) (*coursev1.GetCourseProgressResponse, error) {
	lessonProgresses, totalLessons, completedLessons, overallProgress, err := a.progressService.GetCourseProgress(ctx, req.UserId, req.CourseId)
	if err != nil {
		return nil, status.Errorf(codes.Internal, "failed to get course progress: %v", err)
	}

	lessonProgressesProto := make([]*coursev1.LessonProgress, 0, len(lessonProgresses))
	for _, lp := range lessonProgresses {
		lessonProgressesProto = append(lessonProgressesProto, converter.ToLessonProgressProto(lp))
	}

	return &coursev1.GetCourseProgressResponse{
		LessonProgresses:          lessonProgressesProto,
		TotalLessons:              totalLessons,
		CompletedLessons:          completedLessons,
		OverallProgressPercentage: overallProgress,
	}, nil
}
