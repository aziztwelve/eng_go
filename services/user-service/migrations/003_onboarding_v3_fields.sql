-- Sprint 1 (Onboarding v3): расширяем profiles новыми эмоциональными
-- и flow-полями для Oki-style 14-шагового онбординга.
--
-- См. docs/tasks/mob/onboarding-v3-oki-style.md §2.1.
--
-- Поля:
--   age_bracket           — возрастная категория (7-12 / 13-17 / ... / 55+).
--                           Отдельно от date_of_birth, так как DOB — optional;
--                           bracket собираем гарантированно.
--   daily_commit_minutes  — сколько минут в день готов уделять (5/10/15/25).
--                           Параллельно с daily_goal_xp (mapping minutes→XP
--                           делает клиент: 5→10, 10→20, 15→30, 25→50).
--   pain_point            — главный страх / препятствие в текущем уровне.
--   speaking_situation    — как ведёт себя, когда нужно говорить.
--   past_blocker          — что мешало раньше учить язык.
--   future_regret         — что будет жалко через год.
--   emotional_reaction    — как реагирует на трудности.
--   reminder_slot         — окно для напоминаний (morning/day/evening/flex).
--                           Используется в notifications-service для фильтрации.
--   paywall_seen_at       — момент показа paywall (для analytics).
--   paywall_choice        — что выбрал на paywall (annual/monthly/dismissed/special_offer).

ALTER TABLE profiles
    ADD COLUMN IF NOT EXISTS age_bracket          TEXT,
    ADD COLUMN IF NOT EXISTS daily_commit_minutes INT,
    ADD COLUMN IF NOT EXISTS pain_point           TEXT,
    ADD COLUMN IF NOT EXISTS speaking_situation   TEXT,
    ADD COLUMN IF NOT EXISTS past_blocker         TEXT,
    ADD COLUMN IF NOT EXISTS future_regret        TEXT,
    ADD COLUMN IF NOT EXISTS emotional_reaction   TEXT,
    ADD COLUMN IF NOT EXISTS reminder_slot        TEXT,
    ADD COLUMN IF NOT EXISTS paywall_seen_at      TIMESTAMPTZ,
    ADD COLUMN IF NOT EXISTS paywall_choice       TEXT;

-- CHECK constraints для перечислений. На app-уровне валидация
-- дублируется (см. service/onboarding/patch_state.go).
ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_age_bracket CHECK (
        age_bracket IS NULL OR age_bracket IN
            ('7-12', '13-17', '18-24', '25-34', '35-44', '45-54', '55+')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_daily_commit_minutes CHECK (
        daily_commit_minutes IS NULL OR daily_commit_minutes IN (5, 10, 15, 25)
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_pain_point CHECK (
        pain_point IS NULL OR pain_point IN
            ('fear_speaking', 'lack_vocab', 'listening', 'grammar', 'consistency')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_speaking_situation CHECK (
        speaking_situation IS NULL OR speaking_situation IN
            ('freeze', 'translate_in_head', 'too_short', 'avoid')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_past_blocker CHECK (
        past_blocker IS NULL OR past_blocker IN
            ('boring', 'too_hard', 'no_progress', 'no_fit', 'no_support')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_future_regret CHECK (
        future_regret IS NULL OR future_regret IN
            ('stay_same', 'limit_self', 'pressure', 'postpone')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_emotional_reaction CHECK (
        emotional_reaction IS NULL OR emotional_reaction IN
            ('lose_confidence', 'upset', 'burnout', 'lost')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_reminder_slot CHECK (
        reminder_slot IS NULL OR reminder_slot IN
            ('morning', 'day', 'evening', 'flex')
    );

ALTER TABLE profiles
    ADD CONSTRAINT chk_profiles_paywall_choice CHECK (
        paywall_choice IS NULL OR paywall_choice IN
            ('annual', 'monthly', 'dismissed', 'special_offer')
    );

-- Индекс для notifications-service: фильтрация юзеров по reminder_slot
-- (см. onboarding-v3-oki-style.md §2.7).
CREATE INDEX IF NOT EXISTS idx_profiles_reminder_slot
    ON profiles(reminder_slot)
    WHERE reminder_slot IS NOT NULL;
