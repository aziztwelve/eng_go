SET search_path TO notifications;

ALTER TABLE user_preferences
    DROP COLUMN IF EXISTS friend_request_enabled;

ALTER TABLE notification_log
    DROP CONSTRAINT IF EXISTS notification_log_channel_check;

ALTER TABLE notification_log
    ADD CONSTRAINT notification_log_channel_check
    CHECK (channel IN ('practice_reminder', 'streak_risk', 'daily_goal', 'achievement'));
