-- Sprint 1 (Onboarding): поддержка guest-режима.
--
-- Юзер может пройти онбординг и первый урок без регистрации. На bootstrap
-- mobile/web вызывает POST /api/v1/auth/guest с device_id, получает JWT с
-- is_guest=true и тем же user_id, который потом будет заклеймен (preserved).
--
-- Все downstream-сервисы (gamification/srs/social) работают для гостя как
-- для regular юзера — никаких изменений в их схемах не требуется.
--
-- Конструктивные особенности:
--   * email NULLABLE: гостям email не нужен. До этой миграции он был NOT
--     NULL UNIQUE — снимаем NOT NULL и партиальный unique-индекс
--     гарантирует уникальность только для не-NULL значений.
--   * password_hash NULLABLE: гости без пароля.
--   * is_guest + guest_device_id: партиальный unique-индекс на device_id
--     гарантирует, что один device = один guest user (idempotent re-bootstrap
--     при переустановке приложения).

ALTER TABLE public.users
    ADD COLUMN IF NOT EXISTS is_guest        BOOLEAN     NOT NULL DEFAULT FALSE,
    ADD COLUMN IF NOT EXISTS guest_device_id TEXT;

-- Снимаем NOT NULL с email/password_hash чтобы гости могли существовать
-- без credentials. Для regular-users проверяем через CHECK constraint.
ALTER TABLE public.users
    ALTER COLUMN email DROP NOT NULL,
    ALTER COLUMN password_hash DROP NOT NULL;

-- Старый "UNIQUE NOT NULL" индекс на email больше не годится (хотим
-- разрешить много NULL email'ов). Заменяем на партиальный unique для
-- не-NULL.
DROP INDEX IF EXISTS users_email_key;
DROP INDEX IF EXISTS public.users_email_key;

CREATE UNIQUE INDEX IF NOT EXISTS uq_users_email_not_null
    ON public.users (email)
    WHERE email IS NOT NULL;

-- Один device → один гость (idempotent re-bootstrap).
CREATE UNIQUE INDEX IF NOT EXISTS uq_users_guest_device
    ON public.users (guest_device_id)
    WHERE is_guest = TRUE AND guest_device_id IS NOT NULL;

-- Регулярный (non-guest) юзер обязан иметь email + password_hash.
ALTER TABLE public.users
    ADD CONSTRAINT chk_users_regular_has_credentials
    CHECK (
        is_guest = TRUE
        OR (email IS NOT NULL AND password_hash IS NOT NULL)
    );

-- Гость не может иметь не-default role (защита от ошибок).
ALTER TABLE public.users
    ADD CONSTRAINT chk_users_guest_role
    CHECK (
        is_guest = FALSE
        OR role = 'student'
    );

-- Гость обязан иметь device_id.
ALTER TABLE public.users
    ADD CONSTRAINT chk_users_guest_has_device
    CHECK (
        is_guest = FALSE
        OR guest_device_id IS NOT NULL
    );

-- Индекс для cleanup-cron: ищем старых гостей по created_at + is_guest.
CREATE INDEX IF NOT EXISTS idx_users_guest_created_at
    ON public.users (created_at)
    WHERE is_guest = TRUE;
