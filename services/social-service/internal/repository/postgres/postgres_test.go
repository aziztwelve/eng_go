// Integration-тесты Postgres-репозиториев через testcontainers.
//
// Запускают одноразовый Postgres-контейнер, накатывают миграции,
// создают schema social и гоняют CRUD-операции по всем 4-ём repos.
//
// Чтобы пропустить (например в CI без Docker) — установите env
// SKIP_PG_INTEGRATION=1.
package postgres

import (
	"context"
	"fmt"
	"os"
	"path/filepath"
	"testing"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/testcontainers/testcontainers-go"
	tcpostgres "github.com/testcontainers/testcontainers-go/modules/postgres"
	"github.com/testcontainers/testcontainers-go/wait"

	"github.com/elearning/social-service/internal/model"
	"github.com/elearning/social-service/internal/repository"
)

// ----------------------------------------------------------------------------
// Test harness: shared Postgres container per package.
// ----------------------------------------------------------------------------

var sharedPool *pgxpool.Pool

func TestMain(m *testing.M) {
	if os.Getenv("SKIP_PG_INTEGRATION") != "" {
		fmt.Println("SKIP_PG_INTEGRATION set — skipping postgres integration tests")
		os.Exit(0)
	}

	ctx := context.Background()

	container, err := tcpostgres.Run(ctx,
		"postgres:16-alpine",
		tcpostgres.WithDatabase("social_test"),
		tcpostgres.WithUsername("test"),
		tcpostgres.WithPassword("test"),
		testcontainers.WithWaitStrategy(
			wait.ForLog("database system is ready to accept connections").
				WithOccurrence(2).WithStartupTimeout(60*time.Second),
		),
	)
	if err != nil {
		fmt.Fprintf(os.Stderr, "failed to start postgres: %v\n", err)
		os.Exit(0) // gracefully skip if docker unavailable
	}
	defer func() {
		_ = container.Terminate(context.Background())
	}()

	connStr, err := container.ConnectionString(ctx, "sslmode=disable")
	if err != nil {
		fmt.Fprintf(os.Stderr, "conn string: %v\n", err)
		os.Exit(1)
	}

	pool, err := pgxpool.New(ctx, connStr)
	if err != nil {
		fmt.Fprintf(os.Stderr, "pgxpool: %v\n", err)
		os.Exit(1)
	}
	defer pool.Close()

	if err := applyMigrations(ctx, pool); err != nil {
		fmt.Fprintf(os.Stderr, "migrate: %v\n", err)
		os.Exit(1)
	}

	sharedPool = pool
	code := m.Run()
	os.Exit(code)
}

// applyMigrations создаёт schema social и накатывает все *.up.sql.
func applyMigrations(ctx context.Context, pool *pgxpool.Pool) error {
	if _, err := pool.Exec(ctx, `CREATE SCHEMA IF NOT EXISTS social`); err != nil {
		return fmt.Errorf("create schema: %w", err)
	}
	if _, err := pool.Exec(ctx, `SET search_path TO social`); err != nil {
		return fmt.Errorf("set search_path: %w", err)
	}

	// Найти migrations directory: ../../../migrations от текущего файла.
	wd, _ := os.Getwd()
	migrDir := filepath.Join(wd, "..", "..", "..", "migrations")
	entries, err := os.ReadDir(migrDir)
	if err != nil {
		return fmt.Errorf("read migrations dir %s: %w", migrDir, err)
	}

	for _, e := range entries {
		if e.IsDir() || filepath.Ext(e.Name()) != ".sql" {
			continue
		}
		if filepath.Ext(e.Name()) == ".sql" &&
			!hasSuffix(e.Name(), ".up.sql") {
			continue
		}
		content, err := os.ReadFile(filepath.Join(migrDir, e.Name()))
		if err != nil {
			return fmt.Errorf("read %s: %w", e.Name(), err)
		}
		if _, err := pool.Exec(ctx, string(content)); err != nil {
			return fmt.Errorf("exec %s: %w", e.Name(), err)
		}
	}
	// После миграций гарантируем что search_path = social для всех сессий.
	if _, err := pool.Exec(ctx, `ALTER DATABASE social_test SET search_path TO social, public`); err != nil {
		return fmt.Errorf("alter db search_path: %w", err)
	}
	// Переоткроем pool, чтобы новый search_path подхватился (или явно SET в каждом запросе).
	// Альтернатива — выставить search_path на уровне сессии:
	if _, err := pool.Exec(ctx, `SET search_path TO social, public`); err != nil {
		return err
	}
	return nil
}

func hasSuffix(s, suf string) bool {
	return len(s) >= len(suf) && s[len(s)-len(suf):] == suf
}

// cleanup wipes data between tests (preserve leagues seed).
func cleanup(t *testing.T) {
	t.Helper()
	ctx := context.Background()
	_, err := sharedPool.Exec(ctx, `
		TRUNCATE social.league_history RESTART IDENTITY CASCADE;
		TRUNCATE social.user_leagues RESTART IDENTITY CASCADE;
		TRUNCATE social.cohorts RESTART IDENTITY CASCADE;
		TRUNCATE social.friendships RESTART IDENTITY CASCADE;
	`)
	if err != nil {
		t.Fatalf("cleanup: %v", err)
	}
}

// helper для создания cohort напрямую через pool.
func mkCohort(t *testing.T, leagueID int, start, end time.Time) uuid.UUID {
	t.Helper()
	repo := NewCohortRepository(sharedPool)
	c := &model.Cohort{LeagueID: leagueID, CycleStartAt: start, CycleEndAt: end}
	if err := repo.Create(context.Background(), c); err != nil {
		t.Fatal(err)
	}
	return c.ID
}

var (
	weekStart = time.Date(2026, 5, 11, 0, 0, 0, 0, time.UTC)
	weekEnd   = time.Date(2026, 5, 17, 23, 59, 59, 0, time.UTC)
)

// ----------------------------------------------------------------------------
// LeagueRepository
// ----------------------------------------------------------------------------

func TestLeagueRepo_List_Returns10Leagues(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	r := NewLeagueRepository(sharedPool)
	leagues, err := r.List(context.Background())
	if err != nil {
		t.Fatal(err)
	}
	if len(leagues) != 10 {
		t.Errorf("expected 10 leagues from seed, got %d", len(leagues))
	}
	if leagues[0].Tier != 1 || leagues[0].Code != "bronze" {
		t.Errorf("first must be Bronze (tier=1), got %+v", leagues[0])
	}
	if leagues[9].Tier != 10 || leagues[9].Code != "diamond" {
		t.Errorf("last must be Diamond (tier=10), got %+v", leagues[9])
	}
}

func TestLeagueRepo_GetByID(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	r := NewLeagueRepository(sharedPool)
	l, err := r.GetByID(context.Background(), 3)
	if err != nil {
		t.Fatal(err)
	}
	if l.Code != "gold" {
		t.Errorf("expected gold, got %s", l.Code)
	}

	_, err = r.GetByID(context.Background(), 999)
	if err != repository.ErrNotFound {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

// ----------------------------------------------------------------------------
// CohortRepository
// ----------------------------------------------------------------------------

func TestCohortRepo_CreateAndGetByID(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewCohortRepository(sharedPool)
	ctx := context.Background()

	c := &model.Cohort{LeagueID: 1, CycleStartAt: weekStart, CycleEndAt: weekEnd}
	if err := r.Create(ctx, c); err != nil {
		t.Fatal(err)
	}
	if c.ID == uuid.Nil {
		t.Error("expected ID populated")
	}
	if c.CreatedAt.IsZero() {
		t.Error("expected CreatedAt populated")
	}

	got, err := r.GetByID(ctx, c.ID)
	if err != nil {
		t.Fatal(err)
	}
	if got.LeagueID != 1 || !got.CycleStartAt.Equal(weekStart) {
		t.Errorf("mismatch: %+v", got)
	}
	if got.IsFinished {
		t.Error("new cohort must not be finished")
	}
	if got.MemberCount != 0 {
		t.Errorf("new cohort member_count=0, got %d", got.MemberCount)
	}
}

func TestCohortRepo_GetByID_NotFound(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	r := NewCohortRepository(sharedPool)
	_, err := r.GetByID(context.Background(), uuid.New())
	if err != repository.ErrNotFound {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestCohortRepo_FindOpen(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewCohortRepository(sharedPool)
	ctx := context.Background()

	// Нет открытых → ErrNotFound.
	_, err := r.FindOpen(ctx, 1, weekStart, weekEnd)
	if err != repository.ErrNotFound {
		t.Errorf("expected ErrNotFound, got %v", err)
	}

	// Создаём → находим.
	id := mkCohort(t, 1, weekStart, weekEnd)
	c, err := r.FindOpen(ctx, 1, weekStart, weekEnd)
	if err != nil {
		t.Fatal(err)
	}
	if c.ID != id {
		t.Errorf("expected found id %s, got %s", id, c.ID)
	}

	// Заполняем до CohortSize → FindOpen не возвращает full.
	for i := 0; i < model.CohortSize; i++ {
		if err := r.IncrementMemberCount(ctx, id); err != nil {
			t.Fatal(err)
		}
	}
	_, err = r.FindOpen(ctx, 1, weekStart, weekEnd)
	if err != repository.ErrNotFound {
		t.Errorf("full cohort must not be returned by FindOpen, got %v", err)
	}
}

func TestCohortRepo_MarkFinished(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewCohortRepository(sharedPool)
	ctx := context.Background()

	id := mkCohort(t, 2, weekStart, weekEnd)
	if err := r.MarkFinished(ctx, id); err != nil {
		t.Fatal(err)
	}
	c, _ := r.GetByID(ctx, id)
	if !c.IsFinished {
		t.Error("expected IsFinished=true")
	}

	// Mark unknown → ErrNotFound.
	if err := r.MarkFinished(ctx, uuid.New()); err != repository.ErrNotFound {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestCohortRepo_ListActiveExpired(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewCohortRepository(sharedPool)
	ctx := context.Background()

	now := time.Date(2026, 5, 20, 0, 0, 0, 0, time.UTC)
	// expired
	id1 := mkCohort(t, 1, weekStart, weekEnd)
	// future
	mkCohort(t, 1,
		time.Date(2026, 5, 25, 0, 0, 0, 0, time.UTC),
		time.Date(2026, 5, 31, 23, 59, 59, 0, time.UTC),
	)
	// expired but finished
	id3 := mkCohort(t, 2, weekStart, weekEnd)
	if err := r.MarkFinished(ctx, id3); err != nil {
		t.Fatal(err)
	}

	list, err := r.ListActiveExpired(ctx, now)
	if err != nil {
		t.Fatal(err)
	}
	if len(list) != 1 || list[0].ID != id1 {
		t.Errorf("expected only id1, got %v", list)
	}
}

func TestCohortRepo_IncrementMemberCount(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewCohortRepository(sharedPool)
	ctx := context.Background()

	id := mkCohort(t, 1, weekStart, weekEnd)
	for i := 0; i < 3; i++ {
		if err := r.IncrementMemberCount(ctx, id); err != nil {
			t.Fatal(err)
		}
	}
	c, _ := r.GetByID(ctx, id)
	if c.MemberCount != 3 {
		t.Errorf("expected member_count=3, got %d", c.MemberCount)
	}
}

// ----------------------------------------------------------------------------
// UserLeagueRepository
// ----------------------------------------------------------------------------

func TestUserLeagueRepo_UpsertAndGet(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	cohortID := mkCohort(t, 1, weekStart, weekEnd)
	r := NewUserLeagueRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()

	ul := &model.UserLeague{UserID: uid, LeagueID: 1, CohortID: cohortID, WeeklyXP: 50}
	if err := r.Upsert(ctx, ul); err != nil {
		t.Fatal(err)
	}
	if ul.JoinedAt.IsZero() {
		t.Error("expected JoinedAt populated")
	}

	got, err := r.Get(ctx, uid)
	if err != nil {
		t.Fatal(err)
	}
	if got.WeeklyXP != 50 || got.LeagueID != 1 || got.CohortID != cohortID {
		t.Errorf("mismatch: %+v", got)
	}
	if got.RankInCohort != nil {
		t.Errorf("rank should be nil initially")
	}
}

func TestUserLeagueRepo_Get_NotFound(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	r := NewUserLeagueRepository(sharedPool)
	_, err := r.Get(context.Background(), uuid.New())
	if err != repository.ErrNotFound {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestUserLeagueRepo_Upsert_UpdatesOnConflict(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	c1 := mkCohort(t, 1, weekStart, weekEnd)
	c2 := mkCohort(t, 2,
		time.Date(2026, 5, 18, 0, 0, 0, 0, time.UTC),
		time.Date(2026, 5, 24, 23, 59, 59, 0, time.UTC),
	)
	r := NewUserLeagueRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()

	_ = r.Upsert(ctx, &model.UserLeague{UserID: uid, LeagueID: 1, CohortID: c1, WeeklyXP: 100})
	_ = r.Upsert(ctx, &model.UserLeague{UserID: uid, LeagueID: 2, CohortID: c2, WeeklyXP: 0})

	got, _ := r.Get(ctx, uid)
	if got.LeagueID != 2 || got.CohortID != c2 || got.WeeklyXP != 0 {
		t.Errorf("expected re-assigned to league=2/cohort=c2/xp=0, got %+v", got)
	}
}

func TestUserLeagueRepo_IncrementWeeklyXP(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	cohortID := mkCohort(t, 1, weekStart, weekEnd)
	r := NewUserLeagueRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()
	_ = r.Upsert(ctx, &model.UserLeague{UserID: uid, LeagueID: 1, CohortID: cohortID})

	for i := 0; i < 4; i++ {
		if err := r.IncrementWeeklyXP(ctx, uid, 25); err != nil {
			t.Fatal(err)
		}
	}
	got, _ := r.Get(ctx, uid)
	if got.WeeklyXP != 100 {
		t.Errorf("expected 100, got %d", got.WeeklyXP)
	}

	if err := r.IncrementWeeklyXP(ctx, uuid.New(), 10); err != repository.ErrNotFound {
		t.Errorf("expected ErrNotFound for unknown user, got %v", err)
	}
}

func TestUserLeagueRepo_UpdateRank(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	cohortID := mkCohort(t, 1, weekStart, weekEnd)
	r := NewUserLeagueRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()
	_ = r.Upsert(ctx, &model.UserLeague{UserID: uid, LeagueID: 1, CohortID: cohortID})

	if err := r.UpdateRank(ctx, uid, 5); err != nil {
		t.Fatal(err)
	}
	got, _ := r.Get(ctx, uid)
	if got.RankInCohort == nil || *got.RankInCohort != 5 {
		t.Errorf("expected rank=5, got %v", got.RankInCohort)
	}
}

func TestUserLeagueRepo_ListByCohort_OrderByXPDesc(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	cohortID := mkCohort(t, 1, weekStart, weekEnd)
	r := NewUserLeagueRepository(sharedPool)
	ctx := context.Background()

	xps := []int{100, 300, 200, 50}
	users := make([]uuid.UUID, len(xps))
	for i, xp := range xps {
		users[i] = uuid.New()
		_ = r.Upsert(ctx, &model.UserLeague{UserID: users[i], LeagueID: 1, CohortID: cohortID, WeeklyXP: xp})
	}

	list, err := r.ListByCohort(ctx, cohortID)
	if err != nil {
		t.Fatal(err)
	}
	if len(list) != 4 {
		t.Fatalf("expected 4, got %d", len(list))
	}
	want := []int{300, 200, 100, 50}
	for i, ul := range list {
		if ul.WeeklyXP != want[i] {
			t.Errorf("position %d: want xp=%d, got %d", i, want[i], ul.WeeklyXP)
		}
	}
}

func TestUserLeagueRepo_ResetWeeklyXPInCohort(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	c1 := mkCohort(t, 1, weekStart, weekEnd)
	c2 := mkCohort(t, 2, weekStart, weekEnd)
	r := NewUserLeagueRepository(sharedPool)
	ctx := context.Background()

	u1, u2 := uuid.New(), uuid.New()
	_ = r.Upsert(ctx, &model.UserLeague{UserID: u1, LeagueID: 1, CohortID: c1, WeeklyXP: 100})
	_ = r.Upsert(ctx, &model.UserLeague{UserID: u2, LeagueID: 2, CohortID: c2, WeeklyXP: 200})
	_ = r.UpdateRank(ctx, u1, 3)

	if err := r.ResetWeeklyXPInCohort(ctx, c1); err != nil {
		t.Fatal(err)
	}
	got1, _ := r.Get(ctx, u1)
	if got1.WeeklyXP != 0 {
		t.Errorf("c1 user xp must be 0, got %d", got1.WeeklyXP)
	}
	if got1.RankInCohort != nil {
		t.Errorf("c1 user rank must be nil after reset, got %v", got1.RankInCohort)
	}
	got2, _ := r.Get(ctx, u2)
	if got2.WeeklyXP != 200 {
		t.Errorf("c2 user must be untouched, got xp=%d", got2.WeeklyXP)
	}
}

// ----------------------------------------------------------------------------
// LeagueHistoryRepository
// ----------------------------------------------------------------------------

func TestHistoryRepo_CreateAndList(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	cohortID := mkCohort(t, 1, weekStart, weekEnd)
	r := NewLeagueHistoryRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()

	h := &model.LeagueHistoryEntry{
		UserID:       uid,
		LeagueID:     1,
		CohortID:     cohortID,
		CycleStartAt: weekStart,
		CycleEndAt:   weekEnd,
		FinalXP:      250,
		FinalRank:    3,
		Promoted:     true,
		GemsEarned:   30,
	}
	if err := r.Create(ctx, h); err != nil {
		t.Fatal(err)
	}

	list, total, err := r.ListByUser(ctx, uid, 10, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 1 || len(list) != 1 {
		t.Fatalf("expected 1 entry, got total=%d len=%d", total, len(list))
	}
	if list[0].FinalRank != 3 || !list[0].Promoted || list[0].GemsEarned != 30 {
		t.Errorf("entry mismatch: %+v", list[0])
	}
}

func TestHistoryRepo_Create_IdempotentOnUserAndCycleStart(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	cohortID := mkCohort(t, 1, weekStart, weekEnd)
	r := NewLeagueHistoryRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()

	h := &model.LeagueHistoryEntry{
		UserID: uid, LeagueID: 1, CohortID: cohortID,
		CycleStartAt: weekStart, CycleEndAt: weekEnd,
		FinalXP: 100, FinalRank: 5,
	}
	for i := 0; i < 3; i++ {
		// Каждый вызов с новым ID — но UNIQUE(user_id, cycle_start_at) защищает.
		h.ID = uuid.Nil
		if err := r.Create(ctx, h); err != nil {
			t.Fatal(err)
		}
	}
	_, total, _ := r.ListByUser(ctx, uid, 10, 0)
	if total != 1 {
		t.Errorf("expected exactly 1 record, got %d", total)
	}
}

func TestHistoryRepo_ListByUser_Pagination(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewLeagueHistoryRepository(sharedPool)
	ctx := context.Background()
	uid := uuid.New()

	for week := 0; week < 5; week++ {
		start := weekStart.AddDate(0, 0, -7*week)
		end := weekEnd.AddDate(0, 0, -7*week)
		cohortID := mkCohort(t, 1, start, end)
		_ = r.Create(ctx, &model.LeagueHistoryEntry{
			UserID: uid, LeagueID: 1, CohortID: cohortID,
			CycleStartAt: start, CycleEndAt: end,
			FinalXP: 100 * (week + 1), FinalRank: 10,
		})
	}

	page1, total, err := r.ListByUser(ctx, uid, 2, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 5 {
		t.Errorf("expected total=5, got %d", total)
	}
	if len(page1) != 2 {
		t.Errorf("page size 2, got %d", len(page1))
	}
	// Sorted desc → самая свежая первая = week=0.
	if !page1[0].CycleStartAt.Equal(weekStart) {
		t.Errorf("expected newest first, got %v", page1[0].CycleStartAt)
	}

	page2, _, _ := r.ListByUser(ctx, uid, 2, 2)
	if len(page2) != 2 {
		t.Errorf("page2 size 2, got %d", len(page2))
	}
	if page2[0].CycleStartAt.Equal(page1[0].CycleStartAt) {
		t.Error("offset must shift the page")
	}
}

func TestHistoryRepo_ListByUser_EmptyResult(t *testing.T) {
	if sharedPool == nil {
		t.Skip("postgres unavailable")
	}
	cleanup(t)
	r := NewLeagueHistoryRepository(sharedPool)
	list, total, err := r.ListByUser(context.Background(), uuid.New(), 10, 0)
	if err != nil {
		t.Fatal(err)
	}
	if total != 0 || len(list) != 0 {
		t.Errorf("expected empty, got %d / %d", total, len(list))
	}
}
