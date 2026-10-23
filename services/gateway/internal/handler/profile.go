package handler

import (
	"github.com/elearning/gateway/internal/dto"
	gatewayerrors "github.com/elearning/gateway/internal/errors"
	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/gin-gonic/gin"
	"google.golang.org/protobuf/types/known/wrapperspb"
	"net/http"
	"strings"
)

func profileDTO(p *userv1.Profile) dto.ProfileData {
	return dto.ProfileData{FirstName: getStringValue(p.FirstName), LastName: getStringValue(p.LastName), Gender: getStringValue(p.Gender), DateOfBirth: getStringValue(p.DateOfBirth), Timezone: getStringValue(p.Timezone), AvatarURL: getStringValue(p.AvatarUrl), NativeLang: getStringValue(p.NativeLang), TargetLang: getStringValue(p.TargetLang), Bio: getStringValue(p.Bio)}
}
func (h *AuthHandler) GetProfile(c *gin.Context) {
	id, ok := userIDFromCtx(c)
	if !ok {
		return
	}
	response, err := h.userClient.GetProfile(c.Request.Context(), &userv1.GetProfileRequest{UserId: id})
	if err != nil {
		gatewayerrors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, profileDTO(response.GetProfile()))
}
func (h *AuthHandler) PatchProfile(c *gin.Context) {
	id, ok := userIDFromCtx(c)
	if !ok {
		return
	}
	var body struct {
		FirstName   *string `json:"first_name"`
		LastName    *string `json:"last_name"`
		Gender      *string `json:"gender"`
		DateOfBirth *string `json:"date_of_birth"`
		Timezone    *string `json:"timezone"`
	}
	if err := c.ShouldBindJSON(&body); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "invalid profile"})
		return
	}
	req := &userv1.UpdateProfileRequest{UserId: id}
	if body.FirstName != nil {
		req.FirstName = wrapperspb.String(strings.TrimSpace(*body.FirstName))
	}
	if body.LastName != nil {
		req.LastName = wrapperspb.String(strings.TrimSpace(*body.LastName))
	}
	if body.Gender != nil {
		req.Gender = wrapperspb.String(*body.Gender)
	}
	if body.DateOfBirth != nil {
		req.DateOfBirth = wrapperspb.String(*body.DateOfBirth)
	}
	if body.Timezone != nil {
		req.Timezone = wrapperspb.String(*body.Timezone)
	}
	response, err := h.userClient.UpdateProfile(c.Request.Context(), req)
	if err != nil {
		gatewayerrors.HandleGRPCError(c, err)
		return
	}
	c.JSON(http.StatusOK, profileDTO(response.GetProfile()))
}
