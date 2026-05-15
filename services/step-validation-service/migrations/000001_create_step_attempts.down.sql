SET search_path TO step_validation;

DROP INDEX IF EXISTS idx_step_attempts_step_type;
DROP INDEX IF EXISTS idx_step_attempts_created;
DROP INDEX IF EXISTS idx_step_attempts_user_step;
DROP TABLE IF EXISTS step_attempts;
