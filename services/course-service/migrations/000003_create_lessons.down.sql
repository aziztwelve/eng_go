-- Удаление триггера
DROP TRIGGER IF EXISTS update_lessons_updated_at ON lessons;

-- Удаление таблицы
DROP TABLE IF EXISTS lessons;
