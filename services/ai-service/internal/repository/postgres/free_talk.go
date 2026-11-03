package postgres

import (
	"context"
	"github.com/jackc/pgx/v5/pgxpool"
	"time"
)

type FreeTalkSessions struct{ pool *pgxpool.Pool }

func NewFreeTalkSessions(pool *pgxpool.Pool) *FreeTalkSessions { return &FreeTalkSessions{pool: pool} }

// One server-timed five-minute session per user and UTC day; concurrent
// requests share the same row and never extend its expiry.
func (r *FreeTalkSessions) Reserve(ctx context.Context, userID, conversationID string) (string, time.Time, error) {
	var existing string
	var expires time.Time
	err := r.pool.QueryRow(ctx, `
 INSERT INTO free_talk_daily_sessions (user_id, session_date, conversation_id, started_at, expires_at)
 VALUES ($1, (now() AT TIME ZONE 'UTC')::date, $2, now(),
   LEAST(now() + interval '5 minutes', date_trunc('day', now() AT TIME ZONE 'UTC') AT TIME ZONE 'UTC' + interval '1 day'))
 ON CONFLICT (user_id, session_date) DO UPDATE SET user_id = EXCLUDED.user_id
 RETURNING conversation_id::text, expires_at`, userID, conversationID).Scan(&existing, &expires)
	return existing, expires, err
}
func (r *FreeTalkSessions) Active(ctx context.Context, userID, conversationID string) (bool, error) {
	var ok bool
	err := r.pool.QueryRow(ctx, `SELECT EXISTS (SELECT 1 FROM free_talk_daily_sessions
 WHERE user_id=$1 AND session_date=(now() AT TIME ZONE 'UTC')::date
 AND conversation_id=$2 AND expires_at > now())`, userID, conversationID).Scan(&ok)
	return ok, err
}
