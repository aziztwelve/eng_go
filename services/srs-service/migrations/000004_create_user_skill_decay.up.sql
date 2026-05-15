-- Phase 3 (full): user_skill_decay — "ржавчина" навыков.
--
-- Skill = (user_id, skill_id, skill_type), где skill_id — module_id
-- или lesson_id из course-service. skill_type определяет гранулярность.
--
-- DailyDecay cron каждый день уменьшает current_strength на
-- decay_rate * days_since_last_practice (clamped в [0..1]).
-- StrengthenSkill при практике / правильном ответе подпинает обратно.
--
-- initial_strength фиксируется в момент init и не меняется — нужен
-- для метрики "сколько в среднем юзеры теряют".

SET search_path TO srs;

CREATE TABLE IF NOT EXISTS user_skill_decay (
    user_id          UUID             NOT NULL,
    skill_id         UUID             NOT NULL,
    skill_type       VARCHAR(20)      NOT NULL,    -- module | lesson

    initial_strength DOUBLE PRECISION NOT NULL DEFAULT 1.0,
    current_strength DOUBLE PRECISION NOT NULL DEFAULT 1.0,
    decay_rate       DOUBLE PRECISION NOT NULL DEFAULT 0.05,

    last_practiced_at TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    created_at        TIMESTAMPTZ     NOT NULL DEFAULT NOW(),
    updated_at        TIMESTAMPTZ     NOT NULL DEFAULT NOW(),

    PRIMARY KEY (user_id, skill_id),
    CHECK (skill_type IN ('module', 'lesson')),
    CHECK (initial_strength >= 0.0 AND initial_strength <= 1.0),
    CHECK (current_strength >= 0.0 AND current_strength <= 1.0),
    CHECK (decay_rate > 0.0 AND decay_rate <= 1.0)
);

CREATE INDEX IF NOT EXISTS idx_skill_decay_user_strength
    ON user_skill_decay (user_id, current_strength);

CREATE INDEX IF NOT EXISTS idx_skill_decay_last_practiced
    ON user_skill_decay (last_practiced_at);

COMMENT ON TABLE user_skill_decay IS
    'Skill strength + decay rate per (user, skill). Cron каждый день ' ||
    'уменьшает current_strength.';
COMMENT ON COLUMN user_skill_decay.decay_rate IS
    'Сколько strength терять за день. Default 0.05 = 20 дней до 0 без практики.';
