package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/elearning/gateway/internal/dto"
)

// AdminUserHandler обработчик для управления пользователями
type AdminUserHandler struct{}

// NewAdminUserHandler создает новый экземпляр Admin User handler
func NewAdminUserHandler() *AdminUserHandler {
	return &AdminUserHandler{}
}

// ListUsers возвращает список всех пользователей (mock)
func (h *AdminUserHandler) ListUsers(c *gin.Context) {
	// TODO: Implement real database query
	// Mock data for now
	users := []dto.UserResponse{
		{
			ID:        "11111111-1111-1111-1111-111111111111",
			Email:     "admin@test.com",
			FullName:  "Admin User",
			Role:      "admin",
			CreatedAt: "2026-01-15T00:00:00Z",
			UpdatedAt: "2026-01-15T00:00:00Z",
		},
		{
			ID:        "22222222-2222-2222-2222-222222222222",
			Email:     "instructor1@test.com",
			FullName:  "John Instructor",
			Role:      "instructor",
			CreatedAt: "2026-02-20T00:00:00Z",
			UpdatedAt: "2026-02-20T00:00:00Z",
		},
		{
			ID:        "33333333-3333-3333-3333-333333333333",
			Email:     "student1@test.com",
			FullName:  "Alice Student",
			Role:      "student",
			CreatedAt: "2026-03-10T00:00:00Z",
			UpdatedAt: "2026-03-10T00:00:00Z",
		},
	}

	c.JSON(http.StatusOK, gin.H{
		"users": users,
		"total": len(users),
	})
}

// GetUser возвращает информацию о пользователе по ID (mock)
func (h *AdminUserHandler) GetUser(c *gin.Context) {
	userID := c.Param("id")

	// Mock data
	user := dto.UserResponse{
		ID:        userID,
		Email:     "user@test.com",
		FullName:  "Test User",
		Role:      "student",
		CreatedAt: "2026-03-10T00:00:00Z",
		UpdatedAt: "2026-03-10T00:00:00Z",
	}

	c.JSON(http.StatusOK, user)
}

// UpdateUser обновляет информацию о пользователе (mock)
func (h *AdminUserHandler) UpdateUser(c *gin.Context) {
	userID := c.Param("id")

	var req dto.UpdateUserRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": "Invalid request body",
		})
		return
	}

	// Mock response
	user := dto.UserResponse{
		ID:        userID,
		Email:     "user@test.com",
		FullName:  req.FullName,
		Role:      req.Role,
		CreatedAt: "2026-03-10T00:00:00Z",
		UpdatedAt: "2026-04-18T15:00:00Z",
	}

	c.JSON(http.StatusOK, user)
}

// DeleteUser удаляет пользователя (mock)
func (h *AdminUserHandler) DeleteUser(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "User deleted successfully",
	})
}
