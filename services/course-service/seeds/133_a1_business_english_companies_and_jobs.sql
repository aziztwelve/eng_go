-- Track: A1_BUSINESS_ENGLISH_COMPANIES_AND_JOBS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', 'A1_BUSINESS_ENGLISH_COMPANIES_AND_JOBS', 'Компании и профессии', 'Научитесь говорить о компаниях, отделах и основных профессиях.', '{"en":"Companies and Jobs","ru":"Компании и профессии"}'::jsonb, '{"en":"Learn to talk about companies, departments, and basic jobs.","ru":"Научитесь говорить о компаниях, отделах и основных профессиях."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('22c8392e-fcf4-57bc-92cf-2389535f13ef', NULL, 'Основы компании', 'Научиться использовать простые деловые фразы по теме «Основы компании».', '{"en":"Company Basics","ru":"Основы компании"}'::jsonb, '{"en":"Learn to use simple business phrases for company basics.","ru":"Научиться использовать простые деловые фразы по теме «Основы компании»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('918f9215-fcaa-5152-8aac-2ba3b414fc6d', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BECAJ_L1_MP_P1","left":"company","right":"компания"},{"id":"BECAJ_L1_MP_P2","left":"office","right":"офис"},{"id":"BECAJ_L1_MP_P3","left":"factory","right":"фабрика"},{"id":"BECAJ_L1_MP_P4","left":"shop","right":"магазин"},{"id":"BECAJ_L1_MP_P5","left":"product","right":"продукт"},{"id":"BECAJ_L1_MP_P6","left":"service","right":"услуга"},{"id":"BECAJ_L1_MP_P7","left":"customer","right":"клиент"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ef6dc28-7296-53ab-852b-d3a6583068d3', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “company.”","instruction":"Выберите правильный ответ.","options":[{"id":"BECAJ_L1_Q_A","is_correct":true,"text":"company"},{"id":"BECAJ_L1_Q_B","is_correct":false,"text":"office"},{"id":"BECAJ_L1_Q_C","is_correct":false,"text":"factory"}],"question":"Which phrase is connected with “company”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dee3df08-a90c-5412-9129-af9498685195', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is a small company.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это небольшая компания.","target_language":"en","word_bank":["company.","small","a","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ff8c437-a6ce-5c02-b6ee-efb14e78b985', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"products","instruction":"Выберите подходящее слово.","options":["products","meetings","Mondays"],"sentence_template":"The company sells ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2825bcd6-5ce7-53c7-bfca-38a8cc9e8997', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","company","sells","products."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["products.","sells","company","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51d037e6-c020-5e51-a441-4d8a4609df9b', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our company provides a good service.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1626d6cb-eea0-5a1d-9f99-1d08b4435b4a', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This is a small company.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Это небольшая компания."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a72ce3b-ebac-5051-a1ce-4517791c31a1', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Client","text":"What does your company do?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"We sell office products.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We sell office products."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Company Basics"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc9bae15-dd52-594c-80a1-5e72ed692250', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“company” means an organization that sells products or services.","instruction":"Выберите значение.","language":"en","options":[{"id":"BECAJ_L1_D_A","is_correct":true,"text":"An organization that sells products or services"},{"id":"BECAJ_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BECAJ_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"company"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b34f476-444b-5d1e-94b9-1cf646ad7d19', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The company sells products.","explanation":"The missing word is “products.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"products","id":"BECAJ_L1_LW_A","is_correct":true},{"audio_text":"meetings","id":"BECAJ_L1_LW_B","is_correct":false},{"audio_text":"Mondays","id":"BECAJ_L1_LW_C","is_correct":false}],"sentence_template":"The company sells ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f4d37be-b912-5842-9cf2-b1aa4808d81c', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"products","explanation":"The complete sentence is “The company sells products.”","hint_prefix":"pr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The company sells ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5aa7bf59-ac2f-57f3-9065-3f28a2bd09b9', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"company","id":"BECAJ_L1_VM_P1","text":"company"},{"audio_text":"office","id":"BECAJ_L1_VM_P2","text":"office"},{"audio_text":"factory","id":"BECAJ_L1_VM_P3","text":"factory"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5674e19-058b-592d-84c1-1ad17bf0340f', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Client","text":"What does your company do?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BECAJ_L1_C_A","is_correct":true,"text":"We sell office products."},{"id":"BECAJ_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BECAJ_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', '22c8392e-fcf4-57bc-92cf-2389535f13ef', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('de8f16f5-292d-5c22-9fe4-c4cc87b99145', NULL, 'Отделы', 'Научиться использовать простые деловые фразы по теме «Отделы».', '{"en":"Departments","ru":"Отделы"}'::jsonb, '{"en":"Learn to use simple business phrases for departments.","ru":"Научиться использовать простые деловые фразы по теме «Отделы»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bab623af-1c8f-5d87-8898-1481fb376220', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BECAJ_L2_MP_P1","left":"department","right":"отдел"},{"id":"BECAJ_L2_MP_P2","left":"sales","right":"продажи"},{"id":"BECAJ_L2_MP_P3","left":"marketing","right":"маркетинг"},{"id":"BECAJ_L2_MP_P4","left":"finance","right":"финансы"},{"id":"BECAJ_L2_MP_P5","left":"human resources","right":"отдел кадров"},{"id":"BECAJ_L2_MP_P6","left":"manager","right":"руководитель"},{"id":"BECAJ_L2_MP_P7","left":"team","right":"команда"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dc3f069-db17-5f6e-9fb0-d7454192c8ea', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “department.”","instruction":"Выберите правильный ответ.","options":[{"id":"BECAJ_L2_Q_A","is_correct":true,"text":"department"},{"id":"BECAJ_L2_Q_B","is_correct":false,"text":"sales"},{"id":"BECAJ_L2_Q_C","is_correct":false,"text":"marketing"}],"question":"Which phrase is connected with “department”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8973b6bf-1bbb-585c-b246-8e83426ecf73', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I work in sales.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я работаю в отделе продаж.","target_language":"en","word_bank":["sales.","in","work","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7155110a-bc57-542c-8dc4-082f09ae4b6b', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"finance","instruction":"Выберите подходящее слово.","options":["finance","delivery","telephone"],"sentence_template":"She works in ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe3fbe98-6c03-5345-936f-aad552f678d9', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","works","in","finance."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["finance.","in","works","She"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eecdcc29-b701-5b8a-b9a0-14d9fb8dc40a', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our marketing team is in the main office.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae8c2e85-d755-5d43-b571-b99e77cf2542', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I work in sales.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я работаю в отделе продаж."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52c84fa6-cee7-54af-82e4-47e146f09332', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Colleague","text":"Which department do you work in?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"I work in marketing.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I work in marketing."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Departments"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc772ec3-bba9-559f-96a4-144b2fad2b02', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“department” means a part of a company with a particular job.","instruction":"Выберите значение.","language":"en","options":[{"id":"BECAJ_L2_D_A","is_correct":true,"text":"A part of a company with a particular job"},{"id":"BECAJ_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BECAJ_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"department"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b9924cbd-5602-569d-86c1-5aac797ca26e', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"She works in finance.","explanation":"The missing word is “finance.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"finance","id":"BECAJ_L2_LW_A","is_correct":true},{"audio_text":"delivery","id":"BECAJ_L2_LW_B","is_correct":false},{"audio_text":"telephone","id":"BECAJ_L2_LW_C","is_correct":false}],"sentence_template":"She works in ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c1ebd32-af66-5416-ae2a-3f92d83ac579', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"finance","explanation":"The complete sentence is “She works in finance.”","hint_prefix":"fi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She works in ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('202dca2a-177f-58ac-abf2-e9b110c4dd37', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"department","id":"BECAJ_L2_VM_P1","text":"department"},{"audio_text":"sales","id":"BECAJ_L2_VM_P2","text":"sales"},{"audio_text":"marketing","id":"BECAJ_L2_VM_P3","text":"marketing"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0921c6d-1bab-54b0-a95d-38385edbb83c', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Which department do you work in?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BECAJ_L2_C_A","is_correct":true,"text":"I work in marketing."},{"id":"BECAJ_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BECAJ_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a66a9ec8-106a-5971-8e13-2ab65c6cd380', NULL, 'Профессии в бизнесе', 'Научиться использовать простые деловые фразы по теме «Профессии в бизнесе».', '{"en":"Business Jobs","ru":"Профессии в бизнесе"}'::jsonb, '{"en":"Learn to use simple business phrases for business jobs.","ru":"Научиться использовать простые деловые фразы по теме «Профессии в бизнесе»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d0e333b-bc65-58a1-8250-354483b710c6', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BECAJ_L3_MP_P1","left":"manager","right":"руководитель"},{"id":"BECAJ_L3_MP_P2","left":"assistant","right":"помощник"},{"id":"BECAJ_L3_MP_P3","left":"salesperson","right":"продавец"},{"id":"BECAJ_L3_MP_P4","left":"accountant","right":"бухгалтер"},{"id":"BECAJ_L3_MP_P5","left":"receptionist","right":"администратор"},{"id":"BECAJ_L3_MP_P6","left":"driver","right":"водитель"},{"id":"BECAJ_L3_MP_P7","left":"engineer","right":"инженер"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('984cc0de-9068-5364-b6b7-97fd073b3724', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “manager.”","instruction":"Выберите правильный ответ.","options":[{"id":"BECAJ_L3_Q_A","is_correct":true,"text":"manager"},{"id":"BECAJ_L3_Q_B","is_correct":false,"text":"assistant"},{"id":"BECAJ_L3_Q_C","is_correct":false,"text":"salesperson"}],"question":"Which phrase is connected with “manager”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bf64fe5-b6be-57e0-80d2-bd443be9ee59', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"He works as an accountant.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Он работает бухгалтером.","target_language":"en","word_bank":["accountant.","an","as","works","He"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0240f759-0a90-5d13-b7d8-2af42010b2bf', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"assistant","instruction":"Выберите подходящее слово.","options":["assistant","appointment","price"],"sentence_template":"I am an office ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed41880d-e4b5-56a1-9be3-19e73fed32ad', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","an","office","assistant."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["assistant.","office","an","am","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19e36404-6267-52c0-84d3-aa4f168f2d5d', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our receptionist answers calls and welcomes visitors.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed89df67-67e3-5155-9594-c5b858bdcf4d', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"He works as an accountant.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Он работает бухгалтером."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b450df1-71fb-5b5d-8642-7db080b15aa4', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Visitor","text":"What is your job?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"I am an office assistant.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am an office assistant."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Business Jobs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('615042d8-eeb1-5a38-9ac1-aa0c28b78238', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“accountant” means a person who works with company money.","instruction":"Выберите значение.","language":"en","options":[{"id":"BECAJ_L3_D_A","is_correct":true,"text":"A person who works with company money"},{"id":"BECAJ_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BECAJ_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"accountant"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6664907c-d300-57f4-8bee-93024a12c285', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am an office assistant.","explanation":"The missing word is “assistant.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"assistant","id":"BECAJ_L3_LW_A","is_correct":true},{"audio_text":"appointment","id":"BECAJ_L3_LW_B","is_correct":false},{"audio_text":"price","id":"BECAJ_L3_LW_C","is_correct":false}],"sentence_template":"I am an office ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03afd049-8373-55de-8411-df2b5730a9aa', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"assistant","explanation":"The complete sentence is “I am an office assistant.”","hint_prefix":"as","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am an office ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2729cc68-9d07-5842-a22e-a76f2585159d', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"manager","id":"BECAJ_L3_VM_P1","text":"manager"},{"audio_text":"assistant","id":"BECAJ_L3_VM_P2","text":"assistant"},{"audio_text":"salesperson","id":"BECAJ_L3_VM_P3","text":"salesperson"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a2e1aa9-b153-5ac5-8ece-5835ecf27c25', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Visitor","text":"What is your job?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BECAJ_L3_C_A","is_correct":true,"text":"I am an office assistant."},{"id":"BECAJ_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BECAJ_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cf2cc67-9081-5229-9b96-b00f9f60c43d', 'en', 'company', 'компания', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e7121b2-a408-5c04-b26e-bea2a5591670', 'en', 'office', 'офис', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c24678f7-f114-5aab-9af3-085ec791e6bc', 'en', 'factory', 'фабрика', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a839839e-c6a7-582f-8444-edce5569661a', 'en', 'shop', 'магазин', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61c4c1b4-3ffe-5f92-b935-2ed81be6a442', 'en', 'product', 'продукт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62130651-b849-5b6e-9196-42e409eac357', 'en', 'service', 'услуга', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45b40515-951b-5f8e-bdc2-d2396bc7c623', 'en', 'customer', 'клиент', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95b6b96c-2c70-5179-b6c9-1c218c84eb34', 'en', 'department', 'отдел', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
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
VALUES ('1e209bf6-1bba-5f98-b6d6-c4875b41841a', 'en', 'human resources', 'отдел кадров', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('929c3b47-1430-56c4-9802-a42c236cefe7', 'en', 'manager', 'руководитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa16c3f-9953-5483-9522-c6cb31db9d7f', 'en', 'team', 'команда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('929c3b47-1430-56c4-9802-a42c236cefe7', 'en', 'manager', 'руководитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dcb171e-c74c-542f-8d72-cd65b02c23c0', 'en', 'assistant', 'помощник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a797da70-ad3d-5043-a60f-9e9082ecd6cb', 'en', 'salesperson', 'продавец', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4beb78f2-8a6e-52cc-b7b1-1cd20af22caf', 'en', 'accountant', 'бухгалтер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d4b44cb-7344-5f89-b4aa-986bbd1566f0', 'en', 'receptionist', 'администратор', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb635c7e-dbc5-5b39-ba1c-50895b5840f2', 'en', 'driver', 'водитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b0f28d-97ec-5166-bfda-94d3a8e2a929', 'en', 'engineer', 'инженер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'company' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'factory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'shop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'product' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, '22c8392e-fcf4-57bc-92cf-2389535f13ef', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'department' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'sales' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'marketing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'finance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'human resources' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'de8f16f5-292d-5c22-9fe4-c4cc87b99145', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'team' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'assistant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'salesperson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'accountant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'receptionist' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'driver' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e887f9f3-71bd-5b8e-a594-e2a928bb2ab6', id, 'a66a9ec8-106a-5971-8e13-2ab65c6cd380', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'engineer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
