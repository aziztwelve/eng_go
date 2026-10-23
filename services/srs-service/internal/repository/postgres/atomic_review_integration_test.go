package postgres_test

import (
	"context"
	"errors"
	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
	"github.com/elearning/srs-service/internal/repository/postgres"
	"github.com/elearning/srs-service/internal/service"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"
	"os"
	"strings"
	"sync"
	"testing"
)

func TestAtomicReviewDatabase(t *testing.T) {
	dsn := os.Getenv("ENG_REVIEW_DATABASE_URL")
	if dsn == "" {
		t.Skip("run scripts/test-track-word-regressions.py")
	}
	cfg, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		t.Fatal(err)
	}
	if cfg.ConnConfig.Host != "127.0.0.1" || !strings.HasPrefix(cfg.ConnConfig.Database, "eng_review_") {
		t.Fatal("requires isolated local review database")
	}
	cfg.ConnConfig.RuntimeParams["search_path"] = "srs"
	ctx := context.Background()
	pool, err := pgxpool.NewWithConfig(ctx, cfg)
	if err != nil {
		t.Fatal(err)
	}
	defer pool.Close()
	svc := service.New(postgres.NewSRSItemRepository(pool), postgres.NewReviewHistoryRepository(pool), nil, nil)
	input := service.RecordReviewInput{UserID: uuid.NewString(), ItemID: uuid.NewString(), ItemType: model.ItemTypeFlashcard, Quality: 5, ResponseTimeMs: 200, AttemptID: uuid.NewString()}
	var wg sync.WaitGroup
	errs := make(chan error, 10)
	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			item, _, err := svc.RecordReview(ctx, input)
			if err == nil && item.TotalReviews != 1 {
				err = errors.New("duplicate review applied")
			}
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
	var count int
	if err = pool.QueryRow(ctx, `SELECT count(*) FROM srs_review_history WHERE user_id=$1`, input.UserID).Scan(&count); err != nil || count != 1 {
		t.Fatalf("history=%d %v", count, err)
	}
	changed := input
	changed.Quality = 2
	if _, _, err = svc.RecordReview(ctx, changed); !errors.Is(err, repository.ErrReviewConflict) {
		t.Fatalf("reused key accepted: %v", err)
	}
	// Android/iOS builds without an attempt ID retain the existing wire behavior.
	input.AttemptID = ""
	item, _, err := svc.RecordReview(ctx, input)
	if err != nil || item.TotalReviews != 2 {
		t.Fatalf("legacy review failed: %+v %v", item, err)
	}
	bank := input
	bank.ItemType = model.ItemTypeVocabularyBank
	bank.ItemID = "A1-VOC-001-001"
	bank.AttemptID = uuid.NewString()
	if item, _, err := svc.RecordReview(ctx, bank); err != nil || item.ItemID != bank.ItemID {
		t.Fatalf("canonical word-bank reference failed: %+v %v", item, err)
	}
	// History failure must roll the schedule back too.
	if _, err = pool.Exec(ctx, `ALTER TABLE srs_review_history ADD CONSTRAINT test_reject_time CHECK(response_time_ms<>987654)`); err != nil {
		t.Fatal(err)
	}
	defer pool.Exec(ctx, `ALTER TABLE srs_review_history DROP CONSTRAINT test_reject_time`)
	input.AttemptID = uuid.NewString()
	input.ResponseTimeMs = 987654
	if _, _, err = svc.RecordReview(ctx, input); err == nil {
		t.Fatal("expected history failure")
	}
	existing, err := postgres.NewSRSItemRepository(pool).GetByKey(ctx, input.UserID, input.ItemType, input.ItemID)
	if err != nil || existing.TotalReviews != 2 {
		t.Fatalf("partial commit: %+v %v", existing, err)
	}
}
