SET search_path TO srs;

ALTER TABLE user_srs_items
    DROP CONSTRAINT IF EXISTS user_srs_items_item_type_check;

ALTER TABLE user_srs_items
    ADD CONSTRAINT user_srs_items_item_type_check
    CHECK (item_type IN ('vocabulary', 'step', 'phrase', 'flashcard'));
