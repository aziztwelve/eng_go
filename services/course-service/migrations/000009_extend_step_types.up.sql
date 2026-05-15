-- Phase 2: расширяем CHECK constraint на step.type — добавляем
-- интерактивные форматы. content уже JSONB, поэтому никаких изменений
-- схемы не нужно: каждый тип хранит свою структуру в `content`.
--
-- Старые: video / text / quiz / task / brain_game / ai_writing.
-- Новые : translate / match_pairs / listening / fill_blank /
--         tap_words / story.

SET search_path TO courses;

ALTER TABLE steps DROP CONSTRAINT IF EXISTS steps_type_check;

ALTER TABLE steps
    ADD CONSTRAINT steps_type_check
    CHECK (type IN (
        -- legacy
        'video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing',
        -- phase 2
        'translate', 'match_pairs', 'listening', 'fill_blank',
        'tap_words', 'story'
    ));

COMMENT ON COLUMN steps.type IS
    'Тип шага. См. docs/tasks/phase-2-step-formats.md и model.StepType.';

COMMENT ON COLUMN steps.content IS
    'Структурированный JSON. Схема зависит от type — см. ' ||
    'docs/tasks/phase-2-step-formats.md, секция «Структуры контента».';
