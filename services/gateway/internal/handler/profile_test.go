package handler

import (
	"github.com/gin-gonic/gin"
	"net/http/httptest"
	"strings"
	"testing"
)

func TestProfileRequiresAuthenticatedContext(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &AuthHandler{}
	for _, patch := range []bool{false, true} {
		w := httptest.NewRecorder()
		ctx, _ := gin.CreateTestContext(w)
		ctx.Request = httptest.NewRequest("PATCH", "/users/me/profile", strings.NewReader(`{"user_id":"victim","first_name":"x"}`))
		if patch {
			h.PatchProfile(ctx)
		} else {
			h.GetProfile(ctx)
		}
		if w.Code != 401 {
			t.Fatalf("unauthenticated profile status=%d", w.Code)
		}
	}
}
