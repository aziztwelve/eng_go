package handler

import (
	"context"
	"net/http"
	"net/http/httptest"
	"strings"
	"testing"

	"github.com/gin-gonic/gin"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/platform/pkg/logger"
)

func init() {
	// HandleGRPCError пишет в глобальный logger — без инициализации он nil.
	logger.InitForBenchmark()
}

// newUnreachableCourseClient создаёт клиент на недоступный адрес: dial
// неблокирующий, а первый RPC завершается ошибкой транспорта — этого
// достаточно, чтобы проверить контракт хендлера без живого course-service.
func newUnreachableCourseClient(t *testing.T) *client.CourseClient {
	t.Helper()
	c, err := client.NewCourseClient(context.Background(), "127.0.0.1:1")
	if err != nil {
		t.Fatalf("NewCourseClient: %v", err)
	}
	t.Cleanup(func() { _ = c.Close() })
	return c
}

func TestVocabularyBankHandler_List_NoAuthStillAllowed(t *testing.T) {
	// List работает под optional auth: без user_id в контексте хендлер не
	// должен отвечать 401 (ошибка транспорта курса ≠ auth-ошибка).
	gin.SetMode(gin.TestMode)
	h := NewVocabularyBankHandler(newUnreachableCourseClient(t), nil)
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/vocabulary-bank", nil)
	h.List(c)
	if w.Code == http.StatusUnauthorized {
		t.Fatal("List must not require auth (optional auth route)")
	}
}

func TestVocabularyBankHandler_List_UsesContextUserID(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := NewVocabularyBankHandler(newUnreachableCourseClient(t), nil)
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	c.Request = httptest.NewRequest("GET", "/api/v1/vocabulary-bank", nil)
	h.List(c)
	if w.Code == http.StatusUnauthorized {
		t.Fatal("List with user_id must not return 401")
	}
}

func TestVocabularyBankHandler_RecordAttempt_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyBankHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("POST", "/api/v1/vocabulary-bank/w1/activities/3/attempts", nil)
	h.RecordAttempt(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestVocabularyBankHandler_RecordAttempt_InvalidStep(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyBankHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	c.Params = gin.Params{{Key: "externalId", Value: "w1"}, {Key: "step", Value: "16"}}
	c.Request = httptest.NewRequest("POST", "/api/v1/vocabulary-bank/w1/activities/16/attempts", strings.NewReader(`{}`))
	c.Request.Header.Set("Content-Type", "application/json")
	h.RecordAttempt(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400 for step 16, got %d", w.Code)
	}
}

func TestVocabularyBankHandler_RecordAttempt_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyBankHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	c.Params = gin.Params{{Key: "externalId", Value: "w1"}, {Key: "step", Value: "3"}}
	c.Request = httptest.NewRequest("POST", "/api/v1/vocabulary-bank/w1/activities/3/attempts", strings.NewReader(`{invalid}`))
	c.Request.Header.Set("Content-Type", "application/json")
	h.RecordAttempt(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400 for invalid body, got %d", w.Code)
	}
}

func TestVocabularyBankHandler_Feed_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyBankHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/vocabulary-bank/feed", nil)
	h.Feed(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}
