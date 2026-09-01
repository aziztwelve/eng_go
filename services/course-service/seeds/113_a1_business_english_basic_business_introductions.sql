-- Track: A1_BUSINESS_ENGLISH_BASIC_BUSINESS_INTRODUCTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e1068ea6-022d-5b5f-8bf8-cb402c01dc81', 'A1_BUSINESS_ENGLISH_BASIC_BUSINESS_INTRODUCTIONS', 'Основные деловые знакомства', 'Научитесь представляться, называть свою должность и приветствовать клиента в простой деловой ситуации.', '{"en":"Basic Business Introductions","ru":"Основные деловые знакомства"}'::jsonb, '{"en":"Learn to introduce yourself, state your role, and greet a client in a simple business situation.","ru":"Научитесь представляться, называть свою должность и приветствовать клиента в простой деловой ситуации."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 113, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3b4f8723-cb50-5d7f-87a9-29291aa58f37', NULL, 'Представляем себя', 'Научиться кратко представляться в простой деловой ситуации.', '{"en":"Introducing Yourself","ru":"Представляем себя"}'::jsonb, '{"en":"Learn to introduce yourself briefly in a simple business situation.","ru":"Научиться кратко представляться в простой деловой ситуации."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67ee15cc-6100-5128-ad48-f190079b8e7b', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBI_L1_MP_P1","left":"My name is","right":"Меня зовут"},{"id":"BEBI_L1_MP_P2","left":"I work for","right":"Я работаю в компании"},{"id":"BEBI_L1_MP_P3","left":"company","right":"компания"},{"id":"BEBI_L1_MP_P4","left":"job","right":"работа"},{"id":"BEBI_L1_MP_P5","left":"manager","right":"руководитель"},{"id":"BEBI_L1_MP_P6","left":"colleague","right":"коллега"},{"id":"BEBI_L1_MP_P7","left":"Nice to meet you","right":"Приятно познакомиться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0da1b8d-9883-587a-b0b8-d221a37f9c7b', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“My name is Anna” clearly tells another person your name.","instruction":"Выберите правильный ответ.","options":[{"id":"BEBI_L1_Q_A","is_correct":true,"text":"My name is Anna."},{"id":"BEBI_L1_Q_B","is_correct":false,"text":"Good night, office."},{"id":"BEBI_L1_Q_C","is_correct":false,"text":"I am a company."}],"question":"Which phrase begins a business introduction?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7305a5e4-2b54-5444-a1d7-5974705cea26', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My name is Ivan.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Меня зовут Иван.","target_language":"en","word_bank":["Ivan.","is","name","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e20cddd-8d81-5018-87a2-a67c53d65a93', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"for","instruction":"Выберите подходящее слово.","options":["for","at","name"],"sentence_template":"I work ___ Lumo."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b94901e8-d69e-5896-ac34-e93d72a1fe00', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Nice","to","meet","you."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["meet","to","you.","Nice"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('202470b7-eb1a-554e-be92-d24118c3d7bf', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hello. My name is Anna.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffaef12e-710e-5973-a2a6-bd8a96cc0d48', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello. My name is Anna, and I work for Lumo.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте. Меня зовут Анна, и я работаю в компании Lumo."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('885c7d82-e442-5239-b463-b81ec5d226ba', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Anna","text":"Hello. My name is Anna.","translation":"Здравствуйте. Меня зовут Анна.","type":"dialogue"},{"character":"Mark","text":"Hello, Anna. I am Mark.","translation":"Здравствуйте, Анна. Я Марк.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you."},{"is_correct":false,"text":"My company is ten years old?"}],"text":"What should Anna say?","type":"choice"}],"title":"A Business Event"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e3a7725-9429-564c-abde-a9723ec483b0', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A company is a business organization.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBI_L1_D_A","is_correct":true,"text":"A business organization"},{"id":"BEBI_L1_D_B","is_correct":false,"text":"A person who works with you"},{"id":"BEBI_L1_D_C","is_correct":false,"text":"A short work task"}],"word":"company"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7caaedb-b42c-5841-8633-4a3727e59f5a', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I work for Lumo.","explanation":"The missing word is “for.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"for","id":"BEBI_L1_LW_A","is_correct":true},{"audio_text":"name","id":"BEBI_L1_LW_B","is_correct":false},{"audio_text":"meet","id":"BEBI_L1_LW_C","is_correct":false}],"sentence_template":"I work ___ Lumo."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcc57a33-069e-56d8-b9b7-e983babf6430', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"name","explanation":"The complete sentence is “My name is Eva.”","hint_prefix":"na","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ is Eva."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e4cd49e-579b-5cb1-807d-71499befe9c9', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"My name is","id":"BEBI_L1_VM_P1","text":"My name is"},{"audio_text":"I work for","id":"BEBI_L1_VM_P2","text":"I work for"},{"audio_text":"Nice to meet you","id":"BEBI_L1_VM_P3","text":"Nice to meet you"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f03adf1-9a2a-5bb8-abea-e4d759a21452', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mr. Lee","text":"Hello. I am David Lee."}],"explanation":"This is a clear and polite business introduction.","instruction":"Ответьте.","options":[{"id":"BEBI_L1_C_A","is_correct":true,"text":"Hello. My name is Sara. Nice to meet you."},{"id":"BEBI_L1_C_B","is_correct":false,"text":"I am from company."},{"id":"BEBI_L1_C_C","is_correct":false,"text":"Good night, manager."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e1068ea6-022d-5b5f-8bf8-cb402c01dc81', '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('80feb9db-1c2f-584a-8915-577f71e4958a', NULL, 'Должности и отделы', 'Научиться называть свою должность и простой отдел компании.', '{"en":"Roles and Departments","ru":"Должности и отделы"}'::jsonb, '{"en":"Learn to name your job role and a simple company department.","ru":"Научиться называть свою должность и простой отдел компании."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('709faab8-d027-54af-8d64-d7d94418baad', '80feb9db-1c2f-584a-8915-577f71e4958a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBI_L2_MP_P1","left":"sales","right":"продажи"},{"id":"BEBI_L2_MP_P2","left":"marketing","right":"маркетинг"},{"id":"BEBI_L2_MP_P3","left":"finance","right":"финансы"},{"id":"BEBI_L2_MP_P4","left":"customer service","right":"обслуживание клиентов"},{"id":"BEBI_L2_MP_P5","left":"sales assistant","right":"помощник по продажам"},{"id":"BEBI_L2_MP_P6","left":"office manager","right":"офис-менеджер"},{"id":"BEBI_L2_MP_P7","left":"team member","right":"член команды"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e0d0c89-ff08-5584-b0cd-3e8e01a589f0', '80feb9db-1c2f-584a-8915-577f71e4958a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Customer service helps customers with questions or problems.","instruction":"Выберите правильный ответ.","options":[{"id":"BEBI_L2_Q_A","is_correct":true,"text":"Customer service"},{"id":"BEBI_L2_Q_B","is_correct":false,"text":"Finance"},{"id":"BEBI_L2_Q_C","is_correct":false,"text":"Marketing"}],"question":"Which department works with customers who need help?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa5f1420-605c-599a-93cf-8e66d2e757b9', '80feb9db-1c2f-584a-8915-577f71e4958a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I work in sales.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я работаю в отделе продаж.","target_language":"en","word_bank":["sales.","in","work","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66637753-ae95-5224-ba99-cfd45963a11d', '80feb9db-1c2f-584a-8915-577f71e4958a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"marketing","instruction":"Выберите подходящее слово.","options":["marketing","manager","company"],"sentence_template":"She works in ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8502638-3e3f-5990-91ec-31279c8e40c3', '80feb9db-1c2f-584a-8915-577f71e4958a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","an","office","manager."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["office","an","am","manager.","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9709a57-647e-5dd4-8e05-16dd2461b785', '80feb9db-1c2f-584a-8915-577f71e4958a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am a sales assistant.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7561b14b-7c4d-5143-904b-0667d1e469c1', '80feb9db-1c2f-584a-8915-577f71e4958a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I work in customer service, and I am a team member.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я работаю в отделе обслуживания клиентов и являюсь членом команды."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ced2575-826c-5dea-b8f9-fabfeb69ac3b', '80feb9db-1c2f-584a-8915-577f71e4958a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"This is Nina. She works in finance.","translation":"Это Нина. Она работает в финансовом отделе.","type":"dialogue"},{"character":"Nina","text":"Hello. Nice to meet you.","translation":"Здравствуйте. Приятно познакомиться.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you too."},{"is_correct":false,"text":"Finance is a chair."}],"text":"What should a colleague say?","type":"choice"}],"title":"Meeting the Team"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('863e3cdc-8cd2-528c-9bbe-78f2e6410221', '80feb9db-1c2f-584a-8915-577f71e4958a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A department is a part of a company with a type of work.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBI_L2_D_A","is_correct":true,"text":"A part of a company with a type of work"},{"id":"BEBI_L2_D_B","is_correct":false,"text":"A person who visits a company"},{"id":"BEBI_L2_D_C","is_correct":false,"text":"A short business greeting"}],"word":"department"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d150ad71-885e-5313-a7fe-a85de6b3db5e', '80feb9db-1c2f-584a-8915-577f71e4958a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I work in sales.","explanation":"The missing department is “sales.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sales","id":"BEBI_L2_LW_A","is_correct":true},{"audio_text":"hello","id":"BEBI_L2_LW_B","is_correct":false},{"audio_text":"meeting","id":"BEBI_L2_LW_C","is_correct":false}],"sentence_template":"I work in ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02a1189f-eea5-553d-84c8-aa665b8323cc', '80feb9db-1c2f-584a-8915-577f71e4958a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"finance","explanation":"The complete sentence is “She works in finance.”","hint_prefix":"fi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She works in ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fac38a25-c955-58ad-a819-ba06cf6452a9', '80feb9db-1c2f-584a-8915-577f71e4958a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"sales","id":"BEBI_L2_VM_P1","text":"sales"},{"audio_text":"marketing","id":"BEBI_L2_VM_P2","text":"marketing"},{"audio_text":"customer service","id":"BEBI_L2_VM_P3","text":"customer service"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2af68330-0f5f-5168-ba07-9acfc86d1807', '80feb9db-1c2f-584a-8915-577f71e4958a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Emma","text":"What do you do?"}],"explanation":"“I am a sales assistant” clearly states your business role.","instruction":"Ответьте.","options":[{"id":"BEBI_L2_C_A","is_correct":true,"text":"I am a sales assistant."},{"id":"BEBI_L2_C_B","is_correct":false,"text":"I am from sales years old."},{"id":"BEBI_L2_C_C","is_correct":false,"text":"My name is department."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e1068ea6-022d-5b5f-8bf8-cb402c01dc81', '80feb9db-1c2f-584a-8915-577f71e4958a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7bd74bbd-b380-5f4a-81af-08900cd7125d', NULL, 'Знакомство с клиентом', 'Научиться приветствовать клиента и обмениваться простой деловой информацией.', '{"en":"Meeting a Client","ru":"Знакомство с клиентом"}'::jsonb, '{"en":"Learn to greet a client and exchange simple business information.","ru":"Научиться приветствовать клиента и обмениваться простой деловой информацией."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('154d2052-2d4d-51c6-bdc0-540dc0464cf0', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEBI_L3_MP_P1","left":"client","right":"клиент"},{"id":"BEBI_L3_MP_P2","left":"business card","right":"визитная карточка"},{"id":"BEBI_L3_MP_P3","left":"email address","right":"адрес электронной почты"},{"id":"BEBI_L3_MP_P4","left":"phone number","right":"номер телефона"},{"id":"BEBI_L3_MP_P5","left":"This is my card","right":"Это моя визитка"},{"id":"BEBI_L3_MP_P6","left":"Welcome to our office","right":"Добро пожаловать в наш офис"},{"id":"BEBI_L3_MP_P7","left":"Thank you for coming","right":"Спасибо, что пришли"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ed2fc85-0d16-5e54-b6b9-31e572843bbb', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A business card contains contact details such as a name, company, and phone number.","instruction":"Выберите правильный ответ.","options":[{"id":"BEBI_L3_Q_A","is_correct":true,"text":"A business card"},{"id":"BEBI_L3_Q_B","is_correct":false,"text":"A lunch break"},{"id":"BEBI_L3_Q_C","is_correct":false,"text":"A desk"}],"question":"What can you give a new client with your contact details?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd244a1a-79a2-5d76-b620-7f6d140b996b', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is my business card.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это моя визитка.","target_language":"en","word_bank":["card.","business","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01868b32-3810-550e-a7a9-55cf5bb2a989', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"office","instruction":"Выберите подходящее слово.","options":["office","client","phone"],"sentence_template":"Welcome to our ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff7f16bf-13ab-5868-9eb3-c5ea1195f167', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Thank","you","for","coming."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["for","Thank","coming.","you"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1d114a0-b68f-505b-8797-9a6ccdc3034b', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Welcome to our office.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05469ddd-5953-50db-a7d8-d0f34cf11909', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Nice to meet you. This is my business card.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Приятно познакомиться. Это моя визитка."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('441452f1-4067-5934-81f6-c9702ddf899c', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Welcome to our office, Mr. Brown.","translation":"Добро пожаловать в наш офис, мистер Браун.","type":"dialogue"},{"character":"Mr. Brown","text":"Thank you. Nice to meet you.","translation":"Спасибо. Приятно познакомиться.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Nice to meet you too."},{"is_correct":false,"text":"Your office can swim."}],"text":"What should Maya say?","type":"choice"}],"title":"A New Client"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d43dc30-7c04-5c87-a3ae-8e4234dbf3b3', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A client is a person or company that uses a business service.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEBI_L3_D_A","is_correct":true,"text":"A person or company that uses a business service"},{"id":"BEBI_L3_D_B","is_correct":false,"text":"A person who manages a school"},{"id":"BEBI_L3_D_C","is_correct":false,"text":"A place where people eat lunch"}],"word":"client"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('707a351b-4f59-5433-9705-db57f15caf50', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is my business card.","explanation":"The missing word is “card.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"card","id":"BEBI_L3_LW_A","is_correct":true},{"audio_text":"sales","id":"BEBI_L3_LW_B","is_correct":false},{"audio_text":"morning","id":"BEBI_L3_LW_C","is_correct":false}],"sentence_template":"This is my business ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eaa7a9b8-063f-593d-8c3f-03742a593843', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"office","explanation":"The complete sentence is “Welcome to our office.”","hint_prefix":"of","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Welcome to our ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbc4220d-02c2-5c2b-807c-f5b159b445d9', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"client","id":"BEBI_L3_VM_P1","text":"client"},{"audio_text":"business card","id":"BEBI_L3_VM_P2","text":"business card"},{"audio_text":"email address","id":"BEBI_L3_VM_P3","text":"email address"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d3d0a92-cfa2-52dc-80ba-1bde533ae817', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Client","text":"Hello. My name is Daniel Green."}],"explanation":"This reply politely welcomes and introduces you to the client.","instruction":"Ответьте.","options":[{"id":"BEBI_L3_C_A","is_correct":true,"text":"Welcome, Mr. Green. My name is Anna."},{"id":"BEBI_L3_C_B","is_correct":false,"text":"I am a business card."},{"id":"BEBI_L3_C_C","is_correct":false,"text":"My office is hello."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e1068ea6-022d-5b5f-8bf8-cb402c01dc81', '7bd74bbd-b380-5f4a-81af-08900cd7125d', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('232dd0ca-561c-5d33-a661-b37c38eb4e95', 'en', 'I work for', 'Я работаю в компании', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cf2cc67-9081-5229-9b96-b00f9f60c43d', 'en', 'company', 'компания', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a9dd827-094c-5bf3-96f5-72449fae560c', 'en', 'job', 'работа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('929c3b47-1430-56c4-9802-a42c236cefe7', 'en', 'manager', 'руководитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44d4a962-56ae-58fb-868f-087abd9e2e17', 'en', 'colleague', 'коллега', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a5c847a-0f0a-5d3b-9009-8d812e8d24d4', 'en', 'Nice to meet you', 'Приятно познакомиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b1d1427f-a047-5301-a4fc-48d5ca4231ff', 'en', 'sales', 'продажи', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0272ea43-1591-5818-810c-a3dd53a9a3a8', 'en', 'marketing', 'маркетинг', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('28f5c18f-7237-5cc0-b28e-0e5c743b9acc', 'en', 'finance', 'финансы', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dec2c226-e125-56e4-b7e0-8b05321302d3', 'en', 'customer service', 'обслуживание клиентов', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc7d3576-3529-55bb-8ac4-43ddf7f9ee73', 'en', 'sales assistant', 'помощник по продажам', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b47cdda3-7ff3-546f-b7b0-75899d0a3539', 'en', 'office manager', 'офис-менеджер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee1ffbaf-3ed2-5a5d-82ab-145b0a7e4032', 'en', 'team member', 'член команды', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('92e2d087-ad9e-5522-856c-b94cad944fc8', 'en', 'client', 'клиент', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('047fe102-ee85-5013-9ad8-a23e5a010159', 'en', 'business card', 'визитная карточка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('596a5a40-c8cf-5acb-b6e9-0acb8212a043', 'en', 'email address', 'адрес электронной почты', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffbb77c2-8c23-57c7-9667-ce79ce26cfce', 'en', 'phone number', 'номер телефона', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df2c0d62-2632-5c32-ac74-090d754aa061', 'en', 'This is my card', 'Это моя визитка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('23b8ff09-fdee-51a6-90c7-65598e92c851', 'en', 'Welcome to our office', 'Добро пожаловать в наш офис', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86bd1e0f-a300-5361-8a4d-c353bc73267c', 'en', 'Thank you for coming', 'Спасибо, что пришли', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'I work for' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'company' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'job' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'colleague' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '3b4f8723-cb50-5d7f-87a9-29291aa58f37', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to meet you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'sales' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'marketing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'finance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sales assistant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'office manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '80feb9db-1c2f-584a-8915-577f71e4958a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'team member' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'client' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'business card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'email address' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'phone number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is my card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Welcome to our office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e1068ea6-022d-5b5f-8bf8-cb402c01dc81', id, '7bd74bbd-b380-5f4a-81af-08900cd7125d', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you for coming' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
