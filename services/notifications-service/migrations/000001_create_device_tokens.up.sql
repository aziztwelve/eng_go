-- Phase 3: device_tokens — реестр push-токенов пользователя.
-- Поддерживаются 2 канала: web (Web Push / VAPID) и expo (Expo push).
-- iOS/Android raw токены — на будущее (через expo они и так покрываются).
--
-- Уникальность: (user_id, platform, token). Перерегистрация того же
-- токена — обновляет last_seen_at и снимает revoked_at (см. Upsert).
SET search_path TO notifications;

CREATE TABLE IF NOT EXISTS device_tokens (
    id            UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id       UUID NOT NULL,
    platform      VARCHAR(16) NOT NULL,         -- web | expo | ios | android
    token         TEXT NOT NULL,                -- expo token / web push endpoint hash

    -- Web Push специфика. Для не-web — пусто.
    endpoint      TEXT NOT NULL DEFAULT '',
    p256dh        TEXT NOT NULL DEFAULT '',
    auth          TEXT NOT NULL DEFAULT '',

    user_agent    TEXT NOT NULL DEFAULT '',
    locale        VARCHAR(16) NOT NULL DEFAULT '',

    last_seen_at  TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    revoked_at    TIMESTAMPTZ,
    created_at    TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    UNIQUE (user_id, platform, token),
    CHECK (platform IN ('web', 'expo', 'ios', 'android')),
    CHECK (
        platform <> 'web'
        OR (length(endpoint) > 0 AND length(p256dh) > 0 AND length(auth) > 0)
    )
);

CREATE INDEX IF NOT EXISTS idx_device_tokens_user
    ON device_tokens (user_id) WHERE revoked_at IS NULL;

CREATE INDEX IF NOT EXISTS idx_device_tokens_user_platform
    ON device_tokens (user_id, platform) WHERE revoked_at IS NULL;

COMMENT ON TABLE device_tokens IS
    'Push-токены пользователя. revoked_at != NULL — мягкий отзыв ' ||
    '(после ошибки доставки или logout).';
