package service

import (
	"context"
	"testing"
	"time"

	"github.com/elearning/platform/pkg/logger"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

func init() {
	// SRS noop-клиент пишет в глобальный logger — без инициализации он nil.
	logger.InitForBenchmark()
}

// fakeVocabBankListRepo подменяет только List: остальное не нужно для тестов
// фильтров/валидации ListVocabularyBank.
type fakeVocabBankListRepo struct {
	gotFilters repository.VocabularyBankListFilters
	entries    []model.VocabularyBankWordSummary
}

func (r *fakeVocabBankListRepo) List(_ context.Context, f repository.VocabularyBankListFilters) ([]model.VocabularyBankWordSummary, int, error) {
	r.gotFilters = f
	return r.entries, len(r.entries), nil
}

func (r *fakeVocabBankListRepo) GetByExternalID(_ context.Context, _, _ string) (*model.VocabularyBankWordDetail, error) {
	return &model.VocabularyBankWordDetail{}, nil
}

// fakeVocabBankProgressRepo — in-memory VocabularyBankProgressRepository.
type fakeVocabBankProgressRepo struct {
	progress      map[string]*model.VocabularyBankProgress // key: userID|externalID
	recorded      []model.VocabularyBankAttempt
	recordErr     error
	gotFeedUserID string
	gotFeedFlt    repository.VocabularyBankFeedFilters
}

func newFakeVocabBankProgressRepo() *fakeVocabBankProgressRepo {
	return &fakeVocabBankProgressRepo{progress: map[string]*model.VocabularyBankProgress{}}
}

func vbProgressKey(userID, externalID string) string { return userID + "|" + externalID }

func (r *fakeVocabBankProgressRepo) GetProgress(_ context.Context, userID, externalID string) (*model.VocabularyBankProgress, error) {
	if p, ok := r.progress[vbProgressKey(userID, externalID)]; ok {
		return p, nil
	}
	return &model.VocabularyBankProgress{ExternalID: externalID, CurrentStep: 1}, nil
}

func (r *fakeVocabBankProgressRepo) RecordAttempt(_ context.Context, attempt model.VocabularyBankAttempt) (*model.VocabularyBankProgress, error) {
	if r.recordErr != nil {
		return nil, r.recordErr
	}
	r.recorded = append(r.recorded, attempt)
	key := vbProgressKey(attempt.UserID, attempt.ExternalID)
	existing, ok := r.progress[key]
	if !ok {
		existing = &model.VocabularyBankProgress{ExternalID: attempt.ExternalID, CurrentStep: 1}
		r.progress[key] = existing
	}
	// Имитация SQL-логики: завершение на шаге 15 при is_correct.
	if attempt.Step >= 15 && attempt.IsCorrect && existing.CompletedAt == nil {
		now := time.Now()
		existing.CompletedAt = &now
		existing.JustCompleted = true
	} else {
		existing.JustCompleted = false
		if attempt.Step < 15 && attempt.Step >= existing.CurrentStep {
			existing.CurrentStep = attempt.Step + 1
		}
	}
	existing.LastActivityAt = time.Now()
	return existing, nil
}

func (r *fakeVocabBankProgressRepo) ListFeed(_ context.Context, userID string, f repository.VocabularyBankFeedFilters) (*model.VocabularyBankFeed, error) {
	r.gotFeedUserID = userID
	r.gotFeedFlt = f
	return &model.VocabularyBankFeed{}, nil
}

func newVocabBankSvc(listRepo repository.VocabularyBankRepository, progress repository.VocabularyBankProgressRepository) VocabularyBankService {
	return NewVocabularyBankService(listRepo, progress, nil)
}

func TestVocabularyBankList_PassesUserID(t *testing.T) {
	listRepo := &fakeVocabBankListRepo{entries: []model.VocabularyBankWordSummary{{ExternalID: "w1"}}}
	svc := newVocabBankSvc(listRepo, newFakeVocabBankProgressRepo())

	if _, _, err := svc.List(context.Background(), repository.VocabularyBankListFilters{
		CEFRLevel: "A1", Locale: "ru", UserID: "u1",
	}); err != nil {
		t.Fatalf("List: %v", err)
	}
	if listRepo.gotFilters.UserID != "u1" {
		t.Fatalf("expected UserID u1 to reach repo, got %q", listRepo.gotFilters.UserID)
	}
}

func TestVocabularyBankList_InvalidLevel(t *testing.T) {
	svc := newVocabBankSvc(&fakeVocabBankListRepo{}, newFakeVocabBankProgressRepo())
	if _, _, err := svc.List(context.Background(), repository.VocabularyBankListFilters{CEFRLevel: "X9"}); err == nil {
		t.Fatal("expected error for invalid CEFR level")
	}
}

func TestVocabularyBankRecordAttempt_JustCompletedFlag(t *testing.T) {
	progress := newFakeVocabBankProgressRepo()
	svc := newVocabBankSvc(&fakeVocabBankListRepo{}, progress)

	// Шаги до 15: JustCompleted всегда false.
	for step := 1; step < 15; step++ {
		p, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{
			UserID: "u1", ExternalID: "w1", Step: step, IsCorrect: true, Score: 100,
		})
		if err != nil {
			t.Fatalf("step %d: %v", step, err)
		}
		if p.JustCompleted {
			t.Fatalf("step %d: unexpected JustCompleted before step 15", step)
		}
	}

	p, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{
		UserID: "u1", ExternalID: "w1", Step: 15, IsCorrect: true, Score: 100,
	})
	if err != nil {
		t.Fatalf("final step: %v", err)
	}
	if !p.JustCompleted {
		t.Fatal("expected JustCompleted=true on completing attempt")
	}

	// Повтор шага 15 — XP повторно начислять нельзя.
	p2, err := svc.RecordAttempt(context.Background(), model.VocabularyBankAttempt{
		UserID: "u1", ExternalID: "w1", Step: 15, IsCorrect: true, Score: 100,
	})
	if err != nil {
		t.Fatalf("repeat: %v", err)
	}
	if p2.JustCompleted {
		t.Fatal("JustCompleted must be false on repeated step-15 attempt")
	}
}

func TestVocabularyBankRecordAttempt_Validation(t *testing.T) {
	svc := newVocabBankSvc(&fakeVocabBankListRepo{}, newFakeVocabBankProgressRepo())
	cases := []model.VocabularyBankAttempt{
		{UserID: "", ExternalID: "w1", Step: 1},
		{UserID: "u1", ExternalID: "", Step: 1},
		{UserID: "u1", ExternalID: "w1", Step: 0},
		{UserID: "u1", ExternalID: "w1", Step: 16},
		{UserID: "u1", ExternalID: "w1", Step: 1, Score: 101},
	}
	for i, attempt := range cases {
		if _, err := svc.RecordAttempt(context.Background(), attempt); err == nil {
			t.Fatalf("case %d: expected validation error", i)
		}
	}
}

func TestVocabularyBankFeed_NormalizesLimits(t *testing.T) {
	progress := newFakeVocabBankProgressRepo()
	svc := newVocabBankSvc(&fakeVocabBankListRepo{}, progress)

	if _, err := svc.ListFeed(context.Background(), "u1", repository.VocabularyBankFeedFilters{
		NewLimit: 500, InProgressLimit: -3, Locale: "",
	}); err != nil {
		t.Fatalf("ListFeed: %v", err)
	}
	if progress.gotFeedFlt.NewLimit != 5 || progress.gotFeedFlt.InProgressLimit != 5 {
		t.Fatalf("expected normalized limits 5/5, got %d/%d", progress.gotFeedFlt.NewLimit, progress.gotFeedFlt.InProgressLimit)
	}
	if progress.gotFeedFlt.Locale != "en" {
		t.Fatalf("expected default locale en, got %q", progress.gotFeedFlt.Locale)
	}
	if progress.gotFeedUserID != "u1" {
		t.Fatalf("expected userID u1, got %q", progress.gotFeedUserID)
	}
}
