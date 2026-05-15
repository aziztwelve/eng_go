package postgres

import (
	"context"
	"database/sql"
	"errors"
	"time"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/srs-service/internal/model"
	"github.com/elearning/srs-service/internal/repository"
)

const srsItemCols = `id, user_id, item_type, item_id,
	easiness_factor, interval_days, repetitions,
	next_review_at, last_reviewed_at,
	total_reviews, correct_reviews, incorrect_reviews, avg_response_time_ms,
	strength, created_at, updated_at`

type srsItemRepo struct {
	pool *pgxpool.Pool
}

// NewSRSItemRepository — конструктор.
func NewSRSItemRepository(pool *pgxpool.Pool) repository.SRSItemRepository {
	return &srsItemRepo{pool: pool}
}

func scanSRSItem(scan func(...any) error) (*model.SRSItem, error) {
	i := &model.SRSItem{}
	var lastReviewed sql.NullTime
	var itemType string
	if err := scan(
		&i.ID, &i.UserID, &itemType, &i.ItemID,
		&i.EasinessFactor, &i.IntervalDays, &i.Repetitions,
		&i.NextReviewAt, &lastReviewed,
		&i.TotalReviews, &i.CorrectReviews, &i.IncorrectReviews, &i.AvgResponseTimeMs,
		&i.Strength, &i.CreatedAt, &i.UpdatedAt,
	); err != nil {
		return nil, err
	}
	i.ItemType = model.ItemType(itemType)
	if lastReviewed.Valid {
		t := lastReviewed.Time
		i.LastReviewedAt = &t
	}
	return i, nil
}

func (r *srsItemRepo) GetByKey(ctx context.Context, userID string, itemType model.ItemType, itemID string) (*model.SRSItem, error) {
	row := r.pool.QueryRow(ctx, `
		SELECT `+srsItemCols+`
		FROM user_srs_items
		WHERE user_id = $1 AND item_type = $2 AND item_id = $3
	`, userID, string(itemType), itemID)
	item, err := scanSRSItem(row.Scan)
	if errors.Is(err, pgx.ErrNoRows) {
		return nil, repository.ErrNotFound
	}
	return item, err
}

func (r *srsItemRepo) Create(ctx context.Context, item *model.SRSItem) error {
	if item.ID == "" {
		item.ID = uuid.New().String()
	}
	if item.NextReviewAt.IsZero() {
		item.NextReviewAt = time.Now().UTC()
	}
	if item.EasinessFactor == 0 {
		item.EasinessFactor = model.DefaultEasinessFactor
	}
	err := r.pool.QueryRow(ctx, `
		INSERT INTO user_srs_items (
			id, user_id, item_type, item_id,
			easiness_factor, interval_days, repetitions,
			next_review_at, last_reviewed_at,
			total_reviews, correct_reviews, incorrect_reviews, avg_response_time_ms,
			strength
		) VALUES (
			$1, $2, $3, $4,
			$5, $6, $7,
			$8, $9,
			$10, $11, $12, $13,
			$14
		)
		RETURNING created_at, updated_at
	`,
		item.ID, item.UserID, string(item.ItemType), item.ItemID,
		item.EasinessFactor, item.IntervalDays, item.Repetitions,
		item.NextReviewAt, nullTime(item.LastReviewedAt),
		item.TotalReviews, item.CorrectReviews, item.IncorrectReviews, item.AvgResponseTimeMs,
		item.Strength,
	).Scan(&item.CreatedAt, &item.UpdatedAt)
	if err != nil && isUniqueViolation(err) {
		return repository.ErrAlreadyExists
	}
	return err
}

// Upsert — атомарно. Если строка уже была, RETURNING вернёт её, и
// флаг created вычислим как (created_at == updated_at) для нового
// случая, но точнее — через xmax (postgres): при INSERT xmax=0, при
// апдейте xmax!=0. Используем именно его.
func (r *srsItemRepo) Upsert(ctx context.Context, item *model.SRSItem) (*model.SRSItem, bool, error) {
	if item.ID == "" {
		item.ID = uuid.New().String()
	}
	if item.NextReviewAt.IsZero() {
		item.NextReviewAt = time.Now().UTC()
	}
	if item.EasinessFactor == 0 {
		item.EasinessFactor = model.DefaultEasinessFactor
	}
	row := r.pool.QueryRow(ctx, `
		INSERT INTO user_srs_items (
			id, user_id, item_type, item_id,
			easiness_factor, interval_days, repetitions,
			next_review_at, last_reviewed_at,
			total_reviews, correct_reviews, incorrect_reviews, avg_response_time_ms,
			strength
		) VALUES (
			$1, $2, $3, $4,
			$5, $6, $7,
			$8, $9,
			$10, $11, $12, $13,
			$14
		)
		ON CONFLICT (user_id, item_type, item_id) DO UPDATE
			SET updated_at = user_srs_items.updated_at  -- noop, only return existing
		RETURNING `+srsItemCols+`, (xmax = 0) AS was_inserted
	`,
		item.ID, item.UserID, string(item.ItemType), item.ItemID,
		item.EasinessFactor, item.IntervalDays, item.Repetitions,
		item.NextReviewAt, nullTime(item.LastReviewedAt),
		item.TotalReviews, item.CorrectReviews, item.IncorrectReviews, item.AvgResponseTimeMs,
		item.Strength,
	)
	res := &model.SRSItem{}
	var lastReviewed sql.NullTime
	var itemType string
	var wasInserted bool
	if err := row.Scan(
		&res.ID, &res.UserID, &itemType, &res.ItemID,
		&res.EasinessFactor, &res.IntervalDays, &res.Repetitions,
		&res.NextReviewAt, &lastReviewed,
		&res.TotalReviews, &res.CorrectReviews, &res.IncorrectReviews, &res.AvgResponseTimeMs,
		&res.Strength, &res.CreatedAt, &res.UpdatedAt, &wasInserted,
	); err != nil {
		return nil, false, err
	}
	res.ItemType = model.ItemType(itemType)
	if lastReviewed.Valid {
		t := lastReviewed.Time
		res.LastReviewedAt = &t
	}
	return res, wasInserted, nil
}

func (r *srsItemRepo) Update(ctx context.Context, item *model.SRSItem) error {
	tag, err := r.pool.Exec(ctx, `
		UPDATE user_srs_items SET
			easiness_factor = $1,
			interval_days   = $2,
			repetitions     = $3,
			next_review_at  = $4,
			last_reviewed_at = $5,
			total_reviews   = $6,
			correct_reviews = $7,
			incorrect_reviews = $8,
			avg_response_time_ms = $9,
			strength        = $10,
			updated_at      = NOW()
		WHERE id = $11
	`,
		item.EasinessFactor, item.IntervalDays, item.Repetitions,
		item.NextReviewAt, nullTime(item.LastReviewedAt),
		item.TotalReviews, item.CorrectReviews, item.IncorrectReviews,
		item.AvgResponseTimeMs, item.Strength,
		item.ID,
	)
	if err != nil {
		return err
	}
	if tag.RowsAffected() == 0 {
		return repository.ErrNotFound
	}
	return nil
}

func (r *srsItemRepo) GetDue(ctx context.Context, userID string, itemType model.ItemType, cutoff time.Time, limit int) ([]*model.SRSItem, int, error) {
	if limit <= 0 {
		limit = 20
	}
	args := []any{userID, cutoff}
	where := `user_id = $1 AND next_review_at <= $2`
	if itemType != "" {
		args = append(args, string(itemType))
		where += ` AND item_type = $3`
	}

	var total int
	if err := r.pool.QueryRow(ctx,
		`SELECT COUNT(*) FROM user_srs_items WHERE `+where,
		args...,
	).Scan(&total); err != nil {
		return nil, 0, err
	}

	args = append(args, limit)
	limitArg := len(args)
	rows, err := r.pool.Query(ctx, `
		SELECT `+srsItemCols+`
		FROM user_srs_items
		WHERE `+where+`
		ORDER BY next_review_at ASC
		LIMIT $`+itoa(limitArg)+`
	`, args...)
	if err != nil {
		return nil, 0, err
	}
	defer rows.Close()
	out, err := scanSRSItems(rows)
	return out, total, err
}

func (r *srsItemRepo) GetWeak(ctx context.Context, userID string, itemType model.ItemType, limit int) ([]*model.SRSItem, error) {
	if limit <= 0 {
		limit = 20
	}
	args := []any{userID}
	where := `user_id = $1`
	if itemType != "" {
		args = append(args, string(itemType))
		where += ` AND item_type = $2`
	}
	args = append(args, limit)
	limitArg := len(args)
	rows, err := r.pool.Query(ctx, `
		SELECT `+srsItemCols+`
		FROM user_srs_items
		WHERE `+where+`
		ORDER BY strength ASC, next_review_at ASC
		LIMIT $`+itoa(limitArg)+`
	`, args...)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	return scanSRSItems(rows)
}

func (r *srsItemRepo) Stats(ctx context.Context, userID string, now, todayStart time.Time) (*repository.SRSStats, error) {
	stats := &repository.SRSStats{}
	err := r.pool.QueryRow(ctx, `
		SELECT
			COUNT(*)::int                                                       AS total,
			COUNT(*) FILTER (WHERE next_review_at <= $2)::int                   AS due_now,
			COUNT(*) FILTER (WHERE strength >= 0.9)::int                        AS mastered,
			COUNT(*) FILTER (WHERE strength > 0 AND strength < 0.9)::int        AS learning,
			COUNT(*) FILTER (WHERE strength = 0)::int                           AS fresh
		FROM user_srs_items
		WHERE user_id = $1
	`, userID, now).Scan(&stats.Total, &stats.DueNow, &stats.Mastered, &stats.Learning, &stats.Fresh)
	if err != nil {
		return nil, err
	}
	// Reviewed today — отдельным запросом, чтобы не тянуть join большой
	// истории в общем агрегате.
	err = r.pool.QueryRow(ctx, `
		SELECT COUNT(*)::int
		FROM srs_review_history
		WHERE user_id = $1 AND reviewed_at >= $2
	`, userID, todayStart).Scan(&stats.ReviewedToday)
	if err != nil {
		return nil, err
	}
	return stats, nil
}

func (r *srsItemRepo) ListUserIDsWithDue(ctx context.Context, cutoff time.Time, limit, offset int) ([]string, error) {
	if limit <= 0 {
		limit = 500
	}
	if offset < 0 {
		offset = 0
	}
	rows, err := r.pool.Query(ctx, `
		SELECT DISTINCT user_id
		FROM user_srs_items
		WHERE next_review_at <= $1
		ORDER BY user_id
		LIMIT $2 OFFSET $3
	`, cutoff, limit, offset)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	out := make([]string, 0, limit)
	for rows.Next() {
		var uid string
		if err := rows.Scan(&uid); err != nil {
			return nil, err
		}
		out = append(out, uid)
	}
	return out, rows.Err()
}

func scanSRSItems(rows pgx.Rows) ([]*model.SRSItem, error) {
	var out []*model.SRSItem
	for rows.Next() {
		i, err := scanSRSItem(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, i)
	}
	return out, rows.Err()
}
