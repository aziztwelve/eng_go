#!/usr/bin/env python3
"""Exercise the data migration and old-client writes in a rolled-back transaction."""
from pathlib import Path
import subprocess
import sys

root = Path(__file__).resolve().parents[1]
retired = "ARRAY['placement_score','daily_commit_minutes','pain_point','speaking_situation','past_blocker','future_regret','emotional_reaction','paywall_seen_at','paywall_choice']"
before = f"""
BEGIN;
CREATE TEMP TABLE onboarding_preserved_before AS
SELECT 'users' AS schema_name, user_id, md5((to_jsonb(p) - {retired} - 'updated_at')::text) AS digest FROM users.profiles p
UNION ALL
SELECT 'public', user_id, md5((to_jsonb(p) - {retired} - 'updated_at')::text) FROM public.profiles p;
"""
migration = (root / 'services/user-service/migrations/007_six_screen_onboarding.sql').read_text()
after = f"""
-- Simulate a queued PATCH from an installed old APK, without creating users.
UPDATE users.profiles SET daily_commit_minutes=25, pain_point='lack_vocab',
    placement_score=5, paywall_choice='annual'
WHERE user_id=(SELECT user_id FROM users.profiles LIMIT 1);
UPDATE public.profiles SET daily_commit_minutes=15, past_blocker='boring',
    paywall_seen_at=NOW()
WHERE user_id=(SELECT user_id FROM public.profiles LIMIT 1);
DO $$
DECLARE remaining bigint;
BEGIN
    SELECT count(*) INTO remaining FROM (
      SELECT to_jsonb(p) AS data FROM users.profiles p
      UNION ALL SELECT to_jsonb(p) FROM public.profiles p
    ) q WHERE data ?| {retired}
      AND (SELECT bool_or(value <> 'null'::jsonb) FROM jsonb_each(data) WHERE key=ANY({retired}));
    IF remaining <> 0 THEN RAISE EXCEPTION 'Retired answers survived: %', remaining; END IF;
    IF EXISTS (
      (SELECT * FROM onboarding_preserved_before EXCEPT
       SELECT 'users', user_id, md5((to_jsonb(p) - {retired} - 'updated_at')::text) FROM users.profiles p
       EXCEPT SELECT 'public', user_id, md5((to_jsonb(p) - {retired} - 'updated_at')::text) FROM public.profiles p)
    ) THEN RAISE EXCEPTION 'A retained field or account was changed'; END IF;
END $$;
SELECT 'PASS: retired data cleared; old writes discarded; retained profiles unchanged';
ROLLBACK;
"""
command = ['docker', 'exec', '-i', 'elearning-postgres', 'psql', '-U', 'admin', '-d', 'elearning', '-v', 'ON_ERROR_STOP=1']
if len(sys.argv) == 3 and sys.argv[1] == '--ssh':
    command = ['ssh', '-o', 'BatchMode=yes', sys.argv[2], ' '.join(command)]
subprocess.run(command, input=before + migration + after, text=True, check=True)
