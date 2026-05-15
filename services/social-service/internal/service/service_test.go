package service

import (
	"context"
	"errors"
	"sort"
	"testing"
	"time"

	"github.com/google/uuid"

	"github.com/elearning/platform/pkg/logger"
	"github.com/elearning/social-service/internal/client/notifications"
	"github.com/elearning/social-service/internal/client/users"
	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

func TestMain(m *testing.M) {
	logger.InitForBenchmark()
	m.Run()
}

// ---------------------------------------------------------------------------
// In-memory mocks
// ---------------------------------------------------------------------------

type leagueRepoMem struct {
	items map[int]*model.League
}

func newLeagueRepoMem() *leagueRepoMem {
	r := &leagueRepoMem{items: make(map[int]*model.League)}
	// Seed tiers 1..10 (Bronze → Diamond).
	for tier := 1; tier <= 10; tier++ {
		r.items[tier] = &model.League{
			ID:   tier,
			Code: "tier_" + string(rune('A'+tier-1)),
			Name: "League " + string(rune('A'+tier-1)),
			Tier: tier,
		}
	}
	return r
}

func (r *leagueRepoMem) List(_ context.Context) ([]*model.League, error) {
	out := make([]*model.League, 0, len(r.items))
	for _, l := range r.items {
		out = append(out, l)
	}
	sort.Slice(out, func(i, j int) bool { return out[i].Tier < out[j].Tier })
	return out, nil
}

func (r *leagueRepoMem) GetByID(_ context.Context, id int) (*model.League, error) {
	if l, ok := r.items[id]; ok {
		return l, nil
	}
	return nil, repository.ErrNotFound
}

type cohortRepoMem struct {
	items map[uuid.UUID]*model.Cohort
}

func newCohortRepoMem() *cohortRepoMem {
	return &cohortRepoMem{items: make(map[uuid.UUID]*model.Cohort)}
}

func (r *cohortRepoMem) FindOpen(_ context.Context, leagueID int, start, end time.Time) (*model.Cohort, error) {
	for _, c := range r.items {
		if c.LeagueID == leagueID && !c.IsFinished &&
			c.CycleStartAt.Equal(start) && c.CycleEndAt.Equal(end) &&
			!c.IsFull() {
			return c, nil
		}
	}
	return nil, repository.ErrNotFound
}

func (r *cohortRepoMem) Create(_ context.Context, c *model.Cohort) error {
	if c.ID == uuid.Nil {
		c.ID = uuid.New()
	}
	c.CreatedAt = time.Now().UTC()
	r.items[c.ID] = c
	return nil
}

func (r *cohortRepoMem) IncrementMemberCount(_ context.Context, id uuid.UUID) error {
	c, ok := r.items[id]
	if !ok {
		return repository.ErrNotFound
	}
	c.MemberCount++
	return nil
}

func (r *cohortRepoMem) MarkFinished(_ context.Context, id uuid.UUID) error {
	c, ok := r.items[id]
	if !ok {
		return repository.ErrNotFound
	}
	c.IsFinished = true
	return nil
}

func (r *cohortRepoMem) ListActiveExpired(_ context.Context, now time.Time) ([]*model.Cohort, error) {
	out := make([]*model.Cohort, 0)
	for _, c := range r.items {
		if !c.IsFinished && !c.CycleEndAt.After(now) {
			out = append(out, c)
		}
	}
	return out, nil
}

func (r *cohortRepoMem) GetByID(_ context.Context, id uuid.UUID) (*model.Cohort, error) {
	if c, ok := r.items[id]; ok {
		return c, nil
	}
	return nil, repository.ErrNotFound
}

type userLeagueRepoMem struct {
	items map[uuid.UUID]*model.UserLeague
}

func newUserLeagueRepoMem() *userLeagueRepoMem {
	return &userLeagueRepoMem{items: make(map[uuid.UUID]*model.UserLeague)}
}

func (r *userLeagueRepoMem) Get(_ context.Context, userID uuid.UUID) (*model.UserLeague, error) {
	if ul, ok := r.items[userID]; ok {
		cp := *ul
		return &cp, nil
	}
	return nil, repository.ErrNotFound
}

func (r *userLeagueRepoMem) Upsert(_ context.Context, ul *model.UserLeague) error {
	if ul.JoinedAt.IsZero() {
		ul.JoinedAt = time.Now().UTC()
	}
	ul.LastUpdatedAt = time.Now().UTC()
	cp := *ul
	r.items[ul.UserID] = &cp
	return nil
}

func (r *userLeagueRepoMem) IncrementWeeklyXP(_ context.Context, userID uuid.UUID, amount int) error {
	ul, ok := r.items[userID]
	if !ok {
		return repository.ErrNotFound
	}
	ul.WeeklyXP += amount
	return nil
}

func (r *userLeagueRepoMem) UpdateRank(_ context.Context, userID uuid.UUID, rank int) error {
	ul, ok := r.items[userID]
	if !ok {
		return repository.ErrNotFound
	}
	ul.RankInCohort = &rank
	return nil
}

func (r *userLeagueRepoMem) ResetWeeklyXPInCohort(_ context.Context, cohortID uuid.UUID) error {
	for _, ul := range r.items {
		if ul.CohortID == cohortID {
			ul.WeeklyXP = 0
			ul.RankInCohort = nil
		}
	}
	return nil
}

func (r *userLeagueRepoMem) ListByCohort(_ context.Context, cohortID uuid.UUID) ([]*model.UserLeague, error) {
	out := make([]*model.UserLeague, 0)
	for _, ul := range r.items {
		if ul.CohortID == cohortID {
			cp := *ul
			out = append(out, &cp)
		}
	}
	return out, nil
}

type historyRepoMem struct {
	items []*model.LeagueHistoryEntry
}

func newHistoryRepoMem() *historyRepoMem {
	return &historyRepoMem{items: make([]*model.LeagueHistoryEntry, 0)}
}

func (r *historyRepoMem) Create(_ context.Context, h *model.LeagueHistoryEntry) error {
	// Идемпотентность по (user_id, cycle_start_at).
	for _, existing := range r.items {
		if existing.UserID == h.UserID && existing.CycleStartAt.Equal(h.CycleStartAt) {
			return nil
		}
	}
	if h.ID == uuid.Nil {
		h.ID = uuid.New()
	}
	h.CreatedAt = time.Now().UTC()
	cp := *h
	r.items = append(r.items, &cp)
	return nil
}

func (r *historyRepoMem) ListByUser(_ context.Context, userID uuid.UUID, limit, offset int) ([]*model.LeagueHistoryEntry, int, error) {
	matched := make([]*model.LeagueHistoryEntry, 0)
	for _, h := range r.items {
		if h.UserID == userID {
			cp := *h
			matched = append(matched, &cp)
		}
	}
	sort.Slice(matched, func(i, j int) bool {
		return matched[i].CycleStartAt.After(matched[j].CycleStartAt)
	})
	total := len(matched)
	if offset > total {
		offset = total
	}
	end := offset + limit
	if limit <= 0 || end > total {
		end = total
	}
	return matched[offset:end], total, nil
}

// leaderboardRepoMem — in-memory имитация Redis ZSet.
type leaderboardRepoMem struct {
	scores  map[uuid.UUID]map[uuid.UUID]int // cohortID → userID → score
	failAdd bool                            // если true — AddXP/SetXP возвращают ошибку
	failGet bool                            // если true — GetTop/GetRank возвращают ошибку
}

func newLeaderboardRepoMem() *leaderboardRepoMem {
	return &leaderboardRepoMem{scores: make(map[uuid.UUID]map[uuid.UUID]int)}
}

func (r *leaderboardRepoMem) AddXP(_ context.Context, cohortID, userID uuid.UUID, amount int) error {
	if r.failAdd {
		return errors.New("redis down")
	}
	m, ok := r.scores[cohortID]
	if !ok {
		m = make(map[uuid.UUID]int)
		r.scores[cohortID] = m
	}
	m[userID] += amount
	return nil
}

func (r *leaderboardRepoMem) SetXP(_ context.Context, cohortID, userID uuid.UUID, score int) error {
	if r.failAdd {
		return errors.New("redis down")
	}
	m, ok := r.scores[cohortID]
	if !ok {
		m = make(map[uuid.UUID]int)
		r.scores[cohortID] = m
	}
	m[userID] = score
	return nil
}

func (r *leaderboardRepoMem) GetTop(_ context.Context, cohortID uuid.UUID, limit int) ([]repository.LeaderboardScore, error) {
	if r.failGet {
		return nil, errors.New("redis down")
	}
	m := r.scores[cohortID]
	out := make([]repository.LeaderboardScore, 0, len(m))
	for uid, sc := range m {
		out = append(out, repository.LeaderboardScore{UserID: uid, WeeklyXP: sc})
	}
	sort.Slice(out, func(i, j int) bool {
		if out[i].WeeklyXP != out[j].WeeklyXP {
			return out[i].WeeklyXP > out[j].WeeklyXP
		}
		// Стабильность: по UUID string.
		return out[i].UserID.String() < out[j].UserID.String()
	})
	if limit > 0 && len(out) > limit {
		out = out[:limit]
	}
	return out, nil
}

func (r *leaderboardRepoMem) GetRank(_ context.Context, cohortID, userID uuid.UUID) (int, error) {
	if r.failGet {
		return 0, errors.New("redis down")
	}
	top, _ := r.GetTop(context.Background(), cohortID, 0)
	for i, sc := range top {
		if sc.UserID == userID {
			return i + 1, nil
		}
	}
	return 0, repository.ErrNotFound
}

func (r *leaderboardRepoMem) GetScore(_ context.Context, cohortID, userID uuid.UUID) (int, error) {
	if r.failGet {
		return 0, errors.New("redis down")
	}
	if m, ok := r.scores[cohortID]; ok {
		if sc, ok := m[userID]; ok {
			return sc, nil
		}
	}
	return 0, repository.ErrNotFound
}

func (r *leaderboardRepoMem) Reset(_ context.Context, cohortID uuid.UUID) error {
	delete(r.scores, cohortID)
	return nil
}

type usersClientMem struct {
	profiles map[uuid.UUID]*users.Profile
	fail     bool
}

func newUsersClientMem() *usersClientMem {
	return &usersClientMem{profiles: make(map[uuid.UUID]*users.Profile)}
}

func (c *usersClientMem) BatchGetProfiles(_ context.Context, ids []uuid.UUID) (map[uuid.UUID]*users.Profile, error) {
	if c.fail {
		return nil, errors.New("user-service down")
	}
	out := make(map[uuid.UUID]*users.Profile, len(ids))
	for _, id := range ids {
		if p, ok := c.profiles[id]; ok {
			out[id] = p
		}
	}
	return out, nil
}

func (c *usersClientMem) Close() error { return nil }

// notifClientMem — записывает все push'и в список для проверки в тестах.
type notifClientMem struct {
	sent []notifications.SendInput
	fail bool
}

func newNotifClientMem() *notifClientMem {
	return &notifClientMem{sent: make([]notifications.SendInput, 0)}
}

func (c *notifClientMem) Send(_ context.Context, in notifications.SendInput) error {
	if c.fail {
		return errors.New("notifications down")
	}
	c.sent = append(c.sent, in)
	return nil
}

// ---------------------------------------------------------------------------
// Test setup
// ---------------------------------------------------------------------------

type fixture struct {
	svc     *Service
	leagues *leagueRepoMem
	cohorts *cohortRepoMem
	userLg  *userLeagueRepoMem
	history *historyRepoMem
	board   *leaderboardRepoMem
	users   *usersClientMem
	notif   *notifClientMem
}

// newFixture с зафиксированным временем — среда 2026-05-13 12:00 UTC.
// Cycle: Mon 2026-05-11 00:00 → Sun 2026-05-17 23:59:59.
func newFixture() *fixture {
	leagues := newLeagueRepoMem()
	cohorts := newCohortRepoMem()
	userLg := newUserLeagueRepoMem()
	history := newHistoryRepoMem()
	board := newLeaderboardRepoMem()
	uc := newUsersClientMem()
	nc := newNotifClientMem()

	svc := New(leagues, cohorts, userLg, history, board, uc).WithNotifications(nc)
	svc.SetClock(func() time.Time {
		return time.Date(2026, 5, 13, 12, 0, 0, 0, time.UTC)
	})

	return &fixture{
		svc:     svc,
		leagues: leagues,
		cohorts: cohorts,
		userLg:  userLg,
		history: history,
		board:   board,
		users:   uc,
		notif:   nc,
	}
}

// ---------------------------------------------------------------------------
// EnsureUserInLeague
// ---------------------------------------------------------------------------

func TestEnsureUserInLeague_NewUser_AssignsToBronze(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	ul, created, err := f.svc.EnsureUserInLeague(ctx, uid)
	if err != nil {
		t.Fatalf("unexpected err: %v", err)
	}
	if !created {
		t.Error("expected created=true for new user")
	}
	if ul.LeagueID != BronzeLeagueID {
		t.Errorf("expected Bronze league, got %d", ul.LeagueID)
	}
	if ul.WeeklyXP != 0 {
		t.Errorf("expected weekly_xp=0, got %d", ul.WeeklyXP)
	}
	if ul.CohortID == uuid.Nil {
		t.Error("expected non-nil cohort_id")
	}

	// Cohort должна быть создана с member_count=1.
	c, _ := f.cohorts.GetByID(ctx, ul.CohortID)
	if c.MemberCount != 1 {
		t.Errorf("expected cohort member_count=1, got %d", c.MemberCount)
	}
	wantStart, wantEnd := model.CycleBoundaries(f.svc.clock())
	if !c.CycleStartAt.Equal(wantStart) {
		t.Errorf("cycle start: want %v, got %v", wantStart, c.CycleStartAt)
	}
	if !c.CycleEndAt.Equal(wantEnd) {
		t.Errorf("cycle end: want %v, got %v", wantEnd, c.CycleEndAt)
	}

	// Redis bootstrap.
	score, _ := f.board.GetScore(ctx, ul.CohortID, uid)
	if score != 0 {
		t.Errorf("expected redis bootstrap score=0, got %d", score)
	}
}

func TestEnsureUserInLeague_ExistingActive_NoOp(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	_, _, err := f.svc.EnsureUserInLeague(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}

	// Повторный вызов — никаких изменений.
	ul2, created2, err := f.svc.EnsureUserInLeague(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}
	if created2 {
		t.Error("second call must return created=false")
	}
	if ul2.LeagueID != BronzeLeagueID {
		t.Errorf("league should remain Bronze, got %d", ul2.LeagueID)
	}

	if len(f.cohorts.items) != 1 {
		t.Errorf("expected exactly 1 cohort, got %d", len(f.cohorts.items))
	}
}

func TestEnsureUserInLeague_ExpiredCohort_Reassigns(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	// User в Silver (tier=2), но старая cohort.
	oldCohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     2,
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		IsFinished:   true,
		MemberCount:  10,
	}
	f.cohorts.items[oldCohort.ID] = oldCohort
	f.userLg.items[uid] = &model.UserLeague{
		UserID: uid, LeagueID: 2, CohortID: oldCohort.ID, WeeklyXP: 250,
	}

	ul, created, err := f.svc.EnsureUserInLeague(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}
	if created {
		t.Error("re-assignment must return created=false")
	}
	if ul.LeagueID != 2 {
		t.Errorf("expected to stay in Silver(2), got %d", ul.LeagueID)
	}
	if ul.CohortID == oldCohort.ID {
		t.Error("must reassign to new cohort")
	}
	if ul.WeeklyXP != 250 {
		t.Errorf("expected weekly_xp preserved=250, got %d", ul.WeeklyXP)
	}
}

func TestEnsureUserInLeague_FillsCohortAndOverflow(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	// Заливаем CohortSize+5 юзеров — должно появиться 2 cohort'ы.
	for i := 0; i < model.CohortSize+5; i++ {
		uid := uuid.New()
		if _, _, err := f.svc.EnsureUserInLeague(ctx, uid); err != nil {
			t.Fatalf("user %d: %v", i, err)
		}
	}

	bronzeCohorts := 0
	for _, c := range f.cohorts.items {
		if c.LeagueID == BronzeLeagueID {
			bronzeCohorts++
		}
	}
	if bronzeCohorts != 2 {
		t.Errorf("expected 2 Bronze cohorts, got %d", bronzeCohorts)
	}
}

func TestEnsureUserInLeague_NilUserID(t *testing.T) {
	f := newFixture()
	_, _, err := f.svc.EnsureUserInLeague(context.Background(), uuid.Nil)
	if !errors.Is(err, ErrInvalidArgument) {
		t.Errorf("expected ErrInvalidArgument, got %v", err)
	}
}

// ---------------------------------------------------------------------------
// OnXPGained
// ---------------------------------------------------------------------------

func TestOnXPGained_AutoEnsuresAndIncrements(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	if err := f.svc.OnXPGained(ctx, uid, 50); err != nil {
		t.Fatal(err)
	}

	ul, err := f.userLg.Get(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}
	if ul.WeeklyXP != 50 {
		t.Errorf("expected weekly_xp=50, got %d", ul.WeeklyXP)
	}
	score, _ := f.board.GetScore(ctx, ul.CohortID, uid)
	if score != 50 {
		t.Errorf("expected redis score=50, got %d", score)
	}
}

func TestOnXPGained_MultipleCallsAccumulate(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	for i := 0; i < 5; i++ {
		if err := f.svc.OnXPGained(ctx, uid, 10); err != nil {
			t.Fatal(err)
		}
	}

	ul, _ := f.userLg.Get(ctx, uid)
	if ul.WeeklyXP != 50 {
		t.Errorf("expected 50, got %d", ul.WeeklyXP)
	}
}

func TestOnXPGained_ZeroOrNegative_NoOp(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	if err := f.svc.OnXPGained(ctx, uid, 0); err != nil {
		t.Fatal(err)
	}
	if err := f.svc.OnXPGained(ctx, uid, -5); err != nil {
		t.Fatal(err)
	}
	if _, err := f.userLg.Get(ctx, uid); !errors.Is(err, repository.ErrNotFound) {
		t.Error("user must NOT be auto-created on zero/negative XP")
	}
}

func TestOnXPGained_RedisFailure_NonFatal(t *testing.T) {
	f := newFixture()
	uid := uuid.New()
	ctx := context.Background()

	// Сначала ensure user (bootstrap Redis может тоже фейлиться, но bootstrap некритичен).
	if err := f.svc.OnXPGained(ctx, uid, 10); err != nil {
		t.Fatal(err)
	}
	// Теперь сламываем Redis для последующих AddXP.
	f.board.failAdd = true

	if err := f.svc.OnXPGained(ctx, uid, 20); err != nil {
		t.Errorf("redis failure must not propagate, got %v", err)
	}
	ul, _ := f.userLg.Get(ctx, uid)
	if ul.WeeklyXP != 30 {
		t.Errorf("postgres weekly_xp should still be 30, got %d", ul.WeeklyXP)
	}
}

// ---------------------------------------------------------------------------
// GetMyLeague
// ---------------------------------------------------------------------------

func TestGetMyLeague_ReturnsLeagueAndRank(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	uid := uuid.New()
	other := uuid.New()

	_ = f.svc.OnXPGained(ctx, other, 100) // other в топе
	_ = f.svc.OnXPGained(ctx, uid, 50)

	res, err := f.svc.GetMyLeague(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}
	if res.League.Tier != 1 {
		t.Errorf("expected Bronze, got tier %d", res.League.Tier)
	}
	if res.UserLeague.RankInCohort == nil || *res.UserLeague.RankInCohort != 2 {
		got := -1
		if res.UserLeague.RankInCohort != nil {
			got = *res.UserLeague.RankInCohort
		}
		t.Errorf("expected rank=2 from Redis, got %d", got)
	}
}

func TestGetMyLeague_NotFound(t *testing.T) {
	f := newFixture()
	_, err := f.svc.GetMyLeague(context.Background(), uuid.New())
	if !errors.Is(err, ErrNotFound) {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

// ---------------------------------------------------------------------------
// GetMyLeaderboard
// ---------------------------------------------------------------------------

func TestGetMyLeaderboard_TopAndEnrichment(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	u1, u2, u3 := uuid.New(), uuid.New(), uuid.New()
	_ = f.svc.OnXPGained(ctx, u1, 300)
	_ = f.svc.OnXPGained(ctx, u2, 200)
	_ = f.svc.OnXPGained(ctx, u3, 100)

	f.users.profiles[u1] = &users.Profile{UserID: u1, FullName: "Alice", AvatarURL: "a.png"}
	f.users.profiles[u2] = &users.Profile{UserID: u2, FullName: "Bob"}
	// u3 — без профиля (имитация удалённого юзера).

	res, err := f.svc.GetMyLeaderboard(ctx, u2)
	if err != nil {
		t.Fatal(err)
	}
	if len(res.Entries) != 3 {
		t.Fatalf("expected 3 entries, got %d", len(res.Entries))
	}
	if res.Entries[0].Rank != 1 || res.Entries[0].UserID != u1 {
		t.Errorf("rank 1 must be u1 with 300xp, got %+v", res.Entries[0])
	}
	if res.Entries[0].FullName != "Alice" {
		t.Errorf("expected enrichment Alice, got %q", res.Entries[0].FullName)
	}
	if res.Entries[2].FullName != "" {
		t.Errorf("missing profile should leave name empty, got %q", res.Entries[2].FullName)
	}
	if res.MyRank != 2 {
		t.Errorf("expected MyRank=2, got %d", res.MyRank)
	}
	if res.MyWeeklyXP != 200 {
		t.Errorf("expected MyWeeklyXP=200, got %d", res.MyWeeklyXP)
	}
	// Bronze → promotion zone есть, demotion нет.
	if res.PromotionCount != model.PromotionTopN {
		t.Errorf("expected promotion zone, got %d", res.PromotionCount)
	}
	if res.DemotionCount != 0 {
		t.Errorf("Bronze must have no demotion, got %d", res.DemotionCount)
	}
}

func TestGetMyLeaderboard_DiamondTier_NoPromotionZone(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	uid := uuid.New()

	// Hand-place в Diamond (tier=10).
	diamondCohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     10,
		CycleStartAt: time.Date(2026, 5, 11, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 17, 23, 59, 59, 0, time.UTC),
		MemberCount:  1,
	}
	f.cohorts.items[diamondCohort.ID] = diamondCohort
	f.userLg.items[uid] = &model.UserLeague{
		UserID: uid, LeagueID: 10, CohortID: diamondCohort.ID, WeeklyXP: 500,
	}
	_ = f.board.SetXP(ctx, diamondCohort.ID, uid, 500)

	res, err := f.svc.GetMyLeaderboard(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}
	if res.PromotionCount != 0 {
		t.Errorf("Diamond must have no promotion, got %d", res.PromotionCount)
	}
	if res.DemotionCount != model.DemotionBottomN {
		t.Errorf("Diamond must have demotion zone, got %d", res.DemotionCount)
	}
}

func TestGetMyLeaderboard_RedisFailure_FallsBackToPostgres(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	u1, u2 := uuid.New(), uuid.New()
	_ = f.svc.OnXPGained(ctx, u1, 100)
	_ = f.svc.OnXPGained(ctx, u2, 200)

	f.board.failGet = true

	res, err := f.svc.GetMyLeaderboard(ctx, u2)
	if err != nil {
		t.Fatal(err)
	}
	if len(res.Entries) != 2 {
		t.Fatalf("expected 2 entries from PG fallback, got %d", len(res.Entries))
	}
	if res.Entries[0].UserID != u2 {
		t.Errorf("fallback must still sort by xp desc, got rank-1 user=%s", res.Entries[0].UserID)
	}
}

// ---------------------------------------------------------------------------
// SnapshotRanks
// ---------------------------------------------------------------------------

func TestSnapshotRanks_UpdatesUserLeagueRanks(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	u1, u2, u3 := uuid.New(), uuid.New(), uuid.New()
	_ = f.svc.OnXPGained(ctx, u1, 100)
	_ = f.svc.OnXPGained(ctx, u2, 300)
	_ = f.svc.OnXPGained(ctx, u3, 200)

	updated, err := f.svc.SnapshotRanks(ctx)
	if err != nil {
		t.Fatal(err)
	}
	if updated != 3 {
		t.Errorf("expected 3 ranks updated, got %d", updated)
	}

	ul2, _ := f.userLg.Get(ctx, u2)
	if ul2.RankInCohort == nil || *ul2.RankInCohort != 1 {
		t.Errorf("u2 (300xp) must be rank 1")
	}
	ul1, _ := f.userLg.Get(ctx, u1)
	if ul1.RankInCohort == nil || *ul1.RankInCohort != 3 {
		t.Errorf("u1 (100xp) must be rank 3")
	}
}

func TestSnapshotRanks_SkipsFinishedCohorts(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	uid := uuid.New()
	_ = f.svc.OnXPGained(ctx, uid, 100)

	// Зафиналим cohort.
	ul, _ := f.userLg.Get(ctx, uid)
	c := f.cohorts.items[ul.CohortID]
	c.IsFinished = true

	updated, err := f.svc.SnapshotRanks(ctx)
	if err != nil {
		t.Fatal(err)
	}
	if updated != 0 {
		t.Errorf("finished cohorts must be skipped, updated=%d", updated)
	}
}

// ---------------------------------------------------------------------------
// RunWeeklyRotation
// ---------------------------------------------------------------------------

func TestRunWeeklyRotation_PromotesTop7DemotesBottom5(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	// Заселяем 30 юзеров в Silver (tier=2) с разными XP.
	// rank 1 = 30xp*1000, rank 30 = 1xp*1000.
	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     2,
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  30,
	}
	f.cohorts.items[cohort.ID] = cohort

	users := make([]uuid.UUID, 30)
	for i := 0; i < 30; i++ {
		uid := uuid.New()
		users[i] = uid
		xp := (30 - i) * 1000 // i=0 → 30000xp (top), i=29 → 1000xp (bottom)
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 2, CohortID: cohort.ID, WeeklyXP: xp,
		}
		_ = f.board.SetXP(ctx, cohort.ID, uid, xp)
	}

	stats, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}
	if stats.CohortsProcessed != 1 {
		t.Errorf("expected 1 cohort processed, got %d", stats.CohortsProcessed)
	}
	if stats.UsersPromoted != 7 {
		t.Errorf("expected 7 promoted, got %d", stats.UsersPromoted)
	}
	if stats.UsersDemoted != 5 {
		t.Errorf("expected 5 demoted, got %d", stats.UsersDemoted)
	}
	if stats.UsersSustained != 18 {
		t.Errorf("expected 18 sustained, got %d", stats.UsersSustained)
	}

	// Top user → Gold (tier=3). Bottom user → Bronze (tier=1).
	top, _ := f.userLg.Get(ctx, users[0])
	if top.LeagueID != 3 {
		t.Errorf("top user must be promoted to Gold, got tier %d", top.LeagueID)
	}
	bottom, _ := f.userLg.Get(ctx, users[29])
	if bottom.LeagueID != 1 {
		t.Errorf("bottom user must be demoted to Bronze, got tier %d", bottom.LeagueID)
	}
	mid, _ := f.userLg.Get(ctx, users[15])
	if mid.LeagueID != 2 {
		t.Errorf("middle user must stay in Silver, got tier %d", mid.LeagueID)
	}

	// Cohort должна быть finished + redis reset.
	if !cohort.IsFinished {
		t.Error("cohort must be marked finished")
	}
	if _, ok := f.board.scores[cohort.ID]; ok {
		t.Error("redis cohort key must be reset")
	}
	// History — 30 записей.
	if len(f.history.items) != 30 {
		t.Errorf("expected 30 history entries, got %d", len(f.history.items))
	}
	// Top-1 history: gems = PromotionGems(1) + top-3 bonus = 50 + 50 = 100.
	var topHist *model.LeagueHistoryEntry
	for _, h := range f.history.items {
		if h.UserID == users[0] {
			topHist = h
			break
		}
	}
	if topHist == nil {
		t.Fatal("history for top user missing")
	}
	if !topHist.Promoted {
		t.Error("top user must be marked promoted")
	}
	if topHist.GemsEarned != 100 {
		t.Errorf("top user gems: want 100 (50 promo + 50 top-1), got %d", topHist.GemsEarned)
	}
	if topHist.FinalRank != 1 {
		t.Errorf("top user final_rank: want 1, got %d", topHist.FinalRank)
	}
}

func TestRunWeeklyRotation_BronzeNoDemotion(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     1, // Bronze
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  30,
	}
	f.cohorts.items[cohort.ID] = cohort

	users := make([]uuid.UUID, 30)
	for i := 0; i < 30; i++ {
		uid := uuid.New()
		users[i] = uid
		xp := (30 - i) * 1000
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 1, CohortID: cohort.ID, WeeklyXP: xp,
		}
		_ = f.board.SetXP(ctx, cohort.ID, uid, xp)
	}

	stats, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}
	if stats.UsersDemoted != 0 {
		t.Errorf("Bronze cannot demote, got %d demoted", stats.UsersDemoted)
	}
	if stats.UsersPromoted != 7 {
		t.Errorf("expected 7 promoted from Bronze, got %d", stats.UsersPromoted)
	}
	// Bottom user — остаётся в Bronze.
	bottom, _ := f.userLg.Get(ctx, users[29])
	if bottom.LeagueID != 1 {
		t.Errorf("Bronze bottom must stay Bronze, got tier %d", bottom.LeagueID)
	}
}

func TestRunWeeklyRotation_DiamondNoPromotion(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     10, // Diamond
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  30,
	}
	f.cohorts.items[cohort.ID] = cohort

	users := make([]uuid.UUID, 30)
	for i := 0; i < 30; i++ {
		uid := uuid.New()
		users[i] = uid
		xp := (30 - i) * 1000
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 10, CohortID: cohort.ID, WeeklyXP: xp,
		}
		_ = f.board.SetXP(ctx, cohort.ID, uid, xp)
	}

	stats, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}
	if stats.UsersPromoted != 0 {
		t.Errorf("Diamond cannot promote, got %d promoted", stats.UsersPromoted)
	}
	if stats.UsersDemoted != 5 {
		t.Errorf("expected 5 demoted from Diamond, got %d", stats.UsersDemoted)
	}
	// Top user — остаётся в Diamond.
	top, _ := f.userLg.Get(ctx, users[0])
	if top.LeagueID != 10 {
		t.Errorf("Diamond top must stay Diamond, got tier %d", top.LeagueID)
	}
}

func TestRunWeeklyRotation_ReassignsToNextWeekCohort(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	// clock — среда (cycle Mon 2026-05-11 → Sun 2026-05-17).
	// Старая cohort (прошлая неделя, прошлый цикл).
	prevCohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     2,
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  3,
	}
	f.cohorts.items[prevCohort.ID] = prevCohort

	users := make([]uuid.UUID, 3)
	for i := 0; i < 3; i++ {
		uid := uuid.New()
		users[i] = uid
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 2, CohortID: prevCohort.ID, WeeklyXP: (3 - i) * 100,
		}
		_ = f.board.SetXP(ctx, prevCohort.ID, uid, (3-i)*100)
	}

	// force=false → next cycle = next week после clock (Mon 2026-05-18).
	// (Прод-сценарий: cron запускается Sun 23:59 UTC текущей недели.)
	_, err := f.svc.RunWeeklyRotation(ctx, false)
	if err != nil {
		t.Fatal(err)
	}

	// Все юзеры должны быть в новой когорте, которая ≠ prevCohort.
	wantStart := time.Date(2026, 5, 18, 0, 0, 0, 0, time.UTC)
	for _, uid := range users {
		ul, _ := f.userLg.Get(ctx, uid)
		if ul.CohortID == prevCohort.ID {
			t.Errorf("user %s must be reassigned to new cohort", uid)
		}
		newCohort := f.cohorts.items[ul.CohortID]
		if !newCohort.CycleStartAt.Equal(wantStart) {
			t.Errorf("new cohort cycle_start: want %v, got %v", wantStart, newCohort.CycleStartAt)
		}
		if ul.WeeklyXP != 0 {
			t.Errorf("after rotation weekly_xp must be reset, got %d", ul.WeeklyXP)
		}
	}
}

func TestRunWeeklyRotation_IdempotentOnFinishedCohort(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     2,
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		IsFinished:   true,
		MemberCount:  5,
	}
	f.cohorts.items[cohort.ID] = cohort

	stats, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}
	if stats.CohortsProcessed != 0 {
		t.Errorf("finished cohort must be skipped, got %d", stats.CohortsProcessed)
	}
}

func TestRunWeeklyRotation_NoActiveCohorts_NoOp(t *testing.T) {
	f := newFixture()
	stats, err := f.svc.RunWeeklyRotation(context.Background(), true)
	if err != nil {
		t.Fatal(err)
	}
	if stats.CohortsProcessed != 0 {
		t.Errorf("expected 0 cohorts, got %d", stats.CohortsProcessed)
	}
}

// ---------------------------------------------------------------------------
// GetHistory
// ---------------------------------------------------------------------------

func TestGetHistory_Pagination(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	uid := uuid.New()

	for i := 0; i < 5; i++ {
		_ = f.history.Create(ctx, &model.LeagueHistoryEntry{
			UserID:       uid,
			LeagueID:     2,
			CohortID:     uuid.New(),
			CycleStartAt: time.Date(2026, 4, 1+i*7, 0, 0, 0, 0, time.UTC),
			CycleEndAt:   time.Date(2026, 4, 7+i*7, 23, 59, 59, 0, time.UTC),
			FinalRank:    i + 1,
		})
	}

	page, total, err := f.svc.GetHistory(ctx, uid, 2, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 5 {
		t.Errorf("expected total=5, got %d", total)
	}
	if len(page) != 2 {
		t.Errorf("expected page size=2, got %d", len(page))
	}
	// Sorted desc по CycleStartAt — самый поздний первым.
	if !page[0].CycleStartAt.After(page[1].CycleStartAt) {
		t.Error("history must be sorted desc by cycle_start_at")
	}
}

// ---------------------------------------------------------------------------
// Promotion push notifications
// ---------------------------------------------------------------------------

func TestRunWeeklyRotation_SendsPromotionPushToTop7Only(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     2, // Silver
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  30,
	}
	f.cohorts.items[cohort.ID] = cohort
	promotedUsers := make(map[uuid.UUID]bool, 7)
	for i := 0; i < 30; i++ {
		uid := uuid.New()
		xp := (30 - i) * 1000
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 2, CohortID: cohort.ID, WeeklyXP: xp,
		}
		_ = f.board.SetXP(ctx, cohort.ID, uid, xp)
		if i < 7 {
			promotedUsers[uid] = true
		}
	}

	_, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}

	if len(f.notif.sent) != 7 {
		t.Fatalf("expected 7 promotion pushes, got %d", len(f.notif.sent))
	}
	for _, sent := range f.notif.sent {
		if sent.Channel != "achievement" {
			t.Errorf("expected channel=achievement, got %s", sent.Channel)
		}
		if !sent.IgnoreQuietHours {
			t.Error("promotion push must ignore quiet hours")
		}
		if sent.DedupKey == "" {
			t.Error("dedup_key must be set")
		}
		uid, _ := uuid.Parse(sent.UserID)
		if !promotedUsers[uid] {
			t.Errorf("push sent to non-promoted user %s", sent.UserID)
		}
		// Title должен содержать имя новой лиги (tier=3 в mock = "League C").
		if !contains(sent.Title, "League C") {
			t.Errorf("expected title to mention new league (League C), got %q", sent.Title)
		}
	}
}

func TestRunWeeklyRotation_PromotionPushFailure_NonFatal(t *testing.T) {
	f := newFixture()
	ctx := context.Background()
	f.notif.fail = true

	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     2,
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  10,
	}
	f.cohorts.items[cohort.ID] = cohort
	for i := 0; i < 10; i++ {
		uid := uuid.New()
		xp := (10 - i) * 100
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 2, CohortID: cohort.ID, WeeklyXP: xp,
		}
		_ = f.board.SetXP(ctx, cohort.ID, uid, xp)
	}

	stats, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}
	if stats.UsersPromoted != 7 {
		t.Errorf("rotation must complete despite notif failure, got %d promoted", stats.UsersPromoted)
	}
}

func TestRunWeeklyRotation_DiamondTier_NoPromotionPush(t *testing.T) {
	f := newFixture()
	ctx := context.Background()

	cohort := &model.Cohort{
		ID:           uuid.New(),
		LeagueID:     10, // Diamond — promotion невозможна
		CycleStartAt: time.Date(2026, 5, 4, 0, 0, 0, 0, time.UTC),
		CycleEndAt:   time.Date(2026, 5, 10, 23, 59, 59, 0, time.UTC),
		MemberCount:  30,
	}
	f.cohorts.items[cohort.ID] = cohort
	for i := 0; i < 30; i++ {
		uid := uuid.New()
		xp := (30 - i) * 1000
		f.userLg.items[uid] = &model.UserLeague{
			UserID: uid, LeagueID: 10, CohortID: cohort.ID, WeeklyXP: xp,
		}
		_ = f.board.SetXP(ctx, cohort.ID, uid, xp)
	}

	_, err := f.svc.RunWeeklyRotation(ctx, true)
	if err != nil {
		t.Fatal(err)
	}

	if len(f.notif.sent) != 0 {
		t.Errorf("Diamond can't promote — expected 0 pushes, got %d", len(f.notif.sent))
	}
}

func contains(s, substr string) bool {
	for i := 0; i+len(substr) <= len(s); i++ {
		if s[i:i+len(substr)] == substr {
			return true
		}
	}
	return false
}
