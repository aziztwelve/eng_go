SET search_path TO social;

DROP INDEX IF EXISTS idx_league_history_cohort;
DROP INDEX IF EXISTS idx_league_history_user;
DROP TABLE IF EXISTS league_history;
