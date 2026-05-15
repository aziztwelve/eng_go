SET search_path TO courses;

DROP TRIGGER IF EXISTS update_vocabulary_updated_at ON vocabulary;
DROP INDEX IF EXISTS idx_vocabulary_target_lang;
DROP INDEX IF EXISTS idx_vocabulary_lang_level;
DROP INDEX IF EXISTS idx_vocabulary_unique;
DROP TABLE IF EXISTS vocabulary;
