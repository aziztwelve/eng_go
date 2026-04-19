package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
)

// AdminUserRealHandler обработчик для управления пользователями (real implementation)
type AdminUserRealHandler struct {
	userClient *client.UserClient
}

// NewAdminUserRealHandler создает новый экземпляр Admin User handler
func NewAdminUserRealHandler(userClient *client.UserClient) *AdminUserRealHandler {
	return &AdminUserRealHandler{
		userClient: userClient,
	}
}

// ListUsers возвращает список всех пользователей
func (h *AdminUserRealHandler) ListUsers(c *gin.Context) {
	// TODO: Implement proper service integration
	// For now, return mock data until auth-service has ListUsers endpoint
	c.JSON(http.StatusOK, gin.H{
		"users": []dto.UserResponse{},
		"total": 0,
	})
}

// GetUser возвращает информацию о пользователе по ID
func (h *AdminUserRealHandler) GetUser(c *gin.Context) {
	// TODO: Implement proper service integration
	c.JSON(http.StatusNotFound, gin.H{
		"error": "User not found",
	})
}

// UpdateUser обновляет информацию о пользователе
func (h *AdminUserRealHandler) UpdateUser(c *gin.Context) {
	// TODO: Implement proper service integration
	c.JSON(http.StatusNotFound, gin.H{
		"error": "User not found",
	})
}

// DeleteUser удаляет пользователя
func (h *AdminUserRealHandler) DeleteUser(c *gin.Context) {
	// TODO: Implement proper service integration
	c.JSON(http.StatusNotFound, gin.H{
		"error": "User not found",
	})
}
