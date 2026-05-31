package handler

import (
	"bytes"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
)

func TestAIHandler_StartConversation_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &AIHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	body := `{"scenario":"restaurant","target_language":"en"}`
	c.Request = httptest.NewRequest("POST", "/api/v1/ai/conversations", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.StartConversation(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestAIHandler_ExplainMistake_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &AIHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{"incorrect_answer":""}`
	c.Request = httptest.NewRequest("POST", "/api/v1/ai/explain", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.ExplainMistake(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestAIHandler_AskTutor_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &AIHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{}`
	c.Request = httptest.NewRequest("POST", "/api/v1/ai/tutor", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.AskTutor(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestAIHandler_GetQuotaStatus_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &AIHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/ai/quota", nil)
	h.GetQuotaStatus(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestAIHandler_SendMessage_NoConvID(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &AIHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{"content":"hello"}`
	c.Request = httptest.NewRequest("POST", "/api/v1/ai/conversations//messages", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.SendMessage(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}
