package client

import (
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"

	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// CourseClient обертка над gRPC клиентом для Course Service
type CourseClient struct {
	conn   *grpc.ClientConn
	client coursev1.CourseServiceClient
}

// NewCourseClient создает новый клиент для Course Service
func NewCourseClient(ctx context.Context, addr string) (*CourseClient, error) {
	conn, err := grpc.DialContext(
		ctx,
		addr,
		grpc.WithTransportCredentials(insecure.NewCredentials()),
		grpc.WithDefaultCallOptions(
			grpc.MaxCallRecvMsgSize(10*1024*1024),
			grpc.MaxCallSendMsgSize(10*1024*1024),
		),
	)
	if err != nil {
		return nil, err
	}

	return &CourseClient{
		conn:   conn,
		client: coursev1.NewCourseServiceClient(conn),
	}, nil
}

// ListCourses получает список курсов
func (c *CourseClient) ListCourses(ctx context.Context, req *coursev1.ListCoursesRequest) (*coursev1.ListCoursesResponse, error) {
	return c.client.ListCourses(ctx, req)
}

// GetCourse получает информацию о курсе
func (c *CourseClient) GetCourse(ctx context.Context, req *coursev1.GetCourseRequest) (*coursev1.GetCourseResponse, error) {
	return c.client.GetCourse(ctx, req)
}

// GetLesson получает информацию об уроке
func (c *CourseClient) GetLesson(ctx context.Context, req *coursev1.GetLessonRequest) (*coursev1.GetLessonResponse, error) {
	return c.client.GetLesson(ctx, req)
}

// EnrollUser записывает пользователя на курс
func (c *CourseClient) EnrollUser(ctx context.Context, req *coursev1.EnrollUserRequest) (*coursev1.EnrollUserResponse, error) {
	return c.client.EnrollUser(ctx, req)
}

// CheckAccess проверяет доступ пользователя к курсу
func (c *CourseClient) CheckAccess(ctx context.Context, req *coursev1.CheckAccessRequest) (*coursev1.CheckAccessResponse, error) {
	return c.client.CheckAccess(ctx, req)
}

// MarkStepComplete отмечает шаг как завершенный
func (c *CourseClient) MarkStepComplete(ctx context.Context, req *coursev1.MarkStepCompleteRequest) (*coursev1.MarkStepCompleteResponse, error) {
	return c.client.MarkStepComplete(ctx, req)
}

// GetStepProgress получает прогресс по шагу
func (c *CourseClient) GetStepProgress(ctx context.Context, req *coursev1.GetStepProgressRequest) (*coursev1.GetStepProgressResponse, error) {
	return c.client.GetStepProgress(ctx, req)
}

// GetLessonProgress получает прогресс по уроку
func (c *CourseClient) GetLessonProgress(ctx context.Context, req *coursev1.GetLessonProgressRequest) (*coursev1.GetLessonProgressResponse, error) {
	return c.client.GetLessonProgress(ctx, req)
}

// GetCourseProgress получает прогресс по курсу
func (c *CourseClient) GetCourseProgress(ctx context.Context, req *coursev1.GetCourseProgressRequest) (*coursev1.GetCourseProgressResponse, error) {
	return c.client.GetCourseProgress(ctx, req)
}

// CreateCourse создает новый курс
func (c *CourseClient) CreateCourse(ctx context.Context, req *coursev1.CreateCourseRequest) (*coursev1.CreateCourseResponse, error) {
	return c.client.CreateCourse(ctx, req)
}

// UpdateCourse обновляет курс
func (c *CourseClient) UpdateCourse(ctx context.Context, req *coursev1.UpdateCourseRequest) (*coursev1.UpdateCourseResponse, error) {
	return c.client.UpdateCourse(ctx, req)
}

// DeleteCourse удаляет курс
func (c *CourseClient) DeleteCourse(ctx context.Context, req *coursev1.DeleteCourseRequest) (*coursev1.DeleteCourseResponse, error) {
	return c.client.DeleteCourse(ctx, req)
}

// PublishCourse публикует курс
func (c *CourseClient) PublishCourse(ctx context.Context, req *coursev1.PublishCourseRequest) (*coursev1.PublishCourseResponse, error) {
	return c.client.PublishCourse(ctx, req)
}

// CreateModule создает новый модуль
func (c *CourseClient) CreateModule(ctx context.Context, req *coursev1.CreateModuleRequest) (*coursev1.CreateModuleResponse, error) {
	return c.client.CreateModule(ctx, req)
}

// UpdateModule обновляет модуль
func (c *CourseClient) UpdateModule(ctx context.Context, req *coursev1.UpdateModuleRequest) (*coursev1.UpdateModuleResponse, error) {
	return c.client.UpdateModule(ctx, req)
}

// DeleteModule удаляет модуль
func (c *CourseClient) DeleteModule(ctx context.Context, req *coursev1.DeleteModuleRequest) (*coursev1.DeleteModuleResponse, error) {
	return c.client.DeleteModule(ctx, req)
}

// CreateLesson создает новый урок
func (c *CourseClient) CreateLesson(ctx context.Context, req *coursev1.CreateLessonRequest) (*coursev1.CreateLessonResponse, error) {
	return c.client.CreateLesson(ctx, req)
}

// UpdateLesson обновляет урок
func (c *CourseClient) UpdateLesson(ctx context.Context, req *coursev1.UpdateLessonRequest) (*coursev1.UpdateLessonResponse, error) {
	return c.client.UpdateLesson(ctx, req)
}

// DeleteLesson удаляет урок
func (c *CourseClient) DeleteLesson(ctx context.Context, req *coursev1.DeleteLessonRequest) (*coursev1.DeleteLessonResponse, error) {
	return c.client.DeleteLesson(ctx, req)
}

// CreateStep создает новый шаг
func (c *CourseClient) CreateStep(ctx context.Context, req *coursev1.CreateStepRequest) (*coursev1.CreateStepResponse, error) {
	return c.client.CreateStep(ctx, req)
}

// UpdateStep обновляет шаг
func (c *CourseClient) UpdateStep(ctx context.Context, req *coursev1.UpdateStepRequest) (*coursev1.UpdateStepResponse, error) {
	return c.client.UpdateStep(ctx, req)
}

// DeleteStep удаляет шаг
func (c *CourseClient) DeleteStep(ctx context.Context, req *coursev1.DeleteStepRequest) (*coursev1.DeleteStepResponse, error) {
	return c.client.DeleteStep(ctx, req)
}

// === Learning Tracks (Phase 0) ===

// ListTracks возвращает страницу треков
func (c *CourseClient) ListTracks(ctx context.Context, req *coursev1.ListTracksRequest) (*coursev1.ListTracksResponse, error) {
	return c.client.ListTracks(ctx, req)
}

// GetTrack возвращает трек по ID
func (c *CourseClient) GetTrack(ctx context.Context, req *coursev1.GetTrackRequest) (*coursev1.GetTrackResponse, error) {
	return c.client.GetTrack(ctx, req)
}

// GetTrackByCode возвращает трек по уникальному коду
func (c *CourseClient) GetTrackByCode(ctx context.Context, req *coursev1.GetTrackByCodeRequest) (*coursev1.GetTrackResponse, error) {
	return c.client.GetTrackByCode(ctx, req)
}

// CreateTrack создаёт новый трек
func (c *CourseClient) CreateTrack(ctx context.Context, req *coursev1.CreateTrackRequest) (*coursev1.CreateTrackResponse, error) {
	return c.client.CreateTrack(ctx, req)
}

// UpdateTrack обновляет трек
func (c *CourseClient) UpdateTrack(ctx context.Context, req *coursev1.UpdateTrackRequest) (*coursev1.UpdateTrackResponse, error) {
	return c.client.UpdateTrack(ctx, req)
}

// DeleteTrack удаляет трек
func (c *CourseClient) DeleteTrack(ctx context.Context, req *coursev1.DeleteTrackRequest) (*coursev1.DeleteTrackResponse, error) {
	return c.client.DeleteTrack(ctx, req)
}

// PublishTrack меняет статус публикации
func (c *CourseClient) PublishTrack(ctx context.Context, req *coursev1.PublishTrackRequest) (*coursev1.PublishTrackResponse, error) {
	return c.client.PublishTrack(ctx, req)
}

// AddLessonToTrack привязывает урок к треку
func (c *CourseClient) AddLessonToTrack(ctx context.Context, req *coursev1.AddLessonToTrackRequest) (*coursev1.AddLessonToTrackResponse, error) {
	return c.client.AddLessonToTrack(ctx, req)
}

// RemoveLessonFromTrack отвязывает урок
func (c *CourseClient) RemoveLessonFromTrack(ctx context.Context, req *coursev1.RemoveLessonFromTrackRequest) (*coursev1.RemoveLessonFromTrackResponse, error) {
	return c.client.RemoveLessonFromTrack(ctx, req)
}

// ReorderTrackLessons изменяет порядок уроков
func (c *CourseClient) ReorderTrackLessons(ctx context.Context, req *coursev1.ReorderTrackLessonsRequest) (*coursev1.ReorderTrackLessonsResponse, error) {
	return c.client.ReorderTrackLessons(ctx, req)
}

// Close закрывает соединение
func (c *CourseClient) Close() error {
	return c.conn.Close()
}
