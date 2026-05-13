SET search_path TO gamification;

CREATE TABLE IF NOT EXISTS xp_transactions (
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    UUID NOT NULL,
    amount     INT  NOT NULL,
    reason     VARCHAR(50) NOT NULL,
    source_id  UUID,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_xp_transactions_user_created
    ON xp_transactions(user_id, created_at DESC);
