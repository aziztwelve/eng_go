package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	"github.com/elearning/gateway/internal/errors"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

type CourseHandler struct {
	courseClient *client.CourseClient
}

func NewCourseHandler(courseClient *client.CourseClient) *CourseHandler {
	return &CourseHandler{courseClient: courseClient}
}

func (h *CourseHandler) ListCourses(c *gin.Context) {
	var req dto.ListCoursesRequest
	if err := c.ShouldBindQuery(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	grpcReq := &coursev1.ListCoursesRequest{
		Limit:  req.Limit,
		Offset: req.Offset,
	}

	if req.Language != nil {
		grpcReq.Language = wrapperspb.String(*req.Language)
	}
	if req.Level != nil {
		grpcReq.Level = wrapperspb.String(*req.Level)
	}
	if req.MinPrice != nil {
		grpcReq.MinPrice = wrapperspb.Double(*req.MinPrice)
	}
	if req.MaxPrice != nil {
		grpcReq.MaxPrice = wrapperspb.Double(*req.MaxPrice)
	}

	resp, err := h.courseClient.ListCourses(c.Request.Context(), grpcReq)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	courses := make([]dto.CourseResponse, 0, len(resp.Courses))
	for _, course := range resp.Courses {
		courses = append(courses, dto.CourseResponse{
			ID:           course.Id,
			Title:        course.Title,
			Description:  course.Description,
			Price:        course.Price,
			InstructorID: course.InstructorId,
			Level:        course.Level,
			Language:     course.Language,
			CreatedAt:    course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z"),
			UpdatedAt:    course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z"),
		})
	}

	c.JSON(http.StatusOK, dto.ListCoursesResponse{
		Courses: courses,
		Total:   resp.Total,
	})
}

func (h *CourseHandler) GetCourse(c *gin.Context) {
	courseID := c.Param("id")

	resp, err := h.courseClient.GetCourse(c.Request.Context(), &coursev1.GetCourseRequest{
		CourseId: courseID,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	// Маппим модули с уроками и шагами
	modules := make([]dto.ModuleResponse, 0, len(resp.Modules))
	for _, moduleWithLessons := range resp.Modules {
		lessons := make([]dto.LessonResponse, 0, len(moduleWithLessons.Lessons))
		for _, lessonWithSteps := range moduleWithLessons.Lessons {
			steps := make([]dto.StepResponse, 0, len(lessonWithSteps.Steps))
			for _, step := range lessonWithSteps.Steps {
				steps = append(steps, dto.StepResponse{
					ID:         step.Id,
					Type:       step.Type,
					Title:      step.Title,
					Content:    step.Content,
					OrderIndex: step.OrderIndex,
				})
			}
			lessons = append(lessons, dto.LessonResponse{
				ID:          lessonWithSteps.Lesson.Id,
				Title:       lessonWithSteps.Lesson.Title,
				Description: lessonWithSteps.Lesson.Description,
				OrderIndex:  lessonWithSteps.Lesson.OrderIndex,
				Steps:       steps,
			})
		}
		modules = append(modules, dto.ModuleResponse{
			ID:          moduleWithLessons.Module.Id,
			Title:       moduleWithLessons.Module.Title,
			Description: moduleWithLessons.Module.Description,
			OrderIndex:  moduleWithLessons.Module.OrderIndex,
			Lessons:     lessons,
		})
	}

	c.JSON(http.StatusOK, dto.CourseDetailResponse{
		ID:          resp.Course.Id,
		Title:       resp.Course.Title,
		Description: resp.Course.Description,
		Level:       resp.Course.Level,
		Language:    resp.Course.Language,
		Price:       resp.Course.Price,
		InstructorID: resp.Course.InstructorId,
		CreatedAt:   resp.Course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z"),
		UpdatedAt:   resp.Course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z"),
		Modules:     modules,
	})
}

func (h *CourseHandler) EnrollCourse(c *gin.Context) {
	userID, _ := c.Get("user_id")
	courseID := c.Param("id")

	resp, err := h.courseClient.EnrollUser(c.Request.Context(), &coursev1.EnrollUserRequest{
		UserId:   userID.(string),
		CourseId: courseID,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusCreated, gin.H{
		"enrollment_id": resp.Enrollment.Id,
		"message":       "Successfully enrolled",
	})
}

// MarkStepComplete отмечает шаг как завершенный
func (h *CourseHandler) MarkStepComplete(c *gin.Context) {
	userID, _ := c.Get("user_id")
	stepID := c.Param("stepId")

	var req dto.MarkStepCompleteRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	grpcReq := &coursev1.MarkStepCompleteRequest{
		UserId:           userID.(string),
		StepId:           stepID,
		TimeSpentSeconds: req.TimeSpentSeconds,
	}

	if req.Attempts != nil {
		grpcReq.Attempts = wrapperspb.Int32(*req.Attempts)
	}

	if req.Score != nil {
		grpcReq.Score = wrapperspb.Double(*req.Score)
	}

	resp, err := h.courseClient.MarkStepComplete(c.Request.Context(), grpcReq)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, dto.MarkStepCompleteResponse{
		StepProgress:   convertStepProgress(resp.StepProgress),
		LessonProgress: convertLessonProgress(resp.LessonProgress),
	})
}

// GetStepProgress получает прогресс по шагу
func (h *CourseHandler) GetStepProgress(c *gin.Context) {
	userID, _ := c.Get("user_id")
	stepID := c.Param("stepId")

	resp, err := h.courseClient.GetStepProgress(c.Request.Context(), &coursev1.GetStepProgressRequest{
		UserId: userID.(string),
		StepId: stepID,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	var progress *dto.StepProgressResponse
	if resp.Progress != nil {
		converted := convertStepProgress(resp.Progress)
		progress = &converted
	}

	c.JSON(http.StatusOK, dto.GetStepProgressResponse{
		Progress: progress,
		Exists:   resp.Exists,
	})
}

// GetLessonProgress получает прогресс по уроку
func (h *CourseHandler) GetLessonProgress(c *gin.Context) {
	userID, _ := c.Get("user_id")
	lessonID := c.Param("lessonId")

	resp, err := h.courseClient.GetLessonProgress(c.Request.Context(), &coursev1.GetLessonProgressRequest{
		UserId:   userID.(string),
		LessonId: lessonID,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	var progress *dto.LessonProgressResponse
	if resp.Progress != nil {
		converted := convertLessonProgress(resp.Progress)
		progress = &converted
	}

	stepProgresses := make([]dto.StepProgressResponse, 0, len(resp.StepProgresses))
	for _, sp := range resp.StepProgresses {
		stepProgresses = append(stepProgresses, convertStepProgress(sp))
	}

	c.JSON(http.StatusOK, dto.GetLessonProgressResponse{
		Progress:       progress,
		StepProgresses: stepProgresses,
	})
}

// GetCourseProgress получает прогресс по курсу
func (h *CourseHandler) GetCourseProgress(c *gin.Context) {
	userID, _ := c.Get("user_id")
	courseID := c.Param("courseId")

	resp, err := h.courseClient.GetCourseProgress(c.Request.Context(), &coursev1.GetCourseProgressRequest{
		UserId:   userID.(string),
		CourseId: courseID,
	})

	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	lessonProgresses := make([]dto.LessonProgressResponse, 0, len(resp.LessonProgresses))
	for _, lp := range resp.LessonProgresses {
		lessonProgresses = append(lessonProgresses, convertLessonProgress(lp))
	}

	c.JSON(http.StatusOK, dto.GetCourseProgressResponse{
		LessonProgresses:          lessonProgresses,
		TotalLessons:              resp.TotalLessons,
		CompletedLessons:          resp.CompletedLessons,
		OverallProgressPercentage: resp.OverallProgressPercentage,
	})
}

// Helper functions

func convertStepProgress(sp *coursev1.StepProgress) dto.StepProgressResponse {
	if sp == nil {
		return dto.StepProgressResponse{}
	}

	resp := dto.StepProgressResponse{
		ID:               sp.Id,
		UserID:           sp.UserId,
		StepID:           sp.StepId,
		LessonID:         sp.LessonId,
		Completed:        sp.Completed,
		TimeSpentSeconds: sp.TimeSpentSeconds,
		Attempts:         sp.Attempts,
		CreatedAt:        sp.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z"),
		UpdatedAt:        sp.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z"),
	}

	if sp.CompletedAt != nil {
		completedAt := sp.CompletedAt.AsTime().Format("2006-01-02T15:04:05Z")
		resp.CompletedAt = &completedAt
	}

	if sp.Score != 0 {
		resp.Score = &sp.Score
	}

	return resp
}

func convertLessonProgress(lp *coursev1.LessonProgress) dto.LessonProgressResponse {
	if lp == nil {
		return dto.LessonProgressResponse{}
	}

	resp := dto.LessonProgressResponse{
		ID:                 lp.Id,
		UserID:             lp.UserId,
		LessonID:           lp.LessonId,
		CourseID:           lp.CourseId,
		TotalSteps:         lp.TotalSteps,
		CompletedSteps:     lp.CompletedSteps,
		ProgressPercentage: lp.ProgressPercentage,
		StartedAt:          lp.StartedAt.AsTime().Format("2006-01-02T15:04:05Z"),
		LastActivityAt:     lp.LastActivityAt.AsTime().Format("2006-01-02T15:04:05Z"),
	}

	if lp.CompletedAt != nil {
		completedAt := lp.CompletedAt.AsTime().Format("2006-01-02T15:04:05Z")
		resp.CompletedAt = &completedAt
	}

	return resp
}
