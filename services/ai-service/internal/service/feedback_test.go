package service

import (
	"context"
	"errors"
	"testing"

	"github.com/elearning/ai-service/internal/model"
)

// helper — создаёт conversation + assistant-message, возвращает их ID.
func setupConvWithMessages(t *testing.T, h *testHarness, userID string) (convID, assistantMsgID, userMsgID string) {
	t.Helper()
	ctx := context.Background()
	conv, _, err := h.svc.StartConversation(ctx, StartConversationInput{
		UserID:         userID,
		Scenario:       model.ScenarioFreeChat,
		TargetLanguage: "es",
		UserLevel:      "B1",
	})
	if err != nil {
		t.Fatalf("StartConversation: %v", err)
	}
	// Вручную создаём messages — как будто SendMessage уже сработал.
	userMsg := &model.Message{
		ConversationID: conv.ID,
		Role:           model.RoleUser,
		Content:        "Hola",
	}
	if err := h.msgs.Create(ctx, userMsg); err != nil {
		t.Fatalf("create user msg: %v", err)
	}
	asstMsg := &model.Message{
		ConversationID: conv.ID,
		Role:           model.RoleAssistant,
		Content:        "Hola, ¿cómo estás?",
	}
	if err := h.msgs.Create(ctx, asstMsg); err != nil {
		t.Fatalf("create assistant msg: %v", err)
	}
	return conv.ID, asstMsg.ID, userMsg.ID
}

func TestSubmitFeedback_ThumbsUp(t *testing.T) {
	h := newHarness()
	_, asstID, _ := setupConvWithMessages(t, h, "user-1")

	fb, err := h.svc.SubmitFeedback(context.Background(), FeedbackInput{
		UserID:    "user-1",
		MessageID: asstID,
		Rating:    model.RatingThumbsUp,
		Comment:   "great explanation",
	})
	if err != nil {
		t.Fatalf("SubmitFeedback: %v", err)
	}
	if fb.Rating != model.RatingThumbsUp {
		t.Errorf("expected rating +1, got %d", fb.Rating)
	}
	if fb.Comment != "great explanation" {
		t.Errorf("comment lost, got %q", fb.Comment)
	}
}

func TestSubmitFeedback_Switch(t *testing.T) {
	// thumbs up → thumbs down — rating перетирается.
	h := newHarness()
	_, asstID, _ := setupConvWithMessages(t, h, "user-1")
	ctx := context.Background()

	_, _ = h.svc.SubmitFeedback(ctx, FeedbackInput{
		UserID: "user-1", MessageID: asstID, Rating: model.RatingThumbsUp,
	})
	fb, err := h.svc.SubmitFeedback(ctx, FeedbackInput{
		UserID: "user-1", MessageID: asstID, Rating: model.RatingThumbsDown,
	})
	if err != nil {
		t.Fatalf("Switch: %v", err)
	}
	if fb.Rating != model.RatingThumbsDown {
		t.Errorf("expected -1 after switch, got %d", fb.Rating)
	}
	// В fake-store должна быть ровно одна запись для (user, message).
	if got, _ := h.feedback.Get(ctx, "user-1", asstID); got.Rating != model.RatingThumbsDown {
		t.Errorf("storage didn't update")
	}
}

func TestSubmitFeedback_RejectUserMessage(t *testing.T) {
	// Юзер не может оценивать собственные user-message'ы.
	h := newHarness()
	_, _, userID := setupConvWithMessages(t, h, "user-1")

	_, err := h.svc.SubmitFeedback(context.Background(), FeedbackInput{
		UserID: "user-1", MessageID: userID, Rating: model.RatingThumbsUp,
	})
	if err == nil || !errors.Is(err, ErrInvalidArgument) {
		t.Errorf("expected ErrInvalidArgument on user message, got %v", err)
	}
}

func TestSubmitFeedback_OwnershipCheck(t *testing.T) {
	// Чужой юзер не может оценивать сообщения чужой conversation.
	h := newHarness()
	_, asstID, _ := setupConvWithMessages(t, h, "owner")

	_, err := h.svc.SubmitFeedback(context.Background(), FeedbackInput{
		UserID: "stranger", MessageID: asstID, Rating: model.RatingThumbsUp,
	})
	if err == nil || !errors.Is(err, ErrForbidden) {
		t.Errorf("expected ErrForbidden, got %v", err)
	}
}

func TestSubmitFeedback_InvalidRating(t *testing.T) {
	h := newHarness()
	_, asstID, _ := setupConvWithMessages(t, h, "user-1")

	_, err := h.svc.SubmitFeedback(context.Background(), FeedbackInput{
		UserID: "user-1", MessageID: asstID, Rating: model.FeedbackRating(0),
	})
	if err == nil || !errors.Is(err, ErrInvalidArgument) {
		t.Errorf("expected ErrInvalidArgument on rating=0, got %v", err)
	}
}

func TestSubmitFeedback_NotFound(t *testing.T) {
	h := newHarness()
	_, err := h.svc.SubmitFeedback(context.Background(), FeedbackInput{
		UserID: "user-1", MessageID: "nonexistent", Rating: model.RatingThumbsUp,
	})
	if err == nil || !errors.Is(err, ErrNotFound) {
		t.Errorf("expected ErrNotFound, got %v", err)
	}
}

func TestDeleteFeedback_Idempotent(t *testing.T) {
	h := newHarness()
	_, asstID, _ := setupConvWithMessages(t, h, "user-1")
	ctx := context.Background()

	_, _ = h.svc.SubmitFeedback(ctx, FeedbackInput{
		UserID: "user-1", MessageID: asstID, Rating: model.RatingThumbsUp,
	})
	if err := h.svc.DeleteFeedback(ctx, "user-1", asstID); err != nil {
		t.Errorf("first delete: %v", err)
	}
	// Повторный delete не должен возвращать ошибку.
	if err := h.svc.DeleteFeedback(ctx, "user-1", asstID); err != nil {
		t.Errorf("second delete (idempotent): %v", err)
	}
	if _, err := h.svc.GetMessageFeedback(ctx, "user-1", asstID); !errors.Is(err, ErrNotFound) {
		t.Errorf("expected ErrNotFound after delete, got %v", err)
	}
}

func TestListFeedbackForMessages(t *testing.T) {
	h := newHarness()
	_, asstID1, _ := setupConvWithMessages(t, h, "user-1")
	_, asstID2, _ := setupConvWithMessages(t, h, "user-1")
	ctx := context.Background()

	_, _ = h.svc.SubmitFeedback(ctx, FeedbackInput{
		UserID: "user-1", MessageID: asstID1, Rating: model.RatingThumbsUp,
	})
	// asstID2 без оценки — должен отсутствовать в map.

	got, err := h.svc.ListFeedbackForMessages(ctx, "user-1", []string{asstID1, asstID2})
	if err != nil {
		t.Fatalf("ListFeedbackForMessages: %v", err)
	}
	if len(got) != 1 {
		t.Errorf("expected 1 feedback in map, got %d", len(got))
	}
	if got[asstID1] == nil || got[asstID1].Rating != model.RatingThumbsUp {
		t.Errorf("missing/wrong feedback for asstID1")
	}
	if _, ok := got[asstID2]; ok {
		t.Errorf("unrated message should not appear in map")
	}
}

func TestSubmitFeedback_CommentTruncation(t *testing.T) {
	h := newHarness()
	_, asstID, _ := setupConvWithMessages(t, h, "user-1")

	long := make([]byte, 700)
	for i := range long {
		long[i] = 'x'
	}
	fb, err := h.svc.SubmitFeedback(context.Background(), FeedbackInput{
		UserID: "user-1", MessageID: asstID,
		Rating:  model.RatingThumbsDown,
		Comment: string(long),
	})
	if err != nil {
		t.Fatalf("SubmitFeedback: %v", err)
	}
	if len(fb.Comment) != 500 {
		t.Errorf("expected truncate to 500 chars, got %d", len(fb.Comment))
	}
}
