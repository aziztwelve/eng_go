package service

import (
	"context"
	"testing"
)

// SuggestFlashcards не использует deps Service → можно вызывать на пустом.
func newSuggestSvc() *Service { return &Service{} }

func TestSuggest_DefaultCountAndLevel(t *testing.T) {
	svc := newSuggestSvc()
	items, exhausted, err := svc.SuggestFlashcards(context.Background(), SuggestFlashcardsInput{
		UserID:         "u1",
		TargetLanguage: "en",
		// level/goal пустые → a2/general fallback
	})
	if err != nil {
		t.Fatalf("suggest: %v", err)
	}
	if len(items) != 5 {
		t.Fatalf("expected default 5 items, got %d", len(items))
	}
	_ = exhausted
}

func TestSuggest_RequiresUserID(t *testing.T) {
	svc := newSuggestSvc()
	if _, _, err := svc.SuggestFlashcards(context.Background(), SuggestFlashcardsInput{}); err == nil {
		t.Fatalf("expected error for empty user_id")
	}
}

func TestSuggest_CountClamp(t *testing.T) {
	svc := newSuggestSvc()
	items, _, err := svc.SuggestFlashcards(context.Background(), SuggestFlashcardsInput{
		UserID:         "u1",
		TargetLanguage: "en",
		Level:          "a2",
		Goal:           "work",
		Count:          50, // > 10 → clamp to 10, но в пуле может быть < 10
	})
	if err != nil {
		t.Fatalf("suggest: %v", err)
	}
	if len(items) > 10 {
		t.Fatalf("expected ≤10 items, got %d", len(items))
	}
}

func TestSuggest_ExcludeWords(t *testing.T) {
	svc := newSuggestSvc()
	in := SuggestFlashcardsInput{
		UserID:         "u1",
		TargetLanguage: "en",
		Level:          "a2",
		Goal:           "work",
		Count:          3,
	}
	first, _, _ := svc.SuggestFlashcards(context.Background(), in)
	if len(first) == 0 {
		t.Fatalf("expected items")
	}
	excluded := first[0].Word
	in.ExcludeWords = []string{excluded}
	second, _, _ := svc.SuggestFlashcards(context.Background(), in)
	for _, c := range second {
		if c.Word == excluded {
			t.Fatalf("excluded word %q still present", excluded)
		}
	}
}

func TestSuggest_UnsupportedTargetIsExhausted(t *testing.T) {
	svc := newSuggestSvc()
	items, exhausted, err := svc.SuggestFlashcards(context.Background(), SuggestFlashcardsInput{
		UserID:         "u1",
		TargetLanguage: "es", // нет пула → empty + exhausted
		Count:          5,
	})
	if err != nil {
		t.Fatalf("suggest: %v", err)
	}
	if len(items) != 0 || !exhausted {
		t.Fatalf("expected empty+exhausted for unsupported target, got %d items exhausted=%v", len(items), exhausted)
	}
}

func TestSuggest_Deterministic(t *testing.T) {
	svc := newSuggestSvc()
	in := SuggestFlashcardsInput{UserID: "u1", TargetLanguage: "en", Level: "b1", Goal: "travel", Count: 4}
	a, _, _ := svc.SuggestFlashcards(context.Background(), in)
	b, _, _ := svc.SuggestFlashcards(context.Background(), in)
	if len(a) != len(b) {
		t.Fatalf("non-deterministic length %d vs %d", len(a), len(b))
	}
	for i := range a {
		if a[i].Word != b[i].Word {
			t.Fatalf("non-deterministic order at %d: %q vs %q", i, a[i].Word, b[i].Word)
		}
	}
}
