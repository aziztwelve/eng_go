package postgres

import (
	"context"
	"encoding/json"
	"fmt"
	"os"
	"strings"
	"sync"
	"testing"

	"github.com/elearning/course-service/internal/model"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"
)

// Run only against a disposable local database, never the production DSN.
func TestVocabularyBankDatabase(t *testing.T) {
	dsn := os.Getenv("VOCABULARY_TEST_DATABASE_URL")
	if dsn == "" {
		t.Skip("set VOCABULARY_TEST_DATABASE_URL to a disposable local database")
	}
	ctx := context.Background()
	check, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		t.Fatal(err)
	}
	if check.ConnConfig.Host != "127.0.0.1" && check.ConnConfig.Host != "localhost" && !strings.HasPrefix(check.ConnConfig.Host, "/tmp/") {
		t.Fatal("integration tests require a disposable local database")
	}
	pool, err := pgxpool.New(ctx, dsn)
	if err != nil {
		t.Fatal(err)
	}
	defer pool.Close()
	schema := "vb_test_" + strings.ReplaceAll(uuid.NewString(), "-", "")
	if _, err := pool.Exec(ctx, "CREATE SCHEMA "+schema); err != nil {
		t.Fatal(err)
	}
	defer pool.Exec(ctx, "DROP SCHEMA "+schema+" CASCADE")
	if _, err := pool.Exec(ctx, `CREATE EXTENSION IF NOT EXISTS pgcrypto`); err != nil {
		t.Fatal(err)
	}
	if _, err := pool.Exec(ctx, `CREATE FUNCTION `+schema+`.update_updated_at_column() RETURNS trigger AS $$ BEGIN NEW.updated_at=NOW(); RETURN NEW; END; $$ LANGUAGE plpgsql`); err != nil {
		t.Fatal(err)
	}
	for _, name := range []string{"000033_create_vocabulary_bank.up.sql", "000034_create_user_vocabulary_bank_progress.up.sql", "000036_vocabulary_attempt_idempotency.up.sql"} {
		raw, err := os.ReadFile("../../../migrations/" + name)
		if err != nil {
			t.Fatal(err)
		}
		sql := strings.ReplaceAll(string(raw), "SET search_path TO courses;", "SET search_path TO "+schema+",public;")
		sql = strings.ReplaceAll(sql, "public.update_updated_at_column", schema+".update_updated_at_column")
		if _, err := pool.Exec(ctx, sql); err != nil {
			t.Fatalf("%s: %v", name, err)
		}
	}
	cfg, err := pgxpool.ParseConfig(dsn)
	if err != nil {
		t.Fatal(err)
	}
	cfg.ConnConfig.RuntimeParams["search_path"] = schema + ",public"
	scoped, err := pgxpool.NewWithConfig(ctx, cfg)
	if err != nil {
		t.Fatal(err)
	}
	defer scoped.Close()
	_, err = scoped.Exec(ctx, `INSERT INTO vocabulary_bank_words(external_id,schema_version,source_batch,word,lemma,meaning,part_of_speech,cefr_level,translation_key,content_checksum) VALUES('ACTION','2',1,'ACTION','action','something done','noun','A1','action','test');
 INSERT INTO vocabulary_bank_activities(word_id,step,activity_type,instruction,payload) SELECT w.id,n,'word_match','Choose','{}' FROM vocabulary_bank_words w CROSS JOIN generate_series(1,15)n;`)
	if err != nil {
		t.Fatal(err)
	}
	repo := NewVocabularyBankRepository(scoped)
	user := uuid.NewString()
	attempt := func(step int, correct bool, id string) model.VocabularyBankAttempt {
		return model.VocabularyBankAttempt{UserID: user, ExternalID: "ACTION", Step: step, IsCorrect: correct, Score: 0, ClientAttemptID: id, Answer: json.RawMessage(`{"value":"ACTION"}`)}
	}
	wrong := attempt(1, false, uuid.NewString())
	p, err := repo.RecordAttempt(ctx, wrong)
	if err != nil || p.CurrentStep != 1 {
		t.Fatalf("first wrong answer: %v %v", p, err)
	}
	if _, err := repo.RecordAttempt(ctx, attempt(15, true, uuid.NewString())); err == nil {
		t.Fatal("skipped steps accepted")
	}
	if _, err := repo.RecordAttempt(ctx, attempt(15, true, "")); err == nil {
		t.Fatal("legacy client skipped unopened steps")
	}
	// Many identical retries must produce exactly one attempt and one transition.
	first := attempt(1, true, uuid.NewString())
	var wg sync.WaitGroup
	for i := 0; i < 8; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			if _, err := repo.RecordAttempt(ctx, first); err != nil {
				t.Error(err)
			}
		}()
	}
	wg.Wait()
	var count int
	if err := scoped.QueryRow(ctx, `SELECT COUNT(*) FROM user_vocabulary_activity_attempts WHERE client_attempt_id=$1`, first.ClientAttemptID).Scan(&count); err != nil || count != 1 {
		t.Fatalf("duplicate count=%d err=%v", count, err)
	}
	replay := first
	replay.IsCorrect = false
	if p, err := repo.RecordAttempt(ctx, replay); err != nil || !p.Replayed || !p.IsCorrect || !p.CanAdvance {
		t.Fatalf("retry must restore stored result: %v %v", p, err)
	}
	altered := first
	altered.Answer = json.RawMessage(`{"value":"ACTOR"}`)
	if _, err := repo.RecordAttempt(ctx, altered); err == nil {
		t.Fatal("reused id with changed answer accepted")
	}
	practice := attempt(2, false, uuid.NewString())
	practice.CanAdvance = true
	practice.AssessmentMode = "practice"
	if p, err := repo.RecordAttempt(ctx, practice); err != nil || p.CurrentStep != 3 {
		t.Fatalf("practice did not advance: %v %v", p, err)
	}
	var practiceCorrect bool
	var practiceScore int
	var mode string
	if err := scoped.QueryRow(ctx, `SELECT is_correct,score,assessment_mode FROM user_vocabulary_activity_attempts WHERE client_attempt_id=$1`, practice.ClientAttemptID).Scan(&practiceCorrect, &practiceScore, &mode); err != nil || practiceCorrect || practiceScore != 0 || mode != "practice" {
		t.Fatalf("practice was incorrectly graded: %v %d %s %v", practiceCorrect, practiceScore, mode, err)
	}
	for step := 3; step < 15; step++ {
		if _, err := repo.RecordAttempt(ctx, attempt(step, true, uuid.NewString())); err != nil {
			t.Fatalf("step %d: %v", step, err)
		}
	}
	// Concurrent final submissions may award the first-completion hook once only.
	completions := make(chan bool, 8)
	for i := 0; i < 8; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()
			p, err := repo.RecordAttempt(ctx, attempt(15, true, uuid.NewString()))
			if err != nil {
				t.Error(err)
				return
			}
			completions <- p.JustCompleted
		}()
	}
	wg.Wait()
	close(completions)
	count = 0
	for completed := range completions {
		if completed {
			count++
		}
	}
	if count != 1 {
		t.Fatal(fmt.Sprintf("completion events=%d, want 1", count))
	}
}
