package service

import (
	"context"
	"testing"

	"github.com/elearning/ai-service/internal/client/user"
	"github.com/elearning/ai-service/internal/model"
)

func TestQuotaStatus_Free(t *testing.T) {
	h := newHarness()
	status, err := h.svc.GetQuotaStatus(context.Background(), "u1")
	if err != nil {
		t.Fatalf("GetQuotaStatus: %v", err)
	}
	if status.Plan != string(model.PlanFree) {
		t.Errorf("plan = %s, want free", status.Plan)
	}
	if status.ChatLimit != 3 {
		t.Errorf("chat_limit = %d, want 3", status.ChatLimit)
	}
	if status.WritingLimit != 2 {
		t.Errorf("writing_limit = %d, want 2", status.WritingLimit)
	}
}

func TestQuotaStatus_Premium(t *testing.T) {
	h := newHarness()
	// Подменяем профиль на premium.
	h.svc.user = &fakeUser{profile: &user.Profile{IsPremium: true}}

	status, err := h.svc.GetQuotaStatus(context.Background(), "u1")
	if err != nil {
		t.Fatalf("GetQuotaStatus: %v", err)
	}
	if status.Plan != string(model.PlanPremium) {
		t.Errorf("plan = %s, want premium", status.Plan)
	}
	if status.ChatLimit >= 0 {
		t.Errorf("expected unlimited chat_limit (-1), got %d", status.ChatLimit)
	}
}

func TestCheckQuota_Free_BlocksOnLimit(t *testing.T) {
	h := newHarness()
	for i := 0; i < 3; i++ {
		if err := h.svc.CheckQuota(context.Background(), "u1", model.QuotaKindChat, 1); err != nil {
			t.Fatalf("call %d: %v", i, err)
		}
		if err := h.svc.IncrementQuota(context.Background(), "u1", model.QuotaKindChat, 1); err != nil {
			t.Fatalf("inc %d: %v", i, err)
		}
	}
	if err := h.svc.CheckQuota(context.Background(), "u1", model.QuotaKindChat, 1); err == nil {
		t.Error("expected quota exceeded")
	}
}

func TestCheckQuota_Premium_NeverBlocks(t *testing.T) {
	h := newHarness()
	h.svc.user = &fakeUser{profile: &user.Profile{IsPremium: true}}
	for i := 0; i < 100; i++ {
		if err := h.svc.CheckQuota(context.Background(), "u1", model.QuotaKindChat, 1); err != nil {
			t.Fatalf("premium call %d should not be blocked: %v", i, err)
		}
		_ = h.svc.IncrementQuota(context.Background(), "u1", model.QuotaKindChat, 1)
	}
}

func TestCheckQuota_VoiceMinutes(t *testing.T) {
	h := newHarness() // free voice limit = 1 минута
	if err := h.svc.CheckQuota(context.Background(), "u1", model.QuotaKindVoice, 0.5); err != nil {
		t.Fatalf("0.5 min should be allowed: %v", err)
	}
	_ = h.svc.IncrementQuota(context.Background(), "u1", model.QuotaKindVoice, 0.5)
	if err := h.svc.CheckQuota(context.Background(), "u1", model.QuotaKindVoice, 0.4); err != nil {
		t.Fatalf("0.5 + 0.4 = 0.9 should still be allowed: %v", err)
	}
	_ = h.svc.IncrementQuota(context.Background(), "u1", model.QuotaKindVoice, 0.4)
	if err := h.svc.CheckQuota(context.Background(), "u1", model.QuotaKindVoice, 0.2); err == nil {
		t.Error("0.9 + 0.2 = 1.1 > 1 should block")
	}
}
