-- Phase 5: ai_message_feedback — оценки assistant-ответов от юзера
-- (thumbs up/down + опциональный комментарий).
--
-- UNIQUE (user_id, message_id): один юзер — одна оценка per message.
-- Повторный thumbs up/down по тому же сообщению — UPSERT.
-- Только assistant-сообщения подлежат оценке (контролируется в service).

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_message_feedback (
    id              UUID         PRIMARY KEY DEFAULT gen_random_uuid(),
    message_id      UUID         NOT NULL REFERENCES ai_messages(id) ON DELETE CASCADE,
    conversation_id UUID         NOT NULL REFERENCES ai_conversations(id) ON DELETE CASCADE,
    user_id         UUID         NOT NULL,
    rating          SMALLINT     NOT NULL,         -- +1 = thumbs up, -1 = thumbs down
    comment         TEXT,                          -- optional free-text feedback
    created_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMPTZ  NOT NULL DEFAULT NOW(),

    CONSTRAINT ai_message_feedback_user_message_uniq UNIQUE (user_id, message_id),
    CONSTRAINT ai_message_feedback_rating_check       CHECK (rating IN (-1, 1))
);

CREATE INDEX IF NOT EXISTS idx_ai_message_feedback_message
    ON ai_message_feedback(message_id);

CREATE INDEX IF NOT EXISTS idx_ai_message_feedback_user_created
    ON ai_message_feedback(user_id, created_at DESC);

-- Aggregate-friendly partial индексы для аналитики (отсюда быстро
-- считать total likes / dislikes per message без полного скана).
CREATE INDEX IF NOT EXISTS idx_ai_message_feedback_likes
    ON ai_message_feedback(message_id) WHERE rating = 1;
CREATE INDEX IF NOT EXISTS idx_ai_message_feedback_dislikes
    ON ai_message_feedback(message_id) WHERE rating = -1;
