SET search_path TO ai;
CREATE TABLE IF NOT EXISTS free_talk_daily_sessions (
  user_id UUID NOT NULL,
  session_date DATE NOT NULL,
  conversation_id UUID NOT NULL,
  started_at TIMESTAMPTZ NOT NULL,
  expires_at TIMESTAMPTZ NOT NULL,
  PRIMARY KEY (user_id, session_date)
);
CREATE INDEX IF NOT EXISTS free_talk_daily_sessions_date_idx ON free_talk_daily_sessions(session_date);
