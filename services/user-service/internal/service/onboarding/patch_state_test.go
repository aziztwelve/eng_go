package onboarding

import (
	"context"
	"errors"
	"testing"

	"github.com/elearning/user-service/internal/model"
)

// fakeRepo — in-memory заглушка repository.OnboardingRepository.
//
// PatchState сохраняет последний переданный patch (для проверки, что
// сервис не зовёт repo при невалидных данных).
type fakeRepo struct {
	state    model.OnboardingState
	getErr   error
	patchErr error
	complErr error

	patchCalls    int
	completeCalls int
	lastPatch     model.PatchOnboardingData
}

func (f *fakeRepo) GetState(_ context.Context, userID string) (model.OnboardingState, error) {
	if f.getErr != nil {
		return model.OnboardingState{}, f.getErr
	}
	s := f.state
	s.UserID = userID
	return s, nil
}

func (f *fakeRepo) PatchState(_ context.Context, userID string, patch model.PatchOnboardingData) (model.OnboardingState, error) {
	f.patchCalls++
	f.lastPatch = patch
	if f.patchErr != nil {
		return model.OnboardingState{}, f.patchErr
	}
	s := f.state
	s.UserID = userID
	if patch.NativeLanguage != nil {
		s.NativeLanguage = patch.NativeLanguage
	}
	if patch.ProficiencyLevel != nil {
		s.ProficiencyLevel = patch.ProficiencyLevel
	}
	if patch.DailyGoalXP != nil {
		s.DailyGoalXP = patch.DailyGoalXP
	}
	if patch.PlacementScore != nil {
		s.PlacementScore = patch.PlacementScore
	}
	if patch.MotivationSet {
		s.Motivation = patch.Motivation
	}
	return s, nil
}

func (f *fakeRepo) Complete(_ context.Context, userID string) (model.OnboardingState, error) {
	f.completeCalls++
	if f.complErr != nil {
		return model.OnboardingState{}, f.complErr
	}
	s := f.state
	s.UserID = userID
	return s, nil
}

func newSvc() (*fakeRepo, *serv) {
	repo := &fakeRepo{}
	return repo, &serv{repo: repo}
}

func ptrStr(s string) *string { return &s }
func ptrInt32(i int32) *int32 { return &i }

func TestPatchState_ValidProficiencyLevels(t *testing.T) {
	cases := []string{"beginner", "a1", "a2", "b1", "b2", "just_for_fun", "A1", " B2 "}
	for _, lvl := range cases {
		t.Run(lvl, func(t *testing.T) {
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{ProficiencyLevel: ptrStr(lvl)})
			if err != nil {
				t.Fatalf("got err: %v", err)
			}
			if repo.patchCalls != 1 {
				t.Fatalf("patchCalls = %d, want 1", repo.patchCalls)
			}
			// сервис нормализует к lower+trim.
			if repo.lastPatch.ProficiencyLevel == nil {
				t.Fatal("ProficiencyLevel nil after patch")
			}
		})
	}
}

func TestPatchState_InvalidProficiencyLevel(t *testing.T) {
	repo, svc := newSvc()
	_, err := svc.PatchState(context.Background(), "u1",
		model.PatchOnboardingData{ProficiencyLevel: ptrStr("native")})
	if !errors.Is(err, model.ErrInvalidData) {
		t.Fatalf("err = %v, want ErrInvalidData", err)
	}
	if repo.patchCalls != 0 {
		t.Fatalf("repo вызывался при невалидном level: %d", repo.patchCalls)
	}
}

func TestPatchState_DailyGoal(t *testing.T) {
	t.Run("valid", func(t *testing.T) {
		for _, v := range []int32{10, 20, 30, 50} {
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{DailyGoalXP: ptrInt32(v)})
			if err != nil {
				t.Fatalf("v=%d err=%v", v, err)
			}
			if repo.patchCalls != 1 {
				t.Fatalf("v=%d patchCalls=%d", v, repo.patchCalls)
			}
		}
	})
	t.Run("invalid", func(t *testing.T) {
		for _, v := range []int32{0, 5, 15, 100, -10} {
			repo, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{DailyGoalXP: ptrInt32(v)})
			if !errors.Is(err, model.ErrInvalidData) {
				t.Fatalf("v=%d err=%v, want ErrInvalidData", v, err)
			}
			if repo.patchCalls != 0 {
				t.Fatalf("v=%d repo dialed", v)
			}
		}
	})
}

func TestPatchState_PlacementScoreRange(t *testing.T) {
	t.Run("valid_bounds", func(t *testing.T) {
		for _, v := range []int32{0, 1, 2, 3, 4, 5} {
			_, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{PlacementScore: ptrInt32(v)})
			if err != nil {
				t.Fatalf("v=%d err=%v", v, err)
			}
		}
	})
	t.Run("out_of_range", func(t *testing.T) {
		for _, v := range []int32{-1, 6, 100} {
			_, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{PlacementScore: ptrInt32(v)})
			if !errors.Is(err, model.ErrInvalidData) {
				t.Fatalf("v=%d err=%v, want ErrInvalidData", v, err)
			}
		}
	})
}

func TestPatchState_DateOfBirth(t *testing.T) {
	cases := []struct {
		val     string
		wantErr bool
	}{
		{"2000-05-15", false},
		{"1990-01-01", false},
		{"", false},                  // empty = skip valid
		{"15.05.2000", true},          // не ISO
		{"2000-13-01", true},          // 13-й месяц
		{"not-a-date", true},
	}
	for _, c := range cases {
		t.Run(c.val, func(t *testing.T) {
			_, svc := newSvc()
			_, err := svc.PatchState(context.Background(), "u1",
				model.PatchOnboardingData{DateOfBirth: ptrStr(c.val)})
			if c.wantErr && !errors.Is(err, model.ErrInvalidData) {
				t.Fatalf("err=%v, want ErrInvalidData", err)
			}
			if !c.wantErr && err != nil {
				t.Fatalf("unexpected err=%v", err)
			}
		})
	}
}

func TestPatchState_PassesMotivationSet(t *testing.T) {
	repo, svc := newSvc()
	_, err := svc.PatchState(context.Background(), "u1", model.PatchOnboardingData{
		Motivation:    []string{"travel", "work"},
		MotivationSet: true,
	})
	if err != nil {
		t.Fatalf("err: %v", err)
	}
	if !repo.lastPatch.MotivationSet {
		t.Fatalf("MotivationSet flag lost")
	}
	if len(repo.lastPatch.Motivation) != 2 {
		t.Fatalf("Motivation = %v", repo.lastPatch.Motivation)
	}
}

func TestPatchState_RepoErrorPropagated(t *testing.T) {
	repo, svc := newSvc()
	repo.patchErr = errors.New("db down")
	_, err := svc.PatchState(context.Background(), "u1", model.PatchOnboardingData{
		NativeLanguage: ptrStr("ru"),
	})
	if err == nil || err.Error() != "db down" {
		t.Fatalf("err = %v", err)
	}
}

func TestGetState_Delegates(t *testing.T) {
	repo, svc := newSvc()
	repo.state = model.OnboardingState{Motivation: []string{"travel"}}
	out, err := svc.GetState(context.Background(), "u1")
	if err != nil {
		t.Fatalf("err: %v", err)
	}
	if out.UserID != "u1" {
		t.Fatalf("UserID=%q", out.UserID)
	}
}

func TestComplete_Delegates(t *testing.T) {
	repo, svc := newSvc()
	_, err := svc.Complete(context.Background(), "u1")
	if err != nil {
		t.Fatalf("err: %v", err)
	}
	if repo.completeCalls != 1 {
		t.Fatalf("completeCalls=%d", repo.completeCalls)
	}
}
