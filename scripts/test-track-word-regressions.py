#!/usr/bin/env python3
"""Run database regressions in a freshly created local database; always remove it."""
import json, os, pathlib, re, subprocess, uuid
from urllib.parse import quote
root = pathlib.Path(__file__).resolve().parents[1]
container = 'elearning-postgres'
db = 'eng_review_' + uuid.uuid4().hex[:12]
def run(args, **kwargs):
    return subprocess.run(args, check=True, **kwargs)
def sql(content):
    # Historical COMMENT statements are irrelevant to schema behavior.
    content = re.sub(r'COMMENT ON[^;]*;', '', content, flags=re.S)
    run(['docker','exec','-i',container,'psql','-v','ON_ERROR_STOP=1','-U','admin','-d',db],input=content,text=True,stdout=subprocess.DEVNULL)
run(['docker','exec',container,'createdb','-U','admin',db])
try:
    sql('CREATE SCHEMA courses; CREATE SCHEMA srs; CREATE EXTENSION pgcrypto; CREATE TABLE courses.vocabulary(id UUID PRIMARY KEY); CREATE FUNCTION public.update_updated_at_column() RETURNS trigger LANGUAGE plpgsql AS $$ BEGIN NEW.updated_at=NOW(); RETURN NEW; END $$;')
    migrations = {
      'srs-service': ['000001_create_user_srs_items','000002_create_srs_review_history','000005_extend_item_types','000006_add_vocabulary_bank_item_type','000007_review_receipts','000008_expand_item_reference'],
      'course-service': ['000013_create_user_flashcards','000014_create_flashcard_today_queue','000015_flashcard_sources','000015_add_transcription','000037_flashcard_srs_projection'],
    }
    for service,names in migrations.items():
      for name in names: sql((root/'services'/service/'migrations'/(name+'.up.sql')).read_text())
    config=json.loads(subprocess.check_output(['docker','inspect',container]))[0]
    env=dict(value.split('=',1) for value in config['Config']['Env'])
    password=env.get('POSTGRES_PASSWORD','')
    test_env={**os.environ,'ENG_REVIEW_DATABASE_URL':f'postgres://admin:{quote(password,safe="")}@127.0.0.1:5432/{db}?sslmode=disable'}
    for service,pattern in [('course-service','TestFlashcardDatabaseConcurrencyAndProjection'),('srs-service','TestAtomicReviewDatabase')]:
      run(['go','test','./internal/repository/postgres','-run',pattern,'-count=1','-v'],cwd=root/'services'/service,env=test_env)
finally:
    run(['docker','exec',container,'dropdb','-U','admin','--force',db])
