package service

import (
	"context"
	"errors"
	"sync"
	"time"

	"github.com/elearning/gamification-service/internal/model"
	"github.com/elearning/gamification-service/internal/repository"
)

// In-memory реализации репозиториев для unit-тестов.

type fakeStats struct {
	mu sync.Mutex
	m  map[string]*model.UserStats
}

func newFakeStats() *fakeStats { return &fakeStats{m: map[string]*model.UserStats{}} }

func (r *fakeStats) Get(_ context.Context, userID string) (*model.UserStats, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	s, ok := r.m[userID]
	if !ok {
		return nil, repository.ErrNotFound
	}
	clone := *s
	return &clone, nil
}

func (r *fakeStats) Create(_ context.Context, s *model.UserStats) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	clone := *s
	r.m[s.UserID] = &clone
	return nil
}

func (r *fakeStats) GetOrCreate(_ context.Context, userID string, maxHearts int) (*model.UserStats, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	if s, ok := r.m[userID]; ok {
		clone := *s
		return &clone, nil
	}
	now := time.Now().UTC()
	s := &model.UserStats{
		UserID:    userID,
		Level:     1,
		Hearts:    maxHearts,
		MaxHearts: maxHearts,
		CreatedAt: now,
		UpdatedAt: now,
	}
	r.m[userID] = s
	clone := *s
	return &clone, nil
}

func (r *fakeStats) Update(_ context.Context, s *model.UserStats) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	if _, ok := r.m[s.UserID]; !ok {
		return repository.ErrNotFound
	}
	clone := *s
	clone.UpdatedAt = time.Now().UTC()
	r.m[s.UserID] = &clone
	return nil
}

func (r *fakeStats) ListReadyForHeartRegen(_ context.Context, now time.Time, limit int) ([]string, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	out := []string{}
	for id, s := range r.m {
		if s.Hearts < s.MaxHearts && s.NextHeartAt != nil && !s.NextHeartAt.After(now) {
			out = append(out, id)
			if limit > 0 && len(out) >= limit {
				break
			}
		}
	}
	return out, nil
}

func (r *fakeStats) ResetWeeklyXP(_ context.Context) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	for _, s := range r.m {
		s.WeeklyXP = 0
	}
	return nil
}

type fakeXP struct {
	mu  sync.Mutex
	all []*model.XPTransaction
}

func newFakeXP() *fakeXP { return &fakeXP{} }

func (r *fakeXP) Insert(_ context.Context, t *model.XPTransaction) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	t.ID = randID()
	t.CreatedAt = time.Now().UTC()
	r.all = append(r.all, t)
	return nil
}

func (r *fakeXP) ListByUser(_ context.Context, userID string, limit, offset int) ([]*model.XPTransaction, int, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	filtered := []*model.XPTransaction{}
	for _, t := range r.all {
		if t.UserID == userID {
			filtered = append(filtered, t)
		}
	}
	total := len(filtered)
	if offset > total {
		return nil, total, nil
	}
	end := offset + limit
	if limit <= 0 || end > total {
		end = total
	}
	return filtered[offset:end], total, nil
}

type fakeDailyGoal struct {
	mu       sync.Mutex
	goals    map[string]*model.DailyGoal
	progress map[string]*model.DailyGoalProgress
}

func newFakeDailyGoal() *fakeDailyGoal {
	return &fakeDailyGoal{goals: map[string]*model.DailyGoal{}, progress: map[string]*model.DailyGoalProgress{}}
}

func (r *fakeDailyGoal) GetGoal(_ context.Context, userID string) (*model.DailyGoal, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	g, ok := r.goals[userID]
	if !ok {
		return nil, repository.ErrNotFound
	}
	clone := *g
	return &clone, nil
}

func (r *fakeDailyGoal) UpsertGoal(_ context.Context, g *model.DailyGoal) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	clone := *g
	clone.UpdatedAt = time.Now().UTC()
	r.goals[g.UserID] = &clone
	return nil
}

func progressKey(userID string, date time.Time) string {
	return userID + "|" + date.Format("2006-01-02")
}

func (r *fakeDailyGoal) GetProgress(_ context.Context, userID string, date time.Time) (*model.DailyGoalProgress, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	p, ok := r.progress[progressKey(userID, date)]
	if !ok {
		return nil, repository.ErrNotFound
	}
	clone := *p
	return &clone, nil
}

func (r *fakeDailyGoal) UpsertProgress(_ context.Context, p *model.DailyGoalProgress) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	clone := *p
	r.progress[progressKey(p.UserID, p.Date)] = &clone
	return nil
}

func (r *fakeDailyGoal) CountCompleted(_ context.Context, userID string) (int, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	n := 0
	for _, p := range r.progress {
		if p.UserID == userID && p.Completed {
			n++
		}
	}
	return n, nil
}

type fakeStreak struct {
	mu sync.Mutex
	m  map[string]*model.StreakDay
}

func newFakeStreak() *fakeStreak { return &fakeStreak{m: map[string]*model.StreakDay{}} }

func streakKey(userID string, date time.Time) string {
	return userID + "|" + date.Format("2006-01-02")
}

func (r *fakeStreak) Get(_ context.Context, userID string, date time.Time) (*model.StreakDay, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	d, ok := r.m[streakKey(userID, date)]
	if !ok {
		return nil, repository.ErrNotFound
	}
	clone := *d
	return &clone, nil
}

func (r *fakeStreak) Upsert(_ context.Context, d *model.StreakDay) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	k := streakKey(d.UserID, d.Date)
	if existing, ok := r.m[k]; ok {
		existing.Completed = existing.Completed || d.Completed
		existing.UsedFreeze = existing.UsedFreeze || d.UsedFreeze
		return nil
	}
	clone := *d
	clone.CreatedAt = time.Now().UTC()
	r.m[k] = &clone
	return nil
}

func (r *fakeStreak) ListLast(_ context.Context, userID string, days int) ([]*model.StreakDay, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	out := []*model.StreakDay{}
	for _, d := range r.m {
		if d.UserID == userID {
			out = append(out, d)
		}
	}
	// sort desc by date
	for i := 1; i < len(out); i++ {
		for j := i; j > 0 && out[j].Date.After(out[j-1].Date); j-- {
			out[j], out[j-1] = out[j-1], out[j]
		}
	}
	if days > 0 && len(out) > days {
		out = out[:days]
	}
	return out, nil
}

type fakeAch struct {
	mu       sync.Mutex
	catalog  []*model.Achievement
	unlocked map[string]map[string]*model.UserAchievement
}

func newFakeAch() *fakeAch {
	return &fakeAch{unlocked: map[string]map[string]*model.UserAchievement{}}
}

func (r *fakeAch) ListCatalog(_ context.Context, category string, includeHidden bool) ([]*model.Achievement, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	out := []*model.Achievement{}
	for _, a := range r.catalog {
		if category != "" && a.Category != category {
			continue
		}
		if !includeHidden && a.IsHidden {
			continue
		}
		clone := *a
		out = append(out, &clone)
	}
	return out, nil
}

func (r *fakeAch) GetByCode(_ context.Context, code string) (*model.Achievement, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	for _, a := range r.catalog {
		if a.Code == code {
			clone := *a
			return &clone, nil
		}
	}
	return nil, repository.ErrNotFound
}

func (r *fakeAch) ListUser(_ context.Context, userID string) ([]*model.UserAchievement, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	out := []*model.UserAchievement{}
	for _, ua := range r.unlocked[userID] {
		clone := *ua
		out = append(out, &clone)
	}
	return out, nil
}

func (r *fakeAch) HasUnlocked(_ context.Context, userID, achievementID string) (bool, error) {
	r.mu.Lock()
	defer r.mu.Unlock()
	_, ok := r.unlocked[userID][achievementID]
	return ok, nil
}

func (r *fakeAch) Unlock(_ context.Context, ua *model.UserAchievement) error {
	r.mu.Lock()
	defer r.mu.Unlock()
	if _, ok := r.unlocked[ua.UserID]; !ok {
		r.unlocked[ua.UserID] = map[string]*model.UserAchievement{}
	}
	if _, exists := r.unlocked[ua.UserID][ua.AchievementID]; exists {
		return nil
	}
	clone := *ua
	clone.UnlockedAt = time.Now().UTC()
	r.unlocked[ua.UserID][ua.AchievementID] = &clone
	ua.UnlockedAt = clone.UnlockedAt
	return nil
}

// build builds Service wired up with fakes.
func buildService(now func() time.Time) (*Service, *fakeStats, *fakeXP, *fakeDailyGoal, *fakeStreak, *fakeAch) {
	stats := newFakeStats()
	xp := newFakeXP()
	dg := newFakeDailyGoal()
	streak := newFakeStreak()
	ach := newFakeAch()
	cfg := Config{MaxHearts: 5, HeartRegenInterval: 30 * time.Minute, DefaultDailyXP: 20, StreakFreezeMax: 2}
	svc := New(cfg, stats, xp, dg, streak, ach, nil)
	if now != nil {
		svc.WithClock(now)
	}
	return svc, stats, xp, dg, streak, ach
}

// utility: nil-safe error check.
func mustNotErr(t interface{ Fatalf(string, ...interface{}) }, err error) {
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
}

func errIs(err, target error) bool { return errors.Is(err, target) }

func randID() string {
	return time.Now().Format("150405.000000") + "-" + randSuffix()
}

var seq uint64

func randSuffix() string {
	seq++
	const hex = "0123456789abcdef"
	b := []byte{0, 0, 0, 0, 0, 0}
	v := seq
	for i := range b {
		b[i] = hex[v&0xf]
		v >>= 4
	}
	return string(b)
}
