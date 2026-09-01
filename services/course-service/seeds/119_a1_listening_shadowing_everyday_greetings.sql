-- Track: A1_LISTENING_SHADOWING_EVERYDAY_GREETINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('979fe5c2-ed46-5c22-837d-c28c897cbcff', 'A1_LISTENING_SHADOWING_EVERYDAY_GREETINGS', 'Повседневные приветствия', 'Научитесь узнавать на слух и повторять простые английские приветствия и короткие ответы.', '{"en":"Everyday Greetings","ru":"Повседневные приветствия"}'::jsonb, '{"en":"Learn to recognize and repeat simple English greetings and short responses.","ru":"Научитесь узнавать на слух и повторять простые английские приветствия и короткие ответы."}'::jsonb, 'en', 'A1', '', ARRAY['listening_shadowing']::text[], true, 119, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('151be9c0-1b91-5158-9ec8-7f51eb1526e2', NULL, 'Слушаем основные приветствия', 'Научиться узнавать и чётко повторять основные английские приветствия.', '{"en":"Listening to Basic Greetings","ru":"Слушаем основные приветствия"}'::jsonb, '{"en":"Learn to recognize and clearly repeat basic English greetings.","ru":"Научиться узнавать и чётко повторять основные английские приветствия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e783caf7-dbef-524f-8f85-89f0a8ba1e02', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSEG_L1_MP_P1","left":"Hello","right":"Здравствуйте"},{"id":"LSEG_L1_MP_P2","left":"Hi","right":"Привет"},{"id":"LSEG_L1_MP_P3","left":"Hey","right":"Привет"},{"id":"LSEG_L1_MP_P4","left":"Good morning","right":"Доброе утро"},{"id":"LSEG_L1_MP_P5","left":"Good afternoon","right":"Добрый день"},{"id":"LSEG_L1_MP_P6","left":"Good evening","right":"Добрый вечер"},{"id":"LSEG_L1_MP_P7","left":"Welcome","right":"Добро пожаловать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce7e1ab8-9444-5c29-aab0-23d7f76077f9', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The speaker uses “Hello” to greet Anna.","instruction":"Выберите правильный ответ.","options":[{"id":"LSEG_L1_Q_A","is_correct":true,"text":"Hello"},{"id":"LSEG_L1_Q_B","is_correct":false,"text":"Goodbye"},{"id":"LSEG_L1_Q_C","is_correct":false,"text":"Thank you"}],"question":"Which greeting do you hear in “Hello, Anna”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c77ff8a5-fb3f-543a-9138-bf16e1e897cb', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Hi, Tom!","instruction":"Соберите перевод.","source_language":"ru","source_text":"Привет, Том!","target_language":"en","word_bank":["Tom!","Hi,"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74489b4b-d647-50ca-a01a-7803d9ab9941', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"morning","instruction":"Выберите подходящее слово.","options":["morning","welcome","hello"],"sentence_template":"Good ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4ccf470-91f5-5686-9e49-cbd9483a2c61', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Hello,","Anna!"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Anna!","Hello,"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbb58716-2a92-5efb-8c0a-59a44f6feb2b', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hello, Anna!","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1697f57d-baed-5dd6-bbad-b6ab6b858912', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello! Welcome!","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте! Добро пожаловать!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b11bb46-0fb0-58c7-b84e-d3f89dc79103', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mia","text":"Hello, Ben!","translation":"Привет, Бен!","type":"dialogue"},{"character":"Ben","text":"Hi, Mia!","translation":"Привет, Миа!","type":"dialogue"},{"options":[{"is_correct":true,"text":"Welcome!"},{"is_correct":false,"text":"Goodbye yesterday."}],"text":"What should Mia say?","type":"choice"}],"title":"A First Hello"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('198b75b7-7b96-5591-abe3-095529af7f00', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Welcome” is said to greet someone who has arrived.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSEG_L1_D_A","is_correct":true,"text":"A friendly word said when someone arrives"},{"id":"LSEG_L1_D_B","is_correct":false,"text":"A word said before sleeping"},{"id":"LSEG_L1_D_C","is_correct":false,"text":"A word used to ask a name"}],"word":"welcome"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40fa7e46-57cb-5d1d-aaa5-1e87a9c8c0b8', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Hello, Ben!","explanation":"The missing greeting is “Hello.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Hello","id":"LSEG_L1_LW_A","is_correct":true},{"audio_text":"Goodbye","id":"LSEG_L1_LW_B","is_correct":false},{"audio_text":"Please","id":"LSEG_L1_LW_C","is_correct":false}],"sentence_template":"___, Ben!"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5eef7d35-5f21-5a06-8758-ec3f8134f780', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"Hi","explanation":"The complete greeting is “Hi, Mia!”","hint_prefix":"H","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___, Mia!"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b834ad6-4251-5279-9976-a5818652794c', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each greeting you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Hello","id":"LSEG_L1_VM_P1","text":"Hello"},{"audio_text":"Hi","id":"LSEG_L1_VM_P2","text":"Hi"},{"audio_text":"Welcome","id":"LSEG_L1_VM_P3","text":"Welcome"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('587f78e2-69e9-53ab-8bb7-4233b904358a', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"Hello!"}],"explanation":"“Hi!” is a natural spoken reply to “Hello!”","instruction":"Ответьте.","options":[{"id":"LSEG_L1_C_A","is_correct":true,"text":"Hi!"},{"id":"LSEG_L1_C_B","is_correct":false,"text":"Good night yesterday."},{"id":"LSEG_L1_C_C","is_correct":false,"text":"I am hello."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('979fe5c2-ed46-5c22-837d-c28c897cbcff', '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('702da479-8342-5113-903a-b6b0829f63f4', NULL, 'Приветствия в разное время дня', 'Научиться различать на слух и повторять приветствия для утра, дня и вечера.', '{"en":"Greetings During the Day","ru":"Приветствия в разное время дня"}'::jsonb, '{"en":"Learn to hear and repeat greetings used in the morning, afternoon, and evening.","ru":"Научиться различать на слух и повторять приветствия для утра, дня и вечера."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58f2eb38-27d6-5a8c-a5e2-432bb1076759', '702da479-8342-5113-903a-b6b0829f63f4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSEG_L2_MP_P1","left":"morning","right":"утро"},{"id":"LSEG_L2_MP_P2","left":"afternoon","right":"день"},{"id":"LSEG_L2_MP_P3","left":"evening","right":"вечер"},{"id":"LSEG_L2_MP_P4","left":"night","right":"ночь"},{"id":"LSEG_L2_MP_P5","left":"Good morning","right":"Доброе утро"},{"id":"LSEG_L2_MP_P6","left":"Good afternoon","right":"Добрый день"},{"id":"LSEG_L2_MP_P7","left":"Good night","right":"Спокойной ночи"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dcae955-bcde-501e-940b-d07a2a3e32d0', '702da479-8342-5113-903a-b6b0829f63f4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Good morning” is used during the morning.","instruction":"Выберите правильный ответ.","options":[{"id":"LSEG_L2_Q_A","is_correct":true,"text":"Good morning"},{"id":"LSEG_L2_Q_B","is_correct":false,"text":"Good evening"},{"id":"LSEG_L2_Q_C","is_correct":false,"text":"Good night"}],"question":"Which greeting matches the morning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('443fe2c0-9cfa-50e2-adee-29fc85eaad64', '702da479-8342-5113-903a-b6b0829f63f4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Good evening, Mom.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Добрый вечер, мама.","target_language":"en","word_bank":["Mom.","evening,","Good"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49ad3476-b01e-5201-ad7a-1eed37bb0575', '702da479-8342-5113-903a-b6b0829f63f4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"afternoon","instruction":"Выберите подходящее слово.","options":["afternoon","night","welcome"],"sentence_template":"Good ___!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c430936-03dd-5897-a013-95cb02488a9f', '702da479-8342-5113-903a-b6b0829f63f4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Good","night,","Dad."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["night,","Good","Dad."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c3bf1a7-1f80-5ca3-9c6d-4f15952b4a2f', '702da479-8342-5113-903a-b6b0829f63f4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Good afternoon, Mr. Brown.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cadc45a3-5a04-58a5-a81e-d335842c6219', '702da479-8342-5113-903a-b6b0829f63f4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Good evening, Emma. Have a good night.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Добрый вечер, Эмма. Спокойной ночи."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60ca069b-bc56-58ef-a752-a3ddc301ec93', '702da479-8342-5113-903a-b6b0829f63f4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tom","text":"Good morning, Dad.","translation":"Доброе утро, папа.","type":"dialogue"},{"character":"Dad","text":"Good morning, Tom.","translation":"Доброе утро, Том.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good night, Dad."},{"is_correct":false,"text":"Good afternoon, night."}],"text":"What should Tom say before bed?","type":"choice"}],"title":"A Day of Greetings"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7777e44-5ab0-55ae-95cd-227f2c9b85e1', '702da479-8342-5113-903a-b6b0829f63f4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Evening” is the later part of the day before night.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSEG_L2_D_A","is_correct":true,"text":"The later part of the day before night"},{"id":"LSEG_L2_D_B","is_correct":false,"text":"The early part of the day"},{"id":"LSEG_L2_D_C","is_correct":false,"text":"The middle of the night"}],"word":"evening"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('589e0552-f73e-596d-8724-cbc8ff2ca31f', '702da479-8342-5113-903a-b6b0829f63f4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Good evening.","explanation":"The missing word is “evening.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"evening","id":"LSEG_L2_LW_A","is_correct":true},{"audio_text":"hello","id":"LSEG_L2_LW_B","is_correct":false},{"audio_text":"name","id":"LSEG_L2_LW_C","is_correct":false}],"sentence_template":"Good ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e44deb9d-62bb-5044-8fea-56420f295ab7', '702da479-8342-5113-903a-b6b0829f63f4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"night","explanation":"The complete phrase is “Good night.”","hint_prefix":"ni","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Good ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9c50ba5-6707-5a65-9fd5-99a8fb4e6d8f', '702da479-8342-5113-903a-b6b0829f63f4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each greeting you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Good morning","id":"LSEG_L2_VM_P1","text":"Good morning"},{"audio_text":"Good afternoon","id":"LSEG_L2_VM_P2","text":"Good afternoon"},{"audio_text":"Good evening","id":"LSEG_L2_VM_P3","text":"Good evening"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('161b9aab-fd64-5ce2-8f51-ab30749ba0b7', '702da479-8342-5113-903a-b6b0829f63f4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Good morning, class!"}],"explanation":"Repeating “Good morning” is the natural reply.","instruction":"Ответьте.","options":[{"id":"LSEG_L2_C_A","is_correct":true,"text":"Good morning, teacher!"},{"id":"LSEG_L2_C_B","is_correct":false,"text":"Good night, morning!"},{"id":"LSEG_L2_C_C","is_correct":false,"text":"My name is class."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('979fe5c2-ed46-5c22-837d-c28c897cbcff', '702da479-8342-5113-903a-b6b0829f63f4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('58257063-3fd3-523b-9fe0-3e5a7c057091', NULL, 'Слушаем короткие диалоги', 'Научиться понимать, повторять и завершать короткие разговоры с приветствиями.', '{"en":"Listening to Greeting Exchanges","ru":"Слушаем короткие диалоги"}'::jsonb, '{"en":"Learn to understand, repeat, and complete short greeting exchanges.","ru":"Научиться понимать, повторять и завершать короткие разговоры с приветствиями."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6d75385-df4d-5d19-a44b-e757ba7f91ba', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"LSEG_L3_MP_P1","left":"How are you?","right":"Как дела?"},{"id":"LSEG_L3_MP_P2","left":"I am fine","right":"У меня всё хорошо"},{"id":"LSEG_L3_MP_P3","left":"Very well","right":"Очень хорошо"},{"id":"LSEG_L3_MP_P4","left":"Thank you","right":"Спасибо"},{"id":"LSEG_L3_MP_P5","left":"And you?","right":"А у вас?"},{"id":"LSEG_L3_MP_P6","left":"Nice to see you","right":"Рад вас видеть"},{"id":"LSEG_L3_MP_P7","left":"Nice to see you too","right":"Я тоже рад вас видеть"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa113f60-c23b-5255-96d3-a8980878af86', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“I am fine, thank you” is a natural reply to “How are you?”","instruction":"Выберите правильный ответ.","options":[{"id":"LSEG_L3_Q_A","is_correct":true,"text":"I am fine, thank you."},{"id":"LSEG_L3_Q_B","is_correct":false,"text":"Good night, book."},{"id":"LSEG_L3_Q_C","is_correct":false,"text":"My name is fine."}],"question":"What is a natural reply to “How are you?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a65613d-768f-543f-b15b-4b59d1a46169', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am fine, thank you.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня всё хорошо, спасибо.","target_language":"en","word_bank":["you.","thank","fine,","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4687bee-5b8b-5c7a-b662-f7b3b71c3a8f', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"you","instruction":"Выберите подходящее слово.","options":["you","fine","hello"],"sentence_template":"How are ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5b24eb88-33e4-59dc-8bb8-68d6114adef7', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["And","you?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["you?","And"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a5b43bc-b5c6-5f22-bcfb-147387ac658e', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hello! How are you?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4691d97-6458-5482-9c9d-f6cedaefdc4a', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am fine, thank you. And you?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"У меня всё хорошо, спасибо. А у вас?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('237c7f49-5e66-50d4-acd1-0042447f63de', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Lena","text":"Hi, Max! Nice to see you.","translation":"Привет, Макс! Рада тебя видеть.","type":"dialogue"},{"character":"Max","text":"Nice to see you too. How are you?","translation":"Я тоже рад тебя видеть. Как дела?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am fine, thank you."},{"is_correct":false,"text":"Good morning is fine."}],"text":"What should Lena say?","type":"choice"}],"title":"Meeting a Friend"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fbec7a3-6889-58fe-81de-4585b4474256', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Fine” means well or okay in this greeting exchange.","instruction":"Выберите значение.","language":"en","options":[{"id":"LSEG_L3_D_A","is_correct":true,"text":"Well and okay"},{"id":"LSEG_L3_D_B","is_correct":false,"text":"Very tired and ill"},{"id":"LSEG_L3_D_C","is_correct":false,"text":"A greeting used at night"}],"word":"fine"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('967bac83-c0a0-5d14-942e-8be8d5266bd1', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"How are you?","explanation":"The missing word is “you.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"you","id":"LSEG_L3_LW_A","is_correct":true},{"audio_text":"welcome","id":"LSEG_L3_LW_B","is_correct":false},{"audio_text":"night","id":"LSEG_L3_LW_C","is_correct":false}],"sentence_template":"How are ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d307841-eff4-5247-97a1-d3f1e42e87b8', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"fine","explanation":"The complete answer is “I am fine.”","hint_prefix":"fi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d02d68ec-b8ac-5395-b4c7-5f0b951ebd8a', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each greeting you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"How are you?","id":"LSEG_L3_VM_P1","text":"How are you?"},{"audio_text":"I am fine","id":"LSEG_L3_VM_P2","text":"I am fine"},{"audio_text":"And you?","id":"LSEG_L3_VM_P3","text":"And you?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1614c94-35bb-5b95-8a48-4a9044c35786', '58257063-3fd3-523b-9fe0-3e5a7c057091', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"Hello! How are you?"}],"explanation":"This is a complete and natural spoken response.","instruction":"Ответьте.","options":[{"id":"LSEG_L3_C_A","is_correct":true,"text":"I am fine, thank you. And you?"},{"id":"LSEG_L3_C_B","is_correct":false,"text":"I am from fine."},{"id":"LSEG_L3_C_C","is_correct":false,"text":"Good night, morning."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('979fe5c2-ed46-5c22-837d-c28c897cbcff', '58257063-3fd3-523b-9fe0-3e5a7c057091', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85dc617-d83f-51fe-b18c-82805ed9a67e', 'en', 'Hello', 'Здравствуйте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b446421-56f0-5b44-98f0-65e9c1c876df', 'en', 'Hi', 'Привет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4e99d87e-7ede-5763-9521-beaa89849597', 'en', 'Hey', 'Привет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96977c71-b65e-5d11-b9c5-ddfd2b4c492d', 'en', 'Good afternoon', 'Добрый день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d91b232-361b-55b4-9ea4-913fc236e8df', 'en', 'Good evening', 'Добрый вечер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90dc135f-0906-5a2d-a9d0-bdb45f03e55f', 'en', 'Welcome', 'Добро пожаловать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6677565-4fe9-533d-a9e4-5aae2162b24e', 'en', 'morning', 'утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cd3f771-4f41-56c9-972b-8e849cb916b4', 'en', 'afternoon', 'день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd9c830-3d2c-5669-939d-1b534d06e12f', 'en', 'evening', 'вечер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c732cc9a-c84b-5c06-85e4-b26996ecb913', 'en', 'night', 'ночь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('96977c71-b65e-5d11-b9c5-ddfd2b4c492d', 'en', 'Good afternoon', 'Добрый день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42acd71d-0658-59ee-8da1-450ecfa34ba8', 'en', 'Good night', 'Спокойной ночи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61154476-f1cb-5cd0-a624-108da1188823', 'en', 'How are you?', 'Как дела?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c91633-f680-5b98-8a64-2981937e6aa6', 'en', 'I am fine', 'У меня всё хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88efafae-3db5-5a57-95f3-85cfb394fa7f', 'en', 'Very well', 'Очень хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a542f005-0921-508b-a9b0-2a96c073ccc5', 'en', 'And you?', 'А у вас?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c97ccd-54d3-5e9e-a73a-ff91b181e8e4', 'en', 'Nice to see you', 'Рад вас видеть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c7f88292-b028-5708-9b52-979b2eb13371', 'en', 'Nice to see you too', 'Я тоже рад вас видеть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hello' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hey' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '151be9c0-1b91-5158-9ec8-7f51eb1526e2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Welcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'night' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '702da479-8342-5113-903a-b6b0829f63f4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good night' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'How are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am fine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Very well' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'And you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to see you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '979fe5c2-ed46-5c22-837d-c28c897cbcff', id, '58257063-3fd3-523b-9fe0-3e5a7c057091', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to see you too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
