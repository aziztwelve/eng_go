SET search_path TO social;

DROP INDEX IF EXISTS idx_cohorts_active;
DROP INDEX IF EXISTS idx_cohorts_league_cycle;
DROP TABLE IF EXISTS cohorts;
