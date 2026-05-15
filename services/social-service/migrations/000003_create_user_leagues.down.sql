SET search_path TO social;

DROP INDEX IF EXISTS idx_user_leagues_cohort;
DROP INDEX IF EXISTS idx_user_leagues_cohort_xp;
DROP TABLE IF EXISTS user_leagues;
