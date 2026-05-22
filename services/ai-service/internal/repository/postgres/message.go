package postgres

import (
	"context"
	"database/sql"
	"fmt"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/ai-service/internal/cryptobox"
	"github.com/elearning/ai-service/internal/model"
	"github.com/elearning/ai-service/internal/repository"
)

const messageCols = `id, conversation_id, role, content, audio_url,
	corrections, translation, tokens_used, cost_usd, created_at`

type messageRepo struct {
	pool *pgxpool.Pool
	box  *cryptobox.Box // optional encryption-at-rest для content/translation
}

// NewMessageRepository — конструктор. box может быть nil → no-op
// (plaintext storage, backward-compat со старыми деплойями).
func NewMessageRepository(pool *pgxpool.Pool, box *cryptobox.Box) repository.MessageRepository {
	return &messageRepo{pool: pool, box: box}
}

func (r *messageRepo) scanMessage(scan func(...any) error) (*model.Message, error) {
	m := &model.Message{}
	var audioURL sql.NullString
	var translation sql.NullString
	var role string
	var corrections []byte
	var content string
	if err := scan(
		&m.ID, &m.ConversationID, &role, &content, &audioURL,
		&corrections, &translation, &m.TokensUsed, &m.CostUSD, &m.CreatedAt,
	); err != nil {
		return nil, err
	}
	m.Role = model.MessageRole(role)
	plain, err := r.box.Decrypt(content)
	if err != nil {
		return nil, fmt.Errorf("decrypt content: %w", err)
	}
	m.Content = plain
	if audioURL.Valid {
		m.AudioURL = audioURL.String
	}
	if translation.Valid {
		plainT, err := r.box.Decrypt(translation.String)
		if err != nil {
			return nil, fmt.Errorf("decrypt translation: %w", err)
		}
		m.Translation = plainT
	}
	parsed, err := model.CorrectionsFromJSON(corrections)
	if err != nil {
		return nil, err
	}
	m.Corrections = parsed
	return m, nil
}

func (r *messageRepo) Create(ctx context.Context, m *model.Message) error {
	if m.ID == "" {
		m.ID = uuid.New().String()
	}
	if m.CreatedAt.IsZero() {
		m.CreatedAt = time.Now().UTC()
	}
	corrJSON, err := m.CorrectionsJSON()
	if err != nil {
		return err
	}
	_, err = r.pool.Exec(ctx, `
		INSERT INTO ai_messages (
			id, conversation_id, role, content, audio_url,
			corrections, translation, tokens_used, cost_usd, created_at
		) VALUES (
			$1, $2, $3, $4, $5,
			$6, $7, $8, $9, $10
		)
	`,
		m.ID, m.ConversationID, string(m.Role), m.Content, nullString(m.AudioURL),
		corrJSON, nullString(m.Translation), m.TokensUsed, m.CostUSD, m.CreatedAt,
	)
	return err
}

func (r *messageRepo) GetByID(ctx context.Context, id string) (*model.Message, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+messageCols+`
		FROM ai_messages
		WHERE id = $1
	`, id)
	m, err := r.scanMessage(row.Scan)
	if err != nil {
		if err == pgx.ErrNoRows {
			return nil, repository.ErrNotFound
		}
		return nil, err
	}
	return m, nil
}

func (r *messageRepo) ListByConversation(ctx context.Context, conversationID string) ([]*model.Message, error) {
	rows, err := r.pool.Query(ctx, `
		SELECT `+messageCols+`
		FROM ai_messages
		WHERE conversation_id = $1
		ORDER BY created_at ASC
	`, conversationID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	return r.scanMessages(rows)
}

func (r *messageRepo) GetLastN(ctx context.Context, conversationID string, n int) ([]*model.Message, error) {
	if n <= 0 {
		n = 10
	}
	rows, err := r.pool.Query(ctx, `
		SELECT `+messageCols+`
		FROM ai_messages
		WHERE conversation_id = $1
		ORDER BY created_at DESC
		LIMIT $2
	`, conversationID, n)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	out, err := r.scanMessages(rows)
	if err != nil {
		return nil, err
	}
	// Возвращаем в хронологическом порядке (старые → новые) — так
	// удобнее формировать prompt.
	for i, j := 0, len(out)-1; i < j; i, j = i+1, j-1 {
		out[i], out[j] = out[j], out[i]
	}
	return out, nil
}

func (r *messageRepo) scanMessages(rows pgx.Rows) ([]*model.Message, error) {
	var out []*model.Message
	for rows.Next() {
		m, err := r.scanMessage(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, m)
	}
	return out, rows.Err()
}
