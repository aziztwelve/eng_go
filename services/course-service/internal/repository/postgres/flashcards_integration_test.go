package postgres

import (
	"context"
	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"
	"os"
	"strings"
	"sync"
	"testing"
	"time"
)

func reviewTestPool(t *testing.T) *pgxpool.Pool {
	t.Helper()
	dsn := os.Getenv("ENG_REVIEW_DATABASE_URL")
	if dsn == "" {
		t.Skip("run scripts/test-track-word-regressions.py against its disposable local database")
	}
	cfg, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		t.Fatal(err)
	}
	if cfg.ConnConfig.Host != "127.0.0.1" || !strings.HasPrefix(cfg.ConnConfig.Database, "eng_review_") {
		t.Fatal("requires isolated local review database")
	}
	cfg.ConnConfig.RuntimeParams["search_path"] = "courses"
	pool, err := pgxpool.NewWithConfig(context.Background(), cfg)
	if err != nil {
		t.Fatal(err)
	}
	t.Cleanup(pool.Close)
	return pool
}
func TestFlashcardDatabaseConcurrencyAndProjection(t *testing.T) {
	pool := reviewTestPool(t)
	ctx := context.Background()
	repo := NewFlashcardRepository(pool)
	owner := uuid.NewString()
	vocab := uuid.NewString()
	if _, err := pool.Exec(ctx, `INSERT INTO vocabulary(id) VALUES($1)`, vocab); err != nil {
		t.Fatal(err)
	}
	mk := func() *model.Flashcard {
		return &model.Flashcard{UserID: owner, Source: "lesson", VocabularyID: vocab, Word: "action", Translation: "действие", Language: "en", TargetLanguage: "ru"}
	}
	// Competing batches, including duplicate entries within each batch, must commit.
	var wg sync.WaitGroup
	errs := make(chan error, 8)
	for i := 0; i < 8; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			_, _, err := repo.BulkCreate(ctx, []*model.Flashcard{mk(), mk()})
			errs <- err
		}()
	}
	wg.Wait()
	close(errs)
	for err := range errs {
		if err != nil {
			t.Fatal(err)
		}
	}
	cards, total, err := repo.List(ctx, repository.FlashcardListFilters{UserID: owner})
	if err != nil || total != 1 {
		t.Fatalf("duplicate batch: total=%d err=%v", total, err)
	}
	card := cards[0]
	// Existing APKs send no canonical vocabulary ID. Different definitions remain distinct.
	inline := mk()
	inline.VocabularyID = ""
	inline.Word = "park"
	inline.Translation = "парк"
	for i := 0; i < 2; i++ {
		created, _, err := repo.BulkCreate(ctx, []*model.Flashcard{inline})
		if err != nil {
			t.Fatal(err)
		}
		if i == 1 && created != 0 {
			t.Fatal("inline duplicate inserted")
		}
	}
	other := *inline
	other.ID = ""
	other.Definition = "another sense"
	if made, _, err := repo.BulkCreate(ctx, []*model.Flashcard{&other}); err != nil || made != 1 {
		t.Fatalf("different sense lost: %d %v", made, err)
	}
	if _, err := pool.Exec(ctx, `INSERT INTO srs.user_srs_items(user_id,item_type,item_id,strength,repetitions,last_reviewed_at,next_review_at,total_reviews) VALUES($1,'flashcard',$2,0.9,10,NOW(),NOW()+interval '5 days',10)`, owner, card.ID); err != nil {
		t.Fatal(err)
	}
	queue := NewTodayQueueRepository(pool)
	now := time.Now().UTC()
	day := time.Date(now.Year(), now.Month(), now.Day(), 0, 0, 0, 0, time.UTC)
	if _, err := queue.Pin(ctx, owner, card.ID, day); err != nil {
		t.Fatal(err)
	}
	loaded, err := repo.GetByID(ctx, owner, card.ID)
	if err != nil || loaded.Strength == nil || *loaded.Strength != 0.9 {
		t.Fatalf("SRS projection missing: %+v %v", loaded, err)
	}
	stats, err := repo.Stats(ctx, owner)
	if err != nil || stats.TotalCount != 3 || stats.MasteredCount != 1 || stats.TodayCompleted != 1 || stats.TodayDue != 1 || stats.TodayRemaining != 0 {
		t.Fatalf("bad stats: %+v %v", stats, err)
	}
	// A selected unreviewed card remains due even after reviewing another card.
	var unreviewedID string
	if err := pool.QueryRow(ctx, `SELECT id FROM courses.user_flashcards WHERE user_id=$1 AND word='park' AND COALESCE(definition,'')=''`, owner).Scan(&unreviewedID); err != nil {
		t.Fatal(err)
	}
	if _, err := queue.Pin(ctx, owner, unreviewedID, day); err != nil {
		t.Fatal(err)
	}
	stats, err = repo.Stats(ctx, owner)
	if err != nil || stats.TodayDue != 2 || stats.TodayCompleted != 1 || stats.TodayRemaining != 1 {
		t.Fatalf("selected/reviewed intersection wrong: %+v %v", stats, err)
	}
	if _, err := queue.Unpin(ctx, owner, unreviewedID, day); err != nil {
		t.Fatal(err)
	}
	pinned, err := queue.ListForDate(ctx, owner, day)
	if err != nil || len(pinned) != 1 || pinned[0].NextReviewAt == nil {
		t.Fatalf("old pinned queue contract changed: %+v %v", pinned, err)
	}
	if err := repo.Archive(ctx, owner, card.ID); err != nil {
		t.Fatal(err)
	}
	stats, err = repo.Stats(ctx, owner)
	if err != nil || stats.MasteredCount != 0 || stats.TodayCompleted != 0 {
		t.Fatalf("archived counted: %+v %v", stats, err)
	}
}
