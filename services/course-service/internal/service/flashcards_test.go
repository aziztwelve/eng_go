package service

import (
	"context"
	"testing"
	"time"

	"github.com/elearning/course-service/internal/model"
	"github.com/elearning/course-service/internal/repository"
)

// === fakes ===

// fakeFlashcardRepo — in-memory реализация repository.FlashcardRepository.
type fakeFlashcardRepo struct {
	items   map[string]*model.Flashcard // id → card
	byVocab map[string]string           // userID|vocabID → id
	seq     int
	failNext error
}

func newFakeFlashcardRepo() *fakeFlashcardRepo {
	return &fakeFlashcardRepo{
		items:   map[string]*model.Flashcard{},
		byVocab: map[string]string{},
	}
}

func vocabKey(userID, vocabID string) string { return userID + "|" + vocabID }

func (r *fakeFlashcardRepo) Create(_ context.Context, f *model.Flashcard) error {
	if r.failNext != nil {
		err := r.failNext
		r.failNext = nil
		return err
	}
	if f.VocabularyID != "" {
		if _, ok := r.byVocab[vocabKey(f.UserID, f.VocabularyID)]; ok {
			return repository.ErrFlashcardConflict
		}
	}
	r.seq++
	if f.ID == "" {
		f.ID = "fc-" + time.Now().Format("150405.000000") + "-" + itoa(r.seq)
	}
	f.CreatedAt = time.Now()
	f.UpdatedAt = f.CreatedAt
	cp := *f
	r.items[f.ID] = &cp
	if f.VocabularyID != "" {
		r.byVocab[vocabKey(f.UserID, f.VocabularyID)] = f.ID
	}
	return nil
}

func (r *fakeFlashcardRepo) GetByID(_ context.Context, userID, id string) (*model.Flashcard, error) {
	f, ok := r.items[id]
	if !ok || f.UserID != userID {
		return nil, repository.ErrFlashcardNotFound
	}
	cp := *f
	return &cp, nil
}

func (r *fakeFlashcardRepo) GetByVocabulary(_ context.Context, userID, vocabID string) (*model.Flashcard, error) {
	id, ok := r.byVocab[vocabKey(userID, vocabID)]
	if !ok {
		return nil, repository.ErrFlashcardNotFound
	}
	cp := *r.items[id]
	return &cp, nil
}

func (r *fakeFlashcardRepo) Update(_ context.Context, f *model.Flashcard) error {
	existing, ok := r.items[f.ID]
	if !ok || existing.UserID != f.UserID {
		return repository.ErrFlashcardNotFound
	}
	f.UpdatedAt = time.Now()
	cp := *f
	r.items[f.ID] = &cp
	return nil
}

func (r *fakeFlashcardRepo) Archive(_ context.Context, userID, id string) error {
	f, ok := r.items[id]
	if !ok || f.UserID != userID || f.ArchivedAt != nil {
		return repository.ErrFlashcardNotFound
	}
	now := time.Now()
	f.ArchivedAt = &now
	return nil
}

func (r *fakeFlashcardRepo) List(_ context.Context, f repository.FlashcardListFilters) ([]*model.Flashcard, int, error) {
	var out []*model.Flashcard
	for _, c := range r.items {
		if c.UserID != f.UserID {
			continue
		}
		if !f.IncludeArchived && c.ArchivedAt != nil {
			continue
		}
		if f.Source != "" && c.Source != f.Source {
			continue
		}
		cp := *c
		out = append(out, &cp)
	}
	return out, len(out), nil
}

func (r *fakeFlashcardRepo) BulkCreate(ctx context.Context, items []*model.Flashcard) (int, int, error) {
	created, skipped := 0, 0
	for _, f := range items {
		err := r.Create(ctx, f)
		switch err {
		case nil:
			created++
		case repository.ErrFlashcardConflict:
			skipped++
		default:
			return created, skipped, err
		}
	}
	return created, skipped, nil
}

func (r *fakeFlashcardRepo) Stats(_ context.Context, userID string) (repository.FlashcardStats, error) {
	var s repository.FlashcardStats
	for _, c := range r.items {
		if c.UserID == userID && c.ArchivedAt == nil {
			s.TotalCount++
		}
	}
	return s, nil
}

// itoa — без strconv-импорта в hot-path тестах.
func itoa(n int) string {
	if n == 0 {
		return "0"
	}
	var b []byte
	for n > 0 {
		b = append([]byte{byte('0' + n%10)}, b...)
		n /= 10
	}
	return string(b)
}

// fakeVocabRepo — минимальная заглушка repository.VocabularyRepository.
// Нужна только конструктору flashcardService (для AddVocabularyAsFlashcard
// сервис принимает уже-резолвленный vocab, vocabRepo внутри не вызывается).
type fakeVocabRepo struct{}

func (fakeVocabRepo) Create(context.Context, *model.VocabularyEntry) error { return nil }
func (fakeVocabRepo) GetByID(context.Context, string) (*model.VocabularyEntry, error) {
	return nil, repository.ErrFlashcardNotFound
}
func (fakeVocabRepo) Update(context.Context, *model.VocabularyEntry) error { return nil }
func (fakeVocabRepo) Delete(context.Context, string) error                 { return nil }
func (fakeVocabRepo) List(context.Context, repository.VocabularyListFilters) ([]*model.VocabularyEntry, int, error) {
	return nil, 0, nil
}
func (fakeVocabRepo) BulkCreate(context.Context, []*model.VocabularyEntry) ([]string, int, int, error) {
	return nil, 0, 0, nil
}

func newFlashcardSvc() (*fakeFlashcardRepo, FlashcardService) {
	repo := newFakeFlashcardRepo()
	return repo, NewFlashcardService(repo, fakeVocabRepo{})
}

// === tests ===

func validCard() *model.Flashcard {
	return &model.Flashcard{
		UserID:         "u1",
		Word:           "hello",
		Translation:    "привет",
		Language:       "en",
		TargetLanguage: "ru",
	}
}

func TestCreate_Valid(t *testing.T) {
	_, svc := newFlashcardSvc()
	got, err := svc.Create(context.Background(), validCard())
	if err != nil {
		t.Fatalf("create: %v", err)
	}
	if got.ID == "" {
		t.Fatalf("expected generated id")
	}
	if got.Source != model.FlashcardSourceManual {
		t.Fatalf("expected default source manual, got %q", got.Source)
	}
}

func TestCreate_ValidationErrors(t *testing.T) {
	_, svc := newFlashcardSvc()
	cases := map[string]func(*model.Flashcard){
		"empty user":      func(f *model.Flashcard) { f.UserID = "" },
		"empty word":      func(f *model.Flashcard) { f.Word = "" },
		"empty trans":     func(f *model.Flashcard) { f.Translation = "" },
		"empty lang":      func(f *model.Flashcard) { f.Language = "" },
		"empty target":    func(f *model.Flashcard) { f.TargetLanguage = "" },
		"same lang":       func(f *model.Flashcard) { f.TargetLanguage = "en" },
		"invalid source":  func(f *model.Flashcard) { f.Source = "bogus" },
	}
	for name, mut := range cases {
		t.Run(name, func(t *testing.T) {
			card := validCard()
			mut(card)
			if _, err := svc.Create(context.Background(), card); err == nil {
				t.Fatalf("expected validation error for %s", name)
			}
		})
	}
}

func TestCreate_TrimsAndLowercases(t *testing.T) {
	_, svc := newFlashcardSvc()
	card := validCard()
	card.Word = "  Hello  "
	card.Language = "EN"
	card.TargetLanguage = "RU"
	got, err := svc.Create(context.Background(), card)
	if err != nil {
		t.Fatalf("create: %v", err)
	}
	if got.Word != "Hello" || got.Language != "en" || got.TargetLanguage != "ru" {
		t.Fatalf("trim/lowercase failed: %+v", got)
	}
}

func TestGet_NotFound(t *testing.T) {
	_, svc := newFlashcardSvc()
	if _, err := svc.Get(context.Background(), "u1", "missing"); err == nil {
		t.Fatalf("expected not found")
	}
}

func TestUpdate_RequiresWordTranslation(t *testing.T) {
	repo, svc := newFlashcardSvc()
	card := validCard()
	_ = repo.Create(context.Background(), card)
	card.Word = ""
	if _, err := svc.Update(context.Background(), card); err == nil {
		t.Fatalf("expected error on empty word")
	}
}

func TestArchive_Idempotentish(t *testing.T) {
	repo, svc := newFlashcardSvc()
	card := validCard()
	_ = repo.Create(context.Background(), card)
	if err := svc.Archive(context.Background(), "u1", card.ID); err != nil {
		t.Fatalf("archive: %v", err)
	}
	// Повторный archive → not found (уже архивирован).
	if err := svc.Archive(context.Background(), "u1", card.ID); err == nil {
		t.Fatalf("expected not found on second archive")
	}
}

func TestList_InvalidSourceFilter(t *testing.T) {
	_, svc := newFlashcardSvc()
	_, _, err := svc.List(context.Background(), repository.FlashcardListFilters{
		UserID: "u1",
		Source: "bogus",
	})
	if err == nil {
		t.Fatalf("expected invalid source error")
	}
}

func TestBulkCreate_SkipsDuplicateVocab(t *testing.T) {
	_, svc := newFlashcardSvc()
	mk := func() *model.Flashcard {
		c := validCard()
		c.Source = model.FlashcardSourceAISuggestion
		c.VocabularyID = "v1"
		return c
	}
	created, skipped, err := svc.BulkCreate(context.Background(), []*model.Flashcard{mk(), mk()})
	if err != nil {
		t.Fatalf("bulk: %v", err)
	}
	if created != 1 || skipped != 1 {
		t.Fatalf("expected created=1 skipped=1, got %d/%d", created, skipped)
	}
}

func TestAddVocabularyAsFlashcard_Idempotent(t *testing.T) {
	_, svc := newFlashcardSvc()
	vocab := &model.VocabularyEntry{
		ID:             "v1",
		Word:           "dog",
		Translation:    "собака",
		Language:       "en",
		TargetLanguage: "ru",
	}
	card, created, err := svc.AddVocabularyAsFlashcard(context.Background(), "u1", vocab, "lesson")
	if err != nil {
		t.Fatalf("add: %v", err)
	}
	if !created || card.VocabularyID != "v1" {
		t.Fatalf("expected created card, got created=%v card=%+v", created, card)
	}
	// Повторно → возвращаем existing, created=false.
	_, created2, err := svc.AddVocabularyAsFlashcard(context.Background(), "u1", vocab, "lesson")
	if err != nil {
		t.Fatalf("add2: %v", err)
	}
	if created2 {
		t.Fatalf("expected created=false on dup")
	}
}

func TestAddVocabularyAsFlashcard_RejectsManualSource(t *testing.T) {
	_, svc := newFlashcardSvc()
	vocab := &model.VocabularyEntry{ID: "v1", Word: "x", Translation: "y", Language: "en", TargetLanguage: "ru"}
	if _, _, err := svc.AddVocabularyAsFlashcard(context.Background(), "u1", vocab, "manual"); err == nil {
		t.Fatalf("expected error for manual source")
	}
	if _, _, err := svc.AddVocabularyAsFlashcard(context.Background(), "u1", vocab, ""); err == nil {
		t.Fatalf("expected error for empty source")
	}
}

func TestStats_CountsNonArchived(t *testing.T) {
	repo, svc := newFlashcardSvc()
	c1 := validCard()
	c2 := validCard()
	c2.Word = "bye"
	_ = repo.Create(context.Background(), c1)
	_ = repo.Create(context.Background(), c2)
	_ = repo.Archive(context.Background(), "u1", c2.ID)
	stats, err := svc.Stats(context.Background(), "u1")
	if err != nil {
		t.Fatalf("stats: %v", err)
	}
	if stats.TotalCount != 1 {
		t.Fatalf("expected 1 non-archived, got %d", stats.TotalCount)
	}
}
