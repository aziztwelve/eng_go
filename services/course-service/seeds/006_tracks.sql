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


-- ========================================================================
-- Phase 2 demo: добавляем шаги ВСЕХ 12 типов в 6 уроков 3 треков.
-- Покрытие:
--   Track daily-english   : video, text, quiz, translate, match_pairs,
--                           tap_words, fill_blank
--   Track stories-b1      : story, text, quiz, ai_writing, fill_blank, task
--   Track podcast-a2      : listening, text, tap_words, quiz, brain_game
-- Все ассеты — placeholder/stub (audio_url='', icon — unsplash).
-- JSON-схемы строго соответствуют validators в step-validation-service.
-- ========================================================================

-- ====== DAILY ENGLISH — Lesson 1 «Greetings at the Office» ======
-- text(0) уже выше; добавляем video(1), quiz(2), translate(3).
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c1111111-0001-0001-0001-000000000101',
     'a1111111-0001-0001-0001-000000000001',
     'video',
     'Greetings video',
     $$
     {
       "url": "https://example.com/videos/office-greetings.mp4",
       "title": "Office Greetings",
       "duration_seconds": 90
     }
     $$,
     1, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000102',
     'a1111111-0001-0001-0001-000000000001',
     'quiz',
     'Pick the right greeting',
     $$
     {
       "instruction": "Choose the correct greeting",
       "question": "Your colleague arrives at 9am. What do you say?",
       "options": [
         { "text": "Good morning!", "is_correct": true },
         { "text": "Good night!", "is_correct": false },
         { "text": "See you later!", "is_correct": false }
       ],
       "explanation": "Mornings → Good morning!"
     }
     $$,
     2, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000103',
     'a1111111-0001-0001-0001-000000000001',
     'translate',
     'Translate the greeting',
     $$
     {
       "instruction": "Translate to English",
       "source_text": "Доброе утро, как дела?",
       "source_language": "ru",
       "target_language": "en",
       "correct_translation": "Good morning, how are you?",
       "word_bank": ["Good", "morning", "how", "are", "you", "evening", "night", "today"],
       "alternative_answers": ["good morning how are you"],
       "hints": ["доброе утро = Good morning"],
       "explanation": "Standard morning greeting + small-talk opener."
     }
     $$,
     3, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== DAILY ENGLISH — Lesson 2 «Ordering Coffee» ======
-- text(0) уже выше; добавляем match_pairs(1), tap_words(2), fill_blank(3).
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c1111111-0001-0001-0001-000000000201',
     'a1111111-0001-0001-0001-000000000002',
     'match_pairs',
     'Match coffee terms',
     $$
     {
       "instruction": "Match English terms to Russian",
       "pairs": [
         { "left": "latte",   "right": "латте" },
         { "left": "to go",   "right": "с собой" },
         { "left": "decaf",   "right": "без кофеина" },
         { "left": "espresso","right": "эспрессо" }
       ],
       "explanation": "Common cafe vocabulary."
     }
     $$,
     1, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000202',
     'a1111111-0001-0001-0001-000000000002',
     'tap_words',
     'Tap what you hear',
     $$
     {
       "instruction": "Tap the words you hear",
       "audio_url": "",
       "audio_text": "Can I get a large latte to go",
       "word_bank": ["Can","I","get","a","large","latte","to","go","small","please"],
       "correct_words": ["Can","I","get","a","large","latte","to","go"]
     }
     $$,
     2, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000203',
     'a1111111-0001-0001-0001-000000000002',
     'fill_blank',
     'Order an espresso',
     $$
     {
       "instruction": "Fill in the blank",
       "sentence_template": "I''ll have an ___, thanks.",
       "options": ["espresso", "window", "airplane", "computer"],
       "correct_answer": "espresso",
       "alternatives": [],
       "translation_hint": "эспрессо",
       "explanation": "In a cafe you order an espresso."
     }
     $$,
     3, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== DAILY ENGLISH — Lesson 3 «Asking for Directions» ======
-- text(0) уже выше; добавляем translate(1), quiz(2).
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c1111111-0001-0001-0001-000000000301',
     'a1111111-0001-0001-0001-000000000003',
     'translate',
     'Ask for the metro',
     $$
     {
       "instruction": "Translate to English",
       "source_text": "Извините, как пройти к метро?",
       "source_language": "ru",
       "target_language": "en",
       "correct_translation": "Excuse me, how do I get to the metro?",
       "word_bank": ["Excuse","me","how","do","I","get","to","the","metro","airport","station"],
       "alternative_answers": ["excuse me how to get to the metro"],
       "hints": ["метро = metro"]
     }
     $$,
     1, NOW(), NOW()),

    ('c1111111-0001-0001-0001-000000000302',
     'a1111111-0001-0001-0001-000000000003',
     'quiz',
     'Polite forms',
     $$
     {
       "instruction": "Pick the polite phrase",
       "question": "Which is the polite way to ask for directions?",
       "options": [
         { "text": "Could you tell me the way to...?", "is_correct": true },
         { "text": "Tell me where it is now!",         "is_correct": false },
         { "text": "Give me directions!",              "is_correct": false }
       ],
       "explanation": "'Could you ...?' is the polite form."
     }
     $$,
     2, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== STORIES — Lesson 1 «The Lost Key» ======
-- text(0) уже выше; добавляем story(1), quiz(2), ai_writing(3).
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c2222222-0002-0002-0002-000000000101',
     'a2222222-0002-0002-0002-000000000001',
     'story',
     'The Lost Key — interactive scenes',
     $$
     {
       "title": "The Lost Key",
       "scenes": [
         {
           "image_url": "",
           "character": "Narrator",
           "text": "Sarah was getting ready for work when she realized her keys were missing.",
           "translation": "Сара собиралась на работу и поняла, что ключи пропали."
         },
         {
           "image_url": "",
           "character": "Sarah",
           "text": "Where could they be?",
           "translation": "Где они могут быть?"
         },
         {
           "type": "choice",
           "question": "What should Sarah check first?",
           "options": [
             { "text": "Her bag",     "is_correct": true  },
             { "text": "The fridge",  "is_correct": false },
             { "text": "The garden",  "is_correct": false }
           ]
         }
       ],
       "explanation": "The bag is the most likely place she put her keys."
     }
     $$,
     1, NOW(), NOW()),

    ('c2222222-0002-0002-0002-000000000102',
     'a2222222-0002-0002-0002-000000000001',
     'quiz',
     'Reading comprehension',
     $$
     {
       "instruction": "Reading comprehension",
       "question": "What was Sarah getting ready to do?",
       "options": [
         { "text": "Go to work",   "is_correct": true  },
         { "text": "Go to bed",    "is_correct": false },
         { "text": "Cook dinner",  "is_correct": false }
       ],
       "explanation": "The story says she was 'getting ready for work'."
     }
     $$,
     2, NOW(), NOW()),

    ('c2222222-0002-0002-0002-000000000103',
     'a2222222-0002-0002-0002-000000000001',
     'ai_writing',
     'Continue the story',
     $$
     {
       "instruction": "Write 2-3 sentences",
       "prompt": "Where did Sarah finally find the lost key? Continue the story in 2-3 sentences.",
       "language": "en",
       "min_words": 20,
       "max_words": 80
     }
     $$,
     3, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== STORIES — Lesson 2 «The Mysterious Letter» ======
-- text(0) уже выше; добавляем story(1), fill_blank(2), task(3).
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c2222222-0002-0002-0002-000000000201',
     'a2222222-0002-0002-0002-000000000002',
     'story',
     'The Mysterious Letter — scenes',
     $$
     {
       "title": "The Mysterious Letter",
       "scenes": [
         {
           "character": "Narrator",
           "text": "The old letter arrived on a rainy Tuesday morning.",
           "translation": "Старое письмо пришло дождливым утром во вторник."
         },
         {
           "character": "Narrator",
           "text": "The envelope had no return address, and the handwriting looked oddly familiar.",
           "translation": "На конверте не было обратного адреса, а почерк казался смутно знакомым."
         },
         {
           "type": "choice",
           "question": "What would you do?",
           "options": [
             { "text": "Open it carefully", "is_correct": true  },
             { "text": "Throw it away",     "is_correct": false }
           ]
         }
       ]
     }
     $$,
     1, NOW(), NOW()),

    ('c2222222-0002-0002-0002-000000000202',
     'a2222222-0002-0002-0002-000000000002',
     'fill_blank',
     'Describe the morning',
     $$
     {
       "instruction": "Complete the sentence",
       "sentence_template": "The letter arrived on a ___ Tuesday morning.",
       "options": ["rainy", "sunny", "snowy", "bright"],
       "correct_answer": "rainy",
       "alternatives": [],
       "explanation": "The story says 'a rainy Tuesday morning'."
     }
     $$,
     2, NOW(), NOW()),

    ('c2222222-0002-0002-0002-000000000203',
     'a2222222-0002-0002-0002-000000000002',
     'task',
     'Imagine the contents',
     $$
     {
       "instruction": "Discussion task",
       "prompt": "Imagine you received this letter. Describe in 3-5 sentences what you think it might contain.",
       "language": "en",
       "min_words": 30
     }
     $$,
     3, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;


-- ====== PODCAST — Lesson 1 «Tech News Transcript» ======
-- text(0) уже выше; добавляем listening(1), tap_words(2), quiz(3), brain_game(4).
INSERT INTO steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES
    ('c3333333-0003-0003-0003-000000000101',
     'a3333333-0003-0003-0003-000000000001',
     'listening',
     'Type the intro',
     $$
     {
       "instruction": "Type what you hear",
       "audio_url": "",
       "audio_text": "Welcome to Tech News in Simple English",
       "correct_text": "Welcome to Tech News in Simple English",
       "language": "en",
       "translation_hint": "Добро пожаловать на Tech News на простом английском",
       "alternative_answers": ["welcome to tech news in simple english"],
       "explanation": "Common podcast intro line."
     }
     $$,
     1, NOW(), NOW()),

    ('c3333333-0003-0003-0003-000000000102',
     'a3333333-0003-0003-0003-000000000001',
     'tap_words',
     'Tap the headline',
     $$
     {
       "instruction": "Tap the words from the headline",
       "audio_url": "",
       "audio_text": "smartphone that can fold like a wallet",
       "word_bank": ["smartphone","that","can","fold","like","a","wallet","phone","brick","laptop"],
       "correct_words": ["smartphone","that","can","fold","like","a","wallet"]
     }
     $$,
     2, NOW(), NOW()),

    ('c3333333-0003-0003-0003-000000000103',
     'a3333333-0003-0003-0003-000000000001',
     'quiz',
     'Comprehension check',
     $$
     {
       "instruction": "Listening comprehension",
       "question": "What does the new smartphone do?",
       "options": [
         { "text": "It folds like a wallet",        "is_correct": true  },
         { "text": "It charges in 1 second",        "is_correct": false },
         { "text": "It takes photos underwater",    "is_correct": false }
       ],
       "explanation": "The podcast says it 'folds like a wallet'."
     }
     $$,
     3, NOW(), NOW()),

    ('c3333333-0003-0003-0003-000000000104',
     'a3333333-0003-0003-0003-000000000001',
     'brain_game',
     'Word unscramble',
     $$
     {
       "game": "word_unscramble",
       "instruction": "Unscramble the word from the podcast",
       "scrambled": "PNESTRMOAH",
       "answer": "SMARTPHONE",
       "language": "en"
     }
     $$,
     4, NOW(), NOW())
ON CONFLICT (id) DO NOTHING;
