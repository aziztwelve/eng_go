-- Widen references: old UUID strings remain unchanged; canonical word-bank IDs are textual.
ALTER TABLE srs.user_srs_items ALTER COLUMN item_id TYPE TEXT USING item_id::text;
