-- Seed данные для курсов
-- Курсы от разных инструкторов по разным языкам и уровням

INSERT INTO courses (id, title, description, price, instructor_id, level, language, thumbnail_url, is_published, created_at, updated_at)
VALUES 
    -- Курсы английского языка от John Smith
    ('c0000001-0001-0001-0001-000000000001', 
     'English for Beginners - A1', 
     'Start your English learning journey with this comprehensive beginner course. Learn basic grammar, vocabulary, and everyday conversations.',
     29.99,
     '22222222-2222-2222-2222-222222222222',
     'A1',
     'en',
     'https://images.unsplash.com/photo-1546410531-bb4caa6b424d?w=400',
     true,
     NOW() - INTERVAL '30 days',
     NOW() - INTERVAL '30 days'),
    
    ('c0000001-0001-0001-0001-000000000002',
     'Business English - B2',
     'Master professional English for the workplace. Perfect for business professionals who need to communicate effectively in international settings.',
     79.99,
     '22222222-2222-2222-2222-222222222222',
     'B2',
     'en',
     'https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?w=400',
     true,
     NOW() - INTERVAL '25 days',
     NOW() - INTERVAL '25 days'),
    
    -- Курсы испанского языка от Maria Garcia
    ('c0000002-0002-0002-0002-000000000001',
     'Spanish Basics - A1',
     '¡Hola! Begin your Spanish adventure with this fun and interactive course. Learn essential phrases, pronunciation, and cultural insights.',
     34.99,
     '22222222-2222-2222-2222-222222222223',
     'A1',
     'es',
     'https://images.unsplash.com/photo-1543783207-ec64e4d95325?w=400',
     true,
     NOW() - INTERVAL '20 days',
     NOW() - INTERVAL '20 days'),
    
    ('c0000002-0002-0002-0002-000000000002',
     'Intermediate Spanish Conversation - B1',
     'Take your Spanish to the next level with real-world conversations, idiomatic expressions, and cultural deep dives.',
     49.99,
     '22222222-2222-2222-2222-222222222223',
     'B1',
     'es',
     'https://images.unsplash.com/photo-1527866959252-deab85ef7d1b?w=400',
     true,
     NOW() - INTERVAL '15 days',
     NOW() - INTERVAL '15 days'),
    
    -- Курсы немецкого языка от Hans Mueller
    ('c0000003-0003-0003-0003-000000000001',
     'German for Beginners - A1',
     'Guten Tag! Start learning German with a structured approach to grammar, vocabulary, and pronunciation.',
     39.99,
     '22222222-2222-2222-2222-222222222224',
     'A1',
     'de',
     'https://images.unsplash.com/photo-1467541473380-93b90a9e2d18?w=400',
     true,
     NOW() - INTERVAL '18 days',
     NOW() - INTERVAL '18 days'),
    
    ('c0000003-0003-0003-0003-000000000002',
     'Advanced German Grammar - C1',
     'Master complex German grammar structures, advanced vocabulary, and sophisticated writing techniques.',
     89.99,
     '22222222-2222-2222-2222-222222222224',
     'C1',
     'de',
     'https://images.unsplash.com/photo-1434030216411-0b793f4b4173?w=400',
     true,
     NOW() - INTERVAL '10 days',
     NOW() - INTERVAL '10 days'),
    
    -- Дополнительный курс (не опубликован)
    ('c0000001-0001-0001-0001-000000000003',
     'IELTS Preparation Course - C1',
     'Comprehensive IELTS preparation covering all four skills: Reading, Writing, Listening, and Speaking.',
     99.99,
     '22222222-2222-2222-2222-222222222222',
     'C1',
     'en',
     'https://images.unsplash.com/photo-1456513080510-7bf3a84b82f8?w=400',
     false,
     NOW() - INTERVAL '5 days',
     NOW() - INTERVAL '5 days')
ON CONFLICT (id) DO NOTHING;

-- Информация о созданных курсах
DO $$
BEGIN
    RAISE NOTICE 'Создано курсов: 7';
    RAISE NOTICE '  - English: 3 курса (2 опубликованных)';
    RAISE NOTICE '  - Spanish: 2 курса';
    RAISE NOTICE '  - German: 2 курса';
    RAISE NOTICE '';
    RAISE NOTICE 'Уровни: A1, B1, B2, C1';
END $$;
