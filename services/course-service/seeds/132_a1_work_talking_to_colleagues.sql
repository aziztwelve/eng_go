-- Track: A1_WORK_TALKING_TO_COLLEAGUES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e4207500-b1e4-5d1f-a792-db902bdae441', 'A1_WORK_TALKING_TO_COLLEAGUES', 'Общение с коллегами', 'Научитесь приветствовать коллег, просить о помощи и вести короткий дружелюбный разговор.', 'en', 'A1', '', ARRAY['work']::text[], true, 132, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b6d5e6f5-728a-5081-8b6f-8c6f109c619a', NULL, 'Приветствие коллег', 'Научиться приветствовать коллег и начинать короткий рабочий разговор.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b97b973f-6345-5908-931b-47d885df79e8', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WTC_L1_MP_P1","left":"Good morning","right":"Доброе утро"},{"id":"WTC_L1_MP_P2","left":"How are you?","right":"Как дела?"},{"id":"WTC_L1_MP_P3","left":"I am fine","right":"У меня всё хорошо"},{"id":"WTC_L1_MP_P4","left":"Nice to see you","right":"Рад вас видеть"},{"id":"WTC_L1_MP_P5","left":"How is work?","right":"Как работа?"},{"id":"WTC_L1_MP_P6","left":"It is good","right":"Всё хорошо"},{"id":"WTC_L1_MP_P7","left":"Have a good day","right":"Хорошего дня"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('de656d78-48bb-56c6-bc69-7ce0920d9735', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'quiz', 'Проверьте себя', '{"explanation":"“Good morning” is a natural greeting at the start of the workday.","instruction":"Выберите правильный ответ.","options":[{"id":"WTC_L1_Q_A","is_correct":true,"text":"Good morning."},{"id":"WTC_L1_Q_B","is_correct":false,"text":"Good night."},{"id":"WTC_L1_Q_C","is_correct":false,"text":"Go home."}],"question":"What is a natural morning greeting for a colleague?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10b5de2f-337d-5dbe-a03e-a41c3fc3fb1e', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'translate', 'Переведите', '{"correct_translation":"Nice to see you.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Рад вас видеть.","target_language":"en","word_bank":["you.","see","to","Nice"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ce802269-8aae-5e78-a673-a7a1d8d636df', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"you","instruction":"Выберите подходящее слово.","options":["you","work","day"],"sentence_template":"How are ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5df74533-bdc1-5a87-8ed0-ff7aa7d6b650', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'tap_words', 'Соберите фразу', '{"correct_words":["Have","a","good","day."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["good","a","Have","day."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('db63b573-b61a-58aa-b435-1c3256e96718', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'listening', 'Послушайте', '{"audio_text":"Good morning. How are you?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('523df6c1-f870-5fd1-81cb-f67fd331b924', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'listening_shadowing', 'Повторите', '{"audio_text":"Good morning, Anna. Nice to see you.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доброе утро, Анна. Рад вас видеть."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('15bcd65f-eeaa-52af-957c-dace7092e710', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"Good morning, Eva. How are you?","translation":"Доброе утро, Ева. Как дела?","type":"dialogue"},{"character":"Eva","text":"I am fine, thank you.","translation":"У меня всё хорошо, спасибо.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How are you?"},{"is_correct":false,"text":"Where is your morning?"}],"text":"What should Eva ask Ben?","type":"choice"}],"title":"Monday Morning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1ce82776-0435-51de-983c-b866eceae991', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'choose_definition', 'Определение', '{"explanation":"A colleague is a person who works with you.","instruction":"Выберите значение.","language":"en","options":[{"id":"WTC_L1_D_A","is_correct":true,"text":"A person who works with you"},{"id":"WTC_L1_D_B","is_correct":false,"text":"A person who buys something"},{"id":"WTC_L1_D_C","is_correct":false,"text":"A place where people work"}],"word":"colleague"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2cec0482-aa47-56cd-8691-417e1bd49803', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'listen_choose_word', 'Слово', '{"audio_text":"Nice to see you.","explanation":"The missing word is “you.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"you","id":"WTC_L1_LW_A","is_correct":true},{"audio_text":"office","id":"WTC_L1_LW_B","is_correct":false},{"audio_text":"five","id":"WTC_L1_LW_C","is_correct":false}],"sentence_template":"Nice to see ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c3422dc6-b0b4-5af5-921c-d0f01d747d6d', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'missing_word', 'Впишите', '{"correct_answer":"morning","explanation":"The complete greeting is “Good morning.”","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Good ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a8f8ffb5-7423-5693-8f2c-c59d9c907307', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'match_pairs_voice', 'Звук', '{"explanation":"Match each workplace phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Good morning","id":"WTC_L1_VM_P1","text":"Good morning"},{"audio_text":"How are you?","id":"WTC_L1_VM_P2","text":"How are you?"},{"audio_text":"Have a good day","id":"WTC_L1_VM_P3","text":"Have a good day"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a2c3164d-b199-5eec-ac76-68761a6dffd2', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"Good morning! How are you?"}],"explanation":"This is a natural friendly response to a colleague.","instruction":"Ответьте.","options":[{"id":"WTC_L1_C_A","is_correct":true,"text":"I am fine, thank you. And you?"},{"id":"WTC_L1_C_B","is_correct":false,"text":"I am from morning."},{"id":"WTC_L1_C_C","is_correct":false,"text":"My work is five years old."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e4207500-b1e4-5d1f-a792-db902bdae441', 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('a7d4b520-0348-5777-bf46-84c20e734710', NULL, 'Простые просьбы на работе', 'Научиться просить коллегу о простой помощи и отвечать на просьбу.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('71e58e70-877e-5d28-aa47-8a3905fb00e8', 'a7d4b520-0348-5777-bf46-84c20e734710', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WTC_L2_MP_P1","left":"Can you help me?","right":"Вы можете мне помочь?"},{"id":"WTC_L2_MP_P2","left":"Of course","right":"Конечно"},{"id":"WTC_L2_MP_P3","left":"Please send this","right":"Пожалуйста, отправьте это"},{"id":"WTC_L2_MP_P4","left":"Please call Anna","right":"Пожалуйста, позвоните Анне"},{"id":"WTC_L2_MP_P5","left":"One moment","right":"Одну минуту"},{"id":"WTC_L2_MP_P6","left":"Thank you","right":"Спасибо"},{"id":"WTC_L2_MP_P7","left":"No problem","right":"Без проблем"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('00f8a24f-02f1-527e-b691-9be7b157f058', 'a7d4b520-0348-5777-bf46-84c20e734710', 'quiz', 'Проверьте себя', '{"explanation":"“Of course” is a natural positive reply to a request for help.","instruction":"Выберите правильный ответ.","options":[{"id":"WTC_L2_Q_A","is_correct":true,"text":"Of course."},{"id":"WTC_L2_Q_B","is_correct":false,"text":"Good night."},{"id":"WTC_L2_Q_C","is_correct":false,"text":"I am help."}],"question":"What is a helpful reply to “Can you help me?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('16860bc5-f4dc-57e0-8a2a-54230d791b09', 'a7d4b520-0348-5777-bf46-84c20e734710', 'translate', 'Переведите', '{"correct_translation":"Please send this message.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, отправьте это сообщение.","target_language":"en","word_bank":["message.","this","send","Please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f8feafb9-e81e-5db3-a23a-7b15f6092e9c', 'a7d4b520-0348-5777-bf46-84c20e734710', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"call","instruction":"Выберите подходящее слово.","options":["call","office","lunch"],"sentence_template":"Can you ___ Anna?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3748a9b2-c24e-5c40-aaa7-ff46aa0c0dbc', 'a7d4b520-0348-5777-bf46-84c20e734710', 'tap_words', 'Соберите фразу', '{"correct_words":["Please","wait","one","moment."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["moment.","one","Please","wait"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('28b78bad-c23d-5210-b3d2-3858fba6e30a', 'a7d4b520-0348-5777-bf46-84c20e734710', 'listening', 'Послушайте', '{"audio_text":"Can you help me, please?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('63603cb4-6bbc-5ccd-ad3e-29ed435888f0', 'a7d4b520-0348-5777-bf46-84c20e734710', 'listening_shadowing', 'Повторите', '{"audio_text":"Of course. Please wait one moment.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Конечно. Пожалуйста, подождите одну минуту."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('36082bca-258c-5a05-a138-02180a5a2f86', 'a7d4b520-0348-5777-bf46-84c20e734710', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Tom","text":"Can you send this email, please?","translation":"Можешь отправить это письмо, пожалуйста?","type":"dialogue"},{"character":"Mia","text":"Of course.","translation":"Конечно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"The email is a colleague."}],"text":"What should Tom say?","type":"choice"}],"title":"A Quick Request"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('38cc305c-b2e0-5fd7-b7d6-04a615aca428', 'a7d4b520-0348-5777-bf46-84c20e734710', 'choose_definition', 'Определение', '{"explanation":"“Send” means to make a message go to another person.","instruction":"Выберите значение.","language":"en","options":[{"id":"WTC_L2_D_A","is_correct":true,"text":"To make a message go to another person"},{"id":"WTC_L2_D_B","is_correct":false,"text":"To speak to someone by phone"},{"id":"WTC_L2_D_C","is_correct":false,"text":"To stop working for lunch"}],"word":"send"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a13a2bed-b881-5550-bf89-36c30ed42d22', 'a7d4b520-0348-5777-bf46-84c20e734710', 'listen_choose_word', 'Слово', '{"audio_text":"Please call Anna.","explanation":"The missing word is “call.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"call","id":"WTC_L2_LW_A","is_correct":true},{"audio_text":"busy","id":"WTC_L2_LW_B","is_correct":false},{"audio_text":"morning","id":"WTC_L2_LW_C","is_correct":false}],"sentence_template":"Please ___ Anna."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f2429261-09d0-5dd6-981c-f0bac46a8fdb', 'a7d4b520-0348-5777-bf46-84c20e734710', 'missing_word', 'Впишите', '{"correct_answer":"problem","explanation":"The complete phrase is “No problem.”","hint_prefix":"pr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"No ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e68c3b95-5863-5460-a342-22b1328f5820', 'a7d4b520-0348-5777-bf46-84c20e734710', 'match_pairs_voice', 'Звук', '{"explanation":"Match each workplace phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Can you help me?","id":"WTC_L2_VM_P1","text":"Can you help me?"},{"audio_text":"Of course","id":"WTC_L2_VM_P2","text":"Of course"},{"audio_text":"No problem","id":"WTC_L2_VM_P3","text":"No problem"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1433e557-0658-5ff4-bbf3-fdaa21ae16df', 'a7d4b520-0348-5777-bf46-84c20e734710', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"Can you help me with this task?"}],"explanation":"“Of course” is a natural way to accept the request.","instruction":"Ответьте.","options":[{"id":"WTC_L2_C_A","is_correct":true,"text":"Of course."},{"id":"WTC_L2_C_B","is_correct":false,"text":"I am a task."},{"id":"WTC_L2_C_C","is_correct":false,"text":"My help is Monday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e4207500-b1e4-5d1f-a792-db902bdae441', 'a7d4b520-0348-5777-bf46-84c20e734710', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', NULL, 'Короткий разговор с коллегой', 'Научиться поддерживать короткий дружелюбный разговор во время перерыва.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9fdf221b-8219-5d84-bdc4-5c571eb0ade8', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WTC_L3_MP_P1","left":"coffee break","right":"перерыв на кофе"},{"id":"WTC_L3_MP_P2","left":"lunch break","right":"обеденный перерыв"},{"id":"WTC_L3_MP_P3","left":"Are you busy?","right":"Вы заняты?"},{"id":"WTC_L3_MP_P4","left":"I am free","right":"Я свободен"},{"id":"WTC_L3_MP_P5","left":"Would you like coffee?","right":"Хотите кофе?"},{"id":"WTC_L3_MP_P6","left":"Yes, please","right":"Да, пожалуйста"},{"id":"WTC_L3_MP_P7","left":"No, thank you","right":"Нет, спасибо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bf0c5dd5-7491-50a9-86e2-2b08d434434d', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'quiz', 'Проверьте себя', '{"explanation":"“Would you like coffee?” is a polite offer.","instruction":"Выберите правильный ответ.","options":[{"id":"WTC_L3_Q_A","is_correct":true,"text":"Would you like coffee?"},{"id":"WTC_L3_Q_B","is_correct":false,"text":"Where do you work coffee?"},{"id":"WTC_L3_Q_C","is_correct":false,"text":"Can coffee call?"}],"question":"What can you ask when offering a drink?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3a9f550e-5d1a-58d6-b6f9-645aec583ba3', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'translate', 'Переведите', '{"correct_translation":"Are you busy?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вы заняты?","target_language":"en","word_bank":["busy?","you","Are"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ad2f2378-3905-503b-9f1e-8d28a3058b4c', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"free","instruction":"Выберите подходящее слово.","options":["free","coffee","email"],"sentence_template":"I am ___ now."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b40eb7b0-8937-5200-aedb-a961350dc177', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'tap_words', 'Соберите фразу', '{"correct_words":["Would","you","like","coffee?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["coffee?","like","you","Would"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('df32861a-d89d-55cd-a22e-e9f5eb907437', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'listening', 'Послушайте', '{"audio_text":"Would you like some coffee?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c24da78b-87f0-52f4-8c16-93d85468fcfa', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'listening_shadowing', 'Повторите', '{"audio_text":"I am free now. Let us take a coffee break.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я сейчас свободен. Давайте сделаем перерыв на кофе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cfdd4317-1398-5bec-9364-811a1ba9f013', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sara","text":"Are you busy now?","translation":"Ты сейчас занята?","type":"dialogue"},{"character":"Lena","text":"No, I am free.","translation":"Нет, я свободна.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Would you like coffee?"},{"is_correct":false,"text":"Is your coffee a manager?"}],"text":"What should Sara ask?","type":"choice"}],"title":"Coffee Break"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b93b6b2e-2e9e-51b7-914a-a897d716d340', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'choose_definition', 'Определение', '{"explanation":"“Busy” means having work or things to do.","instruction":"Выберите значение.","language":"en","options":[{"id":"WTC_L3_D_A","is_correct":true,"text":"Having work or things to do"},{"id":"WTC_L3_D_B","is_correct":false,"text":"Having no work to do"},{"id":"WTC_L3_D_C","is_correct":false,"text":"A short time for coffee"}],"word":"busy"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1a521a39-5725-578c-977b-be4beeca9025', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'listen_choose_word', 'Слово', '{"audio_text":"I am free now.","explanation":"The missing word is “free.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"free","id":"WTC_L3_LW_A","is_correct":true},{"audio_text":"call","id":"WTC_L3_LW_B","is_correct":false},{"audio_text":"teacher","id":"WTC_L3_LW_C","is_correct":false}],"sentence_template":"I am ___ now."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3d9cdc35-8429-5c69-a8b4-d2e70db3f62a', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'missing_word', 'Впишите', '{"correct_answer":"please","explanation":"The complete reply is “Yes, please.”","hint_prefix":"pl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Yes, ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dc7f3da7-4c8c-5edc-8523-885bab673e9a', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'match_pairs_voice', 'Звук', '{"explanation":"Match each workplace phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"coffee break","id":"WTC_L3_VM_P1","text":"coffee break"},{"audio_text":"Are you busy?","id":"WTC_L3_VM_P2","text":"Are you busy?"},{"audio_text":"I am free","id":"WTC_L3_VM_P3","text":"I am free"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9eb14219-4b13-5708-bcdd-c98a2784da23', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Mark","text":"Would you like some coffee?"}],"explanation":"“Yes, please” is a polite way to accept the offer.","instruction":"Ответьте.","options":[{"id":"WTC_L3_C_A","is_correct":true,"text":"Yes, please."},{"id":"WTC_L3_C_B","is_correct":false,"text":"I am from coffee."},{"id":"WTC_L3_C_C","is_correct":false,"text":"My lunch is a doctor."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e4207500-b1e4-5d1f-a792-db902bdae441', '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('777dc687-03b4-5f9c-8375-8f436101a373', 'en', 'Good morning', 'Доброе утро', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61154476-f1cb-5cd0-a624-108da1188823', 'en', 'How are you?', 'Как дела?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41c91633-f680-5b98-8a64-2981937e6aa6', 'en', 'I am fine', 'У меня всё хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89c97ccd-54d3-5e9e-a73a-ff91b181e8e4', 'en', 'Nice to see you', 'Рад вас видеть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02956250-84f0-5897-8f6a-96f9283b8596', 'en', 'How is work?', 'Как работа?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9785ff4c-c298-58dd-8cee-43ff36d4664b', 'en', 'It is good', 'Всё хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('826a8929-ecaf-5821-a0cc-1439b9dc0369', 'en', 'Have a good day', 'Хорошего дня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c912c497-ca0e-5b03-9644-f0ab9015efde', 'en', 'Can you help me?', 'Вы можете мне помочь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('350b8506-216e-5767-8946-a40cb9237380', 'en', 'Of course', 'Конечно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88e7c238-f2e6-5197-a31b-3f679dabc650', 'en', 'Please send this', 'Пожалуйста, отправьте это', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('635548b3-e502-50c7-9ba3-f5ea0956b9f2', 'en', 'Please call Anna', 'Пожалуйста, позвоните Анне', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('30449208-332a-5bab-92ad-435a64860ae3', 'en', 'One moment', 'Одну минуту', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0219058-deeb-5c1c-a81c-90c2e48e9163', 'en', 'No problem', 'Без проблем', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1e3a4c3-bfe2-5791-98f1-655db43feafe', 'en', 'coffee break', 'перерыв на кофе', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80cb2e8d-c66c-58a5-8efb-da0c319710d8', 'en', 'lunch break', 'обеденный перерыв', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c92adb0-c2fd-57de-8d4c-048b8c057c55', 'en', 'Are you busy?', 'Вы заняты?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('288a3e0f-e7f2-591d-ae13-6dafc72d72d4', 'en', 'I am free', 'Я свободен', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d0d7d0b-dea3-5247-bf23-4ae0dcb2e452', 'en', 'Would you like coffee?', 'Хотите кофе?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b885d185-bda8-5997-92e6-7465f62e38cb', 'en', 'Yes, please', 'Да, пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1da51328-6f83-5877-a65a-3322220ae77d', 'en', 'No, thank you', 'Нет, спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'Good morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'How are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am fine' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to see you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'How is work?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'It is good' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'b6d5e6f5-728a-5081-8b6f-8c6f109c619a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Have a good day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you help me?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Of course' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please send this' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please call Anna' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'One moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, 'a7d4b520-0348-5777-bf46-84c20e734710', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'No problem' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'coffee break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'lunch break' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Are you busy?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am free' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Would you like coffee?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, please' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e4207500-b1e4-5d1f-a792-db902bdae441', id, '1af7a2fe-ae35-5a92-9e7e-33f69f6dbada', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
