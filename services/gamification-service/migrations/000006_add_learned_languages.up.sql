SET search_path TO gamification;

-- Используется для achievement `languages` (Polyglot — изучает 2+ языка).
-- Заполняется в OnCourseCompleted на основе course.language.
ALTER TABLE user_stats
    ADD COLUMN IF NOT EXISTS learned_languages TEXT[] NOT NULL DEFAULT '{}';
