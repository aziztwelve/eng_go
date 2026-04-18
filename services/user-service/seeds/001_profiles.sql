-- Seed данные для профилей пользователей
-- Профили должны соответствовать пользователям из auth-service

-- Вставка профилей с обработкой конфликтов
INSERT INTO profiles (user_id, first_name, last_name, bio, avatar_url, native_lang, target_lang, created_at, updated_at)
VALUES 
    -- Администратор
    ('11111111-1111-1111-1111-111111111111', 'Admin', 'User', 'Platform administrator', 'https://i.pravatar.cc/150?img=1', 'en', NULL, NOW(), NOW()),
    
    -- Инструкторы
    ('22222222-2222-2222-2222-222222222222', 'John', 'Smith', 'Experienced English teacher with 10+ years of teaching experience. Specializing in business English and IELTS preparation.', 'https://i.pravatar.cc/150?img=11', 'en', NULL, NOW(), NOW()),
    ('22222222-2222-2222-2222-222222222223', 'Maria', 'Garcia', 'Native Spanish speaker and certified language instructor. Passionate about helping students achieve fluency through immersive learning.', 'https://i.pravatar.cc/150?img=5', 'es', NULL, NOW(), NOW()),
    ('22222222-2222-2222-2222-222222222224', 'Hans', 'Mueller', 'German language expert with a focus on grammar and pronunciation. Former university lecturer with 15 years of experience.', 'https://i.pravatar.cc/150?img=12', 'de', NULL, NOW(), NOW()),
    
    -- Студенты
    ('33333333-3333-3333-3333-333333333331', 'Alice', 'Johnson', 'Language enthusiast learning Spanish and French. Love traveling and meeting new people.', 'https://i.pravatar.cc/150?img=20', 'en', 'es', NOW(), NOW()),
    ('33333333-3333-3333-3333-333333333332', 'Bob', 'Williams', 'Software engineer learning German for work. Interested in technical vocabulary.', 'https://i.pravatar.cc/150?img=15', 'en', 'de', NOW(), NOW()),
    ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'High school student preparing for English proficiency exams.', 'https://i.pravatar.cc/150?img=33', 'en', 'en', NOW(), NOW()),
    ('33333333-3333-3333-3333-333333333334', 'Diana', 'Prince', 'Business professional learning Spanish for international projects.', 'https://i.pravatar.cc/150?img=9', 'en', 'es', NOW(), NOW()),
    ('33333333-3333-3333-3333-333333333335', 'Eva', 'Martinez', 'University student learning English and German. Planning to study abroad.', 'https://i.pravatar.cc/150?img=24', 'es', 'en', NOW(), NOW())
ON CONFLICT (user_id) DO NOTHING;

-- Информация о созданных профилях
DO $$
BEGIN
    RAISE NOTICE 'Создано профилей: 9';
    RAISE NOTICE '  - 1 администратор';
    RAISE NOTICE '  - 3 инструктора';
    RAISE NOTICE '  - 5 студентов';
END $$;
