-- Sprint 1 (Onboarding): расширяем profiles новыми onboarding-полями.
--
-- См. docs/tasks/onboarding-spec.md §3.1.
--
-- Поля distributed между сервисами:
--   auth-service.users    — is_guest, guest_device_id (credentials & identity)
--   user-service.profiles — все профильные данные (motivation/source/...)
--
-- native_lang/target_lang/date_of_birth уже существуют в profiles.

ALTER TABLE profiles
    ADD COLUMN IF NOT EXISTS proficiency_level TEXT,
    ADD COLUMN IF NOT EXISTS daily_goal_xp     INT,
    ADD COLUMN IF NOT EXISTS motivation        TEXT[] NOT NULL DEFAULT '{}',
    ADD COLUMN IF NOT EXISTS signup_source     TEXT,
    ADD COLUMN IF NOT EXISTS placement_score   INT,
    ADD COLUMN IF NOT EXISTS onboarded_at      TIMESTAMPTZ;

-- Допустимые значения для proficiency_level (см. ProficiencyLevel в
-- onboarding-storage.ts mobile-клиента).
ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_proficiency_level
    CHECK (
        proficiency_level IS NULL
        OR proficiency_level IN ('beginner', 'a1', 'a2', 'b1', 'b2', 'just_for_fun')
    );

-- daily_goal_xp должен быть положительным.
ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_daily_goal_xp
    CHECK (
        daily_goal_xp IS NULL
        OR (daily_goal_xp > 0 AND daily_goal_xp <= 500)
    );

-- placement_score: 0..5 (число правильных ответов в мини-тесте).
ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_placement_score
    CHECK (
        placement_score IS NULL
        OR (placement_score >= 0 AND placement_score <= 5)
    );

-- Индекс для аналитики — selectить юзеров, прошедших онбординг.
CREATE INDEX IF NOT EXISTS idx_profiles_onboarded_at
    ON profiles(onboarded_at)
    WHERE onboarded_at IS NOT NULL;
