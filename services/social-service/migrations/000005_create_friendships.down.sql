SET search_path TO social;

DROP INDEX IF EXISTS idx_friendships_pending_created;
DROP INDEX IF EXISTS idx_friendships_user2_status;
DROP INDEX IF EXISTS idx_friendships_user1_status;
DROP TABLE IF EXISTS friendships;
