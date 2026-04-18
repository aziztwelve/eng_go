package errors

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"

	"github.com/elearning/platform/pkg/logger"
)

// HandleGRPCError конвертирует gRPC ошибку в HTTP ответ
func HandleGRPCError(c *gin.Context, err error) {
	st, ok := status.FromError(err)
	if !ok {
		logger.Error(c.Request.Context(), "Unknown error", zap.Error(err))
		c.JSON(http.StatusInternalServerError, gin.H{
			"error": "Internal server error",
		})
		return
	}

	var httpStatus int
	var message string

	switch st.Code() {
	case codes.InvalidArgument:
		httpStatus = http.StatusBadRequest
		message = st.Message()
	case codes.NotFound:
		httpStatus = http.StatusNotFound
		message = st.Message()
	case codes.AlreadyExists:
		httpStatus = http.StatusConflict
		message = st.Message()
	case codes.Unauthenticated:
		httpStatus = http.StatusUnauthorized
		message = "Authentication failed"
	case codes.PermissionDenied:
		httpStatus = http.StatusForbidden
		message = "Permission denied"
	case codes.Internal:
		httpStatus = http.StatusInternalServerError
		message = "Internal server error"
		logger.Error(c.Request.Context(), "Internal gRPC error",
			zap.String("grpc_message", st.Message()),
			zap.Error(err),
		)
	default:
		httpStatus = http.StatusInternalServerError
		message = "Unknown error"
		logger.Error(c.Request.Context(), "Unhandled gRPC error",
			zap.String("code", st.Code().String()),
			zap.String("message", st.Message()),
		)
	}

	c.JSON(httpStatus, gin.H{
		"error": message,
		"code":  st.Code().String(),
	})
}
