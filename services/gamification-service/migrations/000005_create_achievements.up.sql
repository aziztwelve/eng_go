SET search_path TO gamification;

CREATE TABLE IF NOT EXISTS achievements (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code        VARCHAR(64) UNIQUE NOT NULL,
    title       VARCHAR(128) NOT NULL,
    description TEXT,
    icon_url    TEXT,
    category    VARCHAR(32),
    tier        INT NOT NULL DEFAULT 1,
    xp_reward   INT NOT NULL DEFAULT 0,
    gems_reward INT NOT NULL DEFAULT 0,
    criteria    JSONB NOT NULL,
    is_hidden   BOOLEAN NOT NULL DEFAULT FALSE,
    created_at  TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_achievements_category ON achievements(category);

CREATE TABLE IF NOT EXISTS user_achievements (
    user_id        UUID NOT NULL,
    achievement_id UUID NOT NULL REFERENCES achievements(id) ON DELETE CASCADE,
    progress       INT NOT NULL DEFAULT 0,
    unlocked_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, achievement_id)
);

CREATE INDEX IF NOT EXISTS idx_user_achievements_user
    ON user_achievements(user_id);
