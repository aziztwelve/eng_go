-- Удаление триггера
DROP TRIGGER IF EXISTS update_steps_updated_at ON steps;

-- Удаление таблицы
DROP TABLE IF EXISTS steps;
