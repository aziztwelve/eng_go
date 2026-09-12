package middleware

import (
	"time"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"

	"github.com/elearning/platform/pkg/logger"
)

// Logger middleware для логирования HTTP запросов
func Logger() gin.HandlerFunc {
	return func(c *gin.Context) {
		start := time.Now()
		path := c.Request.URL.Path
		query := c.Request.URL.RawQuery

		c.Next()

		latency := time.Since(start)
		statusCode := c.Writer.Status()

		fields := []zap.Field{
			zap.String("method", c.Request.Method),
			zap.String("path", path),
			zap.String("query", query),
			zap.Int("status", statusCode),
			zap.Duration("latency", latency),
			zap.String("ip", c.ClientIP()),
			zap.String("user_agent", c.Request.UserAgent()),
		}
		// Версия мобильного приложения (X-App-Version с APK >= 1.0.4).
		// По ней считаем adoption старых версий перед удалением compat-шим.
		if v := c.GetHeader("X-App-Version"); v != "" {
			fields = append(fields, zap.String("app_version", v))
		}
		logger.Info(c.Request.Context(), "HTTP request", fields...)
	}
}
