-- Phase 7: user_flashcards — личные карточки пользователя для feature
-- "Повтор слов" (см. docs/tasks/phase-7-word-flashcards.md).
--
-- Гибридная модель:
--   - Если карточка ссылается на system-vocabulary (auto-from-lesson,
--     auto-from-mistake, ai_suggestion) — используем vocabulary_id FK.
--     Inline-поля word/translation дублируются для быстрого list-render
--     без JOIN.
--   - Если карточка manual (создана юзером с нуля) — vocabulary_id NULL,
--     все поля inline.
--
-- SRS-интеграция: карточка с item_type='flashcard', item_id=user_flashcards.id
-- в srs.user_srs_items (см. миграцию 000005 srs-service).

SET search_path TO courses;

CREATE TABLE IF NOT EXISTS user_flashcards (
    id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id          UUID NOT NULL,

    -- 'manual' | 'lesson' | 'mistake' | 'ai_suggestion'.
    source           VARCHAR(20) NOT NULL,

    -- Опциональный FK на system vocabulary. NULL для чисто manual.
    vocabulary_id    UUID REFERENCES vocabulary(id) ON DELETE SET NULL,

    -- Inline-поля. Дублируют vocabulary при source != 'manual'
    -- (для быстрого list-render и поиска без JOIN'а).
    word             TEXT NOT NULL,
    translation      TEXT NOT NULL,
    language         VARCHAR(10) NOT NULL,
    target_language  VARCHAR(10) NOT NULL,
    definition       TEXT,
    example_sentence TEXT,
    audio_url        TEXT,
    image_url        TEXT,

    -- Soft-delete: archived_at IS NOT NULL → не показываем в library,
    -- но SRS-история остаётся.
    archived_at      TIMESTAMPTZ,
    created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CHECK (source IN ('manual', 'lesson', 'mistake', 'ai_suggestion')),
    CHECK (length(word) > 0 AND length(word) <= 200),
    CHECK (length(translation) > 0 AND length(translation) <= 200)
);

-- Дедуп: один и тот же vocabulary_id у одного user — только одна запись
-- (manual карточек может быть много на один word — например, юзер
-- хранит две версии с разными определениями).
CREATE UNIQUE INDEX IF NOT EXISTS uq_user_flashcards_vocab
    ON user_flashcards(user_id, vocabulary_id)
    WHERE vocabulary_id IS NOT NULL AND archived_at IS NULL;

-- Поиск по user (исключая archived).
CREATE INDEX IF NOT EXISTS idx_user_flashcards_user_active
    ON user_flashcards(user_id, created_at DESC)
    WHERE archived_at IS NULL;

-- Lower-case search по word (для search-bar в library).
CREATE INDEX IF NOT EXISTS idx_user_flashcards_user_word
    ON user_flashcards(user_id, lower(word))
    WHERE archived_at IS NULL;

-- Trigger updated_at.
DROP TRIGGER IF EXISTS update_user_flashcards_updated_at ON user_flashcards;
CREATE TRIGGER update_user_flashcards_updated_at
    BEFORE UPDATE ON user_flashcards
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

COMMENT ON TABLE user_flashcards IS 'Личные карточки слов пользователя (Phase 7). Hybrid: ref на system vocabulary либо чисто inline для manual. SRS-параметры в srs.user_srs_items с item_type=flashcard.';
