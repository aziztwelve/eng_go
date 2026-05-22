package postgres

import (
	"context"
	"database/sql"
	"errors"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

const feedbackCols = `id, message_id, conversation_id, user_id, rating, comment,
	created_at, updated_at`

type feedbackRepo struct {
	pool *pgxpool.Pool
}

// NewFeedbackRepository — конструктор.
func NewFeedbackRepository(pool *pgxpool.Pool) repository.FeedbackRepository {
	return &feedbackRepo{pool: pool}
}

func scanFeedback(scan func(...any) error) (*model.MessageFeedback, error) {
	f := &model.MessageFeedback{}
	var rating int16
	var comment sql.NullString
	if err := scan(
		&f.ID, &f.MessageID, &f.ConversationID, &f.UserID, &rating, &comment,
		&f.CreatedAt, &f.UpdatedAt,
	); err != nil {
		return nil, err
	}
	f.Rating = model.FeedbackRating(rating)
	if comment.Valid {
		f.Comment = comment.String
	}
	return f, nil
}

// Upsert — ON CONFLICT (user_id, message_id) DO UPDATE.
//
// Гарантирует что для пары (user, message) всегда не более одной записи.
// Если юзер раньше поставил thumbs up, а теперь thumbs down — rating
// перезатирается. updated_at обновляется.
func (r *feedbackRepo) Upsert(ctx context.Context, f *model.MessageFeedback) error {
	if f.ID == "" {
		f.ID = uuid.New().String()
	}
	now := time.Now().UTC()
	if f.CreatedAt.IsZero() {
		f.CreatedAt = now
	}
	f.UpdatedAt = now

	_, err := r.pool.Exec(ctx, `
		INSERT INTO ai_message_feedback (
			id, message_id, conversation_id, user_id, rating, comment,
			created_at, updated_at
		) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)
		ON CONFLICT (user_id, message_id) DO UPDATE SET
			rating     = EXCLUDED.rating,
			comment    = EXCLUDED.comment,
			updated_at = EXCLUDED.updated_at
	`,
		f.ID, f.MessageID, f.ConversationID, f.UserID,
		int16(f.Rating), nullString(f.Comment),
		f.CreatedAt, f.UpdatedAt,
	)
	return err
}

// Get — оценка конкретным юзером конкретного message. ErrNotFound если нет.
func (r *feedbackRepo) Get(ctx context.Context, userID, messageID string) (*model.MessageFeedback, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+feedbackCols+`
		FROM ai_message_feedback
		WHERE user_id = $1 AND message_id = $2
	`, userID, messageID)
	f, err := scanFeedback(row.Scan)
	if err != nil {
		if errors.Is(err, pgx.ErrNoRows) {
			return nil, repository.ErrNotFound
		}
		return nil, err
	}
	return f, nil
}

// Delete — снимает оценку. Если её не было — no-op.
func (r *feedbackRepo) Delete(ctx context.Context, userID, messageID string) error {
	_, err := r.pool.Exec(ctx, `
		DELETE FROM ai_message_feedback
		WHERE user_id = $1 AND message_id = $2
	`, userID, messageID)
	return err
}

// ListByMessageIDs — все feedback'и юзера для набора message_id'ов.
// Используется на GetConversation чтобы фронт сразу видел свои оценки.
func (r *feedbackRepo) ListByMessageIDs(ctx context.Context, userID string, messageIDs []string) (map[string]*model.MessageFeedback, error) {
	if len(messageIDs) == 0 {
		return map[string]*model.MessageFeedback{}, nil
	}
	rows, err := r.pool.Query(ctx, `
		SELECT `+feedbackCols+`
		FROM ai_message_feedback
		WHERE user_id = $1 AND message_id = ANY($2)
	`, userID, messageIDs)
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	out := make(map[string]*model.MessageFeedback, len(messageIDs))
	for rows.Next() {
		f, err := scanFeedback(rows.Scan)
		if err != nil {
			return nil, err
		}
		out[f.MessageID] = f
	}
	return out, rows.Err()
}

// GetConversationStats — суммарная агрегация по conversation.
func (r *feedbackRepo) GetConversationStats(ctx context.Context, conversationID string) (*model.FeedbackStats, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT
			COALESCE(SUM(CASE WHEN rating = 1  THEN 1 ELSE 0 END), 0) AS likes,
			COALESCE(SUM(CASE WHEN rating = -1 THEN 1 ELSE 0 END), 0) AS dislikes
		FROM ai_message_feedback
		WHERE conversation_id = $1
	`, conversationID)

	stats := &model.FeedbackStats{ConversationID: conversationID}
	if err := row.Scan(&stats.Likes, &stats.Dislikes); err != nil {
		return nil, err
	}
	stats.Total = stats.Likes + stats.Dislikes
	return stats, nil
}
