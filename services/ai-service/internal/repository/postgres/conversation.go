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

const conversationCols = `id, user_id, title, scenario, target_language, user_level, model,
	message_count, total_tokens, cost_usd,
	started_at, last_message_at, ended_at`

type conversationRepo struct {
	pool *pgxpool.Pool
}

// NewConversationRepository — конструктор.
func NewConversationRepository(pool *pgxpool.Pool) repository.ConversationRepository {
	return &conversationRepo{pool: pool}
}

func scanConversation(scan func(...any) error) (*model.Conversation, error) {
	c := &model.Conversation{}
	var title sql.NullString
	var userLevel sql.NullString
	var modelName sql.NullString
	var endedAt sql.NullTime
	if err := scan(
		&c.ID, &c.UserID, &title, &c.Scenario, &c.TargetLanguage, &userLevel, &modelName,
		&c.MessageCount, &c.TotalTokens, &c.CostUSD,
		&c.StartedAt, &c.LastMessageAt, &endedAt,
	); err != nil {
		return nil, err
	}
	if title.Valid {
		c.Title = title.String
	}
	if userLevel.Valid {
		c.UserLevel = userLevel.String
	}
	if modelName.Valid {
		c.Model = modelName.String
	}
	if endedAt.Valid {
		t := endedAt.Time
		c.EndedAt = &t
	}
	return c, nil
}

func (r *conversationRepo) Create(ctx context.Context, c *model.Conversation) error {
	if c.ID == "" {
		c.ID = uuid.New().String()
	}
	if c.StartedAt.IsZero() {
		c.StartedAt = time.Now().UTC()
	}
	if c.LastMessageAt.IsZero() {
		c.LastMessageAt = c.StartedAt
	}
	_, err := r.pool.Exec(ctx, `
		INSERT INTO ai_conversations (
			id, user_id, title, scenario, target_language, user_level, model,
			message_count, total_tokens, cost_usd,
			started_at, last_message_at
		) VALUES (
			$1, $2, $3, $4, $5, $6, $7,
			$8, $9, $10,
			$11, $12
		)
	`,
		c.ID, c.UserID, nullString(c.Title), c.Scenario, c.TargetLanguage, nullString(c.UserLevel), nullString(c.Model),
		c.MessageCount, c.TotalTokens, c.CostUSD,
		c.StartedAt, c.LastMessageAt,
	)
	return err
}

func (r *conversationRepo) GetByID(ctx context.Context, id string) (*model.Conversation, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+conversationCols+`
		FROM ai_conversations
		WHERE id = $1
	`, id)
	c, err := scanConversation(row.Scan)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	return c, err
}

func (r *conversationRepo) ListByUser(ctx context.Context, userID string, limit, offset int) ([]*model.Conversation, int64, error) {
	if limit <= 0 {
		limit = 20
	}
	if limit > 100 {
		limit = 100
	}

	var total int64
	if err := r.pool.QueryRow(ctx, `
		SELECT COUNT(*) FROM ai_conversations
		WHERE user_id = $1 AND ended_at IS NULL
	`, userID).Scan(&total); err != nil {
		return nil, 0, err
	}

	rows, err := r.pool.Query(ctx, `
		SELECT `+conversationCols+`
		FROM ai_conversations
		WHERE user_id = $1 AND ended_at IS NULL
		ORDER BY started_at DESC
		LIMIT $2 OFFSET $3
	`, userID, limit, offset)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()

	var out []*model.Conversation
	for rows.Next() {
		c, err := scanConversation(rows.Scan)
		if err != nil {
			return nil, 0, err
		}
		out = append(out, c)
	}
	return out, total, rows.Err()
}

func (r *conversationRepo) UpdateStats(ctx context.Context, conversationID string, addTokens int32, addCost float64, lastMessageAt time.Time) error {
	tag, err := r.pool.Exec(ctx, `
		UPDATE ai_conversations SET
			message_count   = message_count + 1,
			total_tokens    = total_tokens + $1,
			cost_usd        = cost_usd + $2,
			last_message_at = $3
		WHERE id = $4
	`, addTokens, addCost, lastMessageAt, conversationID)
	if err != nil {
		return err
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *conversationRepo) MarkEnded(ctx context.Context, id string) error {
	tag, err := r.pool.Exec(ctx, `
		UPDATE ai_conversations SET ended_at = NOW()
		WHERE id = $1 AND ended_at IS NULL
	`, id)
	if err != nil {
		return err
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func nullString(s string) any {
	if s == "" {
		return nil
	}
	return s
}
