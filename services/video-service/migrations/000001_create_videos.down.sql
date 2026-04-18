-- Откат миграции
DROP TRIGGER IF EXISTS update_videos_updated_at ON videos.videos;
DROP FUNCTION IF EXISTS videos.update_updated_at_column();
DROP TABLE IF EXISTS videos.videos;
DROP SCHEMA IF EXISTS videos CASCADE;
