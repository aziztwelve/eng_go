package model

import "time"

// FeedbackRating — оценка assistant-сообщения юзером.
//
// Маппинг с фронтом:
//   - thumbs up   → +1
//   - thumbs down → -1
//   - reset (отозвать оценку) — DELETE через сервис.
type FeedbackRating int16

const (
	RatingThumbsUp   FeedbackRating = 1
	RatingThumbsDown FeedbackRating = -1
)

// IsValid — соответствует CHECK rating IN (-1, 1).
func (r FeedbackRating) IsValid() bool {
	return r == RatingThumbsUp || r == RatingThumbsDown
}

// MessageFeedback — запись из ai.ai_message_feedback.
type MessageFeedback struct {
	ID             string
	MessageID      string
	ConversationID string
	UserID         string
	Rating         FeedbackRating
	Comment        string
	CreatedAt      time.Time
	UpdatedAt      time.Time
}

// FeedbackStats — агрегат по conversation (для админ-аналитики).
type FeedbackStats struct {
	ConversationID string
	Likes          int32
	Dislikes       int32
	Total          int32
}
