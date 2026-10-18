#!/usr/bin/env python3
"""Verify social auth SQL against the server inside BEGIN/ROLLBACK; no test accounts persist."""
import argparse
import pathlib
import subprocess
p = argparse.ArgumentParser()
p.add_argument('--ssh', required=True)
args = p.parse_args()
migration = pathlib.Path(__file__).resolve().parents[1] / 'services/auth-service/migrations/005_social_auth_challenges.sql'
sql = 'BEGIN;\n' + migration.read_text() + '''
DO $$
DECLARE
 challenge UUID := gen_random_uuid();
 learner UUID := gen_random_uuid();
 subject TEXT := gen_random_uuid()::text;
 email TEXT := 'social-qa-' || gen_random_uuid()::text || '@example.invalid';
 affected INT;
 loaded UUID;
BEGIN
 INSERT INTO public.social_auth_challenges VALUES (challenge,'apple',repeat('a',64),now()+interval '5 minutes');
 DELETE FROM public.social_auth_challenges WHERE id=challenge AND provider='google' AND expires_at>now();
 GET DIAGNOSTICS affected = ROW_COUNT;
 IF affected<>0 THEN RAISE EXCEPTION 'cross-provider challenge accepted'; END IF;
 DELETE FROM public.social_auth_challenges WHERE id=challenge AND provider='apple' AND expires_at>now();
 GET DIAGNOSTICS affected = ROW_COUNT;
 IF affected<>1 THEN RAISE EXCEPTION 'fresh challenge rejected'; END IF;
 DELETE FROM public.social_auth_challenges WHERE id=challenge AND provider='apple' AND expires_at>now();
 GET DIAGNOSTICS affected = ROW_COUNT;
 IF affected<>0 THEN RAISE EXCEPTION 'challenge replay accepted'; END IF;
 INSERT INTO public.social_auth_challenges VALUES (challenge,'apple',repeat('b',64),now()-interval '1 second');
 DELETE FROM public.social_auth_challenges WHERE id=challenge AND provider='apple' AND expires_at>now();
 GET DIAGNOSTICS affected = ROW_COUNT;
 IF affected<>0 THEN RAISE EXCEPTION 'expired challenge accepted'; END IF;
 INSERT INTO public.users(id,email,username,password_hash,role,is_guest,oauth_provider,oauth_sub)
 VALUES(learner,email,'Social QA',NULL,'student',false,'apple',subject);
 SELECT id INTO loaded FROM public.users WHERE oauth_provider='apple' AND oauth_sub=subject AND is_guest=false;
 IF loaded IS DISTINCT FROM learner THEN RAISE EXCEPTION 'repeat identity lookup failed'; END IF;
 BEGIN
  INSERT INTO public.users(id,email,username,password_hash,role,is_guest,oauth_provider,oauth_sub)
  VALUES(gen_random_uuid(),email,'Other identity',NULL,'student',false,'google',gen_random_uuid()::text);
  RAISE EXCEPTION 'email collision accepted';
 EXCEPTION WHEN unique_violation THEN NULL;
 END;
 BEGIN
  INSERT INTO public.users(id,email,username,password_hash,role,is_guest,oauth_provider,oauth_sub)
  VALUES(gen_random_uuid(),'other-'||email,'Duplicate subject',NULL,'student',false,'apple',subject);
  RAISE EXCEPTION 'duplicate provider subject accepted';
 EXCEPTION WHEN unique_violation THEN NULL;
 END;
END $$;
SELECT 'PASS: nonce expiry/provider/replay and identity/email uniqueness; all fixtures rolled back';
ROLLBACK;
'''
subprocess.run(['ssh', '-o', 'BatchMode=yes', args.ssh, 'docker exec -i elearning-postgres psql -U admin -d elearning -v ON_ERROR_STOP=1'], input=sql, text=True, check=True)
