package service

import (
	"context"
	"math"
	"testing"
	"time"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

// inMemorySkills — простой fake для тестов skill-decay.
type inMemorySkills struct {
	store map[string]*model.SkillDecay // key = user|skill
}

func newInMemorySkills() *inMemorySkills {
	return &inMemorySkills{store: map[string]*model.SkillDecay{}}
}

func skillKey(u, s string) string { return u + "|" + s }

func (f *inMemorySkills) Upsert(_ context.Context, s *model.SkillDecay) (*model.SkillDecay, bool, error) {
	k := skillKey(s.UserID, s.SkillID)
	if v, ok := f.store[k]; ok {
		return v, false, nil
	}
	clone := *s
	clone.CreatedAt = time.Now().UTC()
	clone.UpdatedAt = clone.CreatedAt
	f.store[k] = &clone
	return &clone, true, nil
}

func (f *inMemorySkills) Get(_ context.Context, u, s string) (*model.SkillDecay, error) {
	if v, ok := f.store[skillKey(u, s)]; ok {
		return v, nil
	}
	return nil, repository.ErrNotFound
}

func (f *inMemorySkills) UpdateStrength(_ context.Context, u, s string, strength float64, practicedAt time.Time) error {
	v, ok := f.store[skillKey(u, s)]
	if !ok {
		return repository.ErrNotFound
	}
	v.CurrentStrength = math.Min(1, math.Max(0, strength))
	v.LastPracticedAt = practicedAt
	v.UpdatedAt = time.Now().UTC()
	return nil
}

func (f *inMemorySkills) List(_ context.Context, u string, t model.SkillType, _, _ int) ([]*model.SkillDecay, int, error) {
	var out []*model.SkillDecay
	for _, v := range f.store {
		if v.UserID == u && (t == "" || v.SkillType == t) {
			out = append(out, v)
		}
	}
	return out, len(out), nil
}

func (f *inMemorySkills) GetWeak(_ context.Context, u string, t model.SkillType, _ int) ([]*model.SkillDecay, error) {
	xs, _, _ := f.List(context.Background(), u, t, 0, 0)
	return xs, nil
}

func (f *inMemorySkills) ApplyDailyDecay(_ context.Context, u string, now time.Time) (int32, error) {
	var n int32
	for _, v := range f.store {
		if u != "" && v.UserID != u {
			continue
		}
		days := now.Sub(v.LastPracticedAt).Hours() / 24.0
		if days < 1 {
			continue
		}
		v.CurrentStrength = math.Max(0, v.CurrentStrength-v.DecayRate*days)
		n++
	}
	return n, nil
}

func newSkillSvc(skills repository.SkillDecayRepository) *service {
	return &service{
		items:    newFakeItems(),
		history:  &fakeHistory{},
		mistakes: &fakeMistakes{},
		skills:   skills,
		clock:    func() time.Time { return time.Now().UTC() },
	}
}

// === tests ===

func TestInitSkill_CreatesWithDefaults(t *testing.T) {
	skills := newInMemorySkills()
	svc := newSkillSvc(skills)

	sk, created, err := svc.InitSkill(context.Background(), "u1", "lesson-1", model.SkillTypeLesson, 0)
	if err != nil {
		t.Fatalf("init: %v", err)
	}
	if !created {
		t.Errorf("expected created=true")
	}
	if sk.DecayRate != model.DefaultDecayRate {
		t.Errorf("expected decay_rate=%v, got %v", model.DefaultDecayRate, sk.DecayRate)
	}
	if sk.CurrentStrength != 1.0 {
		t.Errorf("expected current_strength=1.0, got %v", sk.CurrentStrength)
	}
}

func TestInitSkill_IsIdempotent(t *testing.T) {
	skills := newInMemorySkills()
	svc := newSkillSvc(skills)

	_, c1, _ := svc.InitSkill(context.Background(), "u", "s", model.SkillTypeLesson, 0)
	_, c2, _ := svc.InitSkill(context.Background(), "u", "s", model.SkillTypeLesson, 0)
	if !c1 || c2 {
		t.Errorf("expected (created=true, created=false), got (%v, %v)", c1, c2)
	}
}

func TestInitSkill_RejectsInvalidType(t *testing.T) {
	svc := newSkillSvc(newInMemorySkills())
	if _, _, err := svc.InitSkill(context.Background(), "u", "s", "weird", 0); err == nil {
		t.Errorf("expected error for invalid skill_type")
	}
}

func TestStrengthenSkill_AddsAndClamps(t *testing.T) {
	skills := newInMemorySkills()
	svc := newSkillSvc(skills)
	svc.InitSkill(context.Background(), "u", "s", model.SkillTypeLesson, 0)

	// уменьшим current до 0.3 чтобы strengthen имел смысл
	skills.store["u|s"].CurrentStrength = 0.3

	sk, err := svc.StrengthenSkill(context.Background(), "u", "s", 0.2)
	if err != nil {
		t.Fatalf("strengthen: %v", err)
	}
	if math.Abs(sk.CurrentStrength-0.5) > 1e-9 {
		t.Errorf("expected 0.5, got %v", sk.CurrentStrength)
	}

	// Над 1.0 не должен подняться.
	sk, _ = svc.StrengthenSkill(context.Background(), "u", "s", 5.0)
	if sk.CurrentStrength != 1.0 {
		t.Errorf("expected clamp to 1.0, got %v", sk.CurrentStrength)
	}
}

func TestStrengthenSkill_RejectsNonPositiveAmount(t *testing.T) {
	skills := newInMemorySkills()
	svc := newSkillSvc(skills)
	svc.InitSkill(context.Background(), "u", "s", model.SkillTypeLesson, 0)

	if _, err := svc.StrengthenSkill(context.Background(), "u", "s", 0); err == nil {
		t.Errorf("expected error for amount=0")
	}
	if _, err := svc.StrengthenSkill(context.Background(), "u", "s", -0.1); err == nil {
		t.Errorf("expected error for negative amount")
	}
}

func TestRunDailyDecay_ReducesStrength(t *testing.T) {
	skills := newInMemorySkills()
	svc := newSkillSvc(skills)
	svc.InitSkill(context.Background(), "u", "s1", model.SkillTypeLesson, 0)
	svc.InitSkill(context.Background(), "u", "s2", model.SkillTypeLesson, 0)

	// Симулируем что юзер не практиковал 5 дней.
	for k := range skills.store {
		skills.store[k].LastPracticedAt = time.Now().Add(-5 * 24 * time.Hour)
	}

	n, err := svc.RunDailyDecay(context.Background(), "u")
	if err != nil {
		t.Fatalf("decay: %v", err)
	}
	if n != 2 {
		t.Errorf("expected affected=2, got %d", n)
	}
	// Через 5 дней с decay_rate=0.05 → strength = 1 - 0.25 = 0.75 (±epsilon)
	want := 1.0 - 5*0.05
	if math.Abs(skills.store["u|s1"].CurrentStrength-want) > 0.01 {
		t.Errorf("expected ~%v, got %v", want, skills.store["u|s1"].CurrentStrength)
	}
}

func TestRunDailyDecay_NeverBelowZero(t *testing.T) {
	skills := newInMemorySkills()
	svc := newSkillSvc(skills)
	svc.InitSkill(context.Background(), "u", "s", model.SkillTypeLesson, 0)
	// Очень давно не практиковал.
	skills.store["u|s"].LastPracticedAt = time.Now().Add(-100 * 24 * time.Hour)

	_, _ = svc.RunDailyDecay(context.Background(), "u")
	if skills.store["u|s"].CurrentStrength < 0 {
		t.Errorf("strength ушло ниже 0: %v", skills.store["u|s"].CurrentStrength)
	}
}
