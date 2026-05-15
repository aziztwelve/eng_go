-- Phase 3: user_preferences — per-user настройки доставки push'ей.
-- Записи создаются лениво при первом UpdatePreferences. До этого
-- сервис возвращает дефолты (см. service.defaultPrefs).
SET search_path TO notifications;

CREATE TABLE IF NOT EXISTS user_preferences (
    user_id                    UUID PRIMARY KEY,

    practice_reminder_enabled  BOOLEAN NOT NULL DEFAULT TRUE,
    streak_risk_enabled        BOOLEAN NOT NULL DEFAULT TRUE,
    daily_goal_enabled         BOOLEAN NOT NULL DEFAULT TRUE,
    achievement_enabled        BOOLEAN NOT NULL DEFAULT TRUE,

    -- Quiet hours: окно тишины в TZ юзера. start == end → выключено.
    quiet_hours_start          INT NOT NULL DEFAULT 22,
    quiet_hours_end            INT NOT NULL DEFAULT 8,

    -- IANA timezone (Europe/Moscow / Asia/Almaty / ...). Если пусто — UTC.
    timezone                   VARCHAR(64) NOT NULL DEFAULT '',

    updated_at                 TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CHECK (quiet_hours_start BETWEEN 0 AND 23),
    CHECK (quiet_hours_end   BETWEEN 0 AND 23)
);

COMMENT ON TABLE user_preferences IS
    'Настройки доставки push-уведомлений. Per-user, lazy-created.';
