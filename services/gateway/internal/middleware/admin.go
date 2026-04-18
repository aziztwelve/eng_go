package middleware

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

// AdminOnlyMiddleware middleware для проверки admin роли
type AdminOnlyMiddleware struct{}

// NewAdminOnlyMiddleware создает новый экземпляр Admin middleware
func NewAdminOnlyMiddleware() *AdminOnlyMiddleware {
	return &AdminOnlyMiddleware{}
}

// Handle проверяет что пользователь имеет роль admin
func (m *AdminOnlyMiddleware) Handle() gin.HandlerFunc {
	return func(c *gin.Context) {
		// Получить роль из контекста (установлена AuthMiddleware)
		role, exists := c.Get("user_role")
		if !exists {
			c.JSON(http.StatusUnauthorized, gin.H{
				"error": "User role not found in context",
			})
			c.Abort()
			return
		}

		// Проверить что роль = admin
		if role != "admin" {
			c.JSON(http.StatusForbidden, gin.H{
				"error": "Access denied. Admin role required",
			})
			c.Abort()
			return
		}

		c.Next()
	}
}
