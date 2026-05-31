package handler

import (
	"bytes"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
)

func TestFlashcardHandler_List_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/flashcards", nil)
	h.List(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_Create_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{"word":"hello"}`
	c.Request = httptest.NewRequest("POST", "/api/v1/flashcards", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.Create(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestFlashcardHandler_Suggestions_NoAI(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{ai: nil}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	c.Request = httptest.NewRequest("GET", "/api/v1/ai/flashcard-suggestions", nil)
	h.Suggestions(c)
	if w.Code != http.StatusServiceUnavailable {
		t.Fatalf("expected 503, got %d", w.Code)
	}
}

func TestFlashcardHandler_Update_InvalidJSON(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	c.Params = gin.Params{{Key: "id", Value: "f1"}}
	body := `{invalid}`
	c.Request = httptest.NewRequest("PUT", "/api/v1/flashcards/f1", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.Update(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestFlashcardHandler_Get_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Params = gin.Params{{Key: "id", Value: "f1"}}
	c.Request = httptest.NewRequest("GET", "/api/v1/flashcards/f1", nil)
	h.Get(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_Archive_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Params = gin.Params{{Key: "id", Value: "f1"}}
	c.Request = httptest.NewRequest("DELETE", "/api/v1/flashcards/f1", nil)
	h.Archive(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_BulkCreate_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{"items": [{"word":"hello"}]}` // missing required fields
	c.Request = httptest.NewRequest("POST", "/api/v1/flashcards/bulk", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.BulkCreate(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestFlashcardHandler_BulkCreate_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("POST", "/api/v1/flashcards/bulk", nil)
	h.BulkCreate(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_FromVocabulary_InvalidBody(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{}` // missing vocabulary_id
	c.Request = httptest.NewRequest("POST", "/api/v1/flashcards/from-vocabulary", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.FromVocabulary(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestFlashcardHandler_FromVocabulary_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("POST", "/api/v1/flashcards/from-vocabulary", nil)
	h.FromVocabulary(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_Stats_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/flashcards/stats", nil)
	h.Stats(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_PinForToday_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Params = gin.Params{{Key: "flashcardId", Value: "f1"}}
	c.Request = httptest.NewRequest("POST", "/api/v1/flashcards/today/f1", nil)
	h.PinForToday(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_UnpinFromToday_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Params = gin.Params{{Key: "flashcardId", Value: "f1"}}
	c.Request = httptest.NewRequest("DELETE", "/api/v1/flashcards/today/f1", nil)
	h.UnpinFromToday(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_ListToday_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/flashcards/today", nil)
	h.ListToday(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestFlashcardHandler_Suggestions_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &FlashcardHandler{ai: nil}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/ai/flashcard-suggestions", nil)
	h.Suggestions(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}
