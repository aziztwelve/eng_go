package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/google/uuid"
	"github.com/elearning/gateway/internal/dto"
)

// AdminCourseHandler обработчик для управления курсами
type AdminCourseHandler struct{}

// NewAdminCourseHandler создает новый экземпляр Admin Course handler
func NewAdminCourseHandler() *AdminCourseHandler {
	return &AdminCourseHandler{}
}

// ListCourses возвращает список всех курсов (mock)
func (h *AdminCourseHandler) ListCourses(c *gin.Context) {
	// TODO: Implement real database query
	// Mock data for now
	courses := []dto.CourseResponse{
		{
			ID:          "20000001-0000-0000-0000-000000000001",
			Title:       "English for Beginners",
			Description: "Learn basic English",
			Level:       "beginner",
			Language:    "en",
			Status:      "published",
			CreatedAt:   "2026-01-01T00:00:00Z",
			UpdatedAt:   "2026-01-01T00:00:00Z",
		},
		{
			ID:          "20000002-0000-0000-0000-000000000002",
			Title:       "Advanced Grammar",
			Description: "Master English grammar",
			Level:       "advanced",
			Language:    "en",
			Status:      "draft",
			CreatedAt:   "2026-02-01T00:00:00Z",
			UpdatedAt:   "2026-02-01T00:00:00Z",
		},
	}

	c.JSON(http.StatusOK, gin.H{
		"courses": courses,
		"total":   len(courses),
	})
}

// GetCourse возвращает курс по ID (mock)
func (h *AdminCourseHandler) GetCourse(c *gin.Context) {
	courseID := c.Param("id")

	// Mock data
	course := dto.CourseDetailResponse{
		ID:          courseID,
		Title:       "English for Beginners",
		Description: "Learn basic English from scratch",
		Level:       "beginner",
		Language:    "en",
		Status:      "published",
		Modules: []dto.ModuleResponse{
			{
				ID:          "module-1",
				Title:       "Introduction",
				Description: "Getting started",
				OrderIndex:  1,
				Lessons:     []dto.LessonResponse{},
			},
		},
		CreatedAt: "2026-01-01T00:00:00Z",
		UpdatedAt: "2026-01-01T00:00:00Z",
	}

	c.JSON(http.StatusOK, course)
}

// CreateCourse создает новый курс (mock)
func (h *AdminCourseHandler) CreateCourse(c *gin.Context) {
	var req dto.CreateCourseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// Generate unique ID
	courseID := uuid.New().String()

	// Mock response
	course := dto.CourseResponse{
		ID:          courseID,
		Title:       req.Title,
		Description: req.Description,
		Level:       req.Level,
		Language:    req.Language,
		Status:      "draft",
		CreatedAt:   "2026-04-18T15:00:00Z",
		UpdatedAt:   "2026-04-18T15:00:00Z",
	}

	c.JSON(http.StatusCreated, course)
}

// UpdateCourse обновляет курс (mock)
func (h *AdminCourseHandler) UpdateCourse(c *gin.Context) {
	courseID := c.Param("id")

	var req dto.UpdateCourseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// Mock response
	course := dto.CourseResponse{
		ID:          courseID,
		Title:       req.Title,
		Description: req.Description,
		Level:       req.Level,
		Language:    req.Language,
		Status:      "draft",
		CreatedAt:   "2026-01-01T00:00:00Z",
		UpdatedAt:   "2026-04-18T15:00:00Z",
	}

	c.JSON(http.StatusOK, course)
}

// DeleteCourse удаляет курс (mock)
func (h *AdminCourseHandler) DeleteCourse(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "Course deleted successfully",
	})
}

// PublishCourse публикует/снимает с публикации курс (mock)
func (h *AdminCourseHandler) PublishCourse(c *gin.Context) {
	var req dto.PublishCourseRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	status := "draft"
	if req.Publish {
		status = "published"
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Course status updated",
		"status":  status,
	})
}
