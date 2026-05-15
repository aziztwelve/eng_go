-- Phase 5: ai_explanations — кэш объяснений ошибок.
--
-- Дедуп по (step_id, md5(incorrect_answer)) — повторные одинаковые ошибки
-- мгновенно достают cached explanation. md5 хранится отдельным колонком
-- для UNIQUE-индекса (нельзя индексировать выражение по TEXT в Postgres
-- эффективно для коротких ответов).

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_explanations (
    id                 UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id            UUID         NOT NULL,
    step_id            UUID,
    incorrect_answer   TEXT         NOT NULL,
    incorrect_answer_md5 CHAR(32)   NOT NULL,
    correct_answer     TEXT,
    explanation        TEXT         NOT NULL,
    target_language    VARCHAR(10),
    native_language    VARCHAR(10),

    tokens_used        INT          NOT NULL DEFAULT 0,
    cost_usd           DECIMAL(10,6) NOT NULL DEFAULT 0,

    created_at         TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- Кэш-ключ. step_id может быть NULL (general explain) — тогда
-- объяснения не дедуплицируются (поведение Postgres NULL).
CREATE UNIQUE INDEX IF NOT EXISTS uniq_ai_expl_step_md5
    ON ai_explanations(step_id, incorrect_answer_md5);

CREATE INDEX IF NOT EXISTS idx_ai_expl_user
    ON ai_explanations(user_id, created_at DESC);
