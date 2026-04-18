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

// Close закрывает соединение
func (c *CourseClient) Close() error {
	return c.conn.Close()
}
