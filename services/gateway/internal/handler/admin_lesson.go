package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	coursev1 "github.com/elearning/shared/pkg/proto/course/v1"
)

// AdminLessonHandler обработчик для управления уроками
type AdminLessonHandler struct {
	courseClient *client.CourseClient
}

// NewAdminLessonHandler создает новый экземпляр Admin Lesson handler
func NewAdminLessonHandler(courseClient *client.CourseClient) *AdminLessonHandler {
	return &AdminLessonHandler{
		courseClient: courseClient,
	}
}

// CreateLesson создает новый урок
func (h *AdminLessonHandler) CreateLesson(c *gin.Context) {
	moduleID := c.Param("moduleId")
	
	var req struct {
		Title       string `json:"title" binding:"required"`
		Description string `json:"description"`
		OrderIndex  int32  `json:"order_index"`
	}
	
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	resp, err := h.courseClient.CreateLesson(c.Request.Context(), &coursev1.CreateLessonRequest{
		ModuleId:    moduleID,
		Title:       req.Title,
		Description: req.Description,
		OrderIndex:  req.OrderIndex,
	})
	if err != nil {
		st, _ := status.FromError(err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"id":          resp.Lesson.Id,
		"module_id":   resp.Lesson.ModuleId,
		"title":       resp.Lesson.Title,
		"description": resp.Lesson.Description,
		"order_index": resp.Lesson.OrderIndex,
		"created_at":  resp.Lesson.CreatedAt,
		"updated_at":  resp.Lesson.UpdatedAt,
	})
}

// UpdateLesson обновляет урок
func (h *AdminLessonHandler) UpdateLesson(c *gin.Context) {
	lessonID := c.Param("lessonId")
	
	var req struct {
		Title       string `json:"title"`
		Description string `json:"description"`
		OrderIndex  int32  `json:"order_index"`
	}
	
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	resp, err := h.courseClient.UpdateLesson(c.Request.Context(), &coursev1.UpdateLessonRequest{
		LessonId:    lessonID,
		Title:       &wrapperspb.StringValue{Value: req.Title},
		Description: &wrapperspb.StringValue{Value: req.Description},
		OrderIndex:  &wrapperspb.Int32Value{Value: req.OrderIndex},
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Lesson not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"id":          resp.Lesson.Id,
		"module_id":   resp.Lesson.ModuleId,
		"title":       resp.Lesson.Title,
		"description": resp.Lesson.Description,
		"order_index": resp.Lesson.OrderIndex,
		"created_at":  resp.Lesson.CreatedAt,
		"updated_at":  resp.Lesson.UpdatedAt,
	})
}

// DeleteLesson удаляет урок
func (h *AdminLessonHandler) DeleteLesson(c *gin.Context) {
	lessonID := c.Param("lessonId")

	_, err := h.courseClient.DeleteLesson(c.Request.Context(), &coursev1.DeleteLessonRequest{
		LessonId: lessonID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Lesson not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Lesson deleted successfully",
	})
}
