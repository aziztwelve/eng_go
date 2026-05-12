-- Rollback Phase 0: standalone content

SET search_path TO courses;

-- 5. Revert lesson_progress.course_id
-- ВНИМАНИЕ: если есть записи с NULL course_id, миграция не пройдёт
ALTER TABLE lesson_progress ALTER COLUMN course_id SET NOT NULL;

-- 4. Удалить source_type / source_id из step_progress
DROP INDEX IF EXISTS idx_step_progress_source;
ALTER TABLE step_progress DROP COLUMN IF EXISTS source_id;
ALTER TABLE step_progress DROP COLUMN IF EXISTS source_type;

-- 3. Удалить track_lessons
DROP TABLE IF EXISTS track_lessons;

-- 2. Удалить learning_tracks
DROP TRIGGER IF EXISTS update_learning_tracks_updated_at ON learning_tracks;
DROP TABLE IF EXISTS learning_tracks;

-- 1. Восстановить NOT NULL на module_id
-- ВНИМАНИЕ: если есть lessons с module_id IS NULL, нужно их сначала удалить или привязать к module
DROP INDEX IF EXISTS idx_lessons_module_order_unique;
ALTER TABLE lessons ALTER COLUMN module_id SET NOT NULL;
ALTER TABLE lessons ADD CONSTRAINT lessons_module_id_order_index_key
    UNIQUE(module_id, order_index);
