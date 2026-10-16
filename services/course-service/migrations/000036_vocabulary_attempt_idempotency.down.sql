SET search_path TO courses;
DROP INDEX IF EXISTS idx_vocabulary_attempt_client_id;
ALTER TABLE user_vocabulary_activity_attempts DROP COLUMN client_attempt_id, DROP COLUMN assessment_mode;
