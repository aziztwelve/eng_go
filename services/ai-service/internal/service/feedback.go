package service

import (
	"context"
	"errors"
	"fmt"
	"strings"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

// FeedbackInput — параметры ставки оценки.
type FeedbackInput struct {
	UserID    string
	MessageID string
	Rating    model.FeedbackRating // ±1
	Comment   string               // optional
}

// SubmitFeedback — UPSERT оценки assistant-сообщения.
//
// Правила:
//   - Только assistant-message можно оценить (user/system → InvalidArgument).
//   - Юзер должен быть владельцем conversation — иначе Forbidden.
//   - Comment опционален; обрезается до 500 символов на стороне сервиса.
//   - Повторный SubmitFeedback с тем же rating'ом — обновляет updated_at + comment.
func (s *Service) SubmitFeedback(ctx context.Context, in FeedbackInput) (*model.MessageFeedback, error) {
	if in.UserID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if in.MessageID == "" {
		return nil, fmt.Errorf("%w: message_id required", ErrInvalidArgument)
	}
	if !in.Rating.IsValid() {
		return nil, fmt.Errorf("%w: rating must be +1 or -1", ErrInvalidArgument)
	}
	if s.feedback == nil {
		return nil, fmt.Errorf("%w: feedback storage not configured", ErrInvalidArgument)
	}

	msg, err := s.messages.GetByID(ctx, in.MessageID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, fmt.Errorf("get message: %w", err)
	}
	if msg.Role != model.RoleAssistant {
		return nil, fmt.Errorf("%w: only assistant messages can be rated", ErrInvalidArgument)
	}

	conv, err := s.conversations.GetByID(ctx, msg.ConversationID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, fmt.Errorf("get conversation: %w", err)
	}
	if conv.UserID != in.UserID {
		return nil, ErrForbidden
	}

	comment := strings.TrimSpace(in.Comment)
	if len(comment) > 500 {
		comment = comment[:500]
	}

	fb := &model.MessageFeedback{
		MessageID:      msg.ID,
		ConversationID: msg.ConversationID,
		UserID:         in.UserID,
		Rating:         in.Rating,
		Comment:        comment,
	}
	if err := s.feedback.Upsert(ctx, fb); err != nil {
		return nil, fmt.Errorf("upsert feedback: %w", err)
	}
	return fb, nil
}

// DeleteFeedback — снимает оценку юзера. Идемпотентно: если оценки не
// было, возвращает nil без ошибки.
func (s *Service) DeleteFeedback(ctx context.Context, userID, messageID string) error {
	if userID == "" || messageID == "" {
		return fmt.Errorf("%w: user_id and message_id required", ErrInvalidArgument)
	}
	if s.feedback == nil {
		return nil
	}
	return s.feedback.Delete(ctx, userID, messageID)
}

// GetMessageFeedback — оценка конкретным юзером (для рендера thumbs-state
// при загрузке conversation; обычно используется ListFeedbackForMessages).
func (s *Service) GetMessageFeedback(ctx context.Context, userID, messageID string) (*model.MessageFeedback, error) {
	if userID == "" || messageID == "" {
		return nil, fmt.Errorf("%w: user_id and message_id required", ErrInvalidArgument)
	}
	if s.feedback == nil {
		return nil, ErrNotFound
	}
	fb, err := s.feedback.Get(ctx, userID, messageID)
	if err != nil {
		if errors.Is(err, repository.ErrNotFound) {
			return nil, ErrNotFound
		}
		return nil, err
	}
	return fb, nil
}

// ListFeedbackForMessages — pre-загрузка оценок для набора message_id'ов.
// Если feedback storage не сконфигурирован — возвращает пустую map.
func (s *Service) ListFeedbackForMessages(ctx context.Context, userID string, messageIDs []string) (map[string]*model.MessageFeedback, error) {
	if userID == "" {
		return nil, fmt.Errorf("%w: user_id required", ErrInvalidArgument)
	}
	if s.feedback == nil || len(messageIDs) == 0 {
		return map[string]*model.MessageFeedback{}, nil
	}
	return s.feedback.ListByMessageIDs(ctx, userID, messageIDs)
}
