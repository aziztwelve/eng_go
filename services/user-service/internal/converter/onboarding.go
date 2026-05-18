package converter

import (
	"google.golang.org/protobuf/types/known/timestamppb"
	"google.golang.org/protobuf/types/known/wrapperspb"

	userv1 "github.com/elearning/shared/pkg/proto/user/v1"
	"github.com/elearning/user-service/internal/model"
)

// ToProtoOnboardingState — model.OnboardingState → proto.
func ToProtoOnboardingState(s model.OnboardingState) *userv1.OnboardingState {
	out := &userv1.OnboardingState{
		UserId:     s.UserID,
		Motivation: s.Motivation,
		Completed:  s.Completed(),
	}
	if out.Motivation == nil {
		out.Motivation = []string{}
	}

	if s.NativeLanguage != nil {
		out.NativeLanguage = wrapperspb.String(*s.NativeLanguage)
	}
	if s.TargetLanguage != nil {
		out.TargetLanguage = wrapperspb.String(*s.TargetLanguage)
	}
	if s.ProficiencyLevel != nil {
		out.ProficiencyLevel = wrapperspb.String(*s.ProficiencyLevel)
	}
	if s.DailyGoalXP != nil {
		out.DailyGoalXp = wrapperspb.Int32(*s.DailyGoalXP)
	}
	if s.SignupSource != nil {
		out.SignupSource = wrapperspb.String(*s.SignupSource)
	}
	if s.PlacementScore != nil {
		out.PlacementScore = wrapperspb.Int32(*s.PlacementScore)
	}
	if s.DateOfBirth != nil {
		out.DateOfBirth = wrapperspb.String(s.DateOfBirth.Format("2006-01-02"))
	}
	if s.OnboardedAt != nil {
		out.OnboardedAt = timestamppb.New(*s.OnboardedAt)
	}
	return out
}

// ToPatchOnboardingData — proto request → model.PatchOnboardingData.
// motivation_set отличает «не передавали» от «явно очистили».
func ToPatchOnboardingData(req *userv1.PatchOnboardingStateRequest) model.PatchOnboardingData {
	data := model.PatchOnboardingData{
		Motivation:    req.GetMotivation(),
		MotivationSet: req.GetMotivationSet(),
	}
	if data.Motivation == nil {
		data.Motivation = []string{}
	}

	if w := req.GetNativeLanguage(); w != nil {
		v := w.GetValue()
		data.NativeLanguage = &v
	}
	if w := req.GetTargetLanguage(); w != nil {
		v := w.GetValue()
		data.TargetLanguage = &v
	}
	if w := req.GetProficiencyLevel(); w != nil {
		v := w.GetValue()
		data.ProficiencyLevel = &v
	}
	if w := req.GetDailyGoalXp(); w != nil {
		v := w.GetValue()
		data.DailyGoalXP = &v
	}
	if w := req.GetSignupSource(); w != nil {
		v := w.GetValue()
		data.SignupSource = &v
	}
	if w := req.GetPlacementScore(); w != nil {
		v := w.GetValue()
		data.PlacementScore = &v
	}
	if w := req.GetDateOfBirth(); w != nil {
		v := w.GetValue()
		data.DateOfBirth = &v
	}

	return data
}
