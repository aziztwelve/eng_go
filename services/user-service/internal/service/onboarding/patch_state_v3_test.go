package onboarding

import (
	"context"
	"errors"
	"strings"
	"testing"
	"time"

	"github.com/elearning/user-service/internal/model"
)

// Sprint 1 v3 tests — onboarding-v3-oki-style.md §2.2.
// Каждое из 10 новых полей валидируется отдельно: happy + invalid path.

func TestPatchState_V3_AgeBracket(t *testing.T) {
	t.Run("valid", func(t *testing.T) {
		for _, v := range []string{"7-12", "13-17", "18-24", "25-34", "35-44", "45-54", "55+", " 18-24 ", "18-24"} {
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{AgeBracket: ptrStr(v)})
			if err != nil {
				t.Fatalf("v=%q err=%v", v, err)
			}
			if repo.lastPatch.AgeBracket == nil {
				t.Fatalf("v=%q AgeBracket nil after patch", v)
			}
		}
	})
	t.Run("invalid", func(t *testing.T) {
		for _, v := range []string{"6", "60+", "adult", "child"} {
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{AgeBracket: ptrStr(v)})
			if !errors.Is(err, model.ErrInvalidData) {
				t.Fatalf("v=%q err=%v, want ErrInvalidData", v, err)
			}
			if repo.patchCalls != 0 {
				t.Fatalf("v=%q repo dialed", v)
			}
		}
	})
}

func TestPatchState_V3_DailyCommitMinutes(t *testing.T) {
	t.Run("valid", func(t *testing.T) {
		for _, v := range []int32{5, 10, 15, 25} {
			_, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{DailyCommitMinutes: ptrInt32(v)})
			if err != nil {
				t.Fatalf("v=%d err=%v", v, err)
			}
		}
	})
	t.Run("invalid", func(t *testing.T) {
		for _, v := range []int32{0, 3, 20, 30, 60, -5} {
			_, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{DailyCommitMinutes: ptrInt32(v)})
			if !errors.Is(err, model.ErrInvalidData) {
				t.Fatalf("v=%d err=%v, want ErrInvalidData", v, err)
			}
		}
	})
}

func TestPatchState_V3_EnumFields(t *testing.T) {
	cases := []struct {
		name      string
		validVals []string
		invalid   string
		setter    func(v string) model.PatchOnboardingData
		getter    func(p model.PatchOnboardingData) *string
	}{
		{"pain_point",
			[]string{"fear_speaking", "lack_vocab", "listening", "grammar", "consistency"},
			"fear_failure",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{PainPoint: &v} },
			func(p model.PatchOnboardingData) *string { return p.PainPoint }},
		{"speaking_situation",
			[]string{"freeze", "translate_in_head", "too_short", "avoid"},
			"shout",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{SpeakingSituation: &v} },
			func(p model.PatchOnboardingData) *string { return p.SpeakingSituation }},
		{"past_blocker",
			[]string{"boring", "too_hard", "no_progress", "no_fit", "no_support"},
			"too_easy",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{PastBlocker: &v} },
			func(p model.PatchOnboardingData) *string { return p.PastBlocker }},
		{"future_regret",
			[]string{"stay_same", "limit_self", "pressure", "postpone"},
			"give_up",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{FutureRegret: &v} },
			func(p model.PatchOnboardingData) *string { return p.FutureRegret }},
		{"emotional_reaction",
			[]string{"lose_confidence", "upset", "burnout", "lost"},
			"angry",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{EmotionalReaction: &v} },
			func(p model.PatchOnboardingData) *string { return p.EmotionalReaction }},
		{"reminder_slot",
			[]string{"morning", "day", "evening", "flex"},
			"night",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{ReminderSlot: &v} },
			func(p model.PatchOnboardingData) *string { return p.ReminderSlot }},
		{"paywall_choice",
			[]string{"annual", "monthly", "dismissed", "special_offer"},
			"trial",
			func(v string) model.PatchOnboardingData { return model.PatchOnboardingData{PaywallChoice: &v} },
			func(p model.PatchOnboardingData) *string { return p.PaywallChoice }},
	}

	for _, c := range cases {
		t.Run(c.name+"/valid", func(t *testing.T) {
			for _, v := range c.validVals {
				repo, svc := newSvc()
				_, err := svc.PatchState(context.Background(), "u1", c.setter(v))
				if err != nil {
					t.Fatalf("v=%q err=%v", v, err)
				}
				got := c.getter(repo.lastPatch)
				if got == nil {
					t.Fatalf("v=%q field nil after patch", v)
				}
				// Должно быть нормализовано к lowercase+trim.
				if *got != strings.ToLower(strings.TrimSpace(v)) {
					t.Fatalf("v=%q stored=%q, want normalized", v, *got)
				}
			}
		})
		t.Run(c.name+"/invalid", func(t *testing.T) {
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1", c.setter(c.invalid))
			if !errors.Is(err, model.ErrInvalidData) {
				t.Fatalf("err=%v, want ErrInvalidData", err)
			}
			if repo.patchCalls != 0 {
				t.Fatalf("repo dialed for invalid %q", c.invalid)
			}
		})
		t.Run(c.name+"/case_insensitive", func(t *testing.T) {
			// Verify uppercase + spaces normalized:
			if len(c.validVals) == 0 {
				t.Skip()
			}
			v := strings.ToUpper(c.validVals[0])
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1", c.setter(v))
			if err != nil {
				t.Fatalf("v=%q err=%v", v, err)
			}
			got := c.getter(repo.lastPatch)
			if got == nil || *got != c.validVals[0] {
				t.Fatalf("v=%q stored=%v, want %q", v, got, c.validVals[0])
			}
		})
	}
}

func TestPatchState_V3_PaywallSeenAt(t *testing.T) {
	repo, svc := newSvc()
	now := time.Date(2026, 5, 26, 12, 0, 0, 0, time.UTC)
	_, err := svc.PatchState(context.Background(), "u1",
		model.PatchOnboardingData{PaywallSeenAt: &now})
	if err != nil {
		t.Fatalf("err=%v", err)
	}
	if repo.lastPatch.PaywallSeenAt == nil || !repo.lastPatch.PaywallSeenAt.Equal(now) {
		t.Fatalf("PaywallSeenAt not propagated correctly: %v", repo.lastPatch.PaywallSeenAt)
	}
}

func TestPatchState_V3_CombinedFields(t *testing.T) {
	// Один patch — несколько v3 полей одновременно.
	repo, svc := newSvc()
	patch := model.PatchOnboardingData{
		AgeBracket:         ptrStr("25-34"),
		DailyCommitMinutes: ptrInt32(15),
		PainPoint:          ptrStr("fear_speaking"),
		ReminderSlot:       ptrStr("evening"),
	}
	_, err := svc.PatchState(context.Background(), "u1", patch)
	if err != nil {
		t.Fatalf("err=%v", err)
	}
	if repo.patchCalls != 1 {
		t.Fatalf("patchCalls=%d", repo.patchCalls)
	}
	if repo.lastPatch.AgeBracket == nil || *repo.lastPatch.AgeBracket != "25-34" {
		t.Fatalf("AgeBracket = %v", repo.lastPatch.AgeBracket)
	}
	if repo.lastPatch.DailyCommitMinutes == nil || *repo.lastPatch.DailyCommitMinutes != 15 {
		t.Fatalf("DailyCommitMinutes = %v", repo.lastPatch.DailyCommitMinutes)
	}
	if repo.lastPatch.PainPoint == nil || *repo.lastPatch.PainPoint != "fear_speaking" {
		t.Fatalf("PainPoint = %v", repo.lastPatch.PainPoint)
	}
	if repo.lastPatch.ReminderSlot == nil || *repo.lastPatch.ReminderSlot != "evening" {
		t.Fatalf("ReminderSlot = %v", repo.lastPatch.ReminderSlot)
	}
}

func TestPatchState_V3_LengthGuard(t *testing.T) {
	// Длинная строка > maxFreeTextLen — отбрасываем как невалид.
	long := strings.Repeat("x", 33)
	_, svc := newSvc()
	_, err := svc.PatchState(context.Background(), "u1",
		model.PatchOnboardingData{PainPoint: &long})
	if !errors.Is(err, model.ErrInvalidData) {
		t.Fatalf("err=%v, want ErrInvalidData", err)
	}
}
