-- Vocabulary Bank: trigram indexes for substring search.
-- Search covers word/lemma/meaning AND localized translations (000035 of the
-- improvements task, docs/tasks/vocabulary-bank-improvements.md §6), so all
-- four text columns get GIN indexes to keep ILIKE '%…%' fast as the bank grows.

SET search_path TO courses;

CREATE EXTENSION IF NOT EXISTS pg_trgm;

CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_word_trgm
    ON vocabulary_bank_words USING gin (word gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_lemma_trgm
    ON vocabulary_bank_words USING gin (lemma gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_words_meaning_trgm
    ON vocabulary_bank_words USING gin (meaning gin_trgm_ops);
CREATE INDEX IF NOT EXISTS idx_vocabulary_bank_translations_text_trgm
    ON vocabulary_bank_translations USING gin (text gin_trgm_ops);
