-- Phase 5: ai_pronunciation_attempts — попытки произношения.
--
-- audio_url хранится в MinIO (на MVP — mock URL). word_scores —
-- JSONB-массив { word, score, feedback }.

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_pronunciation_attempts (
    id               UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id          UUID         NOT NULL,
    step_id          UUID,
    target_text      TEXT         NOT NULL,
    audio_url        TEXT,                          -- MinIO URL (mock на MVP)
    audio_mime       VARCHAR(50),
    transcribed_text TEXT,
    language         VARCHAR(10),

    accuracy_score   DECIMAL(3,2) NOT NULL DEFAULT 0,    -- 0.00..1.00
    word_scores      JSONB        NOT NULL DEFAULT '[]'::jsonb,
    feedback         TEXT,

    tokens_used      INT          NOT NULL DEFAULT 0,
    cost_usd         DECIMAL(10,6) NOT NULL DEFAULT 0,

    created_at       TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_ai_pron_user
    ON ai_pronunciation_attempts(user_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_ai_pron_step
    ON ai_pronunciation_attempts(step_id, created_at DESC)
    WHERE step_id IS NOT NULL;
