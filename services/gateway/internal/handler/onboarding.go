package handler

import (
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/wrapperspb"

	"github.com/elearning/gateway/internal/client"
	"github.com/elearning/gateway/internal/dto"
	"github.com/elearning/gateway/internal/errors"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
)

// OnboardingHandler — REST → gRPC прокси для onboarding-методов user-service.
type OnboardingHandler struct {
	userClient *client.UserClient
}

// NewOnboardingHandler создаёт handler.
func NewOnboardingHandler(userClient *client.UserClient) *OnboardingHandler {
	return &OnboardingHandler{userClient: userClient}
}

// userIDFromCtx — общий helper, user_id выставляется AuthMiddleware'ом.
func userIDFromCtx(c *gin.Context) (string, bool) {
	userID, exists := c.Get("user_id")
	if !exists {
		c.JSON(http.StatusUnauthorized, gin.H{"error": "User ID not found in context"})
		return "", false
	}
	userIDStr, ok := userID.(string)
	if !ok {
		c.JSON(http.StatusInternalServerError, gin.H{"error": "Invalid user ID format"})
		return "", false
	}
	return userIDStr, true
}

// GetOnboardingState — GET /api/v1/onboarding.
func (h *OnboardingHandler) GetOnboardingState(c *gin.Context) {
	userID, ok := userIDFromCtx(c)
	if !ok {
		return
	}

	resp, err := h.userClient.GetOnboardingState(c.Request.Context(), &userv1.GetOnboardingStateRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, toOnboardingDTO(resp.GetState()))
}

// PatchOnboardingState — PATCH /api/v1/onboarding. Любое поле может быть nil.
func (h *OnboardingHandler) PatchOnboardingState(c *gin.Context) {
	userID, ok := userIDFromCtx(c)
	if !ok {
		return
	}

	var req dto.PatchOnboardingRequest
	if err := c.ShouldBindJSON(&req); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	pbReq := &userv1.PatchOnboardingStateRequest{
		UserId:           userID,
		Motivation:       req.Motivation,
		MotivationSet:    req.MotivationSet,
		NativeLanguage:   wrapNullableString(req.NativeLanguage),
		TargetLanguage:   wrapNullableString(req.TargetLanguage),
		ProficiencyLevel: wrapNullableString(req.ProficiencyLevel),
		DailyGoalXp:      wrapNullableInt32(req.DailyGoalXP),
		SignupSource:     wrapNullableString(req.SignupSource),
		PlacementScore:   wrapNullableInt32(req.PlacementScore),
		DateOfBirth:      wrapNullableString(req.DateOfBirth),
	}

	resp, err := h.userClient.PatchOnboardingState(c.Request.Context(), pbReq)
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, toOnboardingDTO(resp.GetState()))
}

// CompleteOnboarding — POST /api/v1/onboarding/complete.
func (h *OnboardingHandler) CompleteOnboarding(c *gin.Context) {
	userID, ok := userIDFromCtx(c)
	if !ok {
		return
	}

	resp, err := h.userClient.CompleteOnboarding(c.Request.Context(), &userv1.CompleteOnboardingRequest{
		UserId: userID,
	})
	if err != nil {
		errors.HandleGRPCError(c, err)
		return
	}

	c.JSON(http.StatusOK, toOnboardingDTO(resp.GetState()))
}

func toOnboardingDTO(s *userv1.OnboardingState) dto.OnboardingStateResponse {
	if s == nil {
		return dto.OnboardingStateResponse{Motivation: []string{}}
	}
	out := dto.OnboardingStateResponse{
		UserID:           s.GetUserId(),
		Motivation:       s.GetMotivation(),
		Completed:        s.GetCompleted(),
		NativeLanguage:   getStringValue(s.GetNativeLanguage()),
		TargetLanguage:   getStringValue(s.GetTargetLanguage()),
		ProficiencyLevel: getStringValue(s.GetProficiencyLevel()),
		SignupSource:     getStringValue(s.GetSignupSource()),
		DateOfBirth:      getStringValue(s.GetDateOfBirth()),
	}
	if out.Motivation == nil {
		out.Motivation = []string{}
	}
	if v := s.GetDailyGoalXp(); v != nil {
		val := v.GetValue()
		out.DailyGoalXP = &val
	}
	if v := s.GetPlacementScore(); v != nil {
		val := v.GetValue()
		out.PlacementScore = &val
	}
	if v := s.GetOnboardedAt(); v != nil {
		ts := v.AsTime().Format(time.RFC3339)
		out.OnboardedAt = &ts
	}
	return out
}

func wrapNullableString(p *string) *wrapperspb.StringValue {
	if p == nil {
		return nil
	}
	return wrapperspb.String(*p)
}

func wrapNullableInt32(p *int32) *wrapperspb.Int32Value {
	if p == nil {
		return nil
	}
	return wrapperspb.Int32(*p)
}
