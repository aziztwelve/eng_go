-- Создание схемы
CREATE SCHEMA IF NOT EXISTS videos;

-- Создание таблицы videos
CREATE TABLE IF NOT EXISTS videos.videos (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    
    -- Метаданные
    title VARCHAR(255) NOT NULL,
    description TEXT,
    
    -- Хранилище
    storage_key VARCHAR(500) NOT NULL UNIQUE,
    bucket_name VARCHAR(100) NOT NULL DEFAULT 'videos',
    
    -- Файл
    content_type VARCHAR(100) NOT NULL,
    size_bytes BIGINT NOT NULL,
    
    -- Опциональные поля
    duration_seconds INT,
    resolution VARCHAR(20),
    thumbnail_url TEXT,
    uploaded_by UUID,
    
    -- Статус
    status VARCHAR(50) NOT NULL DEFAULT 'active' 
        CHECK (status IN ('active', 'processing', 'deleted')),
    
    -- Timestamps
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMP NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMP
);

-- Индексы
CREATE INDEX idx_videos_status ON videos.videos(status);
CREATE INDEX idx_videos_created_at ON videos.videos(created_at DESC);
CREATE INDEX idx_videos_storage_key ON videos.videos(storage_key);
CREATE INDEX idx_videos_uploaded_by ON videos.videos(uploaded_by);

-- Триггер для updated_at
CREATE OR REPLACE FUNCTION videos.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

CREATE TRIGGER update_videos_updated_at 
    BEFORE UPDATE ON videos.videos
    FOR EACH ROW
    EXECUTE FUNCTION videos.update_updated_at_column();
