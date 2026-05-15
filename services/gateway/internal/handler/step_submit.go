// Package handler — Phase 2: интерактивный submit ответа.
package handler

import (
	"net/http"
	"strconv"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/structpb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/errors"
	stepvalidationv1 "github.com/elearning/shared/pkg/proto/step_validation/v1"
)

// parsePagination — общий хелпер для list-эндпоинтов phase-2.
func parsePagination(c *gin.Context) (limit, offset int) {
	limit, _ = strconv.Atoi(c.DefaultQuery("limit", "20"))
	offset, _ = strconv.Atoi(c.DefaultQuery("offset", "0"))
	if limit <= 0 || limit > 200 {
		limit = 20
	}
	if offset < 0 {
		offset = 0
	}
	return limit, offset
}

// StepSubmitHandler — POST /api/v1/steps/:stepId/submit.
type StepSubmitHandler struct {
	svc *client.StepValidationClient
}

// NewStepSubmitHandler — для DI.
func NewStepSubmitHandler(svc *client.StepValidationClient) *StepSubmitHandler {
	return &StepSubmitHandler{svc: svc}
}

// submitRequest — тело запроса.
// `answer` — произвольная JSON-структура (зависит от типа шага).
type submitRequest struct {
	Answer      map[string]interface{} `json:"answer" binding:"required"`
	TimeSpentMs int32                  `json:"time_spent_ms"`
	SourceType  string                 `json:"source_type"`
	SourceID    string                 `json:"source_id"`
}

// Submit POST /api/v1/steps/:stepId/submit
func (h *StepSubmitHandler) Submit(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	stepID := c.Param("stepId")
	if stepID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "stepId is required"})
		return
	}

	var req submitRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	answerStruct, err := structpb.NewStruct(req.Answer)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid answer: " + err.Error()})
		return
	}

	resp, err := h.svc.SubmitAnswer(c.Request.Context(), &stepvalidationv1.SubmitAnswerRequest{
		UserId:      userID,
		StepId:      stepID,
		Answer:      answerStruct,
		TimeSpentMs: req.TimeSpentMs,
		SourceType:  req.SourceType,
		SourceId:    req.SourceID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}

// ListAttempts GET /api/v1/steps/:stepId/attempts?limit=...&offset=...
func (h *StepSubmitHandler) ListAttempts(c *gin.Context) {
	userID, ok := getUserID(c)
	if !ok {
		return
	}
	stepID := c.Param("stepId")
	if stepID == "" {
		c.JSON(http.StatusBadRequest, gin.H{"error": "stepId is required"})
		return
	}

	limit, offset := parsePagination(c)

	resp, err := h.svc.ListAttempts(c.Request.Context(), &stepvalidationv1.ListAttemptsRequest{
		UserId: userID,
		StepId: stepID,
		Limit:  int32(limit),
		Offset: int32(offset),
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, resp)
}
