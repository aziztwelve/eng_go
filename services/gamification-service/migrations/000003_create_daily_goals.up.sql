SET search_path TO gamification;

CREATE TABLE IF NOT EXISTS daily_goals (
    user_id    UUID PRIMARY KEY,
    target_xp  INT NOT NULL DEFAULT 20,
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS daily_goal_progress (
    user_id      UUID NOT NULL,
    date         DATE NOT NULL,
    xp_earned    INT  NOT NULL DEFAULT 0,
    goal         INT  NOT NULL,
    completed    BOOLEAN NOT NULL DEFAULT FALSE,
    completed_at TIMESTAMPTZ,
    PRIMARY KEY (user_id, date)
);

CREATE INDEX IF NOT EXISTS idx_daily_goal_progress_date
    ON daily_goal_progress(date);
