-- Seed данные для шагов (steps)
-- Каждый урок содержит несколько шагов разных типов

INSERT INTO steps (id, lesson_id, title, content, type, order_index, created_at, updated_at)
VALUES 
    -- Шаги для урока "Hello and Goodbye" (English A1)
    ('30000001-0001-0001-0001-000000000001', '20000001-0001-0001-0001-000000000001', 'Introduction to Greetings', '{"text": "In this lesson, you will learn how to greet people in English at different times of the day."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0001-0001-0001-000000000002', '20000001-0001-0001-0001-000000000001', 'Morning Greetings Video', '{"url": "https://example.com/videos/greetings.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    ('30000001-0001-0001-0001-000000000003', '20000001-0001-0001-0001-000000000001', 'Practice: Choose the Correct Greeting', '{"question": "Select the appropriate greeting for each situation."}'::jsonb, 'quiz', 3, NOW(), NOW()),
    ('30000001-0001-0001-0001-000000000004', '20000001-0001-0001-0001-000000000001', 'Saying Goodbye', '{"text": "Learn different ways to say goodbye: Goodbye, See you later, Have a nice day!"}'::jsonb, 'text', 4, NOW(), NOW()),
    
    -- Шаги для урока "Introducing Yourself" (English A1)
    ('30000001-0001-0002-0001-000000000001', '20000001-0001-0001-0001-000000000002', 'My Name Is...', '{"text": "Learn how to introduce yourself: My name is..., I am from..., I am a..."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0001-0002-0001-000000000002', '20000001-0001-0001-0001-000000000002', 'Introduction Examples', '{"url": "https://example.com/videos/introductions.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    ('30000001-0001-0002-0001-000000000003', '20000001-0001-0001-0001-000000000002', 'Quiz: Complete the Introduction', '{"question": "Fill in the blanks to complete the introduction."}'::jsonb, 'quiz', 3, NOW(), NOW()),
    
    -- Шаги для урока "Nice to Meet You" (English A1)
    ('30000001-0001-0003-0001-000000000001', '20000001-0001-0001-0001-000000000003', 'Polite Expressions', '{"text": "Learn polite expressions: Nice to meet you, Pleased to meet you, How do you do?"}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0001-0003-0001-000000000002', '20000001-0001-0001-0001-000000000003', 'Conversation Practice', '{"url": "https://example.com/videos/polite-expressions.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    
    -- Шаги для урока "Numbers 1-100" (English A1)
    ('30000001-0002-0001-0001-000000000001', '20000001-0001-0001-0002-000000000001', 'Numbers 1-20', '{"text": "Learn to count from 1 to 20 in English."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0002-0001-0001-000000000002', '20000001-0001-0001-0002-000000000001', 'Numbers Video Tutorial', '{"url": "https://example.com/videos/numbers.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    ('30000001-0002-0001-0001-000000000003', '20000001-0001-0001-0002-000000000001', 'Number Quiz', '{"question": "Test your knowledge of English numbers."}'::jsonb, 'quiz', 3, NOW(), NOW()),
    
    -- Шаги для урока "Telling Time" (English A1)
    ('30000001-0002-0002-0001-000000000001', '20000001-0001-0001-0002-000000000002', 'What Time Is It?', '{"text": "Learn how to ask and tell the time in English."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0002-0002-0001-000000000002', '20000001-0001-0001-0002-000000000002', 'Time Expressions', '{"url": "https://example.com/videos/time.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    
    -- Шаги для урока "Writing Professional Emails" (Business English B2)
    ('30000001-0003-0001-0001-000000000001', '20000001-0002-0001-0001-000000000001', 'Email Structure', '{"text": "Learn the standard structure of professional emails: Subject, Greeting, Body, Closing."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0003-0001-0001-000000000002', '20000001-0002-0001-0001-000000000001', 'Formal vs Informal Tone', '{"text": "Understand when to use formal or informal language in business emails."}'::jsonb, 'text', 2, NOW(), NOW()),
    ('30000001-0003-0001-0001-000000000003', '20000001-0002-0001-0001-000000000001', 'Email Examples', '{"url": "https://example.com/videos/business-emails.mp4"}'::jsonb, 'video', 3, NOW(), NOW()),
    ('30000001-0003-0001-0001-000000000004', '20000001-0002-0001-0001-000000000001', 'Practice: Write an Email', '{"question": "Write a professional email based on the given scenario."}'::jsonb, 'quiz', 4, NOW(), NOW()),
    
    -- Шаги для урока "Phone Etiquette" (Business English B2)
    ('30000001-0003-0002-0001-000000000001', '20000001-0002-0001-0001-000000000002', 'Answering the Phone', '{"text": "Learn professional phone greetings and how to answer calls."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000001-0003-0002-0001-000000000002', '20000001-0002-0001-0001-000000000002', 'Phone Conversation Examples', '{"url": "https://example.com/videos/phone-calls.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    
    -- Шаги для урока "El Alfabeto Español" (Spanish A1)
    ('30000002-0001-0001-0001-000000000001', '20000002-0001-0001-0001-000000000001', 'Las Letras del Alfabeto', '{"text": "El alfabeto español tiene 27 letras. Aprende cada una."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000002-0001-0001-0001-000000000002', '20000002-0001-0001-0001-000000000001', 'Pronunciación del Alfabeto', '{"url": "https://example.com/videos/alfabeto-espanol.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    ('30000002-0001-0001-0001-000000000003', '20000002-0001-0001-0001-000000000001', 'Práctica: Deletrea Palabras', '{"question": "Practice spelling words in Spanish."}'::jsonb, 'quiz', 3, NOW(), NOW()),
    
    -- Шаги для урока "¡Hola! ¿Cómo estás?" (Spanish A1)
    ('30000002-0002-0001-0001-000000000001', '20000002-0002-0001-0001-000000000001', 'Saludos Básicos', '{"text": "Aprende: Hola, Buenos días, Buenas tardes, Buenas noches."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000002-0002-0001-0001-000000000002', '20000002-0002-0001-0001-000000000001', 'Video de Saludos', '{"url": "https://example.com/videos/saludos-espanol.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    
    -- Шаги для урока "Das Deutsche Alphabet" (German A1)
    ('30000003-0001-0001-0001-000000000001', '20000003-0001-0001-0001-000000000001', 'Die Buchstaben', '{"text": "Das deutsche Alphabet hat 26 Buchstaben plus ä, ö, ü und ß."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000003-0001-0001-0001-000000000002', '20000003-0001-0001-0001-000000000001', 'Alphabet Video', '{"url": "https://example.com/videos/deutsches-alphabet.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    ('30000003-0001-0001-0001-000000000003', '20000003-0001-0001-0001-000000000001', 'Übung: Buchstabieren', '{"question": "Practice spelling German words."}'::jsonb, 'quiz', 3, NOW(), NOW()),
    
    -- Шаги для урока "Guten Tag!" (German A1)
    ('30000003-0002-0001-0001-000000000001', '20000003-0002-0001-0001-000000000001', 'Deutsche Grüße', '{"text": "Lerne: Guten Morgen, Guten Tag, Guten Abend, Gute Nacht."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000003-0002-0001-0001-000000000002', '20000003-0002-0001-0001-000000000001', 'Grüße Video', '{"url": "https://example.com/videos/deutsche-gruesse.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    
    -- Шаги для урока "Nebensätze" (German C1)
    ('30000003-0004-0001-0001-000000000001', '20000003-0004-0001-0001-000000000001', 'Was sind Nebensätze?', '{"text": "Subordinate clauses in German: structure and word order."}'::jsonb, 'text', 1, NOW(), NOW()),
    ('30000003-0004-0001-0001-000000000002', '20000003-0004-0001-0001-000000000001', 'Nebensätze Beispiele', '{"url": "https://example.com/videos/nebensaetze.mp4"}'::jsonb, 'video', 2, NOW(), NOW()),
    ('30000003-0004-0001-0001-000000000003', '20000003-0004-0001-0001-000000000001', 'Übung: Nebensätze bilden', '{"question": "Create subordinate clauses from given sentences."}'::jsonb, 'quiz', 3, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;

-- Информация о созданных шагах
DO $$
BEGIN
    RAISE NOTICE 'Создано шагов: 33';
    RAISE NOTICE '  - Text steps: ~15';
    RAISE NOTICE '  - Video steps: ~12';
    RAISE NOTICE '  - Quiz steps: ~6';
    RAISE NOTICE '';
    RAISE NOTICE 'Шаги распределены по урокам всех курсов';
END $$;
