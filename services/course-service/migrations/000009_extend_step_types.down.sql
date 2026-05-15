SET search_path TO courses;

-- Откат: возвращаем оригинальный CHECK с legacy-типами.
-- Внимание: если в БД уже есть steps с phase-2 типами, ALTER упадёт —
-- это намеренно, чтобы не потерять данные.

ALTER TABLE steps DROP CONSTRAINT IF EXISTS steps_type_check;

ALTER TABLE steps
    ADD CONSTRAINT steps_type_check
    CHECK (type IN ('video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing'));
