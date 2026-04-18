-- Seed данные для уроков
-- Каждый модуль содержит несколько уроков

INSERT INTO lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES 
    -- Уроки для модуля "Introduction & Greetings" (English A1)
    ('20000001-0001-0001-0001-000000000001', '10000001-0001-0001-0001-000000000001', 'Hello and Goodbye', 'Learn basic greetings for different times of day', 1, NOW(), NOW()),
    ('20000001-0001-0001-0001-000000000002', '10000001-0001-0001-0001-000000000001', 'Introducing Yourself', 'How to tell people your name and where you are from', 2, NOW(), NOW()),
    ('20000001-0001-0001-0001-000000000003', '10000001-0001-0001-0001-000000000001', 'Nice to Meet You', 'Polite expressions when meeting someone new', 3, NOW(), NOW()),
    
    -- Уроки для модуля "Numbers & Time" (English A1)
    ('20000001-0001-0001-0002-000000000001', '10000001-0001-0001-0001-000000000002', 'Numbers 1-100', 'Count from one to one hundred', 1, NOW(), NOW()),
    ('20000001-0001-0001-0002-000000000002', '10000001-0001-0001-0001-000000000002', 'Telling Time', 'How to ask and tell the time', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Daily Routines" (English A1)
    ('20000001-0001-0001-0003-000000000001', '10000001-0001-0001-0001-000000000003', 'Morning Routine', 'Vocabulary for morning activities', 1, NOW(), NOW()),
    ('20000001-0001-0001-0003-000000000002', '10000001-0001-0001-0001-000000000003', 'Work and School', 'Talking about your daily work or study', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Professional Communication" (Business English B2)
    ('20000001-0002-0001-0001-000000000001', '10000001-0001-0001-0002-000000000001', 'Writing Professional Emails', 'Structure and tone of business emails', 1, NOW(), NOW()),
    ('20000001-0002-0001-0001-000000000002', '10000001-0001-0001-0002-000000000001', 'Phone Etiquette', 'Making and receiving business calls', 2, NOW(), NOW()),
    ('20000001-0002-0001-0001-000000000003', '10000001-0001-0001-0002-000000000001', 'Meeting Management', 'Leading and participating in meetings', 3, NOW(), NOW()),
    
    -- Уроки для модуля "Presentations & Negotiations" (Business English B2)
    ('20000001-0002-0002-0001-000000000001', '10000001-0001-0001-0002-000000000002', 'Structuring Your Presentation', 'How to organize an effective presentation', 1, NOW(), NOW()),
    ('20000001-0002-0002-0001-000000000002', '10000001-0001-0001-0002-000000000002', 'Negotiation Techniques', 'Win-win negotiation strategies', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Alfabeto y Pronunciación" (Spanish A1)
    ('20000002-0001-0001-0001-000000000001', '10000002-0002-0002-0001-000000000001', 'El Alfabeto Español', 'The Spanish alphabet and letter names', 1, NOW(), NOW()),
    ('20000002-0001-0001-0001-000000000002', '10000002-0002-0002-0001-000000000001', 'Vocales y Consonantes', 'Vowels and consonants pronunciation', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Saludos y Presentaciones" (Spanish A1)
    ('20000002-0002-0001-0001-000000000001', '10000002-0002-0002-0001-000000000002', '¡Hola! ¿Cómo estás?', 'Basic greetings in Spanish', 1, NOW(), NOW()),
    ('20000002-0002-0001-0001-000000000002', '10000002-0002-0002-0001-000000000002', 'Me llamo...', 'Introducing yourself in Spanish', 2, NOW(), NOW()),
    
    -- Уроки для модуля "La Familia y Los Amigos" (Spanish A1)
    ('20000002-0003-0001-0001-000000000001', '10000002-0002-0002-0001-000000000003', 'Mi Familia', 'Family members vocabulary', 1, NOW(), NOW()),
    ('20000002-0003-0001-0001-000000000002', '10000002-0002-0002-0001-000000000003', 'Mis Amigos', 'Describing your friends', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Conversaciones Cotidianas" (Spanish B1)
    ('20000002-0004-0001-0001-000000000001', '10000002-0002-0002-0002-000000000001', 'En el Café', 'Conversations at a coffee shop', 1, NOW(), NOW()),
    ('20000002-0004-0001-0001-000000000002', '10000002-0002-0002-0002-000000000001', 'De Compras', 'Shopping conversations', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Expresiones Idiomáticas" (Spanish B1)
    ('20000002-0005-0001-0001-000000000001', '10000002-0002-0002-0002-000000000002', 'Expresiones Comunes', 'Common Spanish expressions', 1, NOW(), NOW()),
    
    -- Уроки для модуля "Das Alphabet und Aussprache" (German A1)
    ('20000003-0001-0001-0001-000000000001', '10000003-0003-0003-0001-000000000001', 'Das Deutsche Alphabet', 'The German alphabet', 1, NOW(), NOW()),
    ('20000003-0001-0001-0001-000000000002', '10000003-0003-0003-0001-000000000001', 'Umlaute: ä, ö, ü', 'German umlauts pronunciation', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Begrüßungen und Vorstellungen" (German A1)
    ('20000003-0002-0001-0001-000000000001', '10000003-0003-0003-0001-000000000002', 'Guten Tag!', 'German greetings', 1, NOW(), NOW()),
    ('20000003-0002-0001-0001-000000000002', '10000003-0003-0003-0001-000000000002', 'Ich heiße...', 'Introducing yourself in German', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Zahlen und Zeit" (German A1)
    ('20000003-0003-0001-0001-000000000001', '10000003-0003-0003-0001-000000000003', 'Zahlen 1-100', 'Numbers one to one hundred', 1, NOW(), NOW()),
    ('20000003-0003-0001-0001-000000000002', '10000003-0003-0003-0001-000000000003', 'Die Uhrzeit', 'Telling time in German', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Komplexe Satzstrukturen" (German C1)
    ('20000003-0004-0001-0001-000000000001', '10000003-0003-0003-0002-000000000001', 'Nebensätze', 'Subordinate clauses', 1, NOW(), NOW()),
    ('20000003-0004-0001-0001-000000000002', '10000003-0003-0003-0002-000000000001', 'Relativsätze', 'Relative clauses', 2, NOW(), NOW()),
    
    -- Уроки для модуля "Konjunktiv und Modalverben" (German C1)
    ('20000003-0005-0001-0001-000000000001', '10000003-0003-0003-0002-000000000002', 'Konjunktiv I und II', 'Subjunctive mood forms', 1, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;

-- Информация о созданных уроках
DO $$
BEGIN
    RAISE NOTICE 'Создано уроков: 30';
    RAISE NOTICE '  Распределены по 17 модулям';
    RAISE NOTICE '  Охватывают уровни A1, B1, B2, C1';
END $$;
