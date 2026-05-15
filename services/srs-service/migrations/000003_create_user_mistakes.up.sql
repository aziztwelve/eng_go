-- Phase 3: user_mistakes — ошибки пользователя для повторения.
-- Накапливаются при is_correct=false из step-validation-service.
-- При следующем правильном ответе на тот же step_id запись
-- помечается is_resolved=true.
--
-- Если та же пара (user_id, step_id, answer_hash) встречается снова —
-- инкрементируется times_made (на уровне service-layer, ON CONFLICT).

SET search_path TO srs;

CREATE TABLE IF NOT EXISTS user_mistakes (
    id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id          UUID NOT NULL,
    step_id          UUID NOT NULL,
    incorrect_answer JSONB NOT NULL,
    answer_hash      TEXT  NOT NULL,             -- md5(canonical_json(answer))
    times_made       INT   NOT NULL DEFAULT 1,
    last_made_at     TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    is_resolved      BOOLEAN NOT NULL DEFAULT FALSE,
    resolved_at      TIMESTAMPTZ,
    created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    UNIQUE (user_id, step_id, answer_hash)
);

CREATE INDEX IF NOT EXISTS idx_mistakes_user_unresolved
    ON user_mistakes (user_id, is_resolved, last_made_at DESC);

CREATE INDEX IF NOT EXISTS idx_mistakes_user_step
    ON user_mistakes (user_id, step_id);

COMMENT ON TABLE user_mistakes IS
    'Ошибки юзера для целевого повторения. Дедуплицируются по ' ||
    '(user_id, step_id, answer_hash); times_made инкрементируется.';
