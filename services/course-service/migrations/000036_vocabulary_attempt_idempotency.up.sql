SET search_path TO courses;
ALTER TABLE user_vocabulary_activity_attempts ADD COLUMN client_attempt_id UUID,
 ADD COLUMN assessment_mode TEXT NOT NULL DEFAULT 'legacy' CHECK (assessment_mode IN ('legacy','checked','practice'));
CREATE UNIQUE INDEX idx_vocabulary_attempt_client_id
 ON user_vocabulary_activity_attempts(user_id, client_attempt_id)
 WHERE client_attempt_id IS NOT NULL;
