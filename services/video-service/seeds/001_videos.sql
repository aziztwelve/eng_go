-- Seed данные для видео
-- Эти video_id соответствуют URL из course-service/seeds/004_steps.sql

INSERT INTO videos.videos (id, title, description, storage_key, bucket_name, content_type, size_bytes, duration_seconds, resolution, status, created_at, updated_at)
VALUES 
    -- Видео из English A1 курса
    ('video-001-greetings', 'Morning Greetings Video', 'Learn how to greet people in the morning', 'videos/video-001-greetings.mp4', 'videos', 'video/mp4', 15728640, 180, '720p', 'active', NOW(), NOW()),
    
    ('video-002-introductions', 'Introduction Examples', 'Examples of self-introductions in English', 'videos/video-002-introductions.mp4', 'videos', 'video/mp4', 20971520, 240, '720p', 'active', NOW(), NOW()),
    
    ('video-003-polite-expressions', 'Conversation Practice', 'Practice polite expressions and greetings', 'videos/video-003-polite-expressions.mp4', 'videos', 'video/mp4', 18874368, 210, '720p', 'active', NOW(), NOW()),
    
    ('video-004-numbers', 'Numbers Video Tutorial', 'Learn to count from 1 to 100', 'videos/video-004-numbers.mp4', 'videos', 'video/mp4', 12582912, 150, '720p', 'active', NOW(), NOW()),
    
    ('video-005-time', 'Time Expressions', 'Learn how to tell time in English', 'videos/video-005-time.mp4', 'videos', 'video/mp4', 14680064, 165, '720p', 'active', NOW(), NOW()),
    
    -- Видео из Business English курса
    ('video-006-emails', 'Professional Email Writing', 'How to write professional business emails', 'videos/video-006-emails.mp4', 'videos', 'video/mp4', 25165824, 300, '1080p', 'active', NOW(), NOW()),
    
    ('video-007-meetings', 'Meeting Etiquette', 'Business meeting best practices', 'videos/video-007-meetings.mp4', 'videos', 'video/mp4', 22020096, 270, '1080p', 'active', NOW(), NOW()),
    
    ('video-008-presentations', 'Presentation Skills', 'Deliver effective business presentations', 'videos/video-008-presentations.mp4', 'videos', 'video/mp4', 31457280, 360, '1080p', 'active', NOW(), NOW());
