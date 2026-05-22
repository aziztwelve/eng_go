-- Phase 4.5: новый push-канал "friend_request" (запросы дружбы +
-- подтверждения дружбы).
SET search_path TO notifications;

-- 1. Расширяем CHECK в notification_log.
ALTER TABLE notification_log
    DROP CONSTRAINT IF EXISTS notification_log_channel_check;

ALTER TABLE notification_log
    ADD CONSTRAINT notification_log_channel_check
    CHECK (channel IN ('practice_reminder', 'streak_risk', 'daily_goal',
                       'achievement', 'friend_request'));

-- 2. Добавляем флаг preferences (lazy-on default true).
ALTER TABLE user_preferences
    ADD COLUMN IF NOT EXISTS friend_request_enabled BOOLEAN NOT NULL DEFAULT TRUE;
