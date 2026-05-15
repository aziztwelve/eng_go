-- Phase 4: cohorts — группы по 30 человек на 1 неделю (понедельник 00:00 UTC
-- → воскресенье 23:59 UTC).
--
-- Когорта закрывается WeeklyRotation cron'ом → is_finished=true. После этого
-- юзеры reassigned в новые когорты следующей недели.

SET search_path TO social;

CREATE TABLE IF NOT EXISTS cohorts (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    league_id       INT         NOT NULL REFERENCES leagues(id),

    -- ISO-week boundaries в UTC.
    cycle_start_at  TIMESTAMPTZ NOT NULL,
    cycle_end_at    TIMESTAMPTZ NOT NULL,

    is_finished     BOOLEAN     NOT NULL DEFAULT FALSE,
    member_count    INT         NOT NULL DEFAULT 0,

    created_at      TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CHECK (cycle_end_at > cycle_start_at),
    CHECK (member_count >= 0)
);

-- Поиск открытой когорты конкретной лиги текущего цикла.
CREATE INDEX IF NOT EXISTS idx_cohorts_league_cycle
    ON cohorts (league_id, cycle_start_at);

-- Поиск активных когорт для weekly rotation.
CREATE INDEX IF NOT EXISTS idx_cohorts_active
    ON cohorts (cycle_end_at) WHERE is_finished = FALSE;

COMMENT ON TABLE cohorts IS
    'Группа до 30 юзеров одной лиги на одну неделю. is_finished=true ставится WeeklyRotation cron''ом.';
