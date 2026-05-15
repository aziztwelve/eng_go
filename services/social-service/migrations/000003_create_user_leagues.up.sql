-- Phase 4: user_leagues — текущая привязка юзера к лиге и когорте.
--
-- Один юзер = одна запись (PRIMARY KEY user_id). При WeeklyRotation
-- запись UPDATE'ится: новый league_id, новый cohort_id, weekly_xp=0.
--
-- weekly_xp обновляется Kafka consumer'ом (xp.gained) синхронно с Redis
-- ZIncrBy. При расхождении Redis is the source of truth для leaderboard,
-- Postgres — для отчётности и snapshot rank.

SET search_path TO social;

CREATE TABLE IF NOT EXISTS user_leagues (
    user_id          UUID        PRIMARY KEY,
    league_id        INT         NOT NULL REFERENCES leagues(id),
    cohort_id        UUID        NOT NULL REFERENCES cohorts(id),

    weekly_xp        INT         NOT NULL DEFAULT 0,
    rank_in_cohort   INT,        -- nullable до первого snapshot

    joined_at        TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    last_updated_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CHECK (weekly_xp >= 0),
    CHECK (rank_in_cohort IS NULL OR (rank_in_cohort BETWEEN 1 AND 30))
);

-- Леaderboard сортировка (когда читаем из Postgres как fallback).
CREATE INDEX IF NOT EXISTS idx_user_leagues_cohort_xp
    ON user_leagues (cohort_id, weekly_xp DESC);

-- Поиск всех юзеров в когорте при WeeklyRotation.
CREATE INDEX IF NOT EXISTS idx_user_leagues_cohort
    ON user_leagues (cohort_id);

COMMENT ON TABLE user_leagues IS
    'Текущая привязка юзера к лиге/когорте. UPDATE на WeeklyRotation. weekly_xp обновляется через Kafka consumer.';
