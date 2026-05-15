-- Phase 3: user_srs_items — SM-2 карточки повторения.
-- Одна запись = (user_id, item_type, item_id). Уникальность по этой тройке.
--
-- SM-2 параметры:
--   easiness_factor — коэффициент легкости (default 2.5, min 1.3)
--   interval_days   — текущий интервал между ревью
--   repetitions     — счётчик правильных ответов подряд
--
-- Производные:
--   strength — 0.0..1.0, рассчитывается из accuracy * min(1.0, reps/10).
--   next_review_at — last_reviewed_at + interval_days (или created_at для новых).

SET search_path TO srs;

CREATE TABLE IF NOT EXISTS user_srs_items (
    id                   UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id              UUID NOT NULL,
    item_type            VARCHAR(20) NOT NULL,        -- vocabulary | step | phrase
    item_id              UUID NOT NULL,

    -- SM-2
    easiness_factor      DOUBLE PRECISION NOT NULL DEFAULT 2.5,
    interval_days        INT              NOT NULL DEFAULT 0,
    repetitions          INT              NOT NULL DEFAULT 0,

    -- Расписание
    next_review_at       TIMESTAMPTZ      NOT NULL DEFAULT NOW(),
    last_reviewed_at     TIMESTAMPTZ,

    -- Статистика
    total_reviews        INT              NOT NULL DEFAULT 0,
    correct_reviews      INT              NOT NULL DEFAULT 0,
    incorrect_reviews    INT              NOT NULL DEFAULT 0,
    avg_response_time_ms INT              NOT NULL DEFAULT 0,

    -- Производное
    strength             DOUBLE PRECISION NOT NULL DEFAULT 0.0,

    created_at           TIMESTAMPTZ      NOT NULL DEFAULT NOW(),
    updated_at           TIMESTAMPTZ      NOT NULL DEFAULT NOW(),

    UNIQUE (user_id, item_type, item_id),
    CHECK (item_type IN ('vocabulary', 'step', 'phrase')),
    CHECK (easiness_factor >= 1.3),
    CHECK (strength >= 0.0 AND strength <= 1.0)
);

CREATE INDEX IF NOT EXISTS idx_srs_items_user_due
    ON user_srs_items (user_id, next_review_at);

CREATE INDEX IF NOT EXISTS idx_srs_items_user_strength
    ON user_srs_items (user_id, strength);

CREATE INDEX IF NOT EXISTS idx_srs_items_user_type
    ON user_srs_items (user_id, item_type);

COMMENT ON TABLE user_srs_items IS
    'SM-2 карточки повторения. Один (user_id, item_type, item_id) ' ||
    'создаётся лениво при первой встрече материала.';
COMMENT ON COLUMN user_srs_items.strength IS
    'Производная характеристика 0..1: accuracy * min(1, reps/10). ' ||
    'Не хранится в SM-2, но удобна для weak/mastered фильтров.';
