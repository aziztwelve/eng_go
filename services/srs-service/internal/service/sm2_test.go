package service

import (
	"math"
	"testing"
	"time"

	"github.com/elearning/srs-service/internal/model"
)

func newFreshItem() *model.SRSItem {
	return &model.SRSItem{
		EasinessFactor: model.DefaultEasinessFactor,
		IntervalDays:   0,
		Repetitions:    0,
	}
}

// TestItemType_FlashcardValid — Phase 7: 'flashcard' — допустимый item_type
// (полиморфизм SRS-карточек). Сверяется CHECK миграции srs 000005.
func TestItemType_FlashcardValid(t *testing.T) {
	if !model.ItemTypeFlashcard.IsValid() {
		t.Fatalf("expected flashcard item_type to be valid")
	}
	if model.ItemType("bogus").IsValid() {
		t.Fatalf("unexpected: bogus item_type valid")
	}
}

// TestSM2_FlashcardItem_Polymorphic — SM-2 работает идентично для
// item_type='flashcard', как и для vocabulary/step (алгоритм
// type-agnostic).
func TestSM2_FlashcardItem_Polymorphic(t *testing.T) {
	item := newFreshItem()
	item.ItemType = model.ItemTypeFlashcard
	item.ItemID = "user-flashcard-1"
	now := time.Date(2025, 1, 1, 12, 0, 0, 0, time.UTC)

	ApplySM2(item, 5, 3000, now)

	if item.IntervalDays != 1 || item.Repetitions != 1 {
		t.Fatalf("expected interval=1 reps=1 for flashcard, got %d/%d",
			item.IntervalDays, item.Repetitions)
	}
	if item.ItemType != model.ItemTypeFlashcard {
		t.Fatalf("item_type должен остаться flashcard, got %q", item.ItemType)
	}
}

func TestSM2_FirstReview_Correct(t *testing.T) {
	item := newFreshItem()
	now := time.Date(2025, 1, 1, 12, 0, 0, 0, time.UTC)

	ApplySM2(item, 5, 3000, now)

	if item.IntervalDays != 1 {
		t.Errorf("expected interval=1, got %d", item.IntervalDays)
	}
	if item.Repetitions != 1 {
		t.Errorf("expected reps=1, got %d", item.Repetitions)
	}
	if item.EasinessFactor <= model.DefaultEasinessFactor {
		t.Errorf("expected EF > 2.5 for q=5, got %v", item.EasinessFactor)
	}
	if item.TotalReviews != 1 || item.CorrectReviews != 1 {
		t.Errorf("expected (total=1, correct=1), got (%d, %d)", item.TotalReviews, item.CorrectReviews)
	}
	if !item.NextReviewAt.Equal(now.AddDate(0, 0, 1)) {
		t.Errorf("expected next_review_at = now+1d, got %v", item.NextReviewAt)
	}
}

func TestSM2_SecondReview_Correct(t *testing.T) {
	item := newFreshItem()
	now := time.Date(2025, 1, 1, 12, 0, 0, 0, time.UTC)
	ApplySM2(item, 5, 3000, now)
	// День 2 — корректно.
	ApplySM2(item, 4, 5000, now.AddDate(0, 0, 1))

	if item.IntervalDays != 6 {
		t.Errorf("expected interval=6 после второй правильной попытки, got %d", item.IntervalDays)
	}
	if item.Repetitions != 2 {
		t.Errorf("expected reps=2, got %d", item.Repetitions)
	}
}

func TestSM2_ThirdReview_UsesEF(t *testing.T) {
	item := newFreshItem()
	now := time.Date(2025, 1, 1, 12, 0, 0, 0, time.UTC)
	ApplySM2(item, 5, 3000, now)
	ApplySM2(item, 5, 3000, now.AddDate(0, 0, 1))
	efBefore := item.EasinessFactor
	ApplySM2(item, 5, 3000, now.AddDate(0, 0, 7))

	// I = round(6 * EF_prev)
	expected := int32(math.Round(6 * efBefore))
	if item.IntervalDays != expected {
		t.Errorf("expected interval=%d (6 * EF=%v), got %d", expected, efBefore, item.IntervalDays)
	}
	if item.Repetitions != 3 {
		t.Errorf("expected reps=3, got %d", item.Repetitions)
	}
}

func TestSM2_FailResetsReps(t *testing.T) {
	item := &model.SRSItem{
		EasinessFactor: 2.8,
		IntervalDays:   92,
		Repetitions:    5,
		TotalReviews:   5,
		CorrectReviews: 5,
	}
	now := time.Now().UTC()

	ApplySM2(item, 0, 30000, now)

	if item.Repetitions != 0 {
		t.Errorf("expected reps=0 after q=0, got %d", item.Repetitions)
	}
	if item.IntervalDays != 1 {
		t.Errorf("expected interval=1 after q=0, got %d", item.IntervalDays)
	}
	if item.IncorrectReviews != 1 {
		t.Errorf("expected incorrect_reviews=1, got %d", item.IncorrectReviews)
	}
	if item.EasinessFactor < model.MinEasinessFactor {
		t.Errorf("EF must stay >= 1.3, got %v", item.EasinessFactor)
	}
}

func TestSM2_EFFloor(t *testing.T) {
	// Серия плохих ответов должна опустить EF до пола 1.3 и удерживать.
	item := newFreshItem()
	now := time.Date(2025, 1, 1, 12, 0, 0, 0, time.UTC)
	for i := 0; i < 20; i++ {
		ApplySM2(item, 0, 30000, now.AddDate(0, 0, i))
	}
	if item.EasinessFactor < model.MinEasinessFactor-1e-9 {
		t.Errorf("EF упал ниже пола: %v", item.EasinessFactor)
	}
	if math.Abs(item.EasinessFactor-model.MinEasinessFactor) > 1e-6 {
		t.Errorf("EF должно быть ровно %v (floor), got %v", model.MinEasinessFactor, item.EasinessFactor)
	}
}

func TestSM2_StrengthGrowsWithSuccess(t *testing.T) {
	item := newFreshItem()
	now := time.Date(2025, 1, 1, 12, 0, 0, 0, time.UTC)

	prev := 0.0
	for i := 0; i < 10; i++ {
		ApplySM2(item, 5, 3000, now.AddDate(0, 0, i))
		if item.Strength < prev {
			t.Errorf("strength упало с %v до %v на шаге %d", prev, item.Strength, i)
		}
		prev = item.Strength
	}
	if item.Strength < 0.99 {
		t.Errorf("после 10 правильных ответов strength должно быть ≥ 0.99, got %v", item.Strength)
	}
}

func TestSM2_StrengthClamped(t *testing.T) {
	item := newFreshItem()
	now := time.Now().UTC()
	for i := 0; i < 50; i++ {
		ApplySM2(item, 5, 3000, now.AddDate(0, 0, i))
		if item.Strength > 1.0+1e-9 || item.Strength < 0 {
			t.Errorf("strength out of [0,1]: %v", item.Strength)
		}
	}
}

func TestSM2_QualityClamps(t *testing.T) {
	item := newFreshItem()
	now := time.Now().UTC()
	ApplySM2(item, 99, 3000, now)
	// q=99 ↔ q=5 ↔ всё как при отличном ответе.
	if item.IntervalDays != 1 || item.Repetitions != 1 {
		t.Errorf("q=99 (clamped to 5) → expected interval=1 reps=1, got (%d, %d)", item.IntervalDays, item.Repetitions)
	}

	item2 := newFreshItem()
	ApplySM2(item2, -5, 3000, now)
	// q=-5 ↔ q=0
	if item2.IncorrectReviews != 1 {
		t.Errorf("q=-5 (clamped to 0) → expected incorrect=1, got %d", item2.IncorrectReviews)
	}
}

func TestSM2_AvgResponseTime(t *testing.T) {
	item := newFreshItem()
	now := time.Now().UTC()

	ApplySM2(item, 5, 2000, now)
	if item.AvgResponseTimeMs != 2000 {
		t.Errorf("expected avg=2000 after first review, got %d", item.AvgResponseTimeMs)
	}
	ApplySM2(item, 5, 4000, now.AddDate(0, 0, 1))
	// (2000 + (4000-2000)/2) = 3000
	if item.AvgResponseTimeMs != 3000 {
		t.Errorf("expected avg=3000 after 2 reviews, got %d", item.AvgResponseTimeMs)
	}
}

func TestCalculateQuality_IncorrectCases(t *testing.T) {
	if q := CalculateQuality(false, 5000, false, 0); q != 1 {
		t.Errorf("first wrong attempt → q=1, got %d", q)
	}
	if q := CalculateQuality(false, 5000, false, 2); q != 0 {
		t.Errorf("repeated wrong → q=0, got %d", q)
	}
}

func TestCalculateQuality_CorrectFast(t *testing.T) {
	if q := CalculateQuality(true, 3000, false, 0); q != 5 {
		t.Errorf("fast first correct → q=5, got %d", q)
	}
}

func TestCalculateQuality_CorrectSlow(t *testing.T) {
	if q := CalculateQuality(true, 15000, false, 0); q != 4 {
		t.Errorf("medium-slow correct → q=4, got %d", q)
	}
	if q := CalculateQuality(true, 25000, false, 0); q != 3 {
		t.Errorf("very slow correct → q=3, got %d", q)
	}
}

func TestCalculateQuality_CorrectWithHint(t *testing.T) {
	if q := CalculateQuality(true, 3000, true, 0); q != 3 {
		t.Errorf("correct с подсказкой → q=3, got %d", q)
	}
}

func TestCalculateQuality_CorrectAfterMistake(t *testing.T) {
	if q := CalculateQuality(true, 3000, false, 1); q != 3 {
		t.Errorf("correct со 2-й попытки → q=3, got %d", q)
	}
	if q := CalculateQuality(true, 3000, false, 3); q != 3 {
		t.Errorf("correct после нескольких ошибок → q=3, got %d", q)
	}
}

func TestCalculateQuality_NeverBelow3WhenCorrect(t *testing.T) {
	// Случай: с подсказкой + 25 секунд + второй раз. Не должно быть < 3.
	if q := CalculateQuality(true, 25000, true, 1); q < 3 {
		t.Errorf("correct quality must never go below 3, got %d", q)
	}
}
