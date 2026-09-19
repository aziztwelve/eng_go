-- Vocabulary Bank: canonical imported LingoIQ content.
--
-- This is intentionally separate from courses.vocabulary (legacy lesson
-- dictionary) and courses.user_flashcards (personal user feature). Every
-- source word is identified by the immutable external_id from the JSON batch.

SET search_path TO courses;

CREATE TABLE IF NOT EXISTS vocabulary_bank_words (
    id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    external_id        TEXT NOT NULL UNIQUE,
    schema_version     TEXT NOT NULL,
    source_batch       INTEGER NOT NULL,
    word               TEXT NOT NULL,
    lemma              TEXT NOT NULL,
    meaning            TEXT NOT NULL,
    part_of_speech     TEXT NOT NULL,
    cefr_level         VARCHAR(5) NOT NULL,
    translation_key    TEXT NOT NULL,
    grammar_targets    JSONB NOT NULL DEFAULT '[]'::jsonb,
    context_id         TEXT,
    audio              JSONB NOT NULL DEFAULT '{}'::jsonb,
    image_prompt       JSONB NOT NULL DEFAULT '{}'::jsonb,
    content_checksum   TEXT NOT NULL,
    created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_level
    ON vocabulary_bank_words (cefr_level, word);
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_translation_key
    ON vocabulary_bank_words (translation_key);

CREATE TABLE IF NOT EXISTS vocabulary_bank_translations (
    word_id            UUID NOT NULL REFERENCES vocabulary_bank_words(id) ON DELETE CASCADE,
    locale             VARCHAR(15) NOT NULL,
    text               TEXT NOT NULL,
    created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (word_id, locale)
);

CREATE TABLE IF NOT EXISTS vocabulary_bank_question_sets (
    id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    word_id            UUID NOT NULL REFERENCES vocabulary_bank_words(id) ON DELETE CASCADE,
    position           SMALLINT NOT NULL,
    grammar_family     TEXT NOT NULL,
    tense              TEXT NOT NULL,
    question_form      TEXT NOT NULL,
    question           TEXT NOT NULL,
    positive_answer    JSONB NOT NULL,
    negative_answer    JSONB NOT NULL,
    created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (word_id, position)
);

CREATE TABLE IF NOT EXISTS vocabulary_bank_activities (
    id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    word_id            UUID NOT NULL REFERENCES vocabulary_bank_words(id) ON DELETE CASCADE,
    step               SMALLINT NOT NULL CHECK (step BETWEEN 1 AND 15),
    activity_type      TEXT NOT NULL,
    instruction        TEXT NOT NULL,
    payload            JSONB NOT NULL,
    created_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at         TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    UNIQUE (word_id, step)
);

CREATE TABLE IF NOT EXISTS vocabulary_bank_import_reports (
    id                 UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    source_file        TEXT NOT NULL,
    file_checksum      TEXT NOT NULL UNIQUE,
    schema_version     TEXT,
    cefr_level         VARCHAR(5),
    batch_number       INTEGER,
    status             TEXT NOT NULL CHECK (status IN ('completed', 'failed', 'skipped')),
    entries_created    INTEGER NOT NULL DEFAULT 0,
    entries_updated    INTEGER NOT NULL DEFAULT 0,
    entries_skipped    INTEGER NOT NULL DEFAULT 0,
    validation_errors  JSONB NOT NULL DEFAULT '[]'::jsonb,
    completed_at       TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_import_reports_completed_at
    ON vocabulary_bank_import_reports (completed_at DESC);

CREATE TRIGGER update_vocabulary_bank_words_updated_at
    BEFORE UPDATE ON vocabulary_bank_words
    FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE TRIGGER update_vocabulary_bank_translations_updated_at
    BEFORE UPDATE ON vocabulary_bank_translations
    FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE TRIGGER update_vocabulary_bank_question_sets_updated_at
    BEFORE UPDATE ON vocabulary_bank_question_sets
    FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
CREATE TRIGGER update_vocabulary_bank_activities_updated_at
    BEFORE UPDATE ON vocabulary_bank_activities
    FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();

COMMENT ON TABLE vocabulary_bank_words IS
    'Canonical LingoIQ Word Bank. external_id is the immutable source JSON entry ID.';
COMMENT ON TABLE vocabulary_bank_import_reports IS
    'Idempotent import audit trail. A repeated unchanged source checksum is skipped.';
