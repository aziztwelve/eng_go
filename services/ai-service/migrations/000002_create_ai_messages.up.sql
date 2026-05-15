-- Phase 5: ai_messages — сообщения внутри AI-беседы.
--
-- corrections — JSONB-массив объектов {original, corrected, explanation}
-- для assistant-replies (поправки грамматики предыдущего user-сообщения).
-- translation — перевод reply на native-язык (для assistant).

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_messages (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    conversation_id UUID         NOT NULL REFERENCES ai_conversations(id) ON DELETE CASCADE,
    role            VARCHAR(20)  NOT NULL,         -- user | assistant | system
    content         TEXT         NOT NULL,
    audio_url       TEXT,

    corrections     JSONB        NOT NULL DEFAULT '[]'::jsonb,
    translation     TEXT,

    tokens_used     INT          NOT NULL DEFAULT 0,
    cost_usd        DECIMAL(10,6) NOT NULL DEFAULT 0,

    created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_ai_messages_conv_created
    ON ai_messages(conversation_id, created_at);
