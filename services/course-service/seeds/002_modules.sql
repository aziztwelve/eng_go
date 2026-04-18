-- Seed данные для модулей курсов
-- Каждый курс содержит несколько модулей

INSERT INTO modules (id, course_id, title, description, order_index, created_at, updated_at)
VALUES 
    -- Модули для "English for Beginners - A1"
    ('10000001-0001-0001-0001-000000000001', 'c0000001-0001-0001-0001-000000000001', 'Introduction & Greetings', 'Learn basic greetings and how to introduce yourself', 1, NOW(), NOW()),
    ('10000001-0001-0001-0001-000000000002', 'c0000001-0001-0001-0001-000000000001', 'Numbers & Time', 'Master numbers, dates, and telling time', 2, NOW(), NOW()),
    ('10000001-0001-0001-0001-000000000003', 'c0000001-0001-0001-0001-000000000001', 'Daily Routines', 'Describe your daily activities and routines', 3, NOW(), NOW()),
    
    -- Модули для "Business English - B2"
    ('10000001-0001-0001-0002-000000000001', 'c0000001-0001-0001-0001-000000000002', 'Professional Communication', 'Email writing, phone calls, and meetings', 1, NOW(), NOW()),
    ('10000001-0001-0001-0002-000000000002', 'c0000001-0001-0001-0001-000000000002', 'Presentations & Negotiations', 'Deliver impactful presentations and negotiate effectively', 2, NOW(), NOW()),
    
    -- Модули для "Spanish Basics - A1"
    ('10000002-0002-0002-0001-000000000001', 'c0000002-0002-0002-0002-000000000001', 'Alfabeto y Pronunciación', 'Spanish alphabet and pronunciation basics', 1, NOW(), NOW()),
    ('10000002-0002-0002-0001-000000000002', 'c0000002-0002-0002-0002-000000000001', 'Saludos y Presentaciones', 'Greetings and introductions in Spanish', 2, NOW(), NOW()),
    ('10000002-0002-0002-0001-000000000003', 'c0000002-0002-0002-0002-000000000001', 'La Familia y Los Amigos', 'Talk about family and friends', 3, NOW(), NOW()),
    
    -- Модули для "Intermediate Spanish Conversation - B1"
    ('10000002-0002-0002-0002-000000000001', 'c0000002-0002-0002-0002-000000000002', 'Conversaciones Cotidianas', 'Everyday conversations and small talk', 1, NOW(), NOW()),
    ('10000002-0002-0002-0002-000000000002', 'c0000002-0002-0002-0002-000000000002', 'Expresiones Idiomáticas', 'Common idioms and expressions', 2, NOW(), NOW()),
    
    -- Модули для "German for Beginners - A1"
    ('10000003-0003-0003-0001-000000000001', 'c0000003-0003-0003-0003-000000000001', 'Das Alphabet und Aussprache', 'German alphabet and pronunciation', 1, NOW(), NOW()),
    ('10000003-0003-0003-0001-000000000002', 'c0000003-0003-0003-0003-000000000001', 'Begrüßungen und Vorstellungen', 'Greetings and introductions', 2, NOW(), NOW()),
    ('10000003-0003-0003-0001-000000000003', 'c0000003-0003-0003-0003-000000000001', 'Zahlen und Zeit', 'Numbers and time expressions', 3, NOW(), NOW()),
    
    -- Модули для "Advanced German Grammar - C1"
    ('10000003-0003-0003-0002-000000000001', 'c0000003-0003-0003-0003-000000000002', 'Komplexe Satzstrukturen', 'Complex sentence structures', 1, NOW(), NOW()),
    ('10000003-0003-0003-0002-000000000002', 'c0000003-0003-0003-0003-000000000002', 'Konjunktiv und Modalverben', 'Subjunctive mood and modal verbs', 2, NOW(), NOW()),
    
    -- Модули для "IELTS Preparation Course - C1" (не опубликован)
    ('10000001-0001-0001-0003-000000000001', 'c0000001-0001-0001-0001-000000000003', 'Reading Skills', 'IELTS reading strategies and practice', 1, NOW(), NOW()),
    ('10000001-0001-0001-0003-000000000002', 'c0000001-0001-0001-0001-000000000003', 'Writing Task 1 & 2', 'Master both IELTS writing tasks', 2, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;

-- Информация о созданных модулях
DO $$
BEGIN
    RAISE NOTICE 'Создано модулей: 17';
    RAISE NOTICE '  - English for Beginners: 3 модуля';
    RAISE NOTICE '  - Business English: 2 модуля';
    RAISE NOTICE '  - Spanish Basics: 3 модуля';
    RAISE NOTICE '  - Intermediate Spanish: 2 модуля';
    RAISE NOTICE '  - German Beginners: 3 модуля';
    RAISE NOTICE '  - Advanced German: 2 модуля';
    RAISE NOTICE '  - IELTS Preparation: 2 модуля';
END $$;
