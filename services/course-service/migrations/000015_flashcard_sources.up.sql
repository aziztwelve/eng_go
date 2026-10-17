SET search_path TO courses;

-- Phase 10: personal cards are created only after explicit user selection.
ALTER TABLE user_flashcards
    DROP CONSTRAINT IF EXISTS user_flashcards_source_check;

-- Existing legacy rows are retained for history, but no new rows may use the
-- removed automatic/AI sources. They are migrated to the closest explicit
-- source before the constraint is installed.
UPDATE user_flashcards
SET source = 'lesson'
WHERE source IN ('mistake', 'ai_suggestion');

ALTER TABLE user_flashcards
    ADD CONSTRAINT user_flashcards_source_check
    CHECK (source IN ('manual', 'lesson', 'bank'));
