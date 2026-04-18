-- Создание таблицы прогресса по шагам
CREATE TABLE IF NOT EXISTS step_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    step_id UUID NOT NULL REFERENCES steps(id) ON DELETE CASCADE,
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    completed BOOLEAN NOT NULL DEFAULT false,
    completed_at TIMESTAMP,
    time_spent_seconds INT DEFAULT 0,
    attempts INT DEFAULT 0,
    score FLOAT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    UNIQUE(user_id, step_id)
);

-- Создание индексов для step_progress
CREATE INDEX IF NOT EXISTS idx_step_progress_user_id ON step_progress(user_id);
CREATE INDEX IF NOT EXISTS idx_step_progress_step_id ON step_progress(step_id);
CREATE INDEX IF NOT EXISTS idx_step_progress_lesson_id ON step_progress(lesson_id);
CREATE INDEX IF NOT EXISTS idx_step_progress_user_lesson ON step_progress(user_id, lesson_id);
CREATE INDEX IF NOT EXISTS idx_step_progress_completed ON step_progress(completed);

-- Создание таблицы прогресса по урокам
CREATE TABLE IF NOT EXISTS lesson_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    total_steps INT NOT NULL DEFAULT 0,
    completed_steps INT NOT NULL DEFAULT 0,
    progress_percentage FLOAT NOT NULL DEFAULT 0,
    started_at TIMESTAMP NOT NULL DEFAULT NOW(),
    last_activity_at TIMESTAMP NOT NULL DEFAULT NOW(),
    completed_at TIMESTAMP,
    UNIQUE(user_id, lesson_id)
);

-- Создание индексов для lesson_progress
CREATE INDEX IF NOT EXISTS idx_lesson_progress_user_id ON lesson_progress(user_id);
CREATE INDEX IF NOT EXISTS idx_lesson_progress_lesson_id ON lesson_progress(lesson_id);
CREATE INDEX IF NOT EXISTS idx_lesson_progress_course_id ON lesson_progress(course_id);
CREATE INDEX IF NOT EXISTS idx_lesson_progress_user_course ON lesson_progress(user_id, course_id);
