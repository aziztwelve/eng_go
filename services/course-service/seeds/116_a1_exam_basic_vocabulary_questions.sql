-- Track: A1_EXAM_BASIC_VOCABULARY_QUESTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('fb189320-27c7-56b2-9904-48203d226bf8', 'A1_EXAM_BASIC_VOCABULARY_QUESTIONS', 'Основные задания по лексике', 'Практикуйте основные существительные, глаголы и выбор слов в простых экзаменационных заданиях.', 'en', 'A1', '', ARRAY['exam']::text[], true, 116, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('ad2a8a1a-7b19-56c1-8015-c792185c4558', NULL, 'Основные существительные', 'Научиться узнавать основные существительные и выбирать правильное значение в заданиях.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('deb24ba6-72cf-5b62-8348-5dcf62b58a8c', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"EBVQ_L1_MP_P1","left":"book","right":"книга"},{"id":"EBVQ_L1_MP_P2","left":"house","right":"дом"},{"id":"EBVQ_L1_MP_P3","left":"teacher","right":"учитель"},{"id":"EBVQ_L1_MP_P4","left":"water","right":"вода"},{"id":"EBVQ_L1_MP_P5","left":"family","right":"семья"},{"id":"EBVQ_L1_MP_P6","left":"school","right":"школа"},{"id":"EBVQ_L1_MP_P7","left":"food","right":"еда"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('65a31391-2f47-5683-bb14-79bf31e3ac5c', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'quiz', 'Проверьте себя', '{"explanation":"A teacher is a person who teaches students.","instruction":"Выберите правильный ответ.","options":[{"id":"EBVQ_L1_Q_A","is_correct":true,"text":"Teacher"},{"id":"EBVQ_L1_Q_B","is_correct":false,"text":"School"},{"id":"EBVQ_L1_Q_C","is_correct":false,"text":"Book"}],"question":"Which word names a person who teaches students?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ee53541e-58bb-5bd8-a2f9-aa1c5a352a54', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'translate', 'Переведите', '{"correct_translation":"This is my book.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это моя книга.","target_language":"en","word_bank":["book.","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('78791d07-10b3-57ac-b4a1-60a127346cdf', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"water","instruction":"Выберите подходящее слово.","options":["water","teacher","house"],"sentence_template":"I drink ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4fa7d8db-4fc9-53b9-89f2-32fbb7681c3a', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'tap_words', 'Соберите фразу', '{"correct_words":["This","is","my","school."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","school.","This","my"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0cf6cfed-e3b7-5f18-92b4-6d3b60ae8bc3', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'listening', 'Послушайте', '{"audio_text":"This is my family.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d14329b-fe5e-57e2-9876-f4be8929b01f', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'listening_shadowing', 'Повторите', '{"audio_text":"My teacher has a book.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"У моего учителя есть книга."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a72def9-b7fe-5efe-b076-6c507af7b8d1', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Choose the word for a place where students learn.","translation":"Выберите слово для места, где учатся ученики.","type":"dialogue"},{"character":"Student","text":"School.","translation":"Школа.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, school is correct."},{"is_correct":false,"text":"No, water is correct."}],"text":"Is the answer correct?","type":"choice"}],"title":"A Vocabulary Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a6b9e8e4-6ddc-54ab-a16e-bbf053376097', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'choose_definition', 'Определение', '{"explanation":"A family is a group of related people.","instruction":"Выберите значение.","language":"en","options":[{"id":"EBVQ_L1_D_A","is_correct":true,"text":"A group of related people"},{"id":"EBVQ_L1_D_B","is_correct":false,"text":"A place where students learn"},{"id":"EBVQ_L1_D_C","is_correct":false,"text":"Something people drink"}],"word":"family"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('322b9ed8-6f22-5584-bca0-ad0fbf72d3cf', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'listen_choose_word', 'Слово', '{"audio_text":"I read a book.","explanation":"The missing noun is “book.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"book","id":"EBVQ_L1_LW_A","is_correct":true},{"audio_text":"water","id":"EBVQ_L1_LW_B","is_correct":false},{"audio_text":"school","id":"EBVQ_L1_LW_C","is_correct":false}],"sentence_template":"I read a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('67f0a9c8-cd5a-5882-9bf6-fa78801e9122', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'missing_word', 'Впишите', '{"correct_answer":"house","explanation":"The complete sentence is “This is my house.”","hint_prefix":"ho","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('01b24909-3432-57c7-aabc-837d7f5b2358', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'match_pairs_voice', 'Звук', '{"explanation":"Match each vocabulary item you hear with the same written English word.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"book","id":"EBVQ_L1_VM_P1","text":"book"},{"audio_text":"teacher","id":"EBVQ_L1_VM_P2","text":"teacher"},{"audio_text":"family","id":"EBVQ_L1_VM_P3","text":"family"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('035b3d40-041f-56b2-be9c-feb789dd5a83', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Which word means “еда”?"}],"explanation":"“Food” is the correct English word for “еда.”","instruction":"Ответьте.","options":[{"id":"EBVQ_L1_C_A","is_correct":true,"text":"Food."},{"id":"EBVQ_L1_C_B","is_correct":false,"text":"House."},{"id":"EBVQ_L1_C_C","is_correct":false,"text":"Teacher."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fb189320-27c7-56b2-9904-48203d226bf8', 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', NULL, 'Основные глаголы', 'Научиться узнавать основные глаголы и выбирать правильное действие в контексте.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('75e0d707-588f-515e-a069-4751cf84530d', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"EBVQ_L2_MP_P1","left":"go","right":"идти"},{"id":"EBVQ_L2_MP_P2","left":"come","right":"приходить"},{"id":"EBVQ_L2_MP_P3","left":"eat","right":"есть"},{"id":"EBVQ_L2_MP_P4","left":"drink","right":"пить"},{"id":"EBVQ_L2_MP_P5","left":"read","right":"читать"},{"id":"EBVQ_L2_MP_P6","left":"write","right":"писать"},{"id":"EBVQ_L2_MP_P7","left":"speak","right":"говорить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('97ade7ff-b51d-5b15-88ad-8fea252fa3ab', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'quiz', 'Проверьте себя', '{"explanation":"“Speak” means to use your voice to say words.","instruction":"Выберите правильный ответ.","options":[{"id":"EBVQ_L2_Q_A","is_correct":true,"text":"Speak"},{"id":"EBVQ_L2_Q_B","is_correct":false,"text":"Read"},{"id":"EBVQ_L2_Q_C","is_correct":false,"text":"Drink"}],"question":"Which verb means to use your voice to say words?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a38af09-f3c4-5277-b603-dfa875176085', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'translate', 'Переведите', '{"correct_translation":"I read a book.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я читаю книгу.","target_language":"en","word_bank":["book.","a","read","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('458977bf-c914-51ac-a353-c421fe3056bf', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"drink","instruction":"Выберите подходящее слово.","options":["drink","write","come"],"sentence_template":"We ___ water."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('226fe3c2-9894-57c7-84b3-246933bb5c2b', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'tap_words', 'Соберите фразу', '{"correct_words":["I","speak","English."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["English.","speak","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ca5d87b5-4e8b-5b2d-94fd-b1450867b562', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'listening', 'Послушайте', '{"audio_text":"I write my name.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bb093521-0ba0-5ec2-839e-9f97cf591ffb', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'listening_shadowing', 'Повторите', '{"audio_text":"I read a book and write an answer.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я читаю книгу и пишу ответ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d0c2fda-e843-5f7e-8d2e-44cfcc81b87f', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Complete the sentence: I ___ food.","translation":"Дополните предложение: Я ___ еду.","type":"dialogue"},{"character":"Student","text":"Eat.","translation":"Ем.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, “eat” is correct."},{"is_correct":false,"text":"No, “read” is correct."}],"text":"Is “eat” correct?","type":"choice"}],"title":"Choose the Verb"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d07be51b-5066-5dcb-a6eb-3db45624047b', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'choose_definition', 'Определение', '{"explanation":"“Write” means to make letters or words on paper.","instruction":"Выберите значение.","language":"en","options":[{"id":"EBVQ_L2_D_A","is_correct":true,"text":"To make letters or words on paper"},{"id":"EBVQ_L2_D_B","is_correct":false,"text":"To take food into your body"},{"id":"EBVQ_L2_D_C","is_correct":false,"text":"To move toward a place"}],"word":"write"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6fa9a76f-b96c-5cb0-9a3d-192ae44ed5fb', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'listen_choose_word', 'Слово', '{"audio_text":"I speak English.","explanation":"The missing verb is “speak.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"speak","id":"EBVQ_L2_LW_A","is_correct":true},{"audio_text":"water","id":"EBVQ_L2_LW_B","is_correct":false},{"audio_text":"school","id":"EBVQ_L2_LW_C","is_correct":false}],"sentence_template":"I ___ English."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6aee35bd-f1f0-5e52-806d-c621e72227e3', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'missing_word', 'Впишите', '{"correct_answer":"read","explanation":"The complete sentence is “I read a book.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ a book."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a31f1163-ce9d-56b1-b5f5-2948a2327c25', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'match_pairs_voice', 'Звук', '{"explanation":"Match each vocabulary item you hear with the same written English word.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"eat","id":"EBVQ_L2_VM_P1","text":"eat"},{"audio_text":"read","id":"EBVQ_L2_VM_P2","text":"read"},{"audio_text":"write","id":"EBVQ_L2_VM_P3","text":"write"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cfc20131-0d1d-5428-af37-056738abc816', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Which verb completes “I ___ water”?"}],"explanation":"“Drink” is the correct verb for taking water into your body.","instruction":"Ответьте.","options":[{"id":"EBVQ_L2_C_A","is_correct":true,"text":"Drink."},{"id":"EBVQ_L2_C_B","is_correct":false,"text":"Book."},{"id":"EBVQ_L2_C_C","is_correct":false,"text":"Teacher."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fb189320-27c7-56b2-9904-48203d226bf8', '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f4f60b81-d820-5003-a03e-2985e4f5998e', NULL, 'Слова в контексте', 'Научиться выбирать правильное слово для простого предложения экзаменационного типа.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e2100cf3-0bdf-5bae-97a6-446a8a303d49', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"EBVQ_L3_MP_P1","left":"big","right":"большой"},{"id":"EBVQ_L3_MP_P2","left":"small","right":"маленький"},{"id":"EBVQ_L3_MP_P3","left":"good","right":"хороший"},{"id":"EBVQ_L3_MP_P4","left":"new","right":"новый"},{"id":"EBVQ_L3_MP_P5","left":"old","right":"старый"},{"id":"EBVQ_L3_MP_P6","left":"happy","right":"счастливый"},{"id":"EBVQ_L3_MP_P7","left":"tired","right":"уставший"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10b82a46-82e0-51c3-9f19-2c9275b14840', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'quiz', 'Проверьте себя', '{"explanation":"An elephant is a big animal.","instruction":"Выберите правильный ответ.","options":[{"id":"EBVQ_L3_Q_A","is_correct":true,"text":"Big"},{"id":"EBVQ_L3_Q_B","is_correct":false,"text":"Small"},{"id":"EBVQ_L3_Q_C","is_correct":false,"text":"Tired"}],"question":"Which word best completes “The elephant is ___”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c82e5e70-4879-58ec-a41e-356fca770b8b', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'translate', 'Переведите', '{"correct_translation":"I have a new book.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня новая книга.","target_language":"en","word_bank":["book.","new","a","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8ddf862e-5a01-5ae9-ba1c-d525d41f1bfd', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"small","instruction":"Выберите подходящее слово.","options":["small","big","read"],"sentence_template":"The mouse is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('55cf0928-5d3b-5385-a511-522624525f10', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'tap_words', 'Соберите фразу', '{"correct_words":["I","am","happy."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["happy.","am","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d74205c6-32ef-52e2-a372-12ac024ba18b', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'listening', 'Послушайте', '{"audio_text":"This is a good book.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('95af5ebe-853e-55d1-bfc4-ea86fd3220c6', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'listening_shadowing', 'Повторите', '{"audio_text":"My house is big, but my room is small.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мой дом большой, но моя комната маленькая."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('99e30b57-472a-5c95-8629-2f64a296ea7f', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Choose the best word: Anna works all day. She is ___.","translation":"Выберите лучшее слово: Анна работает весь день. Она ___.","type":"dialogue"},{"character":"Student","text":"Tired.","translation":"Уставшая.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, “tired” is logical."},{"is_correct":false,"text":"No, “new” is logical."}],"text":"Is the answer logical?","type":"choice"}],"title":"The Last Question"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('df67a3d4-a587-5dc9-aca0-0303197541fe', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'choose_definition', 'Определение', '{"explanation":"“Tired” means needing rest or sleep.","instruction":"Выберите значение.","language":"en","options":[{"id":"EBVQ_L3_D_A","is_correct":true,"text":"Needing rest or sleep"},{"id":"EBVQ_L3_D_B","is_correct":false,"text":"Feeling pleased and cheerful"},{"id":"EBVQ_L3_D_C","is_correct":false,"text":"Having a large size"}],"word":"tired"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2e852a3e-ff61-57c1-ad29-b12003d0b9d0', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'listen_choose_word', 'Слово', '{"audio_text":"This is a new book.","explanation":"The missing adjective is “new.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"new","id":"EBVQ_L3_LW_A","is_correct":true},{"audio_text":"drink","id":"EBVQ_L3_LW_B","is_correct":false},{"audio_text":"teacher","id":"EBVQ_L3_LW_C","is_correct":false}],"sentence_template":"This is a ___ book."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('718aed4d-8d8c-5ea3-b17a-618a37be3b15', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'missing_word', 'Впишите', '{"correct_answer":"happy","explanation":"The complete sentence is “I am happy.”","hint_prefix":"ha","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d1eb98d-29bd-5fee-b7c9-10ec5f055dcc', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'match_pairs_voice', 'Звук', '{"explanation":"Match each vocabulary item you hear with the same written English word.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"big","id":"EBVQ_L3_VM_P1","text":"big"},{"audio_text":"small","id":"EBVQ_L3_VM_P2","text":"small"},{"audio_text":"happy","id":"EBVQ_L3_VM_P3","text":"happy"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('db126f47-c807-5c9c-a08e-ae838bf47b6d', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Choose the best word: “This car is not old. It is ___.”"}],"explanation":"“New” is the logical opposite of “old” in this sentence.","instruction":"Ответьте.","options":[{"id":"EBVQ_L3_C_A","is_correct":true,"text":"New."},{"id":"EBVQ_L3_C_B","is_correct":false,"text":"Tired."},{"id":"EBVQ_L3_C_C","is_correct":false,"text":"Drink."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fb189320-27c7-56b2-9904-48203d226bf8', 'f4f60b81-d820-5003-a03e-2985e4f5998e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb701be9-2289-5dd5-95a1-a7379670571e', 'en', 'book', 'книга', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b01d99b3-86bd-54ca-a2c5-a09a3430d2da', 'en', 'house', 'дом', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6a98f-afb3-5537-8c66-6a09281be17f', 'en', 'teacher', 'учитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8fda92cb-44de-5dbd-a2b6-b8741952b655', 'en', 'water', 'вода', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('794e29c5-321e-5516-b895-58f53c78766e', 'en', 'family', 'семья', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d35ef1b-ed4c-5bb5-932f-0646e8b39596', 'en', 'school', 'школа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72aef260-18d1-568c-a1b3-141d4547047d', 'en', 'food', 'еда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d5f45e0-cbe5-52eb-911b-4cf2be3e20b6', 'en', 'go', 'идти', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9720b792-def4-515c-8be8-f9d0bc88dd8e', 'en', 'come', 'приходить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f22dfb32-9ad8-5957-b86a-53146f8f31ba', 'en', 'eat', 'есть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c9897a07-debd-54e3-a63c-552f9ea157f8', 'en', 'drink', 'пить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65824254-f932-5be0-976d-25387bd6921e', 'en', 'read', 'читать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82af31c5-ed7e-55ee-a990-c1885a5cfb33', 'en', 'write', 'писать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('66b756d7-99de-509b-b077-f8dde05acdbb', 'en', 'speak', 'говорить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40797942-7e16-597a-9c5c-7c59c723fdf2', 'en', 'big', 'большой', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f905eed-a6d9-5d4e-9e8e-32065cb8f178', 'en', 'small', 'маленький', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f1af6ca-f63c-5140-baa7-f3088e3a2813', 'en', 'good', 'хороший', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cea61e47-0ba2-5d85-a8f7-4ab91213e27f', 'en', 'new', 'новый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f356357-3eaa-5a8e-a5d7-2cdd99df1927', 'en', 'old', 'старый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f5c5786-86e2-5e97-86a4-9426751383f6', 'en', 'happy', 'счастливый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('26fc03ec-e43f-5954-90a6-3cacc3c208c9', 'en', 'tired', 'уставший', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'house' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'water' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'ad2a8a1a-7b19-56c1-8015-c792185c4558', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'food' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'go' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'come' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'eat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'drink' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'read' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'write' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, '5f427831-19bb-5ad9-a102-6aaf0a6eb6cb', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'speak' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'big' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'small' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'good' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'new' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'happy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fb189320-27c7-56b2-9904-48203d226bf8', id, 'f4f60b81-d820-5003-a03e-2985e4f5998e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tired' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
