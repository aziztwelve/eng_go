-- Phase 7: транскрипция (IPA) для слов и личных карточек.
--
-- best-practice языковых флешкарт: показываем фонетику /həˈloʊ/ рядом со
-- словом. Поле опциональное (NULL для старых записей и manual-карточек,
-- где юзер не заполнил). Источник истины — vocabulary.transcription;
-- для system-карточек дублируется inline в user_flashcards при создании
-- (как word/translation), для быстрого list-render без JOIN.

SET search_path TO courses;

ALTER TABLE vocabulary
    ADD COLUMN IF NOT EXISTS transcription TEXT;

ALTER TABLE user_flashcards
    ADD COLUMN IF NOT EXISTS transcription TEXT;

COMMENT ON COLUMN vocabulary.transcription IS 'IPA-транскрипция слова, напр. /həˈloʊ/. Опционально.';
COMMENT ON COLUMN user_flashcards.transcription IS 'IPA-транскрипция (inline-дубль vocabulary.transcription для system-карточек). Опционально.';
