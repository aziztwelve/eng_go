-- Track: A1_BUSINESS_ENGLISH_APPOINTMENTS_AND_SCHEDULES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b354988a-ba63-56fb-b837-4ea93a2d5183', 'A1_BUSINESS_ENGLISH_APPOINTMENTS_AND_SCHEDULES', 'Встречи и расписания', 'Научитесь назначать встречи и говорить о простом деловом расписании.', '{"en":"Appointments and Schedules","ru":"Встречи и расписания"}'::jsonb, '{"en":"Learn to arrange appointments and discuss a simple business schedule.","ru":"Научитесь назначать встречи и говорить о простом деловом расписании."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1ed059af-4db8-5515-afcd-77265efb7454', NULL, 'Назначение встречи', 'Научиться использовать простые деловые фразы по теме «Назначение встречи».', '{"en":"Making an Appointment","ru":"Назначение встречи"}'::jsonb, '{"en":"Learn to use simple business phrases for making an appointment.","ru":"Научиться использовать простые деловые фразы по теме «Назначение встречи»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fad6545-2185-5149-93cd-3316f35f5bb8', '1ed059af-4db8-5515-afcd-77265efb7454', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEAAS_L1_MP_P1","left":"appointment","right":"деловая встреча"},{"id":"BEAAS_L1_MP_P2","left":"meet","right":"встретиться"},{"id":"BEAAS_L1_MP_P3","left":"available","right":"свободен"},{"id":"BEAAS_L1_MP_P4","left":"Monday","right":"понедельник"},{"id":"BEAAS_L1_MP_P5","left":"morning","right":"утро"},{"id":"BEAAS_L1_MP_P6","left":"afternoon","right":"день"},{"id":"BEAAS_L1_MP_P7","left":"Are you free?","right":"Вы свободны?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4a66b8d-7d5a-54cb-a85e-e2cf90a2c352', '1ed059af-4db8-5515-afcd-77265efb7454', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “appointment.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEAAS_L1_Q_A","is_correct":true,"text":"appointment"},{"id":"BEAAS_L1_Q_B","is_correct":false,"text":"meet"},{"id":"BEAAS_L1_Q_C","is_correct":false,"text":"available"}],"question":"Which phrase is connected with “appointment”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b5e75f9-d7ac-59a8-93e5-f4237ffce359', '1ed059af-4db8-5515-afcd-77265efb7454', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Let us meet on Monday.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Давайте встретимся в понедельник.","target_language":"en","word_bank":["Monday.","on","meet","us","Let"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b749bedd-4bbd-57a4-aaaa-59a1a508b69f', '1ed059af-4db8-5515-afcd-77265efb7454', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"available","instruction":"Выберите подходящее слово.","options":["available","closed","wrong"],"sentence_template":"Are you ___ at ten?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49ae5974-df9e-52ae-ab0a-5d61acae38e8', '1ed059af-4db8-5515-afcd-77265efb7454', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Are","you","available","at","ten?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["ten?","at","available","you","Are"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e3cc328-4770-5c46-b78d-19d726278ba0', '1ed059af-4db8-5515-afcd-77265efb7454', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I would like to make an appointment for Monday morning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2240bb10-7664-587f-92d2-c61144818069', '1ed059af-4db8-5515-afcd-77265efb7454', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Let us meet on Monday.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Давайте встретимся в понедельник."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b56c324-ed11-5129-b538-b5b51189e090', '1ed059af-4db8-5515-afcd-77265efb7454', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Client","text":"Are you free on Tuesday?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. I am free in the afternoon.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. I am free in the afternoon."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Making an Appointment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0a05404-7d89-54e7-90e8-76bcadbe7377', '1ed059af-4db8-5515-afcd-77265efb7454', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“appointment” means an arranged time to meet someone.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEAAS_L1_D_A","is_correct":true,"text":"An arranged time to meet someone"},{"id":"BEAAS_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEAAS_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"appointment"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bff8881d-1436-5212-8b16-a0d17ef57a3f', '1ed059af-4db8-5515-afcd-77265efb7454', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Are you available at ten?","explanation":"The missing word is “available.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"available","id":"BEAAS_L1_LW_A","is_correct":true},{"audio_text":"closed","id":"BEAAS_L1_LW_B","is_correct":false},{"audio_text":"wrong","id":"BEAAS_L1_LW_C","is_correct":false}],"sentence_template":"Are you ___ at ten?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef719ad9-1e9d-592a-93ed-d80b2d74e09e', '1ed059af-4db8-5515-afcd-77265efb7454', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"available","explanation":"The complete sentence is “Are you available at ten?”","hint_prefix":"av","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Are you ___ at ten?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa01c2be-6cc8-5567-9274-ba27d7c8f404', '1ed059af-4db8-5515-afcd-77265efb7454', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"appointment","id":"BEAAS_L1_VM_P1","text":"appointment"},{"audio_text":"meet","id":"BEAAS_L1_VM_P2","text":"meet"},{"audio_text":"available","id":"BEAAS_L1_VM_P3","text":"available"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aba2120f-0ff7-5688-ad3f-08203ee71d88', '1ed059af-4db8-5515-afcd-77265efb7454', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Client","text":"Are you free on Tuesday?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEAAS_L1_C_A","is_correct":true,"text":"Yes. I am free in the afternoon."},{"id":"BEAAS_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEAAS_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b354988a-ba63-56fb-b837-4ea93a2d5183', '1ed059af-4db8-5515-afcd-77265efb7454', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5dfb9cd4-b806-5c75-abf4-42cfb39cd428', NULL, 'Время и календарь', 'Научиться использовать простые деловые фразы по теме «Время и календарь».', '{"en":"Times and Calendars","ru":"Время и календарь"}'::jsonb, '{"en":"Learn to use simple business phrases for times and calendars.","ru":"Научиться использовать простые деловые фразы по теме «Время и календарь»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2dcc433a-7a8b-551c-aec1-4b668075e45b', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEAAS_L2_MP_P1","left":"calendar","right":"календарь"},{"id":"BEAAS_L2_MP_P2","left":"schedule","right":"расписание"},{"id":"BEAAS_L2_MP_P3","left":"at nine","right":"в девять"},{"id":"BEAAS_L2_MP_P4","left":"before lunch","right":"до обеда"},{"id":"BEAAS_L2_MP_P5","left":"after lunch","right":"после обеда"},{"id":"BEAAS_L2_MP_P6","left":"today","right":"сегодня"},{"id":"BEAAS_L2_MP_P7","left":"tomorrow","right":"завтра"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fea94076-7961-558a-8610-396be5b0b50c', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “calendar.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEAAS_L2_Q_A","is_correct":true,"text":"calendar"},{"id":"BEAAS_L2_Q_B","is_correct":false,"text":"schedule"},{"id":"BEAAS_L2_Q_C","is_correct":false,"text":"at nine"}],"question":"Which phrase is connected with “calendar”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d1c8b03-54fe-5248-8989-074511eef213', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The meeting is at nine.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Встреча в девять часов.","target_language":"en","word_bank":["nine.","at","is","meeting","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1af0bec9-6896-5144-b94e-7f8b01313abc', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"lunch","instruction":"Выберите подходящее слово.","options":["lunch","invoice","printer"],"sentence_template":"The call is after ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('619facdb-d518-5ae6-8623-dcb10a99ebf7', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","call","is","after","lunch."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["lunch.","after","is","call","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98705724-275d-5cfd-a9d9-bd271670e7bd', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My schedule is busy before lunch.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7ba99ec-cb45-5e35-8cef-8347eefeaa2f', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The meeting is at nine.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Встреча в девять часов."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb1bb478-e781-5d9e-8c60-cece35929080', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"What time is the appointment?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"It is at nine o’clock.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"It is at nine o’clock."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Times and Calendars"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85cad4e6-cf65-5540-a47a-4c51fa194655', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“schedule” means a plan showing activities and times.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEAAS_L2_D_A","is_correct":true,"text":"A plan showing activities and times"},{"id":"BEAAS_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEAAS_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"schedule"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('793cf138-3765-568e-b781-f6b5799f39d1', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The call is after lunch.","explanation":"The missing word is “lunch.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"lunch","id":"BEAAS_L2_LW_A","is_correct":true},{"audio_text":"invoice","id":"BEAAS_L2_LW_B","is_correct":false},{"audio_text":"printer","id":"BEAAS_L2_LW_C","is_correct":false}],"sentence_template":"The call is after ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c0de374-c58a-54ad-bcc9-f6aa74567c6c', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"lunch","explanation":"The complete sentence is “The call is after lunch.”","hint_prefix":"lu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The call is after ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('689733e5-2ffd-50cb-bf3c-26f86ba3346b', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"calendar","id":"BEAAS_L2_VM_P1","text":"calendar"},{"audio_text":"schedule","id":"BEAAS_L2_VM_P2","text":"schedule"},{"audio_text":"at nine","id":"BEAAS_L2_VM_P3","text":"at nine"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a96b1ebc-e608-572c-b8c9-7ab86744d72e', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"What time is the appointment?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEAAS_L2_C_A","is_correct":true,"text":"It is at nine o’clock."},{"id":"BEAAS_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEAAS_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b354988a-ba63-56fb-b837-4ea93a2d5183', '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', NULL, 'Изменение встречи', 'Научиться использовать простые деловые фразы по теме «Изменение встречи».', '{"en":"Changing an Appointment","ru":"Изменение встречи"}'::jsonb, '{"en":"Learn to use simple business phrases for changing an appointment.","ru":"Научиться использовать простые деловые фразы по теме «Изменение встречи»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5265b8f5-8249-5323-96bb-b72f465b9868', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEAAS_L3_MP_P1","left":"change","right":"изменить"},{"id":"BEAAS_L3_MP_P2","left":"cancel","right":"отменить"},{"id":"BEAAS_L3_MP_P3","left":"move","right":"перенести"},{"id":"BEAAS_L3_MP_P4","left":"later","right":"позже"},{"id":"BEAAS_L3_MP_P5","left":"earlier","right":"раньше"},{"id":"BEAAS_L3_MP_P6","left":"new time","right":"новое время"},{"id":"BEAAS_L3_MP_P7","left":"Is Friday okay?","right":"Пятница подходит?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21ecbe09-319e-5d9f-abcb-91f4ca0ad371', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “change.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEAAS_L3_Q_A","is_correct":true,"text":"change"},{"id":"BEAAS_L3_Q_B","is_correct":false,"text":"cancel"},{"id":"BEAAS_L3_Q_C","is_correct":false,"text":"move"}],"question":"Which phrase is connected with “change”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41d850ce-4e68-57f1-afbf-5baf54b22656', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Can we move the meeting?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Можно перенести встречу?","target_language":"en","word_bank":["meeting?","the","move","we","Can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f88a7ab-7104-58fc-90f5-9ed8f658dcba', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"later","instruction":"Выберите подходящее слово.","options":["later","cash","driver"],"sentence_template":"Can we meet ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ef60051-1189-5bf4-b6af-72098ee8d764', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Can","we","meet","later."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["later.","meet","we","Can"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a64511f0-f9d1-5ab8-a7e6-785460c887c0', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am sorry, but I need to change our appointment.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e51b931e-4d06-52f5-b417-982df63b74cf', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Can we move the meeting?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Можно перенести встречу?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66543027-f2c6-56a9-b0ba-4a6f32e71085', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Client","text":"Can we meet on Friday instead?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes. Friday is okay.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes. Friday is okay."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Changing an Appointment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23425778-2653-5edb-ba2a-7dfc20330a35', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cancel” means to say that a planned event will not happen.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEAAS_L3_D_A","is_correct":true,"text":"To say that a planned event will not happen"},{"id":"BEAAS_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEAAS_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"cancel"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1934409d-df19-5205-ae43-2e538842b831', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Can we meet later.","explanation":"The missing word is “later.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"later","id":"BEAAS_L3_LW_A","is_correct":true},{"audio_text":"cash","id":"BEAAS_L3_LW_B","is_correct":false},{"audio_text":"driver","id":"BEAAS_L3_LW_C","is_correct":false}],"sentence_template":"Can we meet ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a587b0a1-8e14-574b-b6ff-10b34c1928c5', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"later","explanation":"The complete sentence is “Can we meet later.”","hint_prefix":"la","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can we meet ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4af1d46-4c5a-5f32-b5d9-2a8ae842b583', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"change","id":"BEAAS_L3_VM_P1","text":"change"},{"audio_text":"cancel","id":"BEAAS_L3_VM_P2","text":"cancel"},{"audio_text":"move","id":"BEAAS_L3_VM_P3","text":"move"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0270b60-1b65-51e6-a3e9-67b071bc6336', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Client","text":"Can we meet on Friday instead?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEAAS_L3_C_A","is_correct":true,"text":"Yes. Friday is okay."},{"id":"BEAAS_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEAAS_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b354988a-ba63-56fb-b837-4ea93a2d5183', '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('784189e7-2d12-533c-a9a5-6e32993fb411', 'en', 'appointment', 'деловая встреча', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39db6cf9-cf7c-59c7-87a3-6202279f17c6', 'en', 'meet', 'встретиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c21e899b-7be3-524a-88f1-c45d91a41d8c', 'en', 'available', 'свободен', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1fdb0791-5276-5bee-89c9-d1f5c26924a0', 'en', 'Monday', 'понедельник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6677565-4fe9-533d-a9e4-5aae2162b24e', 'en', 'morning', 'утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cd3f771-4f41-56c9-972b-8e849cb916b4', 'en', 'afternoon', 'день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02befadb-ae58-5174-9de6-361c921d5205', 'en', 'Are you free?', 'Вы свободны?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0cab6dad-b67d-5982-8150-9c12e58e63d4', 'en', 'calendar', 'календарь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d002d42c-cc36-5eb2-992f-c808826121c6', 'en', 'schedule', 'расписание', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d7d89df-2e7d-5265-b7c2-dc389a2f9812', 'en', 'at nine', 'в девять', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51df78a0-c409-5dee-be83-293be2f9f50d', 'en', 'before lunch', 'до обеда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f5c17e7-cba3-534c-b1eb-282c6d0cd95a', 'en', 'after lunch', 'после обеда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63596fa-e1a7-596d-839b-65eddde8d504', 'en', 'today', 'сегодня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d87e567-9d2d-55d9-ba3e-587332645ba9', 'en', 'tomorrow', 'завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('29edec5a-8470-5156-93fd-8c23d8cb4246', 'en', 'change', 'изменить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c2f38158-0829-5a33-b313-0ae952d23e5a', 'en', 'cancel', 'отменить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fef18e84-c1fa-51ec-bacb-e8df16105fd4', 'en', 'move', 'перенести', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2031a517-3fd2-5477-ad5d-426925135c6c', 'en', 'later', 'позже', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91aa292d-0d4b-58f7-a029-07d791531f6b', 'en', 'earlier', 'раньше', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('43c936ab-a722-5e46-a0c4-04d10ac03957', 'en', 'new time', 'новое время', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4637c4f-663b-500f-afaa-9ae7cdc52774', 'en', 'Is Friday okay?', 'Пятница подходит?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'appointment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'meet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'available' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Monday' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '1ed059af-4db8-5515-afcd-77265efb7454', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Are you free?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'calendar' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'schedule' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'at nine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'before lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'after lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '5dfb9cd4-b806-5c75-abf4-42cfb39cd428', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cancel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'move' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'later' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'earlier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'new time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b354988a-ba63-56fb-b837-4ea93a2d5183', id, '0ba1a5f5-de7a-5ecb-a471-fc4c0d9a8949', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Is Friday okay?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
