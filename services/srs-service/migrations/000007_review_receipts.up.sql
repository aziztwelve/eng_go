SET search_path TO srs;
CREATE TABLE IF NOT EXISTS review_receipts (
 user_id UUID NOT NULL,
 attempt_id UUID NOT NULL,
 item_type TEXT NOT NULL,
 item_id TEXT NOT NULL,
 quality INT NOT NULL,
 response_time_ms INT NOT NULL,
 used_hint BOOLEAN NOT NULL,
 response JSONB NOT NULL,
 created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
 PRIMARY KEY(user_id,attempt_id)
);
DO $$ BEGIN
 IF EXISTS(SELECT 1 FROM pg_roles WHERE rolname='srs_user') THEN
  GRANT SELECT, INSERT ON srs.review_receipts TO srs_user;
 END IF;
END $$;
