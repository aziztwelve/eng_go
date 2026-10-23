-- This intentionally fails if textual word-bank references exist; never delete them to roll back.
ALTER TABLE srs.user_srs_items ALTER COLUMN item_id TYPE UUID USING item_id::uuid;
