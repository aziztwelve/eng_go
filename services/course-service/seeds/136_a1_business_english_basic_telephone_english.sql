-- Track: A1_BUSINESS_ENGLISH_BASIC_TELEPHONE_ENGLISH. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', 'A1_BUSINESS_ENGLISH_BASIC_TELEPHONE_ENGLISH', 'Основы телефонного общения', 'Научитесь отвечать на деловые звонки, просить соединить и оставлять сообщение.', '{"en":"Basic Telephone English","ru":"Основы телефонного общения"}'::jsonb, '{"en":"Learn to answer business calls, ask for someone, and leave a message.","ru":"Научитесь отвечать на деловые звонки, просить соединить и оставлять сообщение."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', NULL, 'Ответ на звонок', 'Научиться использовать простые деловые фразы по теме «Ответ на звонок».', '{"en":"Answering a Call","ru":"Ответ на звонок"}'::jsonb, '{"en":"Learn to use simple business phrases for answering a call.","ru":"Научиться использовать простые деловые фразы по теме «Ответ на звонок»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85e5ca3e-63d8-5db3-abf0-fceaee7ade03', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBTE_L1_MP_P1","left":"call","right":"звонок"},{"id":"BEBTE_L1_MP_P2","left":"telephone","right":"телефон"},{"id":"BEBTE_L1_MP_P3","left":"answer","right":"отвечать"},{"id":"BEBTE_L1_MP_P4","left":"speaking","right":"у телефона"},{"id":"BEBTE_L1_MP_P5","left":"company name","right":"название компании"},{"id":"BEBTE_L1_MP_P6","left":"How can I help?","right":"Чем могу помочь?"},{"id":"BEBTE_L1_MP_P7","left":"Good morning","right":"Доброе утро"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de8fd7a6-302b-5fa0-867f-5809d95d58e7', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “call.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEBTE_L1_Q_A","is_correct":true,"text":"call"},{"id":"BEBTE_L1_Q_B","is_correct":false,"text":"telephone"},{"id":"BEBTE_L1_Q_C","is_correct":false,"text":"answer"}],"question":"Which phrase is connected with “call”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ddc2ab3-5a07-5f71-8d60-1c0487676302', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Good morning. Star Company.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Доброе утро. Компания «Стар».","target_language":"en","word_bank":["Company.","Star","morning.","Good"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71b0ab89-2e5d-5afd-950e-cb0d5d0a709a', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"help","instruction":"Выберите подходящее слово.","options":["help","deliver","cost"],"sentence_template":"How can I ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc0f342e-8733-5491-8f53-8d63d359db59', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["How","can","I","help?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["help?","I","can","How"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('918f6d91-a129-549f-a264-46af6367222e', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Good morning. Green Office. Anna speaking.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9df0d223-163b-5e8d-b05c-67749b1592cf', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Good morning. Star Company.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро. Компания «Стар»."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67b93c55-0615-5367-8b61-b477629091ff', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Caller","text":"Is this Green Office?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. How can I help?","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. How can I help?"},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Answering a Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62399f92-2540-5e6f-8667-eb61a5dc243e', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“call” means a conversation with someone by telephone.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBTE_L1_D_A","is_correct":true,"text":"A conversation with someone by telephone"},{"id":"BEBTE_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEBTE_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"call"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7753190c-d2da-5934-a15c-4b01dd90b05d', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"How can I help?","explanation":"The missing word is “help.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"help","id":"BEBTE_L1_LW_A","is_correct":true},{"audio_text":"deliver","id":"BEBTE_L1_LW_B","is_correct":false},{"audio_text":"cost","id":"BEBTE_L1_LW_C","is_correct":false}],"sentence_template":"How can I ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b59d30f8-ca51-5bfa-8b34-c1b951be2bcf', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"help","explanation":"The complete sentence is “How can I help?”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"How can I ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9cdcff05-e869-5027-85df-b00967b0cc05', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"call","id":"BEBTE_L1_VM_P1","text":"call"},{"audio_text":"telephone","id":"BEBTE_L1_VM_P2","text":"telephone"},{"audio_text":"answer","id":"BEBTE_L1_VM_P3","text":"answer"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a3080b9-1343-5b57-8e34-0c5d17f1a115', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Caller","text":"Is this Green Office?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEBTE_L1_C_A","is_correct":true,"text":"Yes. How can I help?"},{"id":"BEBTE_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEBTE_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4127d67a-d01d-59d3-984d-be082a2ba9bf', NULL, 'Просим соединить', 'Научиться использовать простые деловые фразы по теме «Просим соединить».', '{"en":"Asking for Someone","ru":"Просим соединить"}'::jsonb, '{"en":"Learn to use simple business phrases for asking for someone.","ru":"Научиться использовать простые деловые фразы по теме «Просим соединить»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f69d703e-ef1b-5f07-a78e-3d3b3f87710e', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBTE_L2_MP_P1","left":"speak to","right":"поговорить с"},{"id":"BEBTE_L2_MP_P2","left":"hold","right":"подождать"},{"id":"BEBTE_L2_MP_P3","left":"line","right":"линия"},{"id":"BEBTE_L2_MP_P4","left":"available","right":"доступен"},{"id":"BEBTE_L2_MP_P5","left":"office","right":"офис"},{"id":"BEBTE_L2_MP_P6","left":"one moment","right":"одну минуту"},{"id":"BEBTE_L2_MP_P7","left":"Please hold","right":"Пожалуйста, подождите"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11091e61-4b13-5d56-b8ff-690ca6d7a9a8', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “speak to.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEBTE_L2_Q_A","is_correct":true,"text":"speak to"},{"id":"BEBTE_L2_Q_B","is_correct":false,"text":"hold"},{"id":"BEBTE_L2_Q_C","is_correct":false,"text":"line"}],"question":"Which phrase is connected with “speak to”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('595ba27f-c08b-5647-b6ec-c29f1237a90e', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Can I speak to Mr Brown?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Можно поговорить с мистером Брауном?","target_language":"en","word_bank":["Brown?","Mr","to","speak","I","Can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12a67bff-e4b0-5fe7-a225-18c127e3151d', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"hold","instruction":"Выберите подходящее слово.","options":["hold","order","send"],"sentence_template":"Please ___ one moment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e20f9a6-964e-5d0f-8a00-3f64397f07b1', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","hold","one","moment."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["moment.","one","hold","Please"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('934541d0-4720-50ee-b3e0-0a974b840d64', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please hold. I will check if Mr Brown is available.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61987010-3516-556c-b352-0be79748b78b', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Can I speak to Mr Brown?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Можно поговорить с мистером Брауном?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82477c08-8c30-5f4e-bf28-dfeb95728890', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Caller","text":"Can I speak to Ms Green?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"One moment, please.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"One moment, please."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Asking for Someone"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3156c36-9142-5065-b175-f9a9d8fcf279', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hold” means to wait on the telephone.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBTE_L2_D_A","is_correct":true,"text":"To wait on the telephone"},{"id":"BEBTE_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEBTE_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"hold"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ef48d38-2450-5daf-8695-e59e95b04b1e', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please hold one moment.","explanation":"The missing word is “hold.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hold","id":"BEBTE_L2_LW_A","is_correct":true},{"audio_text":"order","id":"BEBTE_L2_LW_B","is_correct":false},{"audio_text":"send","id":"BEBTE_L2_LW_C","is_correct":false}],"sentence_template":"Please ___ one moment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c84b2f4e-8341-587d-b490-5a1ac00e6997', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"hold","explanation":"The complete sentence is “Please hold one moment.”","hint_prefix":"ho","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please ___ one moment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32ef8dd9-78b5-529d-bd24-3307052f68e6', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"speak to","id":"BEBTE_L2_VM_P1","text":"speak to"},{"audio_text":"hold","id":"BEBTE_L2_VM_P2","text":"hold"},{"audio_text":"line","id":"BEBTE_L2_VM_P3","text":"line"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('310a791a-8848-565e-a548-22b0b41e8af1', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Caller","text":"Can I speak to Ms Green?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEBTE_L2_C_A","is_correct":true,"text":"One moment, please."},{"id":"BEBTE_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEBTE_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', '4127d67a-d01d-59d3-984d-be082a2ba9bf', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', NULL, 'Принимаем сообщение', 'Научиться использовать простые деловые фразы по теме «Принимаем сообщение».', '{"en":"Taking a Message","ru":"Принимаем сообщение"}'::jsonb, '{"en":"Learn to use simple business phrases for taking a message.","ru":"Научиться использовать простые деловые фразы по теме «Принимаем сообщение»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d1dfc02-71f1-5fe8-8bd0-a1b8be51a519', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBTE_L3_MP_P1","left":"message","right":"сообщение"},{"id":"BEBTE_L3_MP_P2","left":"name","right":"имя"},{"id":"BEBTE_L3_MP_P3","left":"number","right":"номер"},{"id":"BEBTE_L3_MP_P4","left":"call back","right":"перезвонить"},{"id":"BEBTE_L3_MP_P5","left":"not available","right":"недоступен"},{"id":"BEBTE_L3_MP_P6","left":"take a message","right":"принять сообщение"},{"id":"BEBTE_L3_MP_P7","left":"leave a message","right":"оставить сообщение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95fcc11e-9df2-550c-97d7-f9657733c5aa', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “message.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEBTE_L3_Q_A","is_correct":true,"text":"message"},{"id":"BEBTE_L3_Q_B","is_correct":false,"text":"name"},{"id":"BEBTE_L3_Q_C","is_correct":false,"text":"number"}],"question":"Which phrase is connected with “message”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1575f251-22dd-5704-af42-cc81d697fe06', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I would like to leave a message.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я хочу оставить сообщение.","target_language":"en","word_bank":["message.","a","leave","to","like","would","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('160c3fc5-9a9d-5147-b83b-7f17a50d2d44', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"message","instruction":"Выберите подходящее слово.","options":["message","meeting","receipt"],"sentence_template":"Can I take a ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95a03eef-0cf1-5079-aa64-97d60094b6f4', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Can","I","take","a","message?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["message?","a","take","I","Can"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ee3d849-afd3-55af-afbf-a7f6d56a420b', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Mr Brown is not available. Can I take a message?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fece9749-bbf1-5664-8cec-179902f1ee76', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I would like to leave a message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я хочу оставить сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a231ea58-2574-51fe-a213-5a529a11561c', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Assistant","text":"Can I have your phone number?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. It is 555 210.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. It is 555 210."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Taking a Message"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0de1aaa-4267-5919-b829-7a8d75edb1f1', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“message” means information left for a person who is not available.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBTE_L3_D_A","is_correct":true,"text":"Information left for a person who is not available"},{"id":"BEBTE_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEBTE_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"message"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('304b5282-f1fb-591a-8dcb-edad03d9d4b7', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Can I take a message?","explanation":"The missing word is “message.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"message","id":"BEBTE_L3_LW_A","is_correct":true},{"audio_text":"meeting","id":"BEBTE_L3_LW_B","is_correct":false},{"audio_text":"receipt","id":"BEBTE_L3_LW_C","is_correct":false}],"sentence_template":"Can I take a ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89bf1cb0-611d-5eb8-8444-210b81b79197', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"message","explanation":"The complete sentence is “Can I take a message?”","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can I take a ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b22b7c0e-157a-58ce-8109-871134d5fc41', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"message","id":"BEBTE_L3_VM_P1","text":"message"},{"audio_text":"name","id":"BEBTE_L3_VM_P2","text":"name"},{"audio_text":"number","id":"BEBTE_L3_VM_P3","text":"number"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88ba5e29-43a5-5576-92c1-e05ae13d4cf5', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"Can I have your phone number?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEBTE_L3_C_A","is_correct":true,"text":"Yes. It is 555 210."},{"id":"BEBTE_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEBTE_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c14a45b8-a1fb-5fb9-8937-c22f3bf6680b', 'en', 'call', 'звонок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9f488aa8-901e-5911-8e51-5d01c34c85f7', 'en', 'telephone', 'телефон', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5055639a-2206-5c75-8bb8-807c6f2aaef6', 'en', 'answer', 'отвечать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4b075ea3-be60-56ed-9e78-548a4421b801', 'en', 'speaking', 'у телефона', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef25085d-6383-517b-9e3c-3bb80c986a0c', 'en', 'company name', 'название компании', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fab73be-118d-525d-9e96-6eefd9a2b4b4', 'en', 'How can I help?', 'Чем могу помочь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff3b65d1-08b8-5c83-8372-72477a97297f', 'en', 'speak to', 'поговорить с', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b749ba8-8a30-537e-ac30-777449ef68a7', 'en', 'hold', 'подождать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4b5e734-55c5-5d69-a97c-ce3efd2f78e5', 'en', 'line', 'линия', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c21e899b-7be3-524a-88f1-c45d91a41d8c', 'en', 'available', 'доступен', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e7121b2-a408-5c04-b26e-bea2a5591670', 'en', 'office', 'офис', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30449208-332a-5bab-92ad-435a64860ae3', 'en', 'one moment', 'одну минуту', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f1a9a822-332b-5a11-9a71-6f2acf2b0287', 'en', 'Please hold', 'Пожалуйста, подождите', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a644e28-5aaf-565d-b5a7-225c72852c3b', 'en', 'message', 'сообщение', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4060b2dd-4a78-5bae-b4fb-33a4613c94aa', 'en', 'name', 'имя', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e24687f5-d2c1-5c96-ac35-d72113c622a2', 'en', 'number', 'номер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('917acfcd-7456-5cb8-812a-86992013f465', 'en', 'call back', 'перезвонить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ced1c26-ae60-5b41-ba84-512594268d8a', 'en', 'not available', 'недоступен', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53a618e7-70b7-522d-a6a9-13a3f07e5f97', 'en', 'take a message', 'принять сообщение', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca518c2c-2e11-5ae9-8807-321ad333c9cd', 'en', 'leave a message', 'оставить сообщение', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'call' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'telephone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'speaking' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'company name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How can I help?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '5c1c2b8f-36c0-52d1-8ccb-7aeacafcd788', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'speak to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'available' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'one moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '4127d67a-d01d-59d3-984d-be082a2ba9bf', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please hold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'call back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'not available' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'take a message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2142656a-469d-5fdb-a01a-eb5ad5dd0d7e', id, '9b46e1ef-4742-5b02-a63e-acc2ee0d2ea8', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'leave a message' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
