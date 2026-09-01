SET search_path TO courses;

DROP INDEX IF EXISTS idx_tracks_title_i18n_gin;
DROP INDEX IF EXISTS idx_lessons_title_i18n_gin;

ALTER TABLE steps DROP COLUMN IF EXISTS title_i18n;
ALTER TABLE lessons DROP COLUMN IF EXISTS title_i18n, DROP COLUMN IF EXISTS description_i18n;
ALTER TABLE learning_tracks DROP COLUMN IF EXISTS title_i18n, DROP COLUMN IF EXISTS description_i18n;
