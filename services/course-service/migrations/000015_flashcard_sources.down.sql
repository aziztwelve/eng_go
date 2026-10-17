SET search_path TO courses;

ALTER TABLE user_flashcards
    DROP CONSTRAINT IF EXISTS user_flashcards_source_check;

ALTER TABLE user_flashcards
    ADD CONSTRAINT user_flashcards_source_check
    CHECK (source IN ('manual', 'lesson', 'mistake', 'ai_suggestion'));
