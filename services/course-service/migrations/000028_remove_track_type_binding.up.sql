-- Track classification is temporarily disabled. Keep an empty compatibility
-- value because already deployed API binaries scan this column as a string.
ALTER TABLE courses.learning_tracks
    ALTER COLUMN track_type SET DEFAULT '';

UPDATE courses.learning_tracks
SET track_type = ''
WHERE track_type <> '';
