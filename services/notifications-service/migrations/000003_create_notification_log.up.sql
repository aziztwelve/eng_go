-- Phase 3: notification_log — журнал отправок + in-app inbox.
--
-- Двойное назначение:
--   1. Дедуп: уникальный (user_id, channel, dedup_key) предотвращает
--      повторные отправки одного и того же напоминания за сутки.
--   2. In-app лента: GET /notifications возвращает строки этой
--      таблицы как пользовательский inbox. is_read управляется фронтом.
SET search_path TO notifications;

CREATE TABLE IF NOT EXISTS notification_log (
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id             UUID NOT NULL,
    channel             VARCHAR(32) NOT NULL,         -- practice_reminder | streak_risk | daily_goal | achievement
    kind                VARCHAR(64) NOT NULL,         -- machine slug, default == channel

    title               TEXT NOT NULL,
    body                TEXT NOT NULL DEFAULT '',
    data                JSONB NOT NULL DEFAULT '{}'::jsonb,

    -- Дедуп
    dedup_key           VARCHAR(128) NOT NULL,        -- например '2026-05-15' / 'achievement:<id>'

    status              VARCHAR(16) NOT NULL DEFAULT 'queued',  -- queued | sent | failed | skipped
    error               TEXT NOT NULL DEFAULT '',
    skipped_reason      VARCHAR(32) NOT NULL DEFAULT '',        -- pref | quiet_hours | dedup | no_devices

    devices_attempted   INT NOT NULL DEFAULT 0,
    devices_succeeded   INT NOT NULL DEFAULT 0,

    is_read             BOOLEAN NOT NULL DEFAULT FALSE,
    read_at             TIMESTAMPTZ,

    scheduled_at        TIMESTAMPTZ,                  -- желаемое время доставки (NULL → сразу)
    sent_at             TIMESTAMPTZ,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    -- Дедуп — основной сценарий запросов на запись.
    UNIQUE (user_id, channel, dedup_key),
    CHECK (channel IN ('practice_reminder', 'streak_risk', 'daily_goal', 'achievement')),
    CHECK (status  IN ('queued', 'sent', 'failed', 'skipped'))
);

CREATE INDEX IF NOT EXISTS idx_notification_log_user_created
    ON notification_log (user_id, created_at DESC);

CREATE INDEX IF NOT EXISTS idx_notification_log_user_unread
    ON notification_log (user_id, is_read, created_at DESC) WHERE is_read = FALSE;

CREATE INDEX IF NOT EXISTS idx_notification_log_pending
    ON notification_log (status, scheduled_at) WHERE status = 'queued';

COMMENT ON TABLE notification_log IS
    'Журнал push-отправок и in-app inbox. Дедуп по (user_id, channel, dedup_key).';
