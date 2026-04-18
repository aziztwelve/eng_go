-- Создание таблицы шагов (атомарные единицы контента)
CREATE TABLE IF NOT EXISTS steps (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    type VARCHAR(50) NOT NULL CHECK (type IN ('video', 'text', 'quiz', 'task', 'brain_game', 'ai_writing')),
    title VARCHAR(255),
    content JSONB NOT NULL,
    order_index INT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(lesson_id, order_index)
);

-- Создание индексов
CREATE INDEX IF NOT EXISTS idx_steps_lesson_id ON steps(lesson_id);
CREATE INDEX IF NOT EXISTS idx_steps_type ON steps(type);
CREATE INDEX IF NOT EXISTS idx_steps_order ON steps(lesson_id, order_index);
CREATE INDEX IF NOT EXISTS idx_steps_content ON steps USING GIN(content);

-- Создание триггера для автоматического обновления updated_at
CREATE TRIGGER update_steps_updated_at 
    BEFORE UPDATE ON steps
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();
