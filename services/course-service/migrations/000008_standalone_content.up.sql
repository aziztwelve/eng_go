-- Phase 0: Standalone content support
-- Делает lessons независимыми от courses/modules

SET search_path TO courses;

-- 1. Сделать module_id опциональным в lessons
-- Старая UNIQUE constraint требовала module_id NOT NULL
ALTER TABLE lessons DROP CONSTRAINT IF EXISTS lessons_module_id_order_index_key;
ALTER TABLE lessons ALTER COLUMN module_id DROP NOT NULL;

-- Новый partial unique: order_index уникален в рамках module_id (если есть)
CREATE UNIQUE INDEX IF NOT EXISTS idx_lessons_module_order_unique
    ON lessons(module_id, order_index)
    WHERE module_id IS NOT NULL;

-- Comment for clarity
COMMENT ON COLUMN lessons.module_id IS 'NULL означает standalone lesson (не привязан к курсу)';


-- 2. Таблица learning_tracks — лёгкая обёртка для группировки standalone уроков
CREATE TABLE IF NOT EXISTS learning_tracks (
    id              UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code            VARCHAR(50) UNIQUE NOT NULL,
    title           VARCHAR(200) NOT NULL,
    description     TEXT,
    icon_url        TEXT,
    language        VARCHAR(10),
    level           VARCHAR(5),
    track_type      VARCHAR(20) NOT NULL DEFAULT 'thematic',
    is_published    BOOLEAN NOT NULL DEFAULT false,
    sort_order      INT NOT NULL DEFAULT 0,
    created_by      UUID,
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_tracks_published_lang
    ON learning_tracks(is_published, language)
    WHERE is_published = true;

CREATE INDEX IF NOT EXISTS idx_tracks_type ON learning_tracks(track_type);

CREATE TRIGGER update_learning_tracks_updated_at
    BEFORE UPDATE ON learning_tracks
    FOR EACH ROW
    EXECUTE FUNCTION public.update_updated_at_column();

COMMENT ON TABLE learning_tracks IS 'Тематические треки (Daily English, Stories, etc.) для standalone уроков';
COMMENT ON COLUMN learning_tracks.track_type IS 'thematic | daily | stories | podcast';


-- 3. Связь many-to-many между tracks и lessons
-- Один lesson может быть в нескольких треках
CREATE TABLE IF NOT EXISTS track_lessons (
    track_id        UUID NOT NULL REFERENCES learning_tracks(id) ON DELETE CASCADE,
    lesson_id       UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    order_index     INT NOT NULL DEFAULT 0,
    created_at      TIMESTAMP NOT NULL DEFAULT NOW(),
    PRIMARY KEY (track_id, lesson_id)
);

CREATE INDEX IF NOT EXISTS idx_track_lessons_track_order
    ON track_lessons(track_id, order_index);

CREATE INDEX IF NOT EXISTS idx_track_lessons_lesson
    ON track_lessons(lesson_id);


-- 4. Расширить step_progress полями source_type, source_id для аналитики
-- Не ломаем существующее: даём default 'course' старым записям
ALTER TABLE step_progress
    ADD COLUMN IF NOT EXISTS source_type VARCHAR(20) NOT NULL DEFAULT 'course';

ALTER TABLE step_progress
    ADD COLUMN IF NOT EXISTS source_id UUID;

COMMENT ON COLUMN step_progress.source_type IS 'course | track | standalone';
COMMENT ON COLUMN step_progress.source_id IS 'course_id, track_id или NULL для pure standalone';

CREATE INDEX IF NOT EXISTS idx_step_progress_source
    ON step_progress(source_type, source_id);


-- 5. lesson_progress: course_id тоже nullable (для уроков без курса)
ALTER TABLE lesson_progress ALTER COLUMN course_id DROP NOT NULL;

COMMENT ON COLUMN lesson_progress.course_id IS 'NULL для standalone уроков';
