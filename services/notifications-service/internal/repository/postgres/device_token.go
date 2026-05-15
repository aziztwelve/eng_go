package postgres

import (
	"context"
	"database/sql"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5/pgxpool"

	"github.com/elearning/notifications-service/internal/model"
	"github.com/elearning/notifications-service/internal/repository"
)

const deviceCols = `id, user_id, platform, token,
	endpoint, p256dh, auth, user_agent, locale,
	last_seen_at, revoked_at, created_at`

type deviceRepo struct {
	pool *pgxpool.Pool
}

// NewDeviceTokenRepository — конструктор.
func NewDeviceTokenRepository(pool *pgxpool.Pool) repository.DeviceTokenRepository {
	return &deviceRepo{pool: pool}
}

func scanDevice(scan func(...any) error) (*model.DeviceToken, error) {
	d := &model.DeviceToken{}
	var platform string
	var revoked sql.NullTime
	if err := scan(
		&d.ID, &d.UserID, &platform, &d.Token,
		&d.Endpoint, &d.P256DH, &d.Auth, &d.UserAgent, &d.Locale,
		&d.LastSeenAt, &revoked, &d.CreatedAt,
	); err != nil {
		return nil, err
	}
	d.Platform = model.Platform(platform)
	if revoked.Valid {
		t := revoked.Time
		d.RevokedAt = &t
	}
	return d, nil
}

// Upsert — INSERT … ON CONFLICT (user_id, platform, token) DO UPDATE.
// При конфликте — обновляет endpoint/p256dh/auth/user_agent/locale,
// поднимает last_seen_at и снимает revoked_at (если был отозван).
func (r *deviceRepo) Upsert(ctx context.Context, d *model.DeviceToken) (*model.DeviceToken, bool, error) {
	if d.ID == "" {
		d.ID = uuid.New().String()
	}
	row := r.pool.QueryRow(ctx, `
		INSERT INTO device_tokens (
			id, user_id, platform, token,
			endpoint, p256dh, auth, user_agent, locale
		) VALUES (
			$1, $2, $3, $4,
			$5, $6, $7, $8, $9
		)
		ON CONFLICT (user_id, platform, token) DO UPDATE
			SET endpoint    = EXCLUDED.endpoint,
			    p256dh      = EXCLUDED.p256dh,
			    auth        = EXCLUDED.auth,
			    user_agent  = EXCLUDED.user_agent,
			    locale      = EXCLUDED.locale,
			    last_seen_at = NOW(),
			    revoked_at  = NULL
		RETURNING `+deviceCols+`, (xmax = 0) AS was_inserted
	`,
		d.ID, d.UserID, string(d.Platform), d.Token,
		d.Endpoint, d.P256DH, d.Auth, d.UserAgent, d.Locale,
	)
	res := &model.DeviceToken{}
	var platform string
	var revoked sql.NullTime
	var wasInserted bool
	if err := row.Scan(
		&res.ID, &res.UserID, &platform, &res.Token,
		&res.Endpoint, &res.P256DH, &res.Auth, &res.UserAgent, &res.Locale,
		&res.LastSeenAt, &revoked, &res.CreatedAt, &wasInserted,
	); err != nil {
		return nil, false, err
	}
	res.Platform = model.Platform(platform)
	if revoked.Valid {
		t := revoked.Time
		res.RevokedAt = &t
	}
	return res, wasInserted, nil
}

func (r *deviceRepo) RevokeByID(ctx context.Context, userID, id string) (int32, error) {
	tag, err := r.pool.Exec(ctx, `
		UPDATE device_tokens SET revoked_at = NOW()
		WHERE user_id = $1 AND id = $2 AND revoked_at IS NULL
	`, userID, id)
	if err != nil {
		return 0, err
	}
	return int32(tag.RowsAffected()), nil
}

func (r *deviceRepo) RevokeByToken(ctx context.Context, userID string, platform model.Platform, token string) (int32, error) {
	tag, err := r.pool.Exec(ctx, `
		UPDATE device_tokens SET revoked_at = NOW()
		WHERE user_id = $1 AND platform = $2 AND token = $3 AND revoked_at IS NULL
	`, userID, string(platform), token)
	if err != nil {
		return 0, err
	}
	return int32(tag.RowsAffected()), nil
}

func (r *deviceRepo) ListActive(ctx context.Context, userID string) ([]*model.DeviceToken, error) {
	return r.list(ctx, userID, true)
}

func (r *deviceRepo) ListAll(ctx context.Context, userID string) ([]*model.DeviceToken, error) {
	return r.list(ctx, userID, false)
}

func (r *deviceRepo) list(ctx context.Context, userID string, activeOnly bool) ([]*model.DeviceToken, error) {
	q := `SELECT ` + deviceCols + ` FROM device_tokens WHERE user_id = $1`
	if activeOnly {
		q += ` AND revoked_at IS NULL`
	}
	q += ` ORDER BY last_seen_at DESC`
	rows, err := r.pool.Query(ctx, q, userID)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	var out []*model.DeviceToken
	for rows.Next() {
		d, err := scanDevice(rows.Scan)
		if err != nil {
			return nil, err
		}
		out = append(out, d)
	}
	return out, rows.Err()
}

