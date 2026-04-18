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

// ListCourses возвращает список всех курсов
func (h *AdminCourseRealHandler) ListCourses(c *gin.Context) {
	resp, err := h.courseClient.ListCourses(c.Request.Context(), &coursev1.ListCoursesRequest{})
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

	c.JSON(http.StatusOK, gin.H{
		"courses": courses,
		"total":   resp.Total,
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

	course := dto.CourseDetailResponse{
		ID:          resp.Course.Id,
		Title:       resp.Course.Title,
		Description: resp.Course.Description,
		Level:       resp.Course.Level,
		Language:    resp.Course.Language,
		Status:      courseStatus,
		CreatedAt:   resp.Course.CreatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		UpdatedAt:   resp.Course.UpdatedAt.AsTime().Format("2006-01-02T15:04:05Z07:00"),
		Modules:     []dto.ModuleResponse{},
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
