package service

import (
	"context"
	"errors"
	"github.com/elearning/ai-service/internal/client/user"
	"github.com/elearning/ai-service/internal/model"
	"sync"
	"testing"
	"time"
)

type memoryFreeTalk struct {
	mu     sync.Mutex
	id     string
	expiry time.Time
}

func (m *memoryFreeTalk) Reserve(_ context.Context, _, id string) (string, time.Time, error) {
	m.mu.Lock()
	defer m.mu.Unlock()
	if m.id == "" {
		m.id = id
		m.expiry = time.Now().Add(5 * time.Minute)
	}
	return m.id, m.expiry, nil
}
func (m *memoryFreeTalk) Active(_ context.Context, _, id string) (bool, error) {
	m.mu.Lock()
	defer m.mu.Unlock()
	return m.id == id && time.Now().Before(m.expiry), nil
}
func TestFreeTalk_OneSessionAndExpiry(t *testing.T) {
	ctx := context.Background()
	h := newHarness()
	repo := &memoryFreeTalk{}
	h.svc.freeTalkSessions = repo
	one := &model.Conversation{ID: "one", UserID: "u1", Scenario: model.ScenarioFreeChat}
	two := &model.Conversation{ID: "two", UserID: "u1", Scenario: model.ScenarioFreeChat}
	_ = h.convs.Create(ctx, one)
	_ = h.convs.Create(ctx, two)
	first, err := h.svc.ReserveFreeTalk(ctx, "u1", "one")
	if err != nil || !first.Allowed {
		t.Fatalf("first: %+v %v", first, err)
	}
	again, err := h.svc.ReserveFreeTalk(ctx, "u1", "one")
	if err != nil || !again.Allowed || !first.ExpiresAt.Equal(again.ExpiresAt) {
		t.Fatalf("resume: %+v %v", again, err)
	}
	second, err := h.svc.ReserveFreeTalk(ctx, "u1", "two")
	if err != nil || second.Allowed {
		t.Fatalf("second: %+v %v", second, err)
	}
	if err := h.svc.CheckFreeTalk(ctx, "u1", "one"); err != nil {
		t.Fatal(err)
	}
	repo.mu.Lock()
	repo.expiry = time.Now().Add(-time.Second)
	repo.mu.Unlock()
	if err := h.svc.CheckFreeTalk(ctx, "u1", "one"); !errors.Is(err, ErrQuotaExceeded) {
		t.Fatalf("expired: %v", err)
	}
	if _, err := h.svc.ReserveFreeTalk(ctx, "u2", "one"); !errors.Is(err, ErrForbidden) {
		t.Fatalf("ownership: %v", err)
	}
}
func TestFreeTalk_PremiumDoesNotReserveFreeSession(t *testing.T) {
	ctx := context.Background()
	h := newHarness()
	h.svc.user = &fakeUser{profile: &user.Profile{IsPremium: true}}
	_ = h.convs.Create(ctx, &model.Conversation{ID: "one", UserID: "u1", Scenario: model.ScenarioFreeChat})
	got, err := h.svc.ReserveFreeTalk(ctx, "u1", "one")
	if err != nil || !got.Allowed || !got.Unlimited {
		t.Fatalf("premium: %+v %v", got, err)
	}
}

func TestFreeTalk_AccountExceptionDoesNotAffectOthers(t *testing.T) {
	ctx := context.Background()
	h := newHarness()
	h.svc.cfg.FreeTalkUnlimitedUserIDs = "  u1 , u3 "
	h.svc.freeTalkSessions = &memoryFreeTalk{}
	_ = h.convs.Create(ctx, &model.Conversation{ID: "one", UserID: "u1", Scenario: model.ScenarioFreeChat})
	_ = h.convs.Create(ctx, &model.Conversation{ID: "two", UserID: "u2", Scenario: model.ScenarioFreeChat})
	got, err := h.svc.ReserveFreeTalk(ctx, "u1", "one")
	if err != nil || !got.Allowed || !got.Unlimited {
		t.Fatalf("exception: %+v %v", got, err)
	}
	if err := h.svc.CheckFreeTalk(ctx, "u1", "one"); err != nil {
		t.Fatal(err)
	}
	if err := h.svc.CheckFreeTalk(ctx, "u2", "one"); !errors.Is(err, ErrForbidden) {
		t.Fatalf("ownership: %v", err)
	}
	got, err = h.svc.ReserveFreeTalk(ctx, "u2", "two")
	if err != nil || !got.Allowed || got.Unlimited {
		t.Fatalf("other account: %+v %v", got, err)
	}
}
