package service

import (
	"context"
	"testing"
	"time"

	"github.com/elearning/course-service/internal/model"
)

// fakeTodayQueueRepo — in-memory repository.TodayQueueRepository.
type fakeTodayQueueRepo struct {
	// key: userID|flashcardID|date → addedAt
	pins     map[string]time.Time
	pinErr   error
}

func newFakeTodayQueueRepo() *fakeTodayQueueRepo {
	return &fakeTodayQueueRepo{pins: map[string]time.Time{}}
}

func tqKey(u, f string, d time.Time) string {
	return u + "|" + f + "|" + d.Format("2006-01-02")
}

func (r *fakeTodayQueueRepo) Pin(_ context.Context, userID, flashcardID string, date time.Time) (time.Time, error) {
	if r.pinErr != nil {
		return time.Time{}, r.pinErr
	}
	k := tqKey(userID, flashcardID, date)
	if at, ok := r.pins[k]; ok {
		return at, nil // идемпотентно: возвращаем существующий added_at
	}
	at := time.Now()
	r.pins[k] = at
	return at, nil
}

func (r *fakeTodayQueueRepo) Unpin(_ context.Context, userID, flashcardID string, date time.Time) (bool, error) {
	k := tqKey(userID, flashcardID, date)
	if _, ok := r.pins[k]; ok {
		delete(r.pins, k)
		return true, nil
	}
	return false, nil
}

func (r *fakeTodayQueueRepo) ListForDate(_ context.Context, userID string, date time.Time) ([]*model.Flashcard, error) {
	var out []*model.Flashcard
	prefix := userID + "|"
	dateStr := date.Format("2006-01-02")
	for k := range r.pins {
		if len(k) > len(prefix) && k[:len(prefix)] == prefix && k[len(k)-len(dateStr):] == dateStr {
			out = append(out, &model.Flashcard{UserID: userID, PinnedToday: true})
		}
	}
	return out, nil
}

func newTodayQueueSvc() (*fakeTodayQueueRepo, TodayQueueService) {
	repo := newFakeTodayQueueRepo()
	return repo, NewTodayQueueService(repo)
}

func TestTodayQueue_PinResolvesEmptyDateToToday(t *testing.T) {
	_, svc := newTodayQueueSvc()
	_, date, err := svc.Pin(context.Background(), "u1", "f1", "")
	if err != nil {
		t.Fatalf("pin: %v", err)
	}
	today := time.Now().UTC().Format("2006-01-02")
	if date.Format("2006-01-02") != today {
		t.Fatalf("expected today=%s, got %s", today, date.Format("2006-01-02"))
	}
}

func TestTodayQueue_PinIdempotent(t *testing.T) {
	repo, svc := newTodayQueueSvc()
	at1, _, err := svc.Pin(context.Background(), "u1", "f1", "2026-05-29")
	if err != nil {
		t.Fatalf("pin1: %v", err)
	}
	at2, _, err := svc.Pin(context.Background(), "u1", "f1", "2026-05-29")
	if err != nil {
		t.Fatalf("pin2: %v", err)
	}
	if !at1.Equal(at2) {
		t.Fatalf("expected same added_at on re-pin, got %v vs %v", at1, at2)
	}
	if len(repo.pins) != 1 {
		t.Fatalf("expected 1 pin, got %d", len(repo.pins))
	}
}

func TestTodayQueue_InvalidDate(t *testing.T) {
	_, svc := newTodayQueueSvc()
	if _, _, err := svc.Pin(context.Background(), "u1", "f1", "29-05-2026"); err == nil {
		t.Fatalf("expected invalid date error")
	}
}

func TestTodayQueue_RequiresIDs(t *testing.T) {
	_, svc := newTodayQueueSvc()
	if _, _, err := svc.Pin(context.Background(), "", "f1", ""); err == nil {
		t.Fatalf("expected error for empty user_id")
	}
	if err := svc.Unpin(context.Background(), "u1", "", ""); err == nil {
		t.Fatalf("expected error for empty flashcard_id")
	}
}

func TestTodayQueue_UnpinIsNoOpWhenMissing(t *testing.T) {
	_, svc := newTodayQueueSvc()
	// Unpin несуществующего → без ошибки (идемпотентность).
	if err := svc.Unpin(context.Background(), "u1", "f1", "2026-05-29"); err != nil {
		t.Fatalf("expected no-op unpin, got %v", err)
	}
}

func TestTodayQueue_ListReturnsResolvedDate(t *testing.T) {
	_, svc := newTodayQueueSvc()
	_, _, _ = svc.Pin(context.Background(), "u1", "f1", "2026-05-29")
	items, date, err := svc.List(context.Background(), "u1", "2026-05-29")
	if err != nil {
		t.Fatalf("list: %v", err)
	}
	if len(items) != 1 {
		t.Fatalf("expected 1 item, got %d", len(items))
	}
	if date.Format("2006-01-02") != "2026-05-29" {
		t.Fatalf("unexpected resolved date %s", date.Format("2006-01-02"))
	}
}
