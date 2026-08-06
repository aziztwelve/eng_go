SET search_path TO courses;

ALTER TABLE learning_tracks
    ADD COLUMN IF NOT EXISTS source_metadata JSONB NOT NULL DEFAULT '{}'::jsonb;

ALTER TABLE lessons
    ADD COLUMN IF NOT EXISTS source_metadata JSONB NOT NULL DEFAULT '{}'::jsonb;

ALTER TABLE steps DROP CONSTRAINT IF EXISTS steps_type_check;

ALTER TABLE steps
    ADD CONSTRAINT steps_type_check
    CHECK (type IN (
        'video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing',
        'translate', 'match_pairs', 'listening', 'fill_blank',
        'tap_words', 'story', 'activity'
    ));

COMMENT ON COLUMN learning_tracks.source_metadata IS
    'Canonical source package metadata for the learning track.';
COMMENT ON COLUMN lessons.source_metadata IS
    'Canonical source package metadata for the lesson.';
COMMENT ON COLUMN steps.type IS
    'Step type. activity stores a canonical lesson_flow activity payload.';
