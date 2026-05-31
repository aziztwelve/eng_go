SET search_path TO srs;

-- Откат: возвращаем оригинальный CHECK без 'flashcard'.
-- ВНИМАНИЕ: если в таблице уже есть строки с item_type='flashcard',
-- этот rollback упадёт — сначала их нужно удалить или мигрировать.

ALTER TABLE user_srs_items
    DROP CONSTRAINT IF EXISTS user_srs_items_item_type_check;

ALTER TABLE user_srs_items
    ADD CONSTRAINT user_srs_items_item_type_check
    CHECK (item_type IN ('vocabulary', 'step', 'phrase'));
