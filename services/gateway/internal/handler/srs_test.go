package handler

import (
	"bytes"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.com/gin-gonic/gin"
)

func TestSRSHandler_GetDue_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/srs/due?limit=10", nil)
	h.GetDue(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestSRSHandler_GetStats_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/srs/stats", nil)
	h.GetStats(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestSRSHandler_Review_InvalidQuality(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{"item_type":"vocabulary","item_id":"v1","quality":10}`
	c.Request = httptest.NewRequest("POST", "/api/v1/srs/review", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.Review(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestSRSHandler_Review_InvalidItemType(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Set("user_id", "u1")
	body := `{"item_type":"invalid","item_id":"v1","quality":4}`
	c.Request = httptest.NewRequest("POST", "/api/v1/srs/review", bytes.NewBufferString(body))
	c.Request.Header.Set("Content-Type", "application/json")
	h.Review(c)
	if w.Code != http.StatusBadRequest {
		t.Fatalf("expected 400, got %d", w.Code)
	}
}

func TestSRSHandler_GeneratePracticeSession_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("POST", "/api/v1/practice/session", nil)
	h.GeneratePracticeSession(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestSRSHandler_GetWeak_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/srs/weak?limit=10", nil)
	h.GetWeak(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestSRSHandler_ListSkillStrengths_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/skills?skill_type=module", nil)
	h.ListSkillStrengths(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestSRSHandler_GetWeakSkills_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/skills/weak?skill_type=lesson", nil)
	h.GetWeakSkills(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}

func TestSRSHandler_ListMistakes_NoAuth(t *testing.T) {
	gin.SetMode(gin.TestMode)
	h := &SRSHandler{}
	w := httptest.NewRecorder()
	c, _ := gin.CreateTestContext(w)
	c.Request = httptest.NewRequest("GET", "/api/v1/mistakes?resolved=false", nil)
	h.ListMistakes(c)
	if w.Code != http.StatusUnauthorized {
		t.Fatalf("expected 401, got %d", w.Code)
	}
}
