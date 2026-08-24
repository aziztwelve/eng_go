SET search_path TO courses;

CREATE TABLE IF NOT EXISTS track_vocabulary (
    track_id UUID NOT NULL REFERENCES learning_tracks(id) ON DELETE CASCADE,
    vocabulary_id UUID NOT NULL REFERENCES vocabulary(id) ON DELETE CASCADE,
    lesson_id UUID REFERENCES lessons(id) ON DELETE SET NULL,
    first_seen_order INTEGER NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (track_id, vocabulary_id)
);

CREATE INDEX IF NOT EXISTS idx_track_vocabulary_order
    ON track_vocabulary(track_id, first_seen_order);
