-- Phase 4: league_history — финальный итог недели в каждой когорте.
--
-- Запись создаётся WeeklyRotation cron'ом для каждого юзера в закрывающейся
-- когорте. Одна запись = (user_id, cycle_start_at) — pseudo-primary через
-- UNIQUE.

SET search_path TO social;

CREATE TABLE IF NOT EXISTS league_history (
    id              UUID        PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID        NOT NULL,
    league_id       INT         NOT NULL REFERENCES leagues(id),
    cohort_id       UUID        NOT NULL REFERENCES cohorts(id),

    cycle_start_at  TIMESTAMPTZ NOT NULL,
    cycle_end_at    TIMESTAMPTZ NOT NULL,

    final_xp        INT         NOT NULL,
    final_rank      INT         NOT NULL,

    promoted        BOOLEAN     NOT NULL DEFAULT FALSE,
    demoted         BOOLEAN     NOT NULL DEFAULT FALSE,
    gems_earned     INT         NOT NULL DEFAULT 0,

    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    UNIQUE (user_id, cycle_start_at),
    CHECK (final_rank BETWEEN 1 AND 30),
    CHECK (final_xp >= 0),
    CHECK (NOT (promoted AND demoted))   -- взаимоисключающие
);

CREATE INDEX IF NOT EXISTS idx_league_history_user
    ON league_history (user_id, cycle_start_at DESC);

CREATE INDEX IF NOT EXISTS idx_league_history_cohort
    ON league_history (cohort_id);

COMMENT ON TABLE league_history IS
    'Архив выступлений юзеров в лигах. Создаётся WeeklyRotation cron''ом.';
