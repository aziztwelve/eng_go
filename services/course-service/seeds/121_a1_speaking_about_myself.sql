-- Track: A1_SPEAKING_ABOUT_MYSELF. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c0d430aa-0955-595b-bacd-bc2bdc2535b8', 'A1_SPEAKING_ABOUT_MYSELF', 'О себе', 'Научитесь рассказывать своё имя, возраст, откуда вы и что вам нравится.', 'en', 'A1', '', ARRAY['speaking']::text[], true, 21, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', NULL, 'Моё имя и возраст', 'Научиться называть своё имя и возраст и задавать простые вопросы о них.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('98ed7f18-5d6e-52f3-8621-4d75b945982c', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"AM_L1_MP_P1","left":"name","right":"имя"},{"id":"AM_L1_MP_P2","left":"age","right":"возраст"},{"id":"AM_L1_MP_P3","left":"years old","right":"лет"},{"id":"AM_L1_MP_P4","left":"What is your name?","right":"Как вас зовут?"},{"id":"AM_L1_MP_P5","left":"My name is","right":"Меня зовут"},{"id":"AM_L1_MP_P6","left":"How old are you?","right":"Сколько вам лет?"},{"id":"AM_L1_MP_P7","left":"I am ten","right":"Мне десять лет"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('26078fa6-e246-50ca-8a78-746f4f3af9f1', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'quiz', 'Проверьте себя', '{"explanation":"“How old are you?” asks about a person’s age.","instruction":"Выберите правильный ответ.","options":[{"id":"AM_L1_Q_A","is_correct":true,"text":"How old are you?"},{"id":"AM_L1_Q_B","is_correct":false,"text":"What is your name?"},{"id":"AM_L1_Q_C","is_correct":false,"text":"Where are you from?"}],"question":"Which question asks about age?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a4356ee7-c197-5b0b-b099-36655f1d7941', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'translate', 'Переведите', '{"correct_translation":"I am ten years old.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне десять лет.","target_language":"en","word_bank":["years","ten","old.","I","am"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('035c05a9-e401-5353-af83-bf2cbc082848', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","age","old"],"sentence_template":"My ___ is Kate."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a8ba18cd-080c-5bfb-8a28-2e7d93a019fe', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'tap_words', 'Соберите фразу', '{"correct_words":["I","am","ten","years","old."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["old.","years","I","ten","am"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6f014c8f-4235-57f8-9763-3cdbaba5c2b2', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'listening', 'Послушайте', '{"audio_text":"My name is Kate. I am ten years old.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ceb3ebd8-3e2d-56b5-919f-b7f4e3498adc', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'listening_shadowing', 'Повторите', '{"audio_text":"Hello! My name is Kate. I am ten years old.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Привет! Меня зовут Кейт. Мне десять лет."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e01b2a9c-5f4f-51b3-b1bb-b9ec5430cfa8', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"Hello! My name is Ben. What is your name?","translation":"Привет! Меня зовут Бен. Как тебя зовут?","type":"dialogue"},{"character":"Lily","text":"My name is Lily.","translation":"Меня зовут Лили.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How old are you?"},{"is_correct":false,"text":"Good night?"}],"text":"What should Ben ask next?","type":"choice"}],"title":"A New Classmate"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('35d938cc-fc91-523d-9bd6-156cdd7148e4', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'choose_definition', 'Определение', '{"explanation":"“Age” means the number of years a person has lived.","instruction":"Выберите значение.","language":"en","options":[{"id":"AM_L1_D_A","is_correct":true,"text":"The number of years a person has lived"},{"id":"AM_L1_D_B","is_correct":false,"text":"The name of a country"},{"id":"AM_L1_D_C","is_correct":false,"text":"Something a person likes"}],"word":"age"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d327cf44-ddfd-51c0-8ea6-444c1e981d55', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'listen_choose_word', 'Слово', '{"audio_text":"I am ten years old.","explanation":"The complete sentence is “I am ten years old.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"old","id":"AM_L1_LW_A","is_correct":true},{"audio_text":"name","id":"AM_L1_LW_B","is_correct":false},{"audio_text":"from","id":"AM_L1_LW_C","is_correct":false}],"sentence_template":"I am ten years ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8cb40c1b-c748-5e03-b043-275e4ec11108', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'missing_word', 'Впишите', '{"correct_answer":"name","explanation":"The complete sentence is “My name is Dan.”","hint_prefix":"na","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ is Dan."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d5646ca-67b1-5d62-9cd4-8c3529559b20', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"name","id":"AM_L1_VM_P1","text":"name"},{"audio_text":"age","id":"AM_L1_VM_P2","text":"age"},{"audio_text":"years old","id":"AM_L1_VM_P3","text":"years old"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2e45e109-0218-5d4e-8f2e-882117180bff', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Mia","text":"Hello! What is your name?"}],"explanation":"“My name is Leo” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"AM_L1_C_A","is_correct":true,"text":"Hi! My name is Leo."},{"id":"AM_L1_C_B","is_correct":false,"text":"I am from name."},{"id":"AM_L1_C_C","is_correct":false,"text":"Ten goodbye."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c0d430aa-0955-595b-bacd-bc2bdc2535b8', '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('1e38d4d1-90b1-599c-b6ee-90dbaee768dc', NULL, 'Откуда я', 'Научиться говорить, откуда вы и где живёте.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('db52e75b-79e6-5e83-85d1-7bb2a11ffa3d', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"AM_L2_MP_P1","left":"country","right":"страна"},{"id":"AM_L2_MP_P2","left":"city","right":"город"},{"id":"AM_L2_MP_P3","left":"live","right":"жить"},{"id":"AM_L2_MP_P4","left":"from","right":"из"},{"id":"AM_L2_MP_P5","left":"Where are you from?","right":"Откуда вы?"},{"id":"AM_L2_MP_P6","left":"I am from Russia","right":"Я из России"},{"id":"AM_L2_MP_P7","left":"I live in Moscow","right":"Я живу в Москве"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3ea871d7-dcbd-5258-81d7-40e0f695f1ad', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'quiz', 'Проверьте себя', '{"explanation":"“Where are you from?” asks about a person’s country or place of origin.","instruction":"Выберите правильный ответ.","options":[{"id":"AM_L2_Q_A","is_correct":true,"text":"Where are you from?"},{"id":"AM_L2_Q_B","is_correct":false,"text":"How old are you?"},{"id":"AM_L2_Q_C","is_correct":false,"text":"What is your name?"}],"question":"Which question asks about your country?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bca1cdef-6d47-5d92-bf5b-27c6b7da9a80', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'translate', 'Переведите', '{"correct_translation":"I am from Russia.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я из России.","target_language":"en","word_bank":["Russia.","from","I","am"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dacd4840-a670-5f1b-a806-65bab4aba7bf', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"in","instruction":"Выберите подходящее слово.","options":["in","old","name"],"sentence_template":"I live ___ Moscow."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0c47dead-7490-5007-b248-13a1a5cd8400', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'tap_words', 'Соберите фразу', '{"correct_words":["Where","are","you","from?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["from?","are","Where","you"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('35cca9b8-da83-5612-b51e-13c2107d5b61', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'listening', 'Послушайте', '{"audio_text":"I am from Russia. I live in Moscow.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2178c551-61f2-58c9-9912-9e56369f8f2b', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'listening_shadowing', 'Повторите', '{"audio_text":"I am from Russia, and I live in Moscow.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я из России и живу в Москве."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2af46a24-177b-5ca2-986f-9fd306737e81', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Eva","text":"Hi! I am Eva. Where are you from?","translation":"Привет! Я Ева. Откуда ты?","type":"dialogue"},{"character":"Tom","text":"I am from Canada.","translation":"Я из Канады.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What city do you live in?"},{"is_correct":false,"text":"How name are you?"}],"text":"What should Eva ask next?","type":"choice"}],"title":"Two New Friends"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e55a8824-2b74-5be2-9985-01477bcd2733', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'choose_definition', 'Определение', '{"explanation":"A city is a large place where many people live.","instruction":"Выберите значение.","language":"en","options":[{"id":"AM_L2_D_A","is_correct":true,"text":"A large place where many people live"},{"id":"AM_L2_D_B","is_correct":false,"text":"The number of years a person has lived"},{"id":"AM_L2_D_C","is_correct":false,"text":"A word used to say goodbye"}],"word":"city"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c498047a-b80c-5aff-bc8f-6d83e173d238', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'listen_choose_word', 'Слово', '{"audio_text":"I am from Canada.","explanation":"The complete sentence is “I am from Canada.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"from","id":"AM_L2_LW_A","is_correct":true},{"audio_text":"live","id":"AM_L2_LW_B","is_correct":false},{"audio_text":"city","id":"AM_L2_LW_C","is_correct":false}],"sentence_template":"I am ___ Canada."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3195c291-8968-5825-8a68-484a71852085', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'missing_word', 'Впишите', '{"correct_answer":"live","explanation":"The complete sentence is “I live in London.”","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ in London."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dfe03a9f-1973-5b37-b9b0-76cd410a164f', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"country","id":"AM_L2_VM_P1","text":"country"},{"audio_text":"city","id":"AM_L2_VM_P2","text":"city"},{"audio_text":"live","id":"AM_L2_VM_P3","text":"live"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('79d6008f-d4cf-5bc4-afee-14c552279804', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Noah","text":"Where are you from?"}],"explanation":"“I am from Brazil” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"AM_L2_C_A","is_correct":true,"text":"I am from Brazil."},{"id":"AM_L2_C_B","is_correct":false,"text":"I am twelve name."},{"id":"AM_L2_C_C","is_correct":false,"text":"Good night from."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c0d430aa-0955-595b-bacd-bc2bdc2535b8', '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('cbe8bcef-9b38-5c32-ab4e-4453e3575966', NULL, 'Что мне нравится', 'Научиться рассказывать о своих простых интересах и предпочтениях.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cc585207-8076-57d3-8cbc-1490554cea3c', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"AM_L3_MP_P1","left":"like","right":"нравиться"},{"id":"AM_L3_MP_P2","left":"love","right":"очень любить"},{"id":"AM_L3_MP_P3","left":"music","right":"музыка"},{"id":"AM_L3_MP_P4","left":"books","right":"книги"},{"id":"AM_L3_MP_P5","left":"sports","right":"спорт"},{"id":"AM_L3_MP_P6","left":"What do you like?","right":"Что вам нравится?"},{"id":"AM_L3_MP_P7","left":"I like music","right":"Мне нравится музыка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9731ce7b-9d01-58e2-aa35-384fc8452ba6', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'quiz', 'Проверьте себя', '{"explanation":"“I like music” tells someone about a personal interest.","instruction":"Выберите правильный ответ.","options":[{"id":"AM_L3_Q_A","is_correct":true,"text":"I like music."},{"id":"AM_L3_Q_B","is_correct":false,"text":"I am from Spain."},{"id":"AM_L3_Q_C","is_correct":false,"text":"My name is Alex."}],"question":"Which sentence talks about a personal interest?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3bed2706-349b-5d29-bb9c-089bec6088ab', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'translate', 'Переведите', '{"correct_translation":"I like books.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нравятся книги.","target_language":"en","word_bank":["books.","like","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('06e154e6-f1f3-5aac-a308-1f0611807058', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"like","instruction":"Выберите подходящее слово.","options":["like","live","old"],"sentence_template":"I ___ music."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6fecd0f3-b24e-51a3-b0df-10f6e9d47a5d', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'tap_words', 'Соберите фразу', '{"correct_words":["I","like","sports."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["sports.","I","like"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b173640c-b0a8-5dec-9163-ed1dd9402066', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'listening', 'Послушайте', '{"audio_text":"I like music and books.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d1b03bb0-01dc-5ff6-84e2-b21e405c9f9a', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'listening_shadowing', 'Повторите', '{"audio_text":"My name is Alex. I like music and sports.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Меня зовут Алекс. Мне нравятся музыка и спорт."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('912423c0-2b13-5423-b800-92fd2108234f', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Amy","text":"Hi! I am Amy. I like books. What do you like?","translation":"Привет! Я Эми. Мне нравятся книги. Что нравится тебе?","type":"dialogue"},{"character":"Max","text":"I like music and sports.","translation":"Мне нравятся музыка и спорт.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That is nice!"},{"is_correct":false,"text":"I am from books."}],"text":"What should Amy say?","type":"choice"}],"title":"Talking About Interests"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e80a8e36-f97e-5b46-8bb8-2fc4e9af85b2', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'choose_definition', 'Определение', '{"explanation":"Sports are games and physical activities.","instruction":"Выберите значение.","language":"en","options":[{"id":"AM_L3_D_A","is_correct":true,"text":"Games and physical activities"},{"id":"AM_L3_D_B","is_correct":false,"text":"Words printed in a book"},{"id":"AM_L3_D_C","is_correct":false,"text":"Sounds in a song"}],"word":"sports"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bbcede77-8d28-558b-ba60-e1c7348eb13f', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'listen_choose_word', 'Слово', '{"audio_text":"I like music.","explanation":"The complete sentence is “I like music.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"music","id":"AM_L3_LW_A","is_correct":true},{"audio_text":"city","id":"AM_L3_LW_B","is_correct":false},{"audio_text":"age","id":"AM_L3_LW_C","is_correct":false}],"sentence_template":"I like ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7733257d-221a-539a-94f1-79dc2a83f0f2', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'missing_word', 'Впишите', '{"correct_answer":"like","explanation":"The complete sentence is “I like books.”","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ books."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6b394664-663c-5d61-a13f-0742e0f911f0', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"music","id":"AM_L3_VM_P1","text":"music"},{"audio_text":"books","id":"AM_L3_VM_P2","text":"books"},{"audio_text":"sports","id":"AM_L3_VM_P3","text":"sports"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('87aa99a7-9caa-5c8b-b50d-cda1f05c8ce7', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Emma","text":"What do you like?"}],"explanation":"“I like music and books” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"AM_L3_C_A","is_correct":true,"text":"I like music and books."},{"id":"AM_L3_C_B","is_correct":false,"text":"I live in music."},{"id":"AM_L3_C_C","is_correct":false,"text":"My age is books."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c0d430aa-0955-595b-bacd-bc2bdc2535b8', 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4060b2dd-4a78-5bae-b4fb-33a4613c94aa', 'en', 'name', 'имя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880aad55-bae4-5925-ac19-ba3fbbedaba4', 'en', 'age', 'возраст', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c1ca07e-448a-5279-a8d5-f243a10ce07b', 'en', 'years old', 'лет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6da48424-02f0-5c09-afab-17005f5ceb5f', 'en', 'What is your name?', 'Как вас зовут?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('307efd6f-9555-5d9b-9780-a6fcf74f948b', 'en', 'How old are you?', 'Сколько вам лет?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4b2106a-31c1-5e81-92ed-05e98efc27c9', 'en', 'I am ten', 'Мне десять лет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40fa4460-4d84-5eb4-ae8b-d1c28cebd1bb', 'en', 'country', 'страна', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1008785a-c291-5dc4-a7f8-9a8323ab8391', 'en', 'city', 'город', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb51ce95-b009-5e4d-a94e-0db02fcdc4b4', 'en', 'live', 'жить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b502de8a-71d2-532a-a960-9e6d55a478bb', 'en', 'from', 'из', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('322d95de-8006-5d9e-bb2f-4fed296ecbaa', 'en', 'Where are you from?', 'Откуда вы?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('def89a12-d671-51c4-b3b2-c2cd68947e01', 'en', 'I am from Russia', 'Я из России', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('233e7ae7-c7e3-5151-96db-3e7944e3dfaa', 'en', 'I live in Moscow', 'Я живу в Москве', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5432ea15-2ca8-5555-9d0f-61e13b5b30f3', 'en', 'like', 'нравиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2131ca47-0216-5acf-a9ce-bcbeb29331c1', 'en', 'love', 'очень любить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99e8f107-7345-5964-a5cb-60a50d4dbebd', 'en', 'music', 'музыка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4c03562-207d-5c27-8003-4d16aa14aaf3', 'en', 'books', 'книги', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c2b4877-269f-5a87-927c-b029a19b6efa', 'en', 'sports', 'спорт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e2dd48f-e87d-5e4e-8d3c-7f63065115f3', 'en', 'What do you like?', 'Что вам нравится?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f6fcdd0-f394-54bc-a77a-5f12f821969a', 'en', 'I like music', 'Мне нравится музыка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'age' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'years old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your name?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How old are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '4b11ebc6-a24a-590d-bc00-5bc52ecf8a96', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am ten' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'country' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'city' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'live' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Where are you from?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am from Russia' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, '1e38d4d1-90b1-599c-b6ee-90dbaee768dc', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I live in Moscow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'like' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'love' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'music' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'books' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sports' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'What do you like?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0d430aa-0955-595b-bacd-bc2bdc2535b8', id, 'cbe8bcef-9b38-5c32-ab4e-4453e3575966', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I like music' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
