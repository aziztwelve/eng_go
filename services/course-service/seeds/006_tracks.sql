-- Phase 0 seed: Learning Tracks + standalone lessons
-- 3 трека, 6 standalone уроков (без module_id), связки.

SET search_path TO courses;

-- ====== STANDALONE LESSONS (module_id = NULL) ======
INSERT INTO lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES
    -- Daily English
    ('a1111111-0001-0001-0001-000000000001', NULL,
     'Daily English: Greetings at the Office',
     'Quick 5-min lesson — common office greetings and small talk openers.',
     0, NOW(), NOW()),
    ('a1111111-0001-0001-0001-000000000002', NULL,
     'Daily English: Ordering Coffee',
     'How to order coffee in a cafe — vocabulary and phrases.',
     0, NOW(), NOW()),
    ('a1111111-0001-0001-0001-000000000003', NULL,
     'Daily English: Asking for Directions',
     'Polite phrases for asking and giving directions in a city.',
     0, NOW(), NOW()),

    -- Short Stories
    ('a2222222-0002-0002-0002-000000000001', NULL,
     'Story: The Lost Key (B1)',
     'A short adventure story with reading comprehension questions.',
     0, NOW(), NOW()),
    ('a2222222-0002-0002-0002-000000000002', NULL,
     'Story: The Mysterious Letter (B1)',
     'Suspense short-story with vocabulary highlights.',
     0, NOW(), NOW()),

    -- Podcast snippets
    ('a3333333-0003-0003-0003-000000000001', NULL,
     'Podcast: Tech News in Simple English (A2)',
     '3-minute podcast about new tech with transcript and quiz.',
     0, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== TRACKS ======
INSERT INTO learning_tracks
    (id, code, title, description, icon_url, language, level, track_type,
     is_published, sort_order, created_by, created_at, updated_at)
VALUES
    ('b1111111-0001-0001-0001-000000000001',
     'daily-english',
     'Daily English',
     'Short 5-minute lessons for everyday situations. Perfect for busy learners.',
     'https://images.unsplash.com/photo-1503676260728-1c00da094a0b?w=400',
     'en', 'A2', 'daily',
     true, 1, NULL,
     NOW(), NOW()),

    ('b2222222-0002-0002-0002-000000000002',
     'english-stories-b1',
     'English Short Stories — B1',
     'Read engaging short stories and check your comprehension. Great for intermediate learners.',
     'https://images.unsplash.com/photo-1481627834876-b7833e8f5570?w=400',
     'en', 'B1', 'stories',
     true, 2, NULL,
     NOW(), NOW()),

    ('b3333333-0003-0003-0003-000000000003',
     'english-podcast-a2',
     'English Podcast Bites',
     'Bite-sized podcast episodes with transcripts. Listen on the go.',
     'https://images.unsplash.com/photo-1478737270239-2f02b77fc618?w=400',
     'en', 'A2', 'podcast',
     true, 3, NULL,
     NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== TRACK <-> LESSON LINKS ======
INSERT INTO track_lessons (track_id, lesson_id, order_index, created_at)
VALUES
    -- Daily English
    ('b1111111-0001-0001-0001-000000000001', 'a1111111-0001-0001-0001-000000000001', 0, NOW()),
    ('b1111111-0001-0001-0001-000000000001', 'a1111111-0001-0001-0001-000000000002', 1, NOW()),
    ('b1111111-0001-0001-0001-000000000001', 'a1111111-0001-0001-0001-000000000003', 2, NOW()),

    -- Stories
    ('b2222222-0002-0002-0002-000000000002', 'a2222222-0002-0002-0002-000000000001', 0, NOW()),
    ('b2222222-0002-0002-0002-000000000002', 'a2222222-0002-0002-0002-000000000002', 1, NOW()),

    -- Podcast
    ('b3333333-0003-0003-0003-000000000003', 'a3333333-0003-0003-0003-000000000001', 0, NOW())
ON CONFLICT (track_id, lesson_id) DO NOTHING;


-- ====== Простые text-шаги для standalone уроков (минимум для UI) ======
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c1111111-0001-0001-0001-000000000001',
     'a1111111-0001-0001-0001-000000000001',
     'text',
     'Common office greetings',
     '{"text":"Good morning! How are you today?\n\nHi, how was your weekend?\n\nHave a great day!"}',
     0, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000002',
     'a1111111-0001-0001-0001-000000000002',
     'text',
     'Ordering coffee phrases',
     '{"text":"Can I get a large latte to go, please?\n\nDo you have any decaf options?\n\nI''ll have an espresso, thanks."}',
     0, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000003',
     'a1111111-0001-0001-0001-000000000003',
     'text',
     'Asking for directions',
     '{"text":"Excuse me, could you tell me how to get to the nearest metro?\n\nIs it far from here?\n\nThank you for your help!"}',
     0, NOW(), NOW()),

    ('c2222222-0002-0002-0002-000000000001',
     'a2222222-0002-0002-0002-000000000001',
     'text',
     'The Lost Key',
     '{"text":"Sarah was getting ready for work when she realized her keys were missing. She looked everywhere — under the sofa, behind the curtains, in her bag — but they were nowhere to be found..."}',
     0, NOW(), NOW()),

    ('c2222222-0002-0002-0002-000000000002',
     'a2222222-0002-0002-0002-000000000002',
     'text',
     'The Mysterious Letter',
     '{"text":"The old letter arrived on a rainy Tuesday morning. The envelope had no return address, and the handwriting looked oddly familiar..."}',
     0, NOW(), NOW()),

    ('c3333333-0003-0003-0003-000000000001',
     'a3333333-0003-0003-0003-000000000001',
     'text',
     'Tech News Transcript',
     '{"text":"Welcome to Tech News in Simple English. Today we talk about a new smartphone that can fold like a wallet..."}',
     0, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
