SET search_path TO courses;

ALTER TABLE steps DROP CONSTRAINT IF EXISTS steps_type_check;

ALTER TABLE steps
    ADD CONSTRAINT steps_type_check
    CHECK (type IN (
        'video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing',
        'translate', 'match_pairs', 'listening', 'fill_blank',
        'tap_words', 'story', 'activity'
    ));
