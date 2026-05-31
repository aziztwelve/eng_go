-- Phase 7: расширяем vocabulary полями definition и example_sentence для
-- flashcards-feature. На back-side flashcard'а отображается определение
-- (English) + пример использования.
--
-- См. docs/tasks/phase-7-word-flashcards.md §"💾 База данных".
--
-- Поля nullable: для legacy слов их нет, AI/admin/auto-import может
-- проставить позже через UpdateVocabularyEntry или AI explain.

SET search_path TO courses;

ALTER TABLE vocabulary
    ADD COLUMN IF NOT EXISTS definition       TEXT,
    ADD COLUMN IF NOT EXISTS example_sentence TEXT;

COMMENT ON COLUMN vocabulary.definition IS 'Краткое определение слова на target_language. Используется на back-side flashcard и в Library list.';

COMMENT ON COLUMN vocabulary.example_sentence IS 'Пример использования слова в предложении. Показывается на back-side flashcard под word + TTS.';
