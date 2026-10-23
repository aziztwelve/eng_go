package middleware

import (
	"context"
	"github.com/elearning/platform/pkg/logger"
	authv1 "github.com/elearning/shared/pkg/proto/auth/v1"
	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"net/http"
	"net/http/httptest"
	"testing"
)

type failedAuth struct{ code codes.Code }

func (f failedAuth) ValidateToken(context.Context, *authv1.ValidateTokenRequest) (*authv1.ValidateTokenResponse, error) {
	return nil, status.Error(f.code, "test")
}
func TestAuthOutageDoesNotRevokeExistingClients(t *testing.T) {
	logger.InitForBenchmark()
	gin.SetMode(gin.TestMode)
	for _, tc := range []struct {
		code codes.Code
		want int
	}{{codes.Unavailable, 503}, {codes.Canceled, 503}, {codes.Internal, 503}, {codes.DeadlineExceeded, 503}, {codes.Unauthenticated, 401}, {codes.InvalidArgument, 401}} {
		t.Run(tc.code.String(), func(t *testing.T) {
			router := gin.New()
			m := &AuthMiddleware{authClient: failedAuth{tc.code}}
			router.GET("/protected", m.Handle(), func(c *gin.Context) { c.Status(http.StatusOK) })
			request := httptest.NewRequest("GET", "/protected", nil)
			request.Header.Set("Authorization", "Bearer existing-token")
			response := httptest.NewRecorder()
			router.ServeHTTP(response, request)
			if response.Code != tc.want {
				t.Fatalf("status=%d want=%d", response.Code, tc.want)
			}
		})
	}
}
