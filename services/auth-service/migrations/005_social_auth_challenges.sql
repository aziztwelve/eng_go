-- Shared across service instances/restarts; only hashes are persisted.
CREATE TABLE IF NOT EXISTS public.social_auth_challenges (
 id UUID PRIMARY KEY,
 provider TEXT NOT NULL CHECK (provider IN ('google','apple')),
 nonce_hash TEXT NOT NULL,
 expires_at TIMESTAMPTZ NOT NULL
);
CREATE INDEX IF NOT EXISTS social_auth_challenges_expiry ON public.social_auth_challenges(expires_at);
