
-- Трек: Слушаем и повторяем: приветствия
INSERT INTO courses.learning_tracks (
    id, code, title, description, language, level,
    track_type, motivation, is_published, sort_order, created_at, updated_at
) VALUES (
    'a9cbb4a4-352b-4658-99e2-c7e6b1662f60',
    'A1_GREETINGS',
    'Слушаем и повторяем: приветствия',
    'Слушайте фразы диктора и повторяйте их вслух.',
    'en',
    'A1',
    'thematic',
    ARRAY['listening_shadowing']::text[],
    true,
    0,
    NOW(),
    NOW()
) ON CONFLICT (code) DO UPDATE SET
    title = EXCLUDED.title,
    description = EXCLUDED.description,
    motivation = EXCLUDED.motivation,
    updated_at = NOW()
RETURNING id;


-- Курс для трека
INSERT INTO courses.courses (
    id, title, description, price, instructor_id,
    level, language, is_published, created_at, updated_at
) VALUES (
    '7f903329-2ce9-4094-8fe3-4a9601ba2861',
    'Слушаем и повторяем: приветствия',
    'Слушайте фразы диктора и повторяйте их вслух.',
    0,
    '11111111-1111-1111-1111-111111111111', -- admin
    'A1',
    'en',
    true,
    NOW(),
    NOW()
) ON CONFLICT DO NOTHING;


-- Модуль для уроков
INSERT INTO courses.modules (
    id, course_id, title, description, order_index, created_at, updated_at
) VALUES (
    '29e7393f-61b3-46be-a4af-96f7c83061c3',
    '7f903329-2ce9-4094-8fe3-4a9601ba2861',
    'Main Module',
    'Generated from A1_GREETINGS',
    1,
    NOW(),
    NOW()
) ON CONFLICT DO NOTHING;


-- Урок: Скажи привет
INSERT INTO courses.lessons (
    id, module_id, title, description, order_index, created_at, updated_at
) VALUES (
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    '29e7393f-61b3-46be-a4af-96f7c83061c3',
    'Скажи привет',
    'Поздороваться и попрощаться.',
    1,
    NOW(),
    NOW()
);


-- Шаг: Новые слова
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'a688544e-60e3-4e04-b112-617fd37c5706',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Новые слова',
    'text',
    '{"body": "Hello means \"привет\". Goodbye means \"до свидания\".", "reading_time_minutes": 1, "instruction": "Прочитайте объяснение."}'::jsonb,
    1,
    NOW(),
    NOW()
);


-- Шаг: Соедините пары
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'f5885fa5-24e0-42e6-a4bf-dc7815849aab',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Соедините пары',
    'match_pairs',
    '{"pairs": [{"id": "HELLO", "left": "Hello", "right": "привет"}, {"id": "GOODBYE", "left": "Goodbye", "right": "до свидания"}], "instruction": "Соедините английские слова с переводом."}'::jsonb,
    2,
    NOW(),
    NOW()
);


-- Шаг: Проверьте себя
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'f64615e0-7ac6-4c9a-bbf0-de2f54e11122',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Проверьте себя',
    'quiz',
    '{"question": "Что означает Hello?", "options": [{"id": "A", "text": "Привет", "is_correct": true}, {"id": "B", "text": "Спасибо", "is_correct": false}], "explanation": "Hello означает «привет» или «здравствуйте».", "instruction": "Выберите правильный ответ."}'::jsonb,
    3,
    NOW(),
    NOW()
);


-- Шаг: Переведите фразу
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'bd90d1ca-ab88-499e-9f64-46383babc18c',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Переведите фразу',
    'translate',
    '{"source_text": "Привет!", "source_language": "ru", "target_language": "en", "correct_translation": "Hello!", "word_bank": ["Hello", "Goodbye", "Thanks"], "instruction": "Составьте перевод из слов."}'::jsonb,
    4,
    NOW(),
    NOW()
);


-- Шаг: Заполните пропуск
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    '692ee5df-2517-4345-a9e3-6814bf4e2899',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Заполните пропуск',
    'fill_blank',
    '{"sentence_template": "___, Anna!", "correct_answer": "Hello", "options": ["Hello", "Goodbye", "Thanks"], "instruction": "Выберите подходящее слово."}'::jsonb,
    5,
    NOW(),
    NOW()
);


-- Шаг: Соберите фразу
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'f13e219f-f1c1-4c69-83c6-4170e3e04aac',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Соберите фразу',
    'tap_words',
    '{"word_bank": ["Hello", "name", "is", "My"], "correct_words": ["Hello", "My", "name", "is"], "instruction": "Расставьте слова в правильном порядке."}'::jsonb,
    6,
    NOW(),
    NOW()
);


-- Шаг: Послушайте
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'a0875352-ccdb-4dd3-982d-252214af9a78',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Послушайте',
    'listening',
    '{"audio_text": "Hello, Anna!", "language": "en", "instruction": "Прослушайте фразу и напишите, что услышали."}'::jsonb,
    7,
    NOW(),
    NOW()
);


-- Шаг: Повторите за диктором
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    '029b13de-3e58-4b3d-b36a-ee21f398cf7a',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Повторите за диктором',
    'listening_shadowing',
    '{"audio_text": "Hello, Anna!", "language": "en", "min_accuracy": 0.7, "translation_hint": "Привет, Анна!", "instruction": "Прослушайте фразу, запишите повтор и получите оценку произношения."}'::jsonb,
    8,
    NOW(),
    NOW()
);


-- Шаг: Встреча с Анной
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'be22a015-cbcf-4a6d-a93d-daada3ef9bf8',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Встреча с Анной',
    'story',
    '{"title": "Meeting Anna", "scenes": [{"type": "dialogue", "character": "Anna", "text": "Hello!", "translation": "Привет!"}, {"type": "choice", "text": "Как ответить Анне?", "options": [{"text": "Hello!", "is_correct": true}, {"text": "Goodbye!", "is_correct": false}]}], "instruction": "Прочитайте историю и выберите ответ."}'::jsonb,
    9,
    NOW(),
    NOW()
);


-- Шаг: Выберите определение
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    '7e02b162-23a3-48b2-9a14-3d5d662fe1f5',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Выберите определение',
    'choose_definition',
    '{"word": "hello", "language": "en", "options": [{"id": "A", "text": "A greeting", "is_correct": true}, {"id": "B", "text": "A farewell", "is_correct": false}, {"id": "C", "text": "A question", "is_correct": false}, {"id": "D", "text": "A number", "is_correct": false}], "explanation": "Hello is a greeting.", "instruction": "Выберите правильное значение слова."}'::jsonb,
    10,
    NOW(),
    NOW()
);


-- Шаг: Выберите услышанное слово
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    '6c9f75bd-796c-4fa2-bb97-b28d8e18c958',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Выберите услышанное слово',
    'listen_choose_word',
    '{"sentence_template": "I ___ coffee every morning.", "audio_text": "I drink coffee every morning.", "language": "en", "options": [{"id": "A", "audio_text": "drink", "is_correct": true}, {"id": "B", "audio_text": "eat", "is_correct": false}, {"id": "C", "audio_text": "read", "is_correct": false}], "explanation": "The missing word is drink.", "instruction": "Прослушайте предложение и выберите пропущенное слово."}'::jsonb,
    11,
    NOW(),
    NOW()
);


-- Шаг: Впишите слово
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    '9158caee-b1f8-47ec-8c7c-e78da8de8146',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Впишите слово',
    'missing_word',
    '{"sentence_template": "I ___ coffee every morning.", "correct_answer": "drink", "hint_prefix": "dr", "explanation": "The missing word is drink.", "instruction": "Впишите пропущенное слово по подсказке."}'::jsonb,
    12,
    NOW(),
    NOW()
);


-- Шаг: Соедините звук и слово
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'c8445d15-0421-46b2-a608-9d52efc20894',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Соедините звук и слово',
    'match_pairs_voice',
    '{"language": "en", "pairs": [{"id": "HELLO", "audio_text": "Hello", "text": "Hello"}, {"id": "GOODBYE", "audio_text": "Goodbye", "text": "Goodbye"}], "explanation": "Listen carefully to the word before matching it.", "instruction": "Прослушайте каждое слово и выберите его написание."}'::jsonb,
    13,
    NOW(),
    NOW()
);


-- Шаг: Завершите диалог
INSERT INTO courses.steps (
    id, lesson_id, title, type, content, order_index, created_at, updated_at
) VALUES (
    'ce754077-e0bb-4ead-af6f-a8fb3fd3c127',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    'Завершите диалог',
    'complete_chat',
    '{"dialogue": [{"speaker": "Anna", "text": "What do you do today?"}], "answer_speaker": "You", "options": [{"id": "A", "text": "I go to school.", "is_correct": true}, {"id": "B", "text": "I travel.", "is_correct": false}, {"id": "C", "text": "I work at night.", "is_correct": false}], "explanation": "I go to school completes this dialogue.", "instruction": "Выберите подходящую реплику."}'::jsonb,
    14,
    NOW(),
    NOW()
);


-- Связь урока с треком
INSERT INTO courses.track_lessons (
    track_id, lesson_id, order_index, created_at
) VALUES (
    'a9cbb4a4-352b-4658-99e2-c7e6b1662f60',
    'a48c72d0-9c1e-47fc-a1b8-f56e65ad0007',
    0,
    NOW()
) ON CONFLICT DO NOTHING;
