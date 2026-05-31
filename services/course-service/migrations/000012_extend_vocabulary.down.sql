SET search_path TO courses;

ALTER TABLE vocabulary
    DROP COLUMN IF EXISTS definition,
    DROP COLUMN IF EXISTS example_sentence;
