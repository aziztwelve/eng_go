package redis

import (
	"context"
	"errors"
	"testing"

	"github.com/alicebob/miniredis/v2"
	"github.com/google/uuid"
	goredis "github.com/redis/go-redis/v9"

	"github.com/elearning/social-service/internal/repository"
)

func setup(t *testing.T) (*LeaderboardRepository, *miniredis.Miniredis) {
	t.Helper()
	mr := miniredis.RunT(t)
	client := goredis.NewClient(&goredis.Options{Addr: mr.Addr()})
	t.Cleanup(func() { _ = client.Close() })
	return NewLeaderboardRepository(client), mr
}

func TestLeaderboard_AddXP_ZeroIsNoop(t *testing.T) {
	repo, mr := setup(t)
	ctx := context.Background()
	cohort, user := uuid.New(), uuid.New()

	if err := repo.AddXP(ctx, cohort, user, 0); err != nil {
		t.Fatal(err)
	}
	// Ключ не создан.
	if mr.Exists(cohortKey(cohort)) {
		t.Error("zero AddXP must not create the key")
	}
}

func TestLeaderboard_AddXP_AccumulatesIncrements(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort, user := uuid.New(), uuid.New()

	for i := 0; i < 5; i++ {
		if err := repo.AddXP(ctx, cohort, user, 10); err != nil {
			t.Fatal(err)
		}
	}
	score, err := repo.GetScore(ctx, cohort, user)
	if err != nil {
		t.Fatal(err)
	}
	if score != 50 {
		t.Errorf("expected 50, got %d", score)
	}
}

func TestLeaderboard_SetXP_Overwrites(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort, user := uuid.New(), uuid.New()

	_ = repo.AddXP(ctx, cohort, user, 100)
	if err := repo.SetXP(ctx, cohort, user, 0); err != nil {
		t.Fatal(err)
	}
	score, _ := repo.GetScore(ctx, cohort, user)
	if score != 0 {
		t.Errorf("SetXP must overwrite, got %d", score)
	}
}

func TestLeaderboard_GetTop_OrdersByScoreDesc(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort := uuid.New()
	u1, u2, u3 := uuid.New(), uuid.New(), uuid.New()

	_ = repo.SetXP(ctx, cohort, u1, 100)
	_ = repo.SetXP(ctx, cohort, u2, 300)
	_ = repo.SetXP(ctx, cohort, u3, 200)

	top, err := repo.GetTop(ctx, cohort, 10)
	if err != nil {
		t.Fatal(err)
	}
	if len(top) != 3 {
		t.Fatalf("expected 3, got %d", len(top))
	}
	if top[0].UserID != u2 || top[0].WeeklyXP != 300 {
		t.Errorf("expected u2/300 first, got %+v", top[0])
	}
	if top[2].UserID != u1 || top[2].WeeklyXP != 100 {
		t.Errorf("expected u1/100 last, got %+v", top[2])
	}
}

func TestLeaderboard_GetTop_RespectsLimit(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort := uuid.New()
	for i := 0; i < 5; i++ {
		_ = repo.SetXP(ctx, cohort, uuid.New(), i*10)
	}
	top, err := repo.GetTop(ctx, cohort, 2)
	if err != nil {
		t.Fatal(err)
	}
	if len(top) != 2 {
		t.Errorf("expected 2, got %d", len(top))
	}
}

func TestLeaderboard_GetTop_DefaultLimitWhenZero(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort := uuid.New()
	for i := 0; i < 5; i++ {
		_ = repo.SetXP(ctx, cohort, uuid.New(), i*10)
	}
	top, err := repo.GetTop(ctx, cohort, 0)
	if err != nil {
		t.Fatal(err)
	}
	if len(top) != 5 {
		t.Errorf("default limit (30) should include all 5, got %d", len(top))
	}
}

func TestLeaderboard_GetRank_1BasedAndDesc(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort := uuid.New()
	u1, u2, u3 := uuid.New(), uuid.New(), uuid.New()
	_ = repo.SetXP(ctx, cohort, u1, 100)
	_ = repo.SetXP(ctx, cohort, u2, 300)
	_ = repo.SetXP(ctx, cohort, u3, 200)

	r1, _ := repo.GetRank(ctx, cohort, u2)
	r2, _ := repo.GetRank(ctx, cohort, u3)
	r3, _ := repo.GetRank(ctx, cohort, u1)
	if r1 != 1 || r2 != 2 || r3 != 3 {
		t.Errorf("expected ranks 1/2/3, got %d/%d/%d", r1, r2, r3)
	}
}

func TestLeaderboard_GetRank_NotFound(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort := uuid.New()
	_, err := repo.GetRank(ctx, cohort, uuid.New())
	if !errors.Is(err, repository.ErrNotFound) {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestLeaderboard_GetScore_NotFound(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	_, err := repo.GetScore(ctx, uuid.New(), uuid.New())
	if !errors.Is(err, repository.ErrNotFound) {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestLeaderboard_Reset_RemovesAll(t *testing.T) {
	repo, mr := setup(t)
	ctx := context.Background()
	cohort := uuid.New()
	for i := 0; i < 3; i++ {
		_ = repo.SetXP(ctx, cohort, uuid.New(), 100)
	}
	if !mr.Exists(cohortKey(cohort)) {
		t.Fatal("key must exist before reset")
	}
	if err := repo.Reset(ctx, cohort); err != nil {
		t.Fatal(err)
	}
	if mr.Exists(cohortKey(cohort)) {
		t.Error("key must be removed after Reset")
	}
}

func TestLeaderboard_CohortIsolation(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	c1, c2 := uuid.New(), uuid.New()
	u := uuid.New()
	_ = repo.SetXP(ctx, c1, u, 100)
	_ = repo.SetXP(ctx, c2, u, 200)

	s1, _ := repo.GetScore(ctx, c1, u)
	s2, _ := repo.GetScore(ctx, c2, u)
	if s1 != 100 || s2 != 200 {
		t.Errorf("cohort isolation broken: c1=%d c2=%d", s1, s2)
	}
}

func TestLeaderboard_AddXP_NegativeAmount(t *testing.T) {
	repo, _ := setup(t)
	ctx := context.Background()
	cohort, user := uuid.New(), uuid.New()
	_ = repo.SetXP(ctx, cohort, user, 100)
	if err := repo.AddXP(ctx, cohort, user, -30); err != nil {
		t.Fatal(err)
	}
	score, _ := repo.GetScore(ctx, cohort, user)
	if score != 70 {
		t.Errorf("expected 70 after -30, got %d", score)
	}
}
