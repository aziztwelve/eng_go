-- Удаление триггера
DROP TRIGGER IF EXISTS update_modules_updated_at ON modules;

-- Удаление таблицы
DROP TABLE IF EXISTS modules;
