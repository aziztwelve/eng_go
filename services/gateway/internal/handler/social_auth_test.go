package handler

import (
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	"github.com/gin-gonic/gin"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

func TestSocialRequestValidation(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := NewAuthHandler(nil, nil)
	r := gin.New()
	r.POST("/social/:provider", h.SocialLogin)
	r.POST("/social/:provider/challenge", h.SocialChallenge)
	for _, tc := range []struct{ path, body string }{{"/social/guest_fake/challenge", "{}"}, {"/social/google", "{}"}, {"/social/apple", `{"challenge_id":"invalid","identity_token":"forged"}`}, {"/social/google", `{"challenge_id":"00000000-0000-4000-8000-000000000000","identity_token":"not-a-code"}`}} {
		w := httptest.NewRecorder()
		req := httptest.NewRequest(http.MethodPost, tc.path, strings.NewReader(tc.body))
		req.Header.Set("Content-Type", "application/json")
		r.ServeHTTP(w, req)
		if w.Code != 400 {
			t.Fatalf("%s: %d %s", tc.path, w.Code, w.Body.String())
		}
	}
}
func TestSocialUnavailableIs503(t *testing.T) {
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	handleSocialError(c, status.Error(codes.Unavailable, "private upstream details"))
	if w.Code != 503 || strings.Contains(w.Body.String(), "private") {
		t.Fatal(w.Code, w.Body.String())
	}
}
