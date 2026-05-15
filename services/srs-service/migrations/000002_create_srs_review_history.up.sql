-- Phase 3: srs_review_history — журнал всех ревью SRS-карточек.
-- Используется для аналитики (retention rate, training time) и
-- генерации practice-сессий ("давно не повторял").
--
-- Snapshot после применения SM-2 храним прямо тут, чтобы можно было
-- проиграть историю не пересчитывая алгоритм.

SET search_path TO srs;

CREATE TABLE IF NOT EXISTS srs_review_history (
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    srs_item_id         UUID NOT NULL REFERENCES srs.user_srs_items(id) ON DELETE CASCADE,
    user_id             UUID NOT NULL,
    quality             INT  NOT NULL,
    response_time_ms    INT  NOT NULL DEFAULT 0,
    used_hint           BOOLEAN NOT NULL DEFAULT FALSE,
    reviewed_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    -- snapshot после применения SM-2
    new_interval_days   INT NOT NULL,
    new_easiness_factor DOUBLE PRECISION NOT NULL,
    new_repetitions     INT NOT NULL,

    CHECK (quality >= 0 AND quality <= 5)
);

CREATE INDEX IF NOT EXISTS idx_srs_history_user
    ON srs_review_history (user_id, reviewed_at DESC);

CREATE INDEX IF NOT EXISTS idx_srs_history_item
    ON srs_review_history (srs_item_id, reviewed_at DESC);

COMMENT ON TABLE srs_review_history IS
    'Журнал ревью SRS-карточек. Один appoint = один RecordReview.';
