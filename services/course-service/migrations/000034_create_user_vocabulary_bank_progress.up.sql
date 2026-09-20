SET search_path TO courses;

CREATE TABLE user_vocabulary_progress (
    user_id          UUID NOT NULL,
    word_id          UUID NOT NULL REFERENCES vocabulary_bank_words(id) ON DELETE CASCADE,
    current_step     SMALLINT NOT NULL DEFAULT 1 CHECK (current_step BETWEEN 1 AND 15),
    completed_at     TIMESTAMPTZ,
    last_activity_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    created_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at       TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    PRIMARY KEY (user_id, word_id)
);

CREATE TABLE user_vocabulary_activity_attempts (
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id             UUID NOT NULL,
    word_id             UUID NOT NULL REFERENCES vocabulary_bank_words(id) ON DELETE CASCADE,
    step                SMALLINT NOT NULL CHECK (step BETWEEN 1 AND 15),
    activity_type       TEXT NOT NULL,
    answer              JSONB NOT NULL DEFAULT '{}'::jsonb,
    is_correct          BOOLEAN NOT NULL,
    score               SMALLINT NOT NULL DEFAULT 0 CHECK (score BETWEEN 0 AND 100),
    time_spent_ms       INTEGER NOT NULL DEFAULT 0 CHECK (time_spent_ms >= 0),
    pronunciation_score DOUBLE PRECISION,
    created_at          TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_user_vocabulary_progress_resume ON user_vocabulary_progress(user_id, last_activity_at DESC);
CREATE INDEX idx_user_vocabulary_attempts_word ON user_vocabulary_activity_attempts(user_id, word_id, step, created_at DESC);

CREATE TRIGGER update_user_vocabulary_progress_updated_at
    BEFORE UPDATE ON user_vocabulary_progress
    FOR EACH ROW EXECUTE FUNCTION public.update_updated_at_column();
