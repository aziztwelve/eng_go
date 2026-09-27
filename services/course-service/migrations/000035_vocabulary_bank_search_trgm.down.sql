SET search_path TO courses;

DROP INDEX IF EXISTS idx_vocabulary_bank_words_word_trgm;
DROP INDEX IF EXISTS idx_vocabulary_bank_words_lemma_trgm;
DROP INDEX IF EXISTS idx_vocabulary_bank_words_meaning_trgm;
DROP INDEX IF EXISTS idx_vocabulary_bank_translations_text_trgm;

-- Extension pg_trgm is intentionally kept: it is shared infrastructure.
