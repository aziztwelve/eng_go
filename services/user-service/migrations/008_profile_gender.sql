-- Additive: preserve all installed client contracts.
DO $$ DECLARE t record; BEGIN
 FOR t IN SELECT table_schema FROM information_schema.tables
 WHERE table_name = 'profiles' AND table_schema IN ('public','users') AND table_type = 'BASE TABLE'
 LOOP
  EXECUTE format($ddl$ALTER TABLE %I.profiles ADD COLUMN IF NOT EXISTS gender text CHECK (gender IN ('male','female',''))$ddl$, t.table_schema);
 END LOOP;
END $$;
