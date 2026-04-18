package handler

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

// AdminHandler обработчик для admin endpoints
type AdminHandler struct{}

// NewAdminHandler создает новый экземпляр Admin handler
func NewAdminHandler() *AdminHandler {
	return &AdminHandler{}
}

// GetCurrentUser возвращает информацию о текущем admin пользователе
func (h *AdminHandler) GetCurrentUser(c *gin.Context) {
	userID, _ := c.Get("user_id")
	userRole, _ := c.Get("user_role")

	c.JSON(http.StatusOK, gin.H{
		"user_id": userID,
		"role":    userRole,
	})
}
