SET search_path TO gamification;

CREATE TABLE IF NOT EXISTS streak_history (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id     UUID NOT NULL,
    date        DATE NOT NULL,
    completed   BOOLEAN NOT NULL,
    used_freeze BOOLEAN NOT NULL DEFAULT FALSE,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (user_id, date)
);

CREATE INDEX IF NOT EXISTS idx_streak_history_user_date
    ON streak_history(user_id, date DESC);
