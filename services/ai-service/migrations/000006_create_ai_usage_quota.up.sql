-- Phase 5: ai_usage_quota — суточные счётчики free-плана.
--
-- Один row на (user_id, date). Каждый AI-call атомарно инкрементит
-- соответствующий счётчик через UPSERT. Range-query «по неделе/месяцу»
-- возможен через scan по date.
--
-- Reset происходит естественно: новый день = новая запись.

SET search_path TO ai;

CREATE TABLE IF NOT EXISTS ai_usage_quota (
    user_id        UUID         NOT NULL,
    date           DATE         NOT NULL,
    chat_requests  INT          NOT NULL DEFAULT 0,
    voice_minutes  DECIMAL(5,2) NOT NULL DEFAULT 0,
    writing_checks INT          NOT NULL DEFAULT 0,

    PRIMARY KEY (user_id, date)
);

CREATE INDEX IF NOT EXISTS idx_ai_quota_date
    ON ai_usage_quota(date);
