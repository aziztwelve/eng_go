-- Phase 2: step_attempts — попытки прохождения интерактивных шагов.
-- Хранит сырой ответ юзера в JSONB (структура зависит от типа шага).
-- Один шаг может быть выполнен много раз (история retry).

SET search_path TO step_validation;

CREATE TABLE IF NOT EXISTS step_attempts (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID NOT NULL,
    step_id         UUID NOT NULL,
    lesson_id       UUID,
    step_type       VARCHAR(50) NOT NULL,   -- translate, match_pairs, ...
    answer          JSONB NOT NULL,
    is_correct      BOOLEAN NOT NULL,
    score           DOUBLE PRECISION NOT NULL DEFAULT 0,
    time_spent_ms   INT,
    created_at      TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_step_attempts_user_step
    ON step_attempts(user_id, step_id);

CREATE INDEX IF NOT EXISTS idx_step_attempts_created
    ON step_attempts(created_at DESC);

CREATE INDEX IF NOT EXISTS idx_step_attempts_step_type
    ON step_attempts(step_type);

COMMENT ON TABLE step_attempts IS
    'Попытки прохождения интерактивных шагов. Один step_id может ' ||
    'иметь много попыток одного user_id — храним всю историю.';
COMMENT ON COLUMN step_attempts.answer IS
    'Сырой ответ пользователя (JSON). Структура зависит от step_type — ' ||
    'см. docs/tasks/phase-2-step-formats.md.';
