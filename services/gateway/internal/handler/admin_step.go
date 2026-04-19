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

// AdminStepHandler обработчик для управления шагами
type AdminStepHandler struct {
	courseClient *client.CourseClient
}

// NewAdminStepHandler создает новый экземпляр Admin Step handler
func NewAdminStepHandler(courseClient *client.CourseClient) *AdminStepHandler {
	return &AdminStepHandler{
		courseClient: courseClient,
	}
}

// CreateStep создает новый шаг
func (h *AdminStepHandler) CreateStep(c *gin.Context) {
	lessonID := c.Param("lessonId")
	
	var req struct {
		Type       string `json:"type" binding:"required"`
		Title      string `json:"title" binding:"required"`
		Content    string `json:"content"`
		OrderIndex int32  `json:"order_index"`
	}
	
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	resp, err := h.courseClient.CreateStep(c.Request.Context(), &coursev1.CreateStepRequest{
		LessonId:   lessonID,
		Type:       req.Type,
		Title:      req.Title,
		Content:    req.Content,
		OrderIndex: req.OrderIndex,
	})
	if err != nil {
		st, _ := status.FromError(err)
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"id":          resp.Step.Id,
		"lesson_id":   resp.Step.LessonId,
		"type":        resp.Step.Type,
		"title":       resp.Step.Title,
		"content":     resp.Step.Content,
		"order_index": resp.Step.OrderIndex,
		"created_at":  resp.Step.CreatedAt,
		"updated_at":  resp.Step.UpdatedAt,
	})
}

// UpdateStep обновляет шаг
func (h *AdminStepHandler) UpdateStep(c *gin.Context) {
	stepID := c.Param("stepId")
	
	var req struct {
		Type       string `json:"type"`
		Title      string `json:"title"`
		Content    string `json:"content"`
		OrderIndex int32  `json:"order_index"`
	}
	
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	resp, err := h.courseClient.UpdateStep(c.Request.Context(), &coursev1.UpdateStepRequest{
		StepId:     stepID,
		Type:       &wrapperspb.StringValue{Value: req.Type},
		Title:      &wrapperspb.StringValue{Value: req.Title},
		Content:    &wrapperspb.StringValue{Value: req.Content},
		OrderIndex: &wrapperspb.Int32Value{Value: req.OrderIndex},
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Step not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"id":          resp.Step.Id,
		"lesson_id":   resp.Step.LessonId,
		"type":        resp.Step.Type,
		"title":       resp.Step.Title,
		"content":     resp.Step.Content,
		"order_index": resp.Step.OrderIndex,
		"created_at":  resp.Step.CreatedAt,
		"updated_at":  resp.Step.UpdatedAt,
	})
}

// DeleteStep удаляет шаг
func (h *AdminStepHandler) DeleteStep(c *gin.Context) {
	stepID := c.Param("stepId")

	_, err := h.courseClient.DeleteStep(c.Request.Context(), &coursev1.DeleteStepRequest{
		StepId: stepID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Step not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Step deleted successfully",
	})
}
