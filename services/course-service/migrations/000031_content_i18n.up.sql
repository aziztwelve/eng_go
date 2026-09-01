-- Content i18n: localized titles and descriptions.
-- title/description stay as the default (ru) string columns; *_i18n JSONB
-- holds all languages from lingoiq.track.v2 ({ "ru": "...", "en": "..." }).
-- Readers resolve the requested language from *_i18n with a fallback to the
-- legacy column, so pre-i18n rows keep working unchanged.

SET search_path TO courses;

ALTER TABLE learning_tracks
    ADD COLUMN IF NOT EXISTS title_i18n JSONB NOT NULL DEFAULT '{}'::jsonb,
    ADD COLUMN IF NOT EXISTS description_i18n JSONB NOT NULL DEFAULT '{}'::jsonb;

ALTER TABLE lessons
    ADD COLUMN IF NOT EXISTS title_i18n JSONB NOT NULL DEFAULT '{}'::jsonb,
    ADD COLUMN IF NOT EXISTS description_i18n JSONB NOT NULL DEFAULT '{}'::jsonb;

ALTER TABLE steps
    ADD COLUMN IF NOT EXISTS title_i18n JSONB NOT NULL DEFAULT '{}'::jsonb;

-- Seed *_i18n from the current string values so every existing row resolves
-- in any language (fallback "ru").
UPDATE learning_tracks SET title_i18n = jsonb_build_object('ru', title) WHERE title_i18n = '{}'::jsonb AND title <> '';
UPDATE learning_tracks SET description_i18n = jsonb_build_object('ru', description) WHERE description_i18n = '{}'::jsonb AND description IS NOT NULL AND description <> '';
UPDATE lessons SET title_i18n = jsonb_build_object('ru', title) WHERE title_i18n = '{}'::jsonb AND title <> '';
UPDATE lessons SET description_i18n = jsonb_build_object('ru', description) WHERE description_i18n = '{}'::jsonb AND description IS NOT NULL AND description <> '';
UPDATE steps SET title_i18n = jsonb_build_object('ru', title) WHERE title_i18n = '{}'::jsonb AND title <> '';

CREATE INDEX IF NOT EXISTS idx_tracks_title_i18n_gin ON learning_tracks USING gin (title_i18n);
CREATE INDEX IF NOT EXISTS idx_lessons_title_i18n_gin ON lessons USING gin (title_i18n);
