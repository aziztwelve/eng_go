-- Phase 2: словарь — слова + переводы для match_pairs / fill_blank /
-- listening и админских справочников.
--
-- Структура совместима с docs/tasks/phase-2-step-formats.md.

SET search_path TO courses;

CREATE TABLE IF NOT EXISTS vocabulary (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    language        VARCHAR(10) NOT NULL,    -- 'en', 'es', 'kk'
    word            TEXT NOT NULL,
    translation     TEXT NOT NULL,
    target_language VARCHAR(10) NOT NULL,
    audio_url       TEXT,
    image_url       TEXT,
    level           VARCHAR(5),              -- 'A1', 'A2', 'B1', ...
    pos             VARCHAR(20),             -- noun / verb / adj / ...
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE UNIQUE INDEX IF NOT EXISTS idx_vocabulary_unique
    ON vocabulary(language, word, target_language);

CREATE INDEX IF NOT EXISTS idx_vocabulary_lang_level
    ON vocabulary(language, level);

CREATE INDEX IF NOT EXISTS idx_vocabulary_target_lang
    ON vocabulary(target_language);

CREATE TRIGGER update_vocabulary_updated_at
    BEFORE UPDATE ON vocabulary
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

COMMENT ON TABLE vocabulary IS
    'Словарь для match_pairs / fill_blank / listening и админ-справочников. ' ||
    'Каждая запись — пара (word @ language → translation @ target_language).';
