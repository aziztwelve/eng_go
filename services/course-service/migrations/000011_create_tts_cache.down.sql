SET search_path TO courses;

DROP INDEX IF EXISTS idx_tts_cache_lang;
DROP INDEX IF EXISTS idx_tts_cache_unique;
DROP TABLE IF EXISTS tts_cache;
