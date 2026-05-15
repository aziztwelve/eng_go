-- Phase 5: ai_writing_assessments — оценки письменных работ.
--
-- feedback — JSONB-массив { category, issue, suggestion }.
-- Один пользователь — много оценок (любая попытка writing exercise).

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_writing_assessments (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID         NOT NULL,
    prompt          TEXT,
    user_text       TEXT         NOT NULL,
    target_language VARCHAR(10),
    user_level      VARCHAR(5),

    -- Scores 0..100
    overall_score   INT          NOT NULL DEFAULT 0,
    grammar_score   INT          NOT NULL DEFAULT 0,
    vocab_score     INT          NOT NULL DEFAULT 0,
    coherence_score INT          NOT NULL DEFAULT 0,
    style_score     INT          NOT NULL DEFAULT 0,

    corrected_text  TEXT,
    feedback        JSONB        NOT NULL DEFAULT '[]'::jsonb,

    tokens_used     INT          NOT NULL DEFAULT 0,
    cost_usd        DECIMAL(10,6) NOT NULL DEFAULT 0,

    created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_ai_writing_user
    ON ai_writing_assessments(user_id, created_at DESC);
