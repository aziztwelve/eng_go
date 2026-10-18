#!/usr/bin/env bash
set -euo pipefail

# Deletes only deterministic onboarding fixtures. Never run this against a
# production database. The default mode is a read-only preview; --apply is
# required for mutation and ALLOW_SEED_CLEANUP=YES is an additional guard.

DB_HOST="${DB_HOST:-localhost}"
DB_PORT="${DB_PORT:-5435}"
DB_USER="${DB_USER:-admin}"
DB_NAME="${DB_NAME:-elearning}"
DB_PASSWORD="${DB_PASSWORD:-change_me_in_production}"

if [[ "${1:-}" == "--help" ]]; then
  cat <<'USAGE'
Usage:
  ./scripts/cleanup_seed_accounts.sh              # preview counts
  ALLOW_SEED_CLEANUP=YES ./scripts/cleanup_seed_accounts.sh --apply

Optional environment variables: DB_HOST DB_PORT DB_USER DB_NAME DB_PASSWORD.
Only UUIDs beginning with aaaa, bbbb or cccc are selected.
USAGE
  exit 0
fi

if [[ "${1:-}" == "--apply" ]]; then
  if [[ "${ALLOW_SEED_CLEANUP:-}" != "YES" ]]; then
    echo "Refusing to mutate the database: set ALLOW_SEED_CLEANUP=YES explicitly." >&2
    exit 2
  fi
  MODE="apply"
else
  MODE="preview"
fi

export PGPASSWORD="$DB_PASSWORD"

psql_args=(-X -v ON_ERROR_STOP=1 -h "$DB_HOST" -p "$DB_PORT" -U "$DB_USER" -d "$DB_NAME")

if [[ "$MODE" == "preview" ]]; then
  psql "${psql_args[@]}" <<'SQL'
WITH seed_users AS (
  SELECT id FROM public.users WHERE id::text ~ '^(aaaa|bbbb|cccc)'
)
SELECT 'public.users' AS table_name, count(*) AS rows
FROM public.users u JOIN seed_users s ON s.id = u.id;
SQL
  echo "Preview only. Use ALLOW_SEED_CLEANUP=YES ... --apply to delete these fixtures."
  exit 0
fi

psql "${psql_args[@]}" <<'SQL'
BEGIN;

-- Resolve the IDs before deleting the auth row. Every service schema uses the
-- same UUID and intentionally has no cross-schema FK to public.users.
CREATE TEMP TABLE seed_cleanup_users ON COMMIT DROP AS
SELECT id
FROM public.users
WHERE id::text ~ '^(aaaa|bbbb|cccc)';

DO $$
DECLARE
  relation_name text;
BEGIN
  -- Remove rows from every table that has a conventional user_id column.
  -- This keeps the cleanup aligned when a service adds another user-owned
  -- table, without touching course/content catalog tables.
  FOR relation_name IN
    SELECT format('%I.%I', n.nspname, c.relname)
    FROM pg_class c
    JOIN pg_namespace n ON n.oid = c.relnamespace
    WHERE c.relkind = 'r'
      AND n.nspname NOT IN ('pg_catalog', 'information_schema')
      AND EXISTS (
        SELECT 1
        FROM pg_attribute a
        WHERE a.attrelid = c.oid
          AND a.attname = 'user_id'
          AND NOT a.attisdropped
      )
      AND NOT (n.nspname = 'public' AND c.relname = 'users')
  LOOP
    EXECUTE format(
      'DELETE FROM %s WHERE user_id IN (SELECT id FROM seed_cleanup_users)',
      relation_name
    );
  END LOOP;
END $$;

-- Friendships have two user columns and therefore are not covered above.
DO $$
DECLARE
  relation_name text;
BEGIN
  FOR relation_name IN
    SELECT format('%I.%I', n.nspname, c.relname)
    FROM pg_class c
    JOIN pg_namespace n ON n.oid = c.relnamespace
    WHERE c.relkind = 'r'
      AND n.nspname NOT IN ('pg_catalog', 'information_schema')
      AND EXISTS (SELECT 1 FROM pg_attribute a WHERE a.attrelid = c.oid AND a.attname = 'user_id_1' AND NOT a.attisdropped)
      AND EXISTS (SELECT 1 FROM pg_attribute a WHERE a.attrelid = c.oid AND a.attname = 'user_id_2' AND NOT a.attisdropped)
  LOOP
    EXECUTE format(
      'DELETE FROM %s WHERE user_id_1 IN (SELECT id FROM seed_cleanup_users) OR user_id_2 IN (SELECT id FROM seed_cleanup_users)',
      relation_name
    );
  END LOOP;
END $$;

DELETE FROM public.users
WHERE id IN (SELECT id FROM seed_cleanup_users);

SELECT count(*) AS remaining_seed_accounts
FROM public.users
WHERE id::text ~ '^(aaaa|bbbb|cccc)';

COMMIT;
SQL

echo "Seed account cleanup completed for $DB_NAME."
