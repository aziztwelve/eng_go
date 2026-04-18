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

// AdminModuleHandler обработчик для управления модулями
type AdminModuleHandler struct {
	courseClient *client.CourseClient
}

// NewAdminModuleHandler создает новый экземпляр Admin Module handler
func NewAdminModuleHandler(courseClient *client.CourseClient) *AdminModuleHandler {
	return &AdminModuleHandler{
		courseClient: courseClient,
	}
}

// CreateModule создает новый модуль
func (h *AdminModuleHandler) CreateModule(c *gin.Context) {
	courseID := c.Param("courseId")
	
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

	resp, err := h.courseClient.CreateModule(c.Request.Context(), &coursev1.CreateModuleRequest{
		CourseId:    courseID,
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
		"id":          resp.Module.Id,
		"course_id":   resp.Module.CourseId,
		"title":       resp.Module.Title,
		"description": resp.Module.Description,
		"order_index": resp.Module.OrderIndex,
		"created_at":  resp.Module.CreatedAt,
		"updated_at":  resp.Module.UpdatedAt,
	})
}

// UpdateModule обновляет модуль
func (h *AdminModuleHandler) UpdateModule(c *gin.Context) {
	moduleID := c.Param("moduleId")
	
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

	resp, err := h.courseClient.UpdateModule(c.Request.Context(), &coursev1.UpdateModuleRequest{
		ModuleId:    moduleID,
		Title:       &wrapperspb.StringValue{Value: req.Title},
		Description: &wrapperspb.StringValue{Value: req.Description},
		OrderIndex:  &wrapperspb.Int32Value{Value: req.OrderIndex},
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Module not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"id":          resp.Module.Id,
		"course_id":   resp.Module.CourseId,
		"title":       resp.Module.Title,
		"description": resp.Module.Description,
		"order_index": resp.Module.OrderIndex,
		"created_at":  resp.Module.CreatedAt,
		"updated_at":  resp.Module.UpdatedAt,
	})
}

// DeleteModule удаляет модуль
func (h *AdminModuleHandler) DeleteModule(c *gin.Context) {
	moduleID := c.Param("moduleId")

	_, err := h.courseClient.DeleteModule(c.Request.Context(), &coursev1.DeleteModuleRequest{
		ModuleId: moduleID,
	})
	if err != nil {
		st, _ := status.FromError(err)
		if st.Code() == codes.NotFound {
			c.JSON(http.StatusNotFound, gin.H{
				"error": "Module not found",
			})
			return
		}
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": st.Message(),
		})
		return
	}

	c.JSON(http.StatusOK, gin.H{
		"message": "Module deleted successfully",
	})
}
