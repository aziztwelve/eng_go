-- Удаление триггера
DROP TRIGGER IF EXISTS update_courses_updated_at ON courses;

-- Удаление таблицы
DROP TABLE IF EXISTS courses;

-- Удаление функции (если больше не используется)
-- DROP FUNCTION IF EXISTS update_updated_at_column();
