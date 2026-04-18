package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/model"
)

// ToProtoProfile конвертирует domain модель в proto модель
func ToProtoProfile(profile model.Profile) *userv1.Profile {
	protoProfile := &userv1.Profile{
		Id:        profile.ID,
		UserId:    profile.UserID,
		CreatedAt: timestamppb.New(profile.CreatedAt),
		UpdatedAt: timestamppb.New(profile.UpdatedAt),
	}

	if profile.FirstName != nil {
		protoProfile.FirstName = wrapperspb.String(*profile.FirstName)
	}

	if profile.LastName != nil {
		protoProfile.LastName = wrapperspb.String(*profile.LastName)
	}

	if profile.NativeLang != nil {
		protoProfile.NativeLang = wrapperspb.String(*profile.NativeLang)
	}

	if profile.TargetLang != nil {
		protoProfile.TargetLang = wrapperspb.String(*profile.TargetLang)
	}

	if profile.Bio != nil {
		protoProfile.Bio = wrapperspb.String(*profile.Bio)
	}

	if profile.AvatarURL != nil {
		protoProfile.AvatarUrl = wrapperspb.String(*profile.AvatarURL)
	}

	if profile.DateOfBirth != nil {
		protoProfile.DateOfBirth = wrapperspb.String(profile.DateOfBirth.Format("2006-01-02"))
	}

	if profile.Timezone != nil {
		protoProfile.Timezone = wrapperspb.String(*profile.Timezone)
	}

	return protoProfile
}

// ToUpdateProfileData конвертирует proto запрос в domain модель
func ToUpdateProfileData(req *userv1.UpdateProfileRequest) model.UpdateProfileData {
	data := model.UpdateProfileData{}

	if req.FirstName != nil {
		val := req.FirstName.GetValue()
		data.FirstName = &val
	}

	if req.LastName != nil {
		val := req.LastName.GetValue()
		data.LastName = &val
	}

	if req.NativeLang != nil {
		val := req.NativeLang.GetValue()
		data.NativeLang = &val
	}

	if req.TargetLang != nil {
		val := req.TargetLang.GetValue()
		data.TargetLang = &val
	}

	if req.Bio != nil {
		val := req.Bio.GetValue()
		data.Bio = &val
	}

	if req.AvatarUrl != nil {
		val := req.AvatarUrl.GetValue()
		data.AvatarURL = &val
	}

	if req.DateOfBirth != nil {
		val := req.DateOfBirth.GetValue()
		data.DateOfBirth = &val
	}

	if req.Timezone != nil {
		val := req.Timezone.GetValue()
		data.Timezone = &val
	}

	return data
}
