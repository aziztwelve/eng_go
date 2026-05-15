SET search_path TO ai;

DROP INDEX IF EXISTS idx_ai_expl_user;
DROP INDEX IF EXISTS uniq_ai_expl_step_md5;
DROP TABLE IF EXISTS ai_explanations;
