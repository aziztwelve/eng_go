package service

import (
	"context"
	"errors"
	"testing"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/providers"
)

func TestStartConversation_FreeChat(t *testing.T) {
	h := newHarness()
	conv, initial, err := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID:         "u1",
		Scenario:       "free_chat",
		TargetLanguage: "es",
	})
	if err != nil {
		t.Fatalf("StartConversation: %v", err)
	}
	if conv.UserID != "u1" {
		t.Errorf("user_id mismatch")
	}
	if conv.Title == "" {
		t.Errorf("expected default title")
	}
	if initial != nil {
		t.Errorf("free_chat should not produce initial message")
	}
}

func TestStartConversation_Roleplay_HasInitialMessage(t *testing.T) {
	h := newHarness()
	conv, initial, err := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID:   "u1",
		Scenario: "roleplay_restaurant",
	})
	if err != nil {
		t.Fatalf("StartConversation: %v", err)
	}
	if initial == nil {
		t.Fatal("expected initial assistant message")
	}
	if initial.Role != model.RoleAssistant {
		t.Errorf("initial message role = %v, want assistant", initial.Role)
	}
	if initial.Content == "" {
		t.Error("expected non-empty initial message")
	}
	if conv.MessageCount != 1 {
		t.Errorf("expected message_count=1 after initial, got %d", conv.MessageCount)
	}
	if conv.TargetLanguage != "es" {
		t.Errorf("scenario language should override; got %q", conv.TargetLanguage)
	}
}

func TestStartConversation_UnknownScenario_ReturnsError(t *testing.T) {
	h := newHarness()
	_, _, err := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID:   "u1",
		Scenario: "roleplay_does_not_exist",
	})
	if !errors.Is(err, ErrScenarioNotFound) {
		t.Errorf("expected ErrScenarioNotFound, got %v", err)
	}
}

func TestStartConversation_RequiresUserAndScenario(t *testing.T) {
	h := newHarness()
	if _, _, err := h.svc.StartConversation(context.Background(), StartConversationInput{Scenario: "free_chat"}); !errors.Is(err, ErrInvalidArgument) {
		t.Error("expected ErrInvalidArgument when user_id missing")
	}
	if _, _, err := h.svc.StartConversation(context.Background(), StartConversationInput{UserID: "u1"}); !errors.Is(err, ErrInvalidArgument) {
		t.Error("expected ErrInvalidArgument when scenario missing")
	}
}

func TestSendMessage_BuildsHistoryAndUpdatesStats(t *testing.T) {
	h := newHarness()
	// Stub: capture promptMessages length.
	var capturedHistoryLen int
	h.provider.chat = func(msgs []providers.PromptMessage, _ providers.ChatOptions) (*providers.ChatResponse, error) {
		capturedHistoryLen = len(msgs)
		return &providers.ChatResponse{
			Content:    `{"reply":"hola","translation":"hi","corrections":[]}`,
			TokensUsed: 50,
			CostUSD:    0.0001,
		}, nil
	}

	conv, _, err := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID:   "u1",
		Scenario: "free_chat",
	})
	if err != nil {
		t.Fatalf("start: %v", err)
	}

	user1, asst1, err := h.svc.SendMessage(context.Background(), SendMessageInput{
		UserID: "u1", ConversationID: conv.ID, Content: "Hola!",
	})
	if err != nil {
		t.Fatalf("send 1: %v", err)
	}
	if user1.Role != model.RoleUser {
		t.Errorf("user1 role = %v", user1.Role)
	}
	if asst1.Content != "hola" {
		t.Errorf("assistant reply parsed wrong: %q", asst1.Content)
	}
	if asst1.Translation != "hi" {
		t.Errorf("translation: %q", asst1.Translation)
	}
	if asst1.TokensUsed != 50 {
		t.Errorf("tokens: %d", asst1.TokensUsed)
	}
	// system + user (history of length 1).
	if capturedHistoryLen < 2 {
		t.Errorf("expected at least system+user prompt, got %d", capturedHistoryLen)
	}

	// Send second message — history now должен включать первое user+assistant.
	_, _, err = h.svc.SendMessage(context.Background(), SendMessageInput{
		UserID: "u1", ConversationID: conv.ID, Content: "Cómo estás?",
	})
	if err != nil {
		t.Fatalf("send 2: %v", err)
	}
	// system + (user1 + assistant1) + user2 = 4 messages
	if capturedHistoryLen != 4 {
		t.Errorf("history len = %d, want 4", capturedHistoryLen)
	}

	// Stats updated.
	got, err := h.convs.GetByID(context.Background(), conv.ID)
	if err != nil {
		t.Fatalf("get conv: %v", err)
	}
	if got.MessageCount < 2 {
		t.Errorf("message_count = %d, expected >= 2", got.MessageCount)
	}
	if got.TotalTokens < 50 {
		t.Errorf("total_tokens too low: %d", got.TotalTokens)
	}
}

func TestSendMessage_QuotaExceeded(t *testing.T) {
	h := newHarness() // free chat limit 3
	conv, _, _ := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID: "u1", Scenario: "free_chat",
	})
	for i := 0; i < 3; i++ {
		_, _, err := h.svc.SendMessage(context.Background(), SendMessageInput{
			UserID: "u1", ConversationID: conv.ID, Content: "msg",
		})
		if err != nil {
			t.Fatalf("send %d: %v", i, err)
		}
	}
	// 4-й — должен упереться в quota.
	_, _, err := h.svc.SendMessage(context.Background(), SendMessageInput{
		UserID: "u1", ConversationID: conv.ID, Content: "over limit",
	})
	if !errors.Is(err, ErrQuotaExceeded) {
		t.Errorf("expected ErrQuotaExceeded, got %v", err)
	}
}

func TestSendMessage_ForbiddenForOtherUser(t *testing.T) {
	h := newHarness()
	conv, _, _ := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID: "u1", Scenario: "free_chat",
	})
	_, _, err := h.svc.SendMessage(context.Background(), SendMessageInput{
		UserID: "u2", ConversationID: conv.ID, Content: "hi",
	})
	if !errors.Is(err, ErrForbidden) {
		t.Errorf("expected ErrForbidden, got %v", err)
	}
}

func TestSendMessage_NotFound(t *testing.T) {
	h := newHarness()
	_, _, err := h.svc.SendMessage(context.Background(), SendMessageInput{
		UserID: "u1", ConversationID: "missing", Content: "hi",
	})
	if !errors.Is(err, ErrNotFound) {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestSendMessage_TTSWhenWantAudio(t *testing.T) {
	h := newHarness()
	conv, _, _ := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID: "u1", Scenario: "free_chat",
	})
	var ttsCalled bool
	h.provider.tts = func(text string, _ providers.TTSOptions) (*providers.TTSResponse, error) {
		ttsCalled = true
		return &providers.TTSResponse{AudioURL: "https://test/" + text, DurationMs: 500, CostUSD: 0.001}, nil
	}
	_, asst, err := h.svc.SendMessage(context.Background(), SendMessageInput{
		UserID: "u1", ConversationID: conv.ID, Content: "hola", WantAudio: true,
	})
	if err != nil {
		t.Fatalf("send: %v", err)
	}
	if !ttsCalled {
		t.Error("expected TTS called when want_audio=true")
	}
	if asst.AudioURL == "" {
		t.Error("expected audio_url on assistant message")
	}
}

func TestDeleteConversation_OwnershipAndIdempotency(t *testing.T) {
	h := newHarness()
	conv, _, _ := h.svc.StartConversation(context.Background(), StartConversationInput{
		UserID: "u1", Scenario: "free_chat",
	})
	if err := h.svc.DeleteConversation(context.Background(), "u2", conv.ID); !errors.Is(err, ErrForbidden) {
		t.Errorf("expected forbidden for other user, got %v", err)
	}
	if err := h.svc.DeleteConversation(context.Background(), "u1", conv.ID); err != nil {
		t.Errorf("first delete: %v", err)
	}
	if err := h.svc.DeleteConversation(context.Background(), "u1", conv.ID); !errors.Is(err, ErrNotFound) {
		t.Errorf("second delete should be NotFound (already ended), got %v", err)
	}
}

func TestListScenarios_FilterByLanguage(t *testing.T) {
	h := newHarness()
	all := h.svc.ListScenarios("", "")
	if len(all) == 0 {
		t.Fatal("expected scenarios")
	}
	es := h.svc.ListScenarios("es", "")
	if len(es) >= len(all) {
		t.Errorf("filtered (es) should be smaller than all (got %d vs %d)", len(es), len(all))
	}
}
