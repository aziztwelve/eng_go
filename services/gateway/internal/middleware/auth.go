package middleware

import (
	"net/http"
	"strings"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/platform/pkg/logger"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
)

// AuthMiddleware middleware для аутентификации через Auth Service
type AuthMiddleware struct {
	authClient *client.AuthClient
}

// NewAuthMiddleware создает новый экземпляр Auth middleware
func NewAuthMiddleware(authClient *client.AuthClient) *AuthMiddleware {
	return &AuthMiddleware{
		authClient: authClient,
	}
}

// Handle обрабатывает аутентификацию
func (m *AuthMiddleware) Handle() gin.HandlerFunc {
	return func(c *gin.Context) {
		// Извлечь токен из заголовка Authorization
		authHeader := c.GetHeader("Authorization")
		if authHeader == "" {
			c.JSON(http.StatusUnauthorized, gin.H{
				"error": "Missing authorization header",
			})
			c.Abort()
			return
		}

		// Формат: "Bearer <token>"
		parts := strings.Split(authHeader, " ")
		if len(parts) != 2 || parts[0] != "Bearer" {
			c.JSON(http.StatusUnauthorized, gin.H{
				"error": "Invalid authorization header format",
			})
			c.Abort()
			return
		}

		token := parts[1]

		// Валидация через Auth Service
		resp, err := m.authClient.ValidateToken(c.Request.Context(), &authv1.ValidateTokenRequest{
			Token: token,
		})

		if err != nil {
			logger.Error(c.Request.Context(), "Token validation failed", zap.Error(err))
			c.JSON(http.StatusUnauthorized, gin.H{
				"error": "Invalid token",
			})
			c.Abort()
			return
		}

		if !resp.Valid {
			c.JSON(http.StatusUnauthorized, gin.H{
				"error": "Token is not valid",
			})
			c.Abort()
			return
		}

		// Добавить user_id и role в контекст
		c.Set("user_id", resp.UserId)
		c.Set("user_role", resp.Role)

		c.Next()
	}
}
