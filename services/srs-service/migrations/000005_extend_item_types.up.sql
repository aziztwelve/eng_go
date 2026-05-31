-- Phase 7: расширяем CHECK на item_type в user_srs_items, чтобы
-- поддерживать flashcard-source. См. docs/tasks/phase-7-word-flashcards.md.
--
-- До: vocabulary | step | phrase
-- После: vocabulary | step | phrase | flashcard
--
-- item_id для flashcard = user_flashcards.id (cross-schema, без FK
-- — srs-service отдельный сервис, ssue с FK решается на app-уровне).

SET search_path TO srs;

ALTER TABLE user_srs_items
    DROP CONSTRAINT IF EXISTS user_srs_items_item_type_check;

ALTER TABLE user_srs_items
    ADD CONSTRAINT user_srs_items_item_type_check
    CHECK (item_type IN ('vocabulary', 'step', 'phrase', 'flashcard'));
