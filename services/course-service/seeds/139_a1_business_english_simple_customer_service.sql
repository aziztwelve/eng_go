-- Track: A1_BUSINESS_ENGLISH_SIMPLE_CUSTOMER_SERVICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('fc583dfc-0303-5cff-8b3b-98769ecf22e1', 'A1_BUSINESS_ENGLISH_SIMPLE_CUSTOMER_SERVICE', 'Простое обслуживание клиентов', 'Научитесь приветствовать клиентов, понимать простые просьбы и решать основные проблемы.', '{"en":"Simple Customer Service","ru":"Простое обслуживание клиентов"}'::jsonb, '{"en":"Learn to greet customers, understand simple requests, and solve basic problems.","ru":"Научитесь приветствовать клиентов, понимать простые просьбы и решать основные проблемы."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('32da5dee-e28f-5a8d-8285-d19aba3db7db', NULL, 'Приветствуем клиентов', 'Научиться использовать простые деловые фразы по теме «Приветствуем клиентов».', '{"en":"Welcoming Customers","ru":"Приветствуем клиентов"}'::jsonb, '{"en":"Learn to use simple business phrases for welcoming customers.","ru":"Научиться использовать простые деловые фразы по теме «Приветствуем клиентов»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f0bd221-dab7-5188-b8f2-f02c4f39b3a4', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BESCS_L1_MP_P1","left":"welcome","right":"добро пожаловать"},{"id":"BESCS_L1_MP_P2","left":"customer","right":"клиент"},{"id":"BESCS_L1_MP_P3","left":"help","right":"помощь"},{"id":"BESCS_L1_MP_P4","left":"information","right":"информация"},{"id":"BESCS_L1_MP_P5","left":"please","right":"пожалуйста"},{"id":"BESCS_L1_MP_P6","left":"How can I help?","right":"Чем могу помочь?"},{"id":"BESCS_L1_MP_P7","left":"Have a good day","right":"Хорошего дня"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91ccda76-e8ed-5359-8d8c-e18fb105c596', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “welcome.”","instruction":"Выберите правильный ответ.","options":[{"id":"BESCS_L1_Q_A","is_correct":true,"text":"welcome"},{"id":"BESCS_L1_Q_B","is_correct":false,"text":"customer"},{"id":"BESCS_L1_Q_C","is_correct":false,"text":"help"}],"question":"Which phrase is connected with “welcome”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed0b5cb2-f472-51f9-af62-1af500d17679', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Welcome. How can I help?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Добро пожаловать. Чем могу помочь?","target_language":"en","word_bank":["help?","I","can","How","Welcome."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0dee14d-07f9-5b83-8757-613421407211', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"need","instruction":"Выберите подходящее слово.","options":["need","price","floor"],"sentence_template":"What do you ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e6d84ee-00bf-5263-9a7e-6b221f220814', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","do","you","need?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["need?","you","do","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('edad5404-0bc9-5c40-8252-6fffba1f2fe5', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Welcome to our office. How can I help you today?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28c37911-02a5-59af-a5bc-5daab7150335', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Welcome. How can I help?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Добро пожаловать. Чем могу помочь?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ed60861-92fb-5b3b-bdbd-495c9083c73b', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"I need some information.","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Of course. What do you need?","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Of course. What do you need?"},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Welcoming Customers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41f2a198-51ce-5ff1-baaf-5af1cb516412', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“customer” means a person who buys a product or service.","instruction":"Выберите значение.","language":"en","options":[{"id":"BESCS_L1_D_A","is_correct":true,"text":"A person who buys a product or service"},{"id":"BESCS_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BESCS_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"customer"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('397f5f12-6934-5342-ae9b-8716610a27e4', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"What do you need?","explanation":"The missing word is “need.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"need","id":"BESCS_L1_LW_A","is_correct":true},{"audio_text":"price","id":"BESCS_L1_LW_B","is_correct":false},{"audio_text":"floor","id":"BESCS_L1_LW_C","is_correct":false}],"sentence_template":"What do you ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbec887d-40c0-538b-b8c5-a2485a0f4195', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"need","explanation":"The complete sentence is “What do you need?”","hint_prefix":"ne","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"What do you ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d745d10c-b6dc-5bdf-9ba2-6040d6e052bd', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"welcome","id":"BESCS_L1_VM_P1","text":"welcome"},{"audio_text":"customer","id":"BESCS_L1_VM_P2","text":"customer"},{"audio_text":"help","id":"BESCS_L1_VM_P3","text":"help"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21fd2916-72d7-57fb-9b6f-da68c80a37f4', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"I need some information."}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BESCS_L1_C_A","is_correct":true,"text":"Of course. What do you need?"},{"id":"BESCS_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BESCS_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fc583dfc-0303-5cff-8b3b-98769ecf22e1', '32da5dee-e28f-5a8d-8285-d19aba3db7db', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('61e7855d-58e9-5a2c-96ca-22082d6156f9', NULL, 'Понимаем просьбы', 'Научиться использовать простые деловые фразы по теме «Понимаем просьбы».', '{"en":"Understanding Requests","ru":"Понимаем просьбы"}'::jsonb, '{"en":"Learn to use simple business phrases for understanding requests.","ru":"Научиться использовать простые деловые фразы по теме «Понимаем просьбы»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c41dbba5-1bc4-5f2e-ba85-b3e069c1423e', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BESCS_L2_MP_P1","left":"request","right":"просьба"},{"id":"BESCS_L2_MP_P2","left":"need","right":"нуждаться"},{"id":"BESCS_L2_MP_P3","left":"want","right":"хотеть"},{"id":"BESCS_L2_MP_P4","left":"looking for","right":"искать"},{"id":"BESCS_L2_MP_P5","left":"show","right":"показать"},{"id":"BESCS_L2_MP_P6","left":"check","right":"проверить"},{"id":"BESCS_L2_MP_P7","left":"one moment","right":"одну минуту"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0277c273-e4fa-5505-9a08-faa624781b0f', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “request.”","instruction":"Выберите правильный ответ.","options":[{"id":"BESCS_L2_Q_A","is_correct":true,"text":"request"},{"id":"BESCS_L2_Q_B","is_correct":false,"text":"need"},{"id":"BESCS_L2_Q_C","is_correct":false,"text":"want"}],"question":"Which phrase is connected with “request”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('788bd4d4-ad42-59de-9784-4cf1017d5098', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am looking for a blue notebook.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я ищу синий блокнот.","target_language":"en","word_bank":["notebook.","blue","a","for","looking","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('248068d9-6556-521c-b98a-91eba53176b7', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"check","instruction":"Выберите подходящее слово.","options":["check","cancel","speak"],"sentence_template":"Please ___ the price."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb931c60-4333-5647-a911-ab07ded14509', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","check","the","price."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["price.","the","check","Please"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13df7df3-96f7-5996-9abd-2fcdea7853b8', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please show me the large black bag.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bca53f96-cc04-57a7-a4d4-744bcbabf87d', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am looking for a blue notebook.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я ищу синий блокнот."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c2fe9dd-e9c5-5d33-822b-9fca5eeefc3a', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"Can you check this price?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. One moment, please.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. One moment, please."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Understanding Requests"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6249447e-096a-5aa5-b386-0f1598c4ecf0', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“request” means something a customer asks for.","instruction":"Выберите значение.","language":"en","options":[{"id":"BESCS_L2_D_A","is_correct":true,"text":"Something a customer asks for"},{"id":"BESCS_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BESCS_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"request"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b651b06-a80f-5560-a193-d1d21a9f3079', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please check the price.","explanation":"The missing word is “check.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"check","id":"BESCS_L2_LW_A","is_correct":true},{"audio_text":"cancel","id":"BESCS_L2_LW_B","is_correct":false},{"audio_text":"speak","id":"BESCS_L2_LW_C","is_correct":false}],"sentence_template":"Please ___ the price."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd99522f-6844-5a52-9fa9-0669267e5862', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"check","explanation":"The complete sentence is “Please check the price.”","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please ___ the price."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('629e1ba0-a9b2-55c9-8926-6567010a95c2', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"request","id":"BESCS_L2_VM_P1","text":"request"},{"audio_text":"need","id":"BESCS_L2_VM_P2","text":"need"},{"audio_text":"want","id":"BESCS_L2_VM_P3","text":"want"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0baa7f4-240d-553c-a9e1-9c25c720dcc2', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"Can you check this price?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BESCS_L2_C_A","is_correct":true,"text":"Yes. One moment, please."},{"id":"BESCS_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BESCS_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fc583dfc-0303-5cff-8b3b-98769ecf22e1', '61e7855d-58e9-5a2c-96ca-22082d6156f9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5ca694e4-2925-5ead-a7cf-106a082378d8', NULL, 'Решаем проблему', 'Научиться использовать простые деловые фразы по теме «Решаем проблему».', '{"en":"Solving a Problem","ru":"Решаем проблему"}'::jsonb, '{"en":"Learn to use simple business phrases for solving a problem.","ru":"Научиться использовать простые деловые фразы по теме «Решаем проблему»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49f28698-d18d-56b4-a80f-694d9c926156', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BESCS_L3_MP_P1","left":"problem","right":"проблема"},{"id":"BESCS_L3_MP_P2","left":"wrong","right":"неправильный"},{"id":"BESCS_L3_MP_P3","left":"broken","right":"сломанный"},{"id":"BESCS_L3_MP_P4","left":"return","right":"вернуть"},{"id":"BESCS_L3_MP_P5","left":"replace","right":"заменить"},{"id":"BESCS_L3_MP_P6","left":"receipt","right":"чек"},{"id":"BESCS_L3_MP_P7","left":"I am sorry","right":"Мне жаль"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1ced258-ffa7-5f1b-bbc8-eb957943b4fd', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “problem.”","instruction":"Выберите правильный ответ.","options":[{"id":"BESCS_L3_Q_A","is_correct":true,"text":"problem"},{"id":"BESCS_L3_Q_B","is_correct":false,"text":"wrong"},{"id":"BESCS_L3_Q_C","is_correct":false,"text":"broken"}],"question":"Which phrase is connected with “problem”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a98829b-4b42-595e-9b14-1019c2993834', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am sorry about the problem.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне жаль из-за этой проблемы.","target_language":"en","word_bank":["problem.","the","about","sorry","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('553820d6-dcfe-5aad-a800-2b131886a005', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"replace","instruction":"Выберите подходящее слово.","options":["replace","telephone","schedule"],"sentence_template":"We can ___ the item."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cacd58ee-b4c6-5833-a840-a9bd42afa08a', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","can","replace","the","item."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["item.","the","replace","can","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bbdd376-255c-5d7d-a627-4989991a857c', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am sorry. We can replace the broken item.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4b3fec9-8877-5c15-9bdc-4be84f3c8b84', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am sorry about the problem.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мне жаль из-за этой проблемы."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2b94ab7-0c3a-564e-9d1c-7c83277b1467', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"This is the wrong product.","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"I am sorry. I will check it.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am sorry. I will check it."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Solving a Problem"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32dabc2a-1cef-594e-8c22-179263ea9ff0', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“replace” means to give a new item instead of the old one.","instruction":"Выберите значение.","language":"en","options":[{"id":"BESCS_L3_D_A","is_correct":true,"text":"To give a new item instead of the old one"},{"id":"BESCS_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BESCS_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"replace"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de785b3c-d2c8-5e58-964c-00a0cfe8dcaa', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We can replace the item.","explanation":"The missing word is “replace.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"replace","id":"BESCS_L3_LW_A","is_correct":true},{"audio_text":"telephone","id":"BESCS_L3_LW_B","is_correct":false},{"audio_text":"schedule","id":"BESCS_L3_LW_C","is_correct":false}],"sentence_template":"We can ___ the item."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3051401-49d5-5da0-86da-e18890895015', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"replace","explanation":"The complete sentence is “We can replace the item.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We can ___ the item."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bef244e0-c678-579a-bd9e-2852380e9a14', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"problem","id":"BESCS_L3_VM_P1","text":"problem"},{"audio_text":"wrong","id":"BESCS_L3_VM_P2","text":"wrong"},{"audio_text":"broken","id":"BESCS_L3_VM_P3","text":"broken"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7123ea77-cef9-573a-adbc-0ba3e536ff48', '5ca694e4-2925-5ead-a7cf-106a082378d8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"This is the wrong product."}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BESCS_L3_C_A","is_correct":true,"text":"I am sorry. I will check it."},{"id":"BESCS_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BESCS_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('fc583dfc-0303-5cff-8b3b-98769ecf22e1', '5ca694e4-2925-5ead-a7cf-106a082378d8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90dc135f-0906-5a2d-a9d0-bdb45f03e55f', 'en', 'welcome', 'добро пожаловать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45b40515-951b-5f8e-bdc2-d2396bc7c623', 'en', 'customer', 'клиент', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('637f141d-e774-573b-a26c-0cb43559f146', 'en', 'help', 'помощь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37ec5cdf-a5e4-5a5b-b9e2-7be533cacbb0', 'en', 'information', 'информация', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('597a96d3-92fe-58a8-885f-b283b2745e8b', 'en', 'please', 'пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fab73be-118d-525d-9e96-6eefd9a2b4b4', 'en', 'How can I help?', 'Чем могу помочь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('826a8929-ecaf-5821-a0cc-1439b9dc0369', 'en', 'Have a good day', 'Хорошего дня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89923d48-ca83-5639-98a1-4c70437df0c3', 'en', 'request', 'просьба', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75b158e8-4dff-5da7-9b61-7941aaabf5ab', 'en', 'need', 'нуждаться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e28d9af-2182-523f-bb3b-f2e7cdfb261c', 'en', 'want', 'хотеть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('421fb04b-8db6-5b30-8d17-21ccce5bd287', 'en', 'looking for', 'искать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4a834f8f-6f38-572c-a0b4-c212cbbaeff9', 'en', 'show', 'показать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0924b87c-15af-59ff-804d-5d50cfeeb710', 'en', 'check', 'проверить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30449208-332a-5bab-92ad-435a64860ae3', 'en', 'one moment', 'одну минуту', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9b71811e-225c-53e1-aefa-6bfaba3e8819', 'en', 'problem', 'проблема', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b43fc03-112c-539f-8267-16623fa98018', 'en', 'wrong', 'неправильный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76be4cd9-87db-5841-9357-d483baf1c4bd', 'en', 'broken', 'сломанный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27e3270f-54f1-5b1e-bad3-635c01068c3f', 'en', 'return', 'вернуть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7938af8-5212-5bde-983c-bf22d53705b5', 'en', 'replace', 'заменить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22ef8e2d-c926-5560-8f09-ccef5a21fe9c', 'en', 'I am sorry', 'Мне жаль', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'welcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'help' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How can I help?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '32da5dee-e28f-5a8d-8285-d19aba3db7db', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Have a good day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'request' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'need' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'want' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'looking for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'show' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '61e7855d-58e9-5a2c-96ca-22082d6156f9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'one moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'problem' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'wrong' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'broken' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'return' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'replace' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'fc583dfc-0303-5cff-8b3b-98769ecf22e1', id, '5ca694e4-2925-5ead-a7cf-106a082378d8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am sorry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
