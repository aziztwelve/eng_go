SET search_path TO gamification;

CREATE TABLE IF NOT EXISTS user_stats (
    user_id        UUID PRIMARY KEY,
    level          INT NOT NULL DEFAULT 1,
    total_xp       INT NOT NULL DEFAULT 0,
    weekly_xp      INT NOT NULL DEFAULT 0,
    current_streak INT NOT NULL DEFAULT 0,
    max_streak     INT NOT NULL DEFAULT 0,
    last_lesson_at TIMESTAMPTZ,
    hearts         INT NOT NULL DEFAULT 5,
    max_hearts     INT NOT NULL DEFAULT 5,
    next_heart_at  TIMESTAMPTZ,
    gems           INT NOT NULL DEFAULT 0,
    streak_freezes INT NOT NULL DEFAULT 0,
    created_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at     TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_user_stats_total_xp  ON user_stats(total_xp  DESC);
CREATE INDEX IF NOT EXISTS idx_user_stats_weekly_xp ON user_stats(weekly_xp DESC);
