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

	// v3:
	if s.AgeBracket != nil {
		out.AgeBracket = wrapperspb.String(*s.AgeBracket)
	}
	if s.DailyCommitMinutes != nil {
		out.DailyCommitMinutes = wrapperspb.Int32(*s.DailyCommitMinutes)
	}
	if s.PainPoint != nil {
		out.PainPoint = wrapperspb.String(*s.PainPoint)
	}
	if s.SpeakingSituation != nil {
		out.SpeakingSituation = wrapperspb.String(*s.SpeakingSituation)
	}
	if s.PastBlocker != nil {
		out.PastBlocker = wrapperspb.String(*s.PastBlocker)
	}
	if s.FutureRegret != nil {
		out.FutureRegret = wrapperspb.String(*s.FutureRegret)
	}
	if s.EmotionalReaction != nil {
		out.EmotionalReaction = wrapperspb.String(*s.EmotionalReaction)
	}
	if s.ReminderSlot != nil {
		out.ReminderSlot = wrapperspb.String(*s.ReminderSlot)
	}
	if s.PaywallSeenAt != nil {
		out.PaywallSeenAt = timestamppb.New(*s.PaywallSeenAt)
	}
	if s.PaywallChoice != nil {
		out.PaywallChoice = wrapperspb.String(*s.PaywallChoice)
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

	// v3:
	if w := req.GetAgeBracket(); w != nil {
		v := w.GetValue()
		data.AgeBracket = &v
	}
	if w := req.GetDailyCommitMinutes(); w != nil {
		v := w.GetValue()
		data.DailyCommitMinutes = &v
	}
	if w := req.GetPainPoint(); w != nil {
		v := w.GetValue()
		data.PainPoint = &v
	}
	if w := req.GetSpeakingSituation(); w != nil {
		v := w.GetValue()
		data.SpeakingSituation = &v
	}
	if w := req.GetPastBlocker(); w != nil {
		v := w.GetValue()
		data.PastBlocker = &v
	}
	if w := req.GetFutureRegret(); w != nil {
		v := w.GetValue()
		data.FutureRegret = &v
	}
	if w := req.GetEmotionalReaction(); w != nil {
		v := w.GetValue()
		data.EmotionalReaction = &v
	}
	if w := req.GetReminderSlot(); w != nil {
		v := w.GetValue()
		data.ReminderSlot = &v
	}
	if ts := req.GetPaywallSeenAt(); ts != nil {
		t := ts.AsTime()
		data.PaywallSeenAt = &t
	}
	if w := req.GetPaywallChoice(); w != nil {
		v := w.GetValue()
		data.PaywallChoice = &v
	}

	return data
}
