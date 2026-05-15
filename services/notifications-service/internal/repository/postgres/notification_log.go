package postgres

import (
	"context"
	"database/sql"
	"errors"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/notifications-service/internal/repository"
)

const logCols = `id, user_id, channel, kind,
	title, body, data,
	dedup_key, status, error, skipped_reason,
	devices_attempted, devices_succeeded,
	is_read, read_at, scheduled_at, sent_at, created_at`

type logRepo struct {
	pool *pgxpool.Pool
}

// NewNotificationLogRepository — конструктор.
func NewNotificationLogRepository(pool *pgxpool.Pool) repository.NotificationLogRepository {
	return &logRepo{pool: pool}
}

func scanLog(scan func(...any) error) (*model.NotificationLog, error) {
	n := &model.NotificationLog{}
	var (
		channel       string
		status        string
		skippedReason string
		readAt        sql.NullTime
		scheduledAt   sql.NullTime
		sentAt        sql.NullTime
	)
	if err := scan(
		&n.ID, &n.UserID, &channel, &n.Kind,
		&n.Title, &n.Body, &n.Data,
		&n.DedupKey, &status, &n.Error, &skippedReason,
		&n.DevicesAttempted, &n.DevicesSucceeded,
		&n.IsRead, &readAt, &scheduledAt, &sentAt, &n.CreatedAt,
	); err != nil {
		return nil, err
	}
	n.Channel = model.Channel(channel)
	n.Status = model.SendStatus(status)
	n.SkippedReason = model.SkippedReason(skippedReason)
	if readAt.Valid {
		t := readAt.Time
		n.ReadAt = &t
	}
	if scheduledAt.Valid {
		t := scheduledAt.Time
		n.ScheduledAt = &t
	}
	if sentAt.Valid {
		t := sentAt.Time
		n.SentAt = &t
	}
	return n, nil
}

func (r *logRepo) Create(ctx context.Context, n *model.NotificationLog) error {
	if n.ID == "" {
		n.ID = uuid.New().String()
	}
	if len(n.Data) == 0 {
		n.Data = []byte("{}")
	}
	err := r.pool.QueryRow(ctx, `
		INSERT INTO notification_log (
			id, user_id, channel, kind,
			title, body, data,
			dedup_key, status, error, skipped_reason,
			devices_attempted, devices_succeeded,
			scheduled_at, sent_at
		) VALUES (
			$1, $2, $3, $4,
			$5, $6, $7,
			$8, $9, $10, $11,
			$12, $13,
			$14, $15
		)
		RETURNING created_at
	`,
		n.ID, n.UserID, string(n.Channel), n.Kind,
		n.Title, n.Body, n.Data,
		n.DedupKey, string(n.Status), n.Error, string(n.SkippedReason),
		n.DevicesAttempted, n.DevicesSucceeded,
		nullTime(n.ScheduledAt), nullTime(n.SentAt),
	).Scan(&n.CreatedAt)
	if err != nil && isUniqueViolation(err) {
		return repository.ErrAlreadyExists
	}
	return err
}

func (r *logRepo) FindDedup(ctx context.Context, userID string, channel model.Channel, dedupKey string, since time.Time) (*model.NotificationLog, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+logCols+`
		FROM notification_log
		WHERE user_id = $1 AND channel = $2 AND dedup_key = $3
		  AND created_at >= $4
		ORDER BY created_at DESC
		LIMIT 1
	`, userID, string(channel), dedupKey, since)
	n, err := scanLog(row.Scan)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	return n, err
}

func (r *logRepo) UpdateStatus(ctx context.Context, id string, status model.SendStatus, errMsg string, attempted, succeeded int32, sentAt *time.Time) error {
	tag, err := r.pool.Exec(ctx, `
		UPDATE notification_log SET
			status            = $1,
			error             = $2,
			devices_attempted = $3,
			devices_succeeded = $4,
			sent_at           = $5
		WHERE id = $6
	`, string(status), errMsg, attempted, succeeded, nullTime(sentAt), id)
	if err != nil {
		return err
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *logRepo) List(ctx context.Context, userID string, readFilter int, limit, offset int) ([]*model.NotificationLog, int, int, error) {
	if limit <= 0 {
		limit = 20
	}
	args := []any{userID}
	where := `user_id = $1`
	switch readFilter {
	case 0:
		where += ` AND is_read = FALSE`
	case 1:
		where += ` AND is_read = TRUE`
	}

	var total, unread int
	if err := r.pool.QueryRow(ctx,
		`SELECT
			COUNT(*) FILTER (WHERE `+where+`)::int                       AS total,
			COUNT(*) FILTER (WHERE user_id = $1 AND is_read = FALSE)::int AS unread
		 FROM notification_log`,
		args...,
	).Scan(&total, &unread); err != nil {
		return nil, 0, 0, err
	}

	args = append(args, limit, offset)
	rows, err := r.pool.Query(ctx, `
		SELECT `+logCols+`
		FROM notification_log
		WHERE `+where+`
		ORDER BY created_at DESC
		LIMIT $`+itoa(len(args)-1)+` OFFSET $`+itoa(len(args))+`
	`, args...)
	if err != nil {
		return nil, 0, 0, err
	}
	defer rows.Close()
	var out []*model.NotificationLog
	for rows.Next() {
		n, err := scanLog(rows.Scan)
		if err != nil {
			return nil, 0, 0, err
		}
		out = append(out, n)
	}
	return out, total, unread, rows.Err()
}

func (r *logRepo) MarkRead(ctx context.Context, userID, notificationID string) (int32, error) {
	if notificationID != "" {
		tag, err := r.pool.Exec(ctx, `
			UPDATE notification_log SET is_read = TRUE, read_at = NOW()
			WHERE user_id = $1 AND id = $2 AND is_read = FALSE
		`, userID, notificationID)
		if err != nil {
			return 0, err
		}
		return int32(tag.RowsAffected()), nil
	}
	tag, err := r.pool.Exec(ctx, `
		UPDATE notification_log SET is_read = TRUE, read_at = NOW()
		WHERE user_id = $1 AND is_read = FALSE
	`, userID)
	if err != nil {
		return 0, err
	}
	return int32(tag.RowsAffected()), nil
}
