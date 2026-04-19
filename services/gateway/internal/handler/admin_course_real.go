package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// AdminCourseRealHandler обработчик для управления курсами (real implementation)
type AdminCourseRealHandler struct {
	courseClient *client.CourseClient
}

// NewAdminCourseRealHandler создает новый экземпляр Admin Course handler
func NewAdminCourseRealHandler(courseClient *client.CourseClient) *AdminCourseRealHandler {
	return &AdminCourseRealHandler{
		courseClient: courseClient,
	}
}

// ListCourses возвращает список всех курсов с пагинацией и фильтрами
func (h *AdminCourseRealHandler) ListCourses(c *gin.Context) {
	// Parse query parameters
	var params struct {
		Page   int32  `form:"page" binding:"omitempty,min=1"`
		Limit  int32  `form:"limit" binding:"omitempty,min=1,max=100"`
		Search string `form:"search"`
		Status string `form:"status" binding:"omitempty,oneof=draft published"`
	}

	if err := c.ShouldBindQuery(&params); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid query parameters",
		})
		return
	}

	// Set defaults
	if params.Page == 0 {
		params.Page = 1
	}
	if params.Limit == 0 {
		params.Limit = 10
	}

	// Calculate offset
	offset := (params.Page - 1) * params.Limit

	resp, err := h.courseClient.ListCourses(c.Request.Context(), &coursev1.ListCoursesRequest{
		Limit:              params.Limit,
		Offset:             offset,
		IncludeUnpublished: true, // Show all courses including drafts for admin
		Search:             params.Search,
		Status:             params.Status,
	})
	if err != nil {
		st, _ := status.FromError(err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	courses := make([]dto.CourseResponse, 0, len(resp.Courses))
	for _, course := range resp.Courses {
		courseStatus := "draft"
		if course.IsPublished {
			courseStatus = "published"
		}
		courses = append(courses, dto.CourseResponse{
			ID:          course.Id,
			Title:       course.Title,
			Description: course.Description,
			Level:       course.Level,
			Language:    course.Language,
			Status:      courseStatus,
			CreatedAt:   course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
			UpdatedAt:   course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		})
	}

	// Calculate total pages
	totalPages := int32(0)
	if params.Limit > 0 {
		totalPages = (resp.Total + params.Limit - 1) / params.Limit
	}

	c.JSON(http.StatusOK, gin.H{
		"courses": courses,
		"pagination": gin.H{
			"total":       resp.Total,
			"page":        params.Page,
			"limit":       params.Limit,
			"total_pages": totalPages,
		},
	})
}

// GetCourse возвращает курс по ID
func (h *AdminCourseRealHandler) GetCourse(c *gin.Context) {
	courseID := c.Param("id")

	resp, err := h.courseClient.GetCourse(c.Request.Context(), &coursev1.GetCourseRequest{
		CourseId: courseID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Course not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	courseStatus := "draft"
	if resp.Course.IsPublished {
		courseStatus = "published"
	}

	// Convert modules from proto to DTO
	modules := make([]dto.ModuleResponse, 0, len(resp.Modules))
	for _, mwl := range resp.Modules {
		m := mwl.Module
		
		// Convert lessons
		lessons := make([]dto.LessonResponse, 0, len(mwl.Lessons))
		for _, lwl := range mwl.Lessons {
			l := lwl.Lesson
			
			// Convert steps
			steps := make([]dto.StepResponse, 0, len(lwl.Steps))
			for _, s := range lwl.Steps {
				steps = append(steps, dto.StepResponse{
					ID:         s.Id,
					Type:       s.Type,
					Content:    s.Content,
					OrderIndex: s.OrderIndex,
				})
			}
			
			lessons = append(lessons, dto.LessonResponse{
				ID:          l.Id,
				Title:       l.Title,
				Description: l.Description,
				OrderIndex:  l.OrderIndex,
				Steps:       steps,
			})
		}
		
		modules = append(modules, dto.ModuleResponse{
			ID:          m.Id,
			Title:       m.Title,
			Description: m.Description,
			OrderIndex:  m.OrderIndex,
			Lessons:     lessons,
		})
	}

	course := dto.CourseDetailResponse{
		ID:          resp.Course.Id,
		Title:       resp.Course.Title,
		Description: resp.Course.Description,
		Level:       resp.Course.Level,
		Language:    resp.Course.Language,
		Status:      courseStatus,
		CreatedAt:   resp.Course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:   resp.Course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		Modules:     modules,
	}

	c.JSON(http.StatusOK, course)
}

// CreateCourse создает новый курс
func (h *AdminCourseRealHandler) CreateCourse(c *gin.Context) {
	var req dto.CreateCourseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	resp, err := h.courseClient.CreateCourse(c.Request.Context(), &coursev1.CreateCourseRequest{
		Title:        req.Title,
		Description:  req.Description,
		Level:        req.Level,
		Language:     req.Language,
		InstructorId: "11111111-1111-1111-1111-111111111111", // Admin user ID from seed
	})
	if err != nil {
		st, _ := status.FromError(err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	courseStatus := "draft"
	if resp.Course.IsPublished {
		courseStatus = "published"
	}

	course := dto.CourseResponse{
		ID:          resp.Course.Id,
		Title:       resp.Course.Title,
		Description: resp.Course.Description,
		Level:       resp.Course.Level,
		Language:    resp.Course.Language,
		Status:      courseStatus,
		CreatedAt:   resp.Course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:   resp.Course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}

	c.JSON(http.StatusCreated, course)
}

// UpdateCourse обновляет курс
func (h *AdminCourseRealHandler) UpdateCourse(c *gin.Context) {
	courseID := c.Param("id")

	var req dto.UpdateCourseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	resp, err := h.courseClient.UpdateCourse(c.Request.Context(), &coursev1.UpdateCourseRequest{
		CourseId:    courseID,
		Title:       wrapperspb.String(req.Title),
		Description: wrapperspb.String(req.Description),
		Level:       wrapperspb.String(req.Level),
		Language:    wrapperspb.String(req.Language),
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Course not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	courseStatus := "draft"
	if resp.Course.IsPublished {
		courseStatus = "published"
	}

	course := dto.CourseResponse{
		ID:          resp.Course.Id,
		Title:       resp.Course.Title,
		Description: resp.Course.Description,
		Level:       resp.Course.Level,
		Language:    resp.Course.Language,
		Status:      courseStatus,
		CreatedAt:   resp.Course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:   resp.Course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}

	c.JSON(http.StatusOK, course)
}

// DeleteCourse удаляет курс
func (h *AdminCourseRealHandler) DeleteCourse(c *gin.Context) {
	courseID := c.Param("id")

	_, err := h.courseClient.DeleteCourse(c.Request.Context(), &coursev1.DeleteCourseRequest{
		CourseId: courseID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Course not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Course deleted successfully",
	})
}

// PublishCourse публикует курс
func (h *AdminCourseRealHandler) PublishCourse(c *gin.Context) {
	courseID := c.Param("id")

	resp, err := h.courseClient.PublishCourse(c.Request.Context(), &coursev1.PublishCourseRequest{
		CourseId:    courseID,
		IsPublished: true,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Course not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	courseStatus := "draft"
	if resp.Course.IsPublished {
		courseStatus = "published"
	}

	course := dto.CourseResponse{
		ID:          resp.Course.Id,
		Title:       resp.Course.Title,
		Description: resp.Course.Description,
		Level:       resp.Course.Level,
		Language:    resp.Course.Language,
		Status:      courseStatus,
		CreatedAt:   resp.Course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:   resp.Course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
	}

	c.JSON(http.StatusOK, course)
}
