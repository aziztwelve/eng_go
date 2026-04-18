-- Обновление video steps для использования video_id вместо прямых URL
-- Пример структуры content для video step:
-- {
--   "video_id": "uuid-from-video-service",
--   "title": "Introduction to English",
--   "duration_seconds": 300
-- }

-- Комментарий для документации
COMMENT ON COLUMN steps.content IS 'JSON content: for video type use {"video_id": "uuid", "title": "...", "duration_seconds": 123}';
