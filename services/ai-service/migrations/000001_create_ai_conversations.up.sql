-- Phase 5: ai_conversations — AI-сессии (free chat / roleplay / tutor).
--
-- Один пользователь — много conversations. message_count / total_tokens /
-- cost_usd денормализованы для быстрого ListConversations без агрегатов.

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_conversations (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id         UUID         NOT NULL,
    title           TEXT,
    scenario        VARCHAR(50)  NOT NULL,         -- free_chat | roleplay_<id> | tutor_qa
    target_language VARCHAR(10)  NOT NULL,
    user_level      VARCHAR(5),                    -- A1..C2
    model           VARCHAR(50),

    -- Stats (денормализация для быстрого list)
    message_count   INT          NOT NULL DEFAULT 0,
    total_tokens    INT          NOT NULL DEFAULT 0,
    cost_usd        DECIMAL(10,4) NOT NULL DEFAULT 0,

    started_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    last_message_at TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    ended_at        TIMESTAMPTZ                    -- soft-delete
);

CREATE INDEX IF NOT EXISTS idx_ai_conv_user_started
    ON ai_conversations(user_id, started_at DESC)
    WHERE ended_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_ai_conv_scenario
    ON ai_conversations(scenario);
