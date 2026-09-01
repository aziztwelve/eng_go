-- Track: A1_SPEAKING_GREETINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('f5033df5-fdd5-5ab8-a78a-358c4e882f0c', 'A1_SPEAKING_GREETINGS', 'Приветствия', 'Научитесь здороваться, представляться и прощаться в простых повседневных разговорах.', '{"en":"Greetings","ru":"Приветствия"}'::jsonb, '{"en":"Learn to greet people, introduce yourself, and say goodbye in simple everyday conversations.","ru":"Научитесь здороваться, представляться и прощаться в простых повседневных разговорах."}'::jsonb, 'en', 'A1', '', ARRAY['speaking']::text[], true, 122, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0722c2c0-636e-5bb4-938e-0f4d65ab39a0', NULL, 'Основные приветствия', 'Научиться использовать простые приветствия утром, днём и вечером.', '{"en":"Basic Greetings","ru":"Основные приветствия"}'::jsonb, '{"en":"Learn to use simple greetings in the morning, afternoon, and evening.","ru":"Научиться использовать простые приветствия утром, днём и вечером."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ba08403-8674-52db-b479-9421da8dabe3', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"L1_MP_P1","left":"Hello","right":"Здравствуйте"},{"id":"L1_MP_P2","left":"Hi","right":"Привет"},{"id":"L1_MP_P3","left":"Good morning","right":"Доброе утро"},{"id":"L1_MP_P4","left":"Good afternoon","right":"Добрый день"},{"id":"L1_MP_P5","left":"Good evening","right":"Добрый вечер"},{"id":"L1_MP_P6","left":"How are you?","right":"Как дела?"},{"id":"L1_MP_P7","left":"I am fine","right":"У меня всё хорошо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6586c9e-d6b3-5fdc-8c76-84b9ddd0ce61', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Good morning” is a greeting used in the morning.","instruction":"Выберите правильный ответ.","options":[{"id":"L1_Q_A","is_correct":true,"text":"Good morning"},{"id":"L1_Q_B","is_correct":false,"text":"Good evening"},{"id":"L1_Q_C","is_correct":false,"text":"Goodbye"}],"question":"What do you say when you meet someone in the morning?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('427214a7-116c-571e-8a38-341f00efbd5f', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Good morning, Anna!","instruction":"Соберите перевод.","source_language":"ru","source_text":"Доброе утро, Анна!","target_language":"en","word_bank":["Anna!","morning,","Good"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b95ad882-78c8-509a-843e-8fed11bacec5', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"morning","instruction":"Выберите подходящее слово.","options":["morning","fine","hello"],"sentence_template":"Good ___!"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eca9baa3-86b0-5e22-9198-41af6511a083', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["How","are","you?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["you?","are","How"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6de431b0-bea1-5a2d-95d9-091191beea76', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hello! How are you?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68fdf0bd-1690-5326-8720-d36d14c2e52c', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Good morning! How are you?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро! Как дела?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa179a84-be14-5862-85d6-428b259e0528', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"Good morning, Tom!","translation":"Доброе утро, Том!","type":"dialogue"},{"character":"Tom","text":"Good morning, Anna! How are you?","translation":"Доброе утро, Анна! Как дела?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am fine, thank you."},{"is_correct":false,"text":"Good evening."}],"text":"What should Anna say?","type":"choice"}],"title":"A Morning Greeting"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7536c388-7ea0-5e34-8c42-7d9bbbb2bdf3', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Hello” is a word used when you meet or greet someone.","instruction":"Выберите значение.","language":"en","options":[{"id":"L1_D_A","is_correct":true,"text":"A word used to greet someone"},{"id":"L1_D_B","is_correct":false,"text":"A word used to thank someone"},{"id":"L1_D_C","is_correct":false,"text":"A word used to ask for food"}],"word":"hello"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac8c3374-52ed-5bdc-abdf-b612f73d81f6', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Good morning.","explanation":"The complete greeting is “Good morning.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"morning","id":"L1_LW_A","is_correct":true},{"audio_text":"fine","id":"L1_LW_B","is_correct":false},{"audio_text":"hello","id":"L1_LW_C","is_correct":false}],"sentence_template":"Good ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5eeb0098-c972-5ca4-9693-73d366aab11c', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"you","explanation":"The complete question is “How are you?”","hint_prefix":"y","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"How are ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3b2cbd3-3cc4-5c69-8638-b3ff1742f4dc', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Hello","id":"L1_VM_P1","text":"Hello"},{"audio_text":"Hi","id":"L1_VM_P2","text":"Hi"},{"audio_text":"Good morning","id":"L1_VM_P3","text":"Good morning"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09d011fa-42f5-51f8-9c07-399eb24825c8', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Ben","text":"Hello! How are you?"}],"explanation":"“I am fine, thank you” is a natural answer to “How are you?”","instruction":"Ответьте.","options":[{"id":"L1_C_A","is_correct":true,"text":"I am fine, thank you."},{"id":"L1_C_B","is_correct":false,"text":"Good night."},{"id":"L1_C_C","is_correct":false,"text":"My name Ben."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f5033df5-fdd5-5ab8-a78a-358c4e882f0c', '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b300b571-e205-5264-97bc-6c1d8693a185', NULL, 'Знакомство', 'Научиться называть своё имя и спрашивать имя другого человека.', '{"en":"Introducing Yourself","ru":"Знакомство"}'::jsonb, '{"en":"Learn to say your name and ask another person’s name.","ru":"Научиться называть своё имя и спрашивать имя другого человека."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('796ba37e-bf8f-5749-bbbd-92e4a1899e1e', 'b300b571-e205-5264-97bc-6c1d8693a185', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"L2_MP_P1","left":"My name is","right":"Меня зовут"},{"id":"L2_MP_P2","left":"What is your name?","right":"Как вас зовут?"},{"id":"L2_MP_P3","left":"Nice to meet you","right":"Приятно познакомиться"},{"id":"L2_MP_P4","left":"I am","right":"Я"},{"id":"L2_MP_P5","left":"This is","right":"Это"},{"id":"L2_MP_P6","left":"friend","right":"друг"},{"id":"L2_MP_P7","left":"too","right":"тоже"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ca1a847-3514-5037-bb70-beb4098377af', 'b300b571-e205-5264-97bc-6c1d8693a185', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“What is your name?” asks a person to say their name.","instruction":"Выберите правильный ответ.","options":[{"id":"L2_Q_A","is_correct":true,"text":"What is your name?"},{"id":"L2_Q_B","is_correct":false,"text":"How are you?"},{"id":"L2_Q_C","is_correct":false,"text":"Good morning."}],"question":"Which question asks for a person’s name?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cde0cf2-e384-56cf-a37a-40a0803e97b5', 'b300b571-e205-5264-97bc-6c1d8693a185', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My name is Maria.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Меня зовут Мария.","target_language":"en","word_bank":["Maria.","name","My","is"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ad8d642-bbef-59c9-84bf-2a9e9cfbe11f', 'b300b571-e205-5264-97bc-6c1d8693a185', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","friend","morning"],"sentence_template":"My ___ is Alex."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f77f2bbd-414f-5b74-a23f-36cc9cbe2e05', 'b300b571-e205-5264-97bc-6c1d8693a185', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","is","your","name?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["your","What","name?","is"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('100f3f3d-45aa-5ab8-a020-236a597a9441', 'b300b571-e205-5264-97bc-6c1d8693a185', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hello! My name is Emma.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7dbeaee-e345-54b1-8eec-6fb85684e4f1', 'b300b571-e205-5264-97bc-6c1d8693a185', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello! My name is Emma. Nice to meet you.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте! Меня зовут Эмма. Приятно познакомиться."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2de7c7cb-aafd-5835-8fd0-e3f72cb8a58f', 'b300b571-e205-5264-97bc-6c1d8693a185', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"Hi! My name is Leo. What is your name?","translation":"Привет! Меня зовут Лео. Как вас зовут?","type":"dialogue"},{"character":"Mia","text":"My name is Mia.","translation":"Меня зовут Миа.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you, Mia."},{"is_correct":false,"text":"Good morning is Mia."}],"text":"What should Leo say next?","type":"choice"}],"title":"Meeting a New Person"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33358d71-6071-53e1-84c4-fdefda048c4d', 'b300b571-e205-5264-97bc-6c1d8693a185', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A friend is a person you know and like.","instruction":"Выберите значение.","language":"en","options":[{"id":"L2_D_A","is_correct":true,"text":"A person you know and like"},{"id":"L2_D_B","is_correct":false,"text":"A time in the morning"},{"id":"L2_D_C","is_correct":false,"text":"A word for goodbye"}],"word":"friend"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e8436c2-8094-5f26-980c-8a322a22d08d', 'b300b571-e205-5264-97bc-6c1d8693a185', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My name is Daniel.","explanation":"The complete sentence is “My name is Daniel.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"name","id":"L2_LW_A","is_correct":true},{"audio_text":"friend","id":"L2_LW_B","is_correct":false},{"audio_text":"fine","id":"L2_LW_C","is_correct":false}],"sentence_template":"My ___ is Daniel."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cc90147-6fdc-5665-b2ea-15be76500636', 'b300b571-e205-5264-97bc-6c1d8693a185', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"meet","explanation":"The complete phrase is “Nice to meet you.”","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Nice to ___ you."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7dd4428-8a15-57f1-b674-2c8b45b768a3', 'b300b571-e205-5264-97bc-6c1d8693a185', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"My name is","id":"L2_VM_P1","text":"My name is"},{"audio_text":"Nice to meet you","id":"L2_VM_P2","text":"Nice to meet you"},{"audio_text":"friend","id":"L2_VM_P3","text":"friend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba7539fd-839b-5779-9c2f-8e331396e8d1', 'b300b571-e205-5264-97bc-6c1d8693a185', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Sofia","text":"Hello! My name is Sofia. What is your name?"}],"explanation":"Saying “My name is Max” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"L2_C_A","is_correct":true,"text":"Hi! My name is Max."},{"id":"L2_C_B","is_correct":false,"text":"I am fine morning."},{"id":"L2_C_C","is_correct":false,"text":"Goodbye, Sofia?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f5033df5-fdd5-5ab8-a78a-358c4e882f0c', 'b300b571-e205-5264-97bc-6c1d8693a185', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('af8dda04-353a-5307-a2bb-a9cdaa880b16', NULL, 'Приветствия и прощания', 'Научиться начинать и заканчивать короткий дружеский разговор.', '{"en":"Greetings and Goodbyes","ru":"Приветствия и прощания"}'::jsonb, '{"en":"Learn to begin and end a short friendly conversation.","ru":"Научиться начинать и заканчивать короткий дружеский разговор."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('196a39c5-fb60-5b87-9a5f-b92de4174356', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"L3_MP_P1","left":"Goodbye","right":"До свидания"},{"id":"L3_MP_P2","left":"Bye","right":"Пока"},{"id":"L3_MP_P3","left":"See you","right":"Увидимся"},{"id":"L3_MP_P4","left":"See you tomorrow","right":"Увидимся завтра"},{"id":"L3_MP_P5","left":"Good night","right":"Спокойной ночи"},{"id":"L3_MP_P6","left":"Have a nice day","right":"Хорошего дня"},{"id":"L3_MP_P7","left":"Thank you","right":"Спасибо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e688fd06-85a6-53e3-9dc9-c6061839143e', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“See you!” is a friendly phrase used when leaving someone.","instruction":"Выберите правильный ответ.","options":[{"id":"L3_Q_A","is_correct":true,"text":"See you!"},{"id":"L3_Q_B","is_correct":false,"text":"What is your name?"},{"id":"L3_Q_C","is_correct":false,"text":"Good morning?"}],"question":"What can you say when you leave a friend?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad107e78-eeb6-5ee0-90e1-3d2ec3a456bd', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"See you tomorrow!","instruction":"Соберите перевод.","source_language":"ru","source_text":"Увидимся завтра!","target_language":"en","word_bank":["tomorrow!","you","See"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d1b51d0-a5bd-5284-a704-8aabbb9406ff', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"day","instruction":"Выберите подходящее слово.","options":["day","name","friend"],"sentence_template":"Have a nice ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21ad6353-a317-5fcb-9d9a-bfee09a2eda3', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["See","you","tomorrow!"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["tomorrow!","See","you"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad6e155f-18d8-505f-972c-f5a1abf31a0f', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Goodbye! Have a nice day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b844279-0833-579c-a811-05ed2c5f6975', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"It was nice to meet you. See you tomorrow!","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Было приятно познакомиться. Увидимся завтра!"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fed632e6-8f6c-5a57-995e-60640dabc5b4', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"It was nice to meet you, Sam.","translation":"Было приятно познакомиться, Сэм.","type":"dialogue"},{"character":"Sam","text":"Nice to meet you too, Nina.","translation":"Мне тоже было приятно познакомиться, Нина.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Goodbye! See you tomorrow."},{"is_correct":false,"text":"What is your name?"}],"text":"What should Nina say when she leaves?","type":"choice"}],"title":"A Friendly Goodbye"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e063d53c-ab27-5180-9de3-e5bcb4b72a22', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Goodbye” is a word used when you leave someone.","instruction":"Выберите значение.","language":"en","options":[{"id":"L3_D_A","is_correct":true,"text":"A word used when leaving someone"},{"id":"L3_D_B","is_correct":false,"text":"A word used to ask a name"},{"id":"L3_D_C","is_correct":false,"text":"A greeting used in the morning"}],"word":"goodbye"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0af17e19-9fe7-53a8-ac1a-abcd1bf4f2a8', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"See you tomorrow.","explanation":"The complete phrase is “See you tomorrow.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tomorrow","id":"L3_LW_A","is_correct":true},{"audio_text":"morning","id":"L3_LW_B","is_correct":false},{"audio_text":"name","id":"L3_LW_C","is_correct":false}],"sentence_template":"See you ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cd15e88-efe0-5140-a583-a4b76d3bcca0', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"day","explanation":"The complete phrase is “Have a nice day.”","hint_prefix":"d","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Have a nice ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d04e1530-56c5-5f37-a277-256ae872e608', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Goodbye","id":"L3_VM_P1","text":"Goodbye"},{"audio_text":"See you tomorrow","id":"L3_VM_P2","text":"See you tomorrow"},{"audio_text":"Have a nice day","id":"L3_VM_P3","text":"Have a nice day"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b35c30b5-dec5-5047-b3b9-b0d04d67045d', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"Goodbye! Have a nice day."}],"explanation":"“Thank you! You too. See you!” is a natural friendly reply.","instruction":"Ответьте.","options":[{"id":"L3_C_A","is_correct":true,"text":"Thank you! You too. See you!"},{"id":"L3_C_B","is_correct":false,"text":"My name is day."},{"id":"L3_C_C","is_correct":false,"text":"Good morning, goodbye?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('f5033df5-fdd5-5ab8-a78a-358c4e882f0c', 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c85dc617-d83f-51fe-b18c-82805ed9a67e', 'en', 'Hello', 'Здравствуйте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b446421-56f0-5b44-98f0-65e9c1c876df', 'en', 'Hi', 'Привет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
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
VALUES ('61154476-f1cb-5cd0-a624-108da1188823', 'en', 'How are you?', 'Как дела?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c91633-f680-5b98-8a64-2981937e6aa6', 'en', 'I am fine', 'У меня всё хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6da48424-02f0-5c09-afab-17005f5ceb5f', 'en', 'What is your name?', 'Как вас зовут?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a5c847a-0f0a-5d3b-9009-8d812e8d24d4', 'en', 'Nice to meet you', 'Приятно познакомиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0db32db-2231-584d-bb8b-d6d8258e975b', 'en', 'I am', 'Я', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f410eefb-d4b7-58e0-9323-1a7ace25d4d9', 'en', 'This is', 'Это', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd75c44-4f87-5783-9614-619d962ba6c5', 'en', 'friend', 'друг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('98b154c9-c979-5678-ac2d-c96223ab3718', 'en', 'too', 'тоже', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efed2b1f-8bdc-5cfd-ba58-b27167f068ab', 'en', 'Goodbye', 'До свидания', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa78a351-a56b-5b8b-beb4-156812191b79', 'en', 'Bye', 'Пока', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dbf75d5f-0ca7-5373-b5d0-9da6eb0c133d', 'en', 'See you', 'Увидимся', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0b8498b-4ef5-5f2a-b302-3a21d9a85e7c', 'en', 'See you tomorrow', 'Увидимся завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42acd71d-0658-59ee-8da1-450ecfa34ba8', 'en', 'Good night', 'Спокойной ночи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('56d2d779-9989-582f-926c-56d24985aa89', 'en', 'Have a nice day', 'Хорошего дня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hello' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'Hi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, '0722c2c0-636e-5bb4-938e-0f4d65ab39a0', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am fine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your name?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to meet you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'b300b571-e205-5264-97bc-6c1d8693a185', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'too' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Goodbye' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Bye' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'See you tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good night' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Have a nice day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'f5033df5-fdd5-5ab8-a78a-358c4e882f0c', id, 'af8dda04-353a-5307-a2bb-a9cdaa880b16', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
