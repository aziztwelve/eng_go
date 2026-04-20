-- Add image support to quiz questions
-- Migration: 005_add_image_to_questions.sql

ALTER TABLE quiz_questions ADD COLUMN image_url TEXT;

COMMENT ON COLUMN quiz_questions.image_url IS 'URL изображения для вопроса (опционально)';
