-- Sprint 1 (Onboarding v3): OAuth claim для гостей.
--
-- См. docs/tasks/mob/onboarding-v3-oki-style.md §2.4.
--
-- Mobile-клиент после paywall показывает sign-up экран с двумя кнопками:
-- "Continue with Google" / "Continue with Apple" — без email/password
-- формы (как у конкурента). После native OAuth dialog'а клиент шлёт
-- id_token на gateway → auth-service.ClaimGuestWithOAuth.
--
-- Архитектурное решение: OAuth-credentials живут в auth.users (рядом с
-- email/password_hash), а не в users.profiles. Identity — зона auth-service.
--
-- Поля:
--   oauth_provider — 'google' | 'apple'
--   oauth_sub      — subject claim из id_token (стабильный provider user id)
--
-- Email из OAuth id_token попадает в обычное поле users.email.

ALTER TABLE public.users
    ADD COLUMN IF NOT EXISTS oauth_provider TEXT,
    ADD COLUMN IF NOT EXISTS oauth_sub      TEXT;

-- Уникальность пары (provider, sub) для не-NULL provider'ов.
-- Один Google account → один user.
CREATE UNIQUE INDEX IF NOT EXISTS uq_users_oauth_provider_sub
    ON public.users (oauth_provider, oauth_sub)
    WHERE oauth_provider IS NOT NULL AND oauth_sub IS NOT NULL;

-- Перечисление допустимых провайдеров.
ALTER TABLE public.users
    ADD CONSTRAINT chk_users_oauth_provider CHECK (
        oauth_provider IS NULL
        OR oauth_provider IN ('google', 'apple', 'guest_fake')
    );

-- Если задан provider — обязан быть sub, и наоборот.
ALTER TABLE public.users
    ADD CONSTRAINT chk_users_oauth_pair CHECK (
        (oauth_provider IS NULL AND oauth_sub IS NULL)
        OR (oauth_provider IS NOT NULL AND oauth_sub IS NOT NULL)
    );

-- Регулярный non-guest юзер обязан иметь либо password_hash, либо OAuth.
-- Снимаем старый chk_users_regular_has_credentials (требовал password_hash)
-- и заменяем более либеральным.
ALTER TABLE public.users
    DROP CONSTRAINT IF EXISTS chk_users_regular_has_credentials;

ALTER TABLE public.users
    ADD CONSTRAINT chk_users_regular_has_credentials CHECK (
        is_guest = TRUE
        OR (
            email IS NOT NULL
            AND (password_hash IS NOT NULL OR oauth_provider IS NOT NULL)
        )
    );
