SET search_path TO ai;

DROP INDEX IF EXISTS idx_ai_conv_scenario;
DROP INDEX IF EXISTS idx_ai_conv_user_started;
DROP TABLE IF EXISTS ai_conversations;
