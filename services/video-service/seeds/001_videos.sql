-- Seed данные для видео
-- Эти video_id соответствуют URL из course-service/seeds/004_steps.sql

INSERT INTO videos.videos (id, title, description, storage_key, bucket_name, content_type, size_bytes, duration_seconds, resolution, status, created_at, updated_at)
VALUES 
    -- Видео из English A1 курса
    ('10000001-0000-0000-0000-000000000001', 'Morning Greetings Video', 'Learn how to greet people in the morning', 'videos/greetings.mp4', 'videos', 'video/mp4', 15728640, 180, '720p', 'active', NOW(), NOW()),
    
    ('10000001-0000-0000-0000-000000000002', 'Introduction Examples', 'Examples of self-introductions in English', 'videos/introductions.mp4', 'videos', 'video/mp4', 20971520, 240, '720p', 'active', NOW(), NOW()),
    
    ('10000001-0000-0000-0000-000000000003', 'Conversation Practice', 'Practice polite expressions and greetings', 'videos/polite-expressions.mp4', 'videos', 'video/mp4', 18874368, 210, '720p', 'active', NOW(), NOW()),
    
    ('10000001-0000-0000-0000-000000000004', 'Numbers Video Tutorial', 'Learn to count from 1 to 100', 'videos/numbers.mp4', 'videos', 'video/mp4', 12582912, 150, '720p', 'active', NOW(), NOW()),
    
    ('10000001-0000-0000-0000-000000000005', 'Time Expressions', 'Learn how to tell time in English', 'videos/time.mp4', 'videos', 'video/mp4', 14680064, 165, '720p', 'active', NOW(), NOW()),
    
    -- Видео из Business English курса
    ('10000001-0000-0000-0000-000000000006', 'Professional Email Writing', 'How to write professional business emails', 'videos/emails.mp4', 'videos', 'video/mp4', 25165824, 300, '1080p', 'active', NOW(), NOW()),
    
    ('10000001-0000-0000-0000-000000000007', 'Meeting Etiquette', 'Business meeting best practices', 'videos/meetings.mp4', 'videos', 'video/mp4', 22020096, 270, '1080p', 'active', NOW(), NOW()),
    
    ('10000001-0000-0000-0000-000000000008', 'Presentation Skills', 'Deliver effective business presentations', 'videos/presentations.mp4', 'videos', 'video/mp4', 31457280, 360, '1080p', 'active', NOW(), NOW());

DO $$
BEGIN
    RAISE NOTICE 'Создано видео: 8';
    RAISE NOTICE '  - English A1: 5 видео';
    RAISE NOTICE '  - Business English: 3 видео';
    RAISE NOTICE '';
    RAISE NOTICE 'Все видео в статусе: active';
END $$;
