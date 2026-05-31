package handler

import (
	"bytes"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
)

func TestVocabularyHandler_Create_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	body := `{"word":"test"}`
	c.Request = httptest.NewRequest("POST", "/api/v1/admin/vocabulary", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.Create(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestVocabularyHandler_Update_InvalidJSON(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Params = gin.Params{{Key: "id", Value: "v1"}}
	body := `{invalid json}`
	c.Request = httptest.NewRequest("PUT", "/api/v1/admin/vocabulary/v1", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.Update(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestVocabularyHandler_BulkCreate_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &VocabularyHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	body := `{"entries": [{"word":"test"}]}` // missing required fields
	c.Request = httptest.NewRequest("POST", "/api/v1/admin/vocabulary/bulk", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.BulkCreate(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}
