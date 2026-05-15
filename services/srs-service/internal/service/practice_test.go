package service

import (
	"context"
	"encoding/json"
	"testing"
	"time"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

// === fakes ===

type fakeItems struct {
	due  []*model.SRSItem
	weak []*model.SRSItem
	all  map[string]*model.SRSItem // key = user + type + id
}

func newFakeItems() *fakeItems {
	return &fakeItems{all: map[string]*model.SRSItem{}}
}

func itemKey(u string, t model.ItemType, id string) string {
	return u + "|" + string(t) + "|" + id
}

func (f *fakeItems) GetByKey(_ context.Context, u string, t model.ItemType, id string) (*model.SRSItem, error) {
	if v, ok := f.all[itemKey(u, t, id)]; ok {
		return v, nil
	}
	return nil, repository.ErrNotFound
}
func (f *fakeItems) Create(_ context.Context, i *model.SRSItem) error {
	f.all[itemKey(i.UserID, i.ItemType, i.ItemID)] = i
	return nil
}
func (f *fakeItems) Upsert(_ context.Context, i *model.SRSItem) (*model.SRSItem, bool, error) {
	k := itemKey(i.UserID, i.ItemType, i.ItemID)
	if v, ok := f.all[k]; ok {
		return v, false, nil
	}
	f.all[k] = i
	return i, true, nil
}
func (f *fakeItems) Update(_ context.Context, i *model.SRSItem) error {
	f.all[itemKey(i.UserID, i.ItemType, i.ItemID)] = i
	return nil
}
func (f *fakeItems) GetDue(_ context.Context, _ string, _ model.ItemType, _ time.Time, limit int) ([]*model.SRSItem, int, error) {
	out := f.due
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, len(f.due), nil
}
func (f *fakeItems) GetWeak(_ context.Context, _ string, _ model.ItemType, limit int) ([]*model.SRSItem, error) {
	out := f.weak
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, nil
}
func (f *fakeItems) Stats(_ context.Context, _ string, _ time.Time, _ time.Time) (*repository.SRSStats, error) {
	return &repository.SRSStats{}, nil
}
func (f *fakeItems) ListUserIDsWithDue(_ context.Context, _ time.Time, _ int, _ int) ([]string, error) {
	return nil, nil
}

type fakeMistakes struct {
	list []*model.Mistake
}

func (f *fakeMistakes) Upsert(_ context.Context, m *model.Mistake) (*model.Mistake, bool, error) {
	f.list = append(f.list, m)
	return m, true, nil
}
func (f *fakeMistakes) ResolveByStep(_ context.Context, _, _ string) (int32, error) { return 0, nil }
func (f *fakeMistakes) List(_ context.Context, _ string, _, limit, _ int) ([]*model.Mistake, int, error) {
	out := f.list
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, len(f.list), nil
}

type fakeHistory struct{ created int }

func (f *fakeHistory) Create(_ context.Context, _ *model.ReviewHistory) error {
	f.created++
	return nil
}

type fakeSkills struct{}

func (fakeSkills) Upsert(context.Context, *model.SkillDecay) (*model.SkillDecay, bool, error) {
	return nil, false, nil
}
func (fakeSkills) Get(context.Context, string, string) (*model.SkillDecay, error) {
	return nil, repository.ErrNotFound
}
func (fakeSkills) UpdateStrength(context.Context, string, string, float64, time.Time) error {
	return nil
}
func (fakeSkills) List(context.Context, string, model.SkillType, int, int) ([]*model.SkillDecay, int, error) {
	return nil, 0, nil
}
func (fakeSkills) GetWeak(context.Context, string, model.SkillType, int) ([]*model.SkillDecay, error) {
	return nil, nil
}
func (fakeSkills) ApplyDailyDecay(context.Context, string, time.Time) (int32, error) {
	return 0, nil
}

// === helpers ===

func makeStepItem(id string) *model.SRSItem {
	return &model.SRSItem{
		ID:       "srs-" + id,
		UserID:   "u",
		ItemType: model.ItemTypeStep,
		ItemID:   id,
	}
}

func makeMistake(stepID string) *model.Mistake {
	return &model.Mistake{
		ID:              "m-" + stepID,
		UserID:          "u",
		StepID:          stepID,
		IncorrectAnswer: json.RawMessage(`{"x":1}`),
	}
}

func newSvc(due, weak []*model.SRSItem, mistakes []*model.Mistake) *service {
	return &service{
		items:    &fakeItems{due: due, weak: weak, all: map[string]*model.SRSItem{}},
		history:  &fakeHistory{},
		mistakes: &fakeMistakes{list: mistakes},
		skills:   fakeSkills{},
		clock:    func() time.Time { return time.Now().UTC() },
	}
}

// === tests ===

func TestPractice_DefaultRatios(t *testing.T) {
	// 50/30/20 на size=10 → 5/3/2
	due := []*model.SRSItem{
		makeStepItem("1"), makeStepItem("2"), makeStepItem("3"),
		makeStepItem("4"), makeStepItem("5"), makeStepItem("6"),
	}
	mistakes := []*model.Mistake{
		makeMistake("100"), makeMistake("101"), makeMistake("102"), makeMistake("103"),
	}
	weak := []*model.SRSItem{
		makeStepItem("200"), makeStepItem("201"), makeStepItem("202"),
	}
	svc := newSvc(due, weak, mistakes)

	sess, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{UserID: "u", Size: 10})
	if err != nil {
		t.Fatalf("generate: %v", err)
	}
	if sess.OverdueCount != 5 || sess.MistakeCount != 3 || sess.WeakCount != 2 {
		t.Errorf("expected (5,3,2), got (%d,%d,%d)", sess.OverdueCount, sess.MistakeCount, sess.WeakCount)
	}
	if len(sess.Items) != 10 {
		t.Errorf("expected 10 items, got %d", len(sess.Items))
	}
}

func TestPractice_Deduplicates(t *testing.T) {
	// Один и тот же stepID = "100" в overdue и в mistakes — должен попасть один раз.
	due := []*model.SRSItem{makeStepItem("100")}
	mistakes := []*model.Mistake{makeMistake("100"), makeMistake("101")}
	svc := newSvc(due, nil, mistakes)

	sess, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{UserID: "u", Size: 10})
	if err != nil {
		t.Fatalf("generate: %v", err)
	}
	seen := map[string]int{}
	for _, it := range sess.Items {
		seen[it.StepID]++
	}
	for stepID, count := range seen {
		if count > 1 {
			t.Errorf("step %s появился %d раз", stepID, count)
		}
	}
}

func TestPractice_BackfillsWhenSourceEmpty(t *testing.T) {
	// Overdue 8 шт, mistakes/weak пусты — на size=10 должны добить overdue'ами.
	due := []*model.SRSItem{
		makeStepItem("1"), makeStepItem("2"), makeStepItem("3"),
		makeStepItem("4"), makeStepItem("5"), makeStepItem("6"),
		makeStepItem("7"), makeStepItem("8"),
	}
	svc := newSvc(due, nil, nil)

	sess, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{UserID: "u", Size: 10})
	if err != nil {
		t.Fatalf("generate: %v", err)
	}
	// Все 8 overdue должны попасть; mistake/weak — 0.
	if sess.OverdueCount != 8 {
		t.Errorf("expected overdue=8 после backfill, got %d", sess.OverdueCount)
	}
	if sess.MistakeCount != 0 || sess.WeakCount != 0 {
		t.Errorf("expected mistake=weak=0, got (%d,%d)", sess.MistakeCount, sess.WeakCount)
	}
	if len(sess.Items) != 8 {
		t.Errorf("expected 8 items (всё что было), got %d", len(sess.Items))
	}
}

func TestPractice_CustomRatios(t *testing.T) {
	// 0/0/100 → только weak.
	due := []*model.SRSItem{makeStepItem("1")}
	mistakes := []*model.Mistake{makeMistake("100")}
	weak := []*model.SRSItem{
		makeStepItem("200"), makeStepItem("201"), makeStepItem("202"), makeStepItem("203"), makeStepItem("204"),
	}
	svc := newSvc(due, weak, mistakes)

	sess, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{
		UserID: "u", Size: 5,
		RatioOverdue: 0, RatioMistake: 0, RatioWeak: 100,
	})
	if err != nil {
		t.Fatalf("generate: %v", err)
	}
	if sess.WeakCount != 5 {
		t.Errorf("expected only weak (5), got weak=%d overdue=%d mistake=%d",
			sess.WeakCount, sess.OverdueCount, sess.MistakeCount)
	}
}

func TestPractice_EmptyEverything(t *testing.T) {
	svc := newSvc(nil, nil, nil)
	sess, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{UserID: "u", Size: 10})
	if err != nil {
		t.Fatalf("generate: %v", err)
	}
	if len(sess.Items) != 0 {
		t.Errorf("expected empty session, got %d", len(sess.Items))
	}
}

func TestPractice_RequiresUserID(t *testing.T) {
	svc := newSvc(nil, nil, nil)
	if _, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{}); err == nil {
		t.Errorf("expected error on empty user_id")
	}
}

func TestPractice_ClampsSize(t *testing.T) {
	due := make([]*model.SRSItem, 100)
	for i := 0; i < 100; i++ {
		due[i] = makeStepItem(string(rune('a' + i%26)))
	}
	svc := newSvc(due, nil, nil)
	sess, err := svc.GeneratePracticeSession(context.Background(), PracticeInput{UserID: "u", Size: 9999})
	if err != nil {
		t.Fatalf("generate: %v", err)
	}
	if len(sess.Items) > maxPracticeSize {
		t.Errorf("size must be clamped to %d, got %d", maxPracticeSize, len(sess.Items))
	}
}
