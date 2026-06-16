ALTER TABLE courses.learning_tracks
    ADD COLUMN IF NOT EXISTS motivation text[] NOT NULL DEFAULT '{}';

CREATE INDEX IF NOT EXISTS idx_tracks_motivation ON courses.learning_tracks USING GIN (motivation);
