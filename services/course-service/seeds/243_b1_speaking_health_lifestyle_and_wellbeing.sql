-- Track: B1_SPEAKING_HEALTH_LIFESTYLE_AND_WELLBEING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5af408fb-2221-5e1c-a004-dd70f617c415', 'B1_SPEAKING_HEALTH_LIFESTYLE_AND_WELLBEING', 'Здоровье, образ жизни и благополучие', 'Развивайте разговорный английский уровня B1 по теме «Здоровье, образ жизни и благополучие».', '{"en":"Health, Lifestyle and Wellbeing","ru":"Здоровье, образ жизни и благополучие"}'::jsonb, '{"en":"Develop B1 spoken English for health, lifestyle and wellbeing.","ru":"Развивайте разговорный английский уровня B1 по теме «Здоровье, образ жизни и благополучие»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ce5e4ed4-ad2d-5ea4-b976-ae831da77632', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Healthy Habits","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('206b8c50-93af-54e1-8f45-b0becb5c0fbb', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SHAF_2","left":"broken","right":"сломанный"},{"id":"A2SHAF_3","left":"missing","right":"пропавший"},{"id":"A2SHAF_4","left":"does not work","right":"не работает"},{"id":"A2SHAF_5","left":"cannot find","right":"не могу найти"},{"id":"A2SHAF_6","left":"fix","right":"чинить"},{"id":"A2SHAF_7","left":"replace","right":"заменить"},{"id":"A2SHAF_8","left":"report a problem","right":"сообщить о проблеме"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('989860f2-0265-5dde-b39b-33160b6e9c3e', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The printer does not work.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SHAF_10","is_correct":true,"text":"The printer does not work."},{"id":"A2SHAF_11","is_correct":false,"text":"The printer is upstairs."},{"id":"A2SHAF_12","is_correct":false,"text":"The printer is new."}],"question":"Which phrase reports a machine problem?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23362a3d-7091-5754-bed6-bc7adb39a97f', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The computer does not work.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Компьютер не работает.","target_language":"en","word_bank":["work.","not","does","computer","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('833af7bd-2c80-57d0-a8a2-2a0aab48705b', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"missing","instruction":"Выберите подходящее слово.","options":["missing","ready","sunny"],"sentence_template":"My office key is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7267605-0445-5c7a-afdf-47a0742df0de', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","printer","is","broken."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","printer","The","broken."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad67fd1b-6e87-5be4-b33f-eae80f6bb3b9', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I cannot find the blue folder.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3c7fc80-9780-5f58-be70-f4f3bafeeaad', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The copier is broken. Can someone fix it? I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Копировальный аппарат сломан. Кто-нибудь может его починить? Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('234a1e58-236c-5fd2-90b6-b861714c7315', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Worker","text":"The printer does not work.","translation":"Принтер не работает.","type":"dialogue"},{"character":"Colleague","text":"It has no paper.","translation":"В нём нет бумаги.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Put paper in the printer."},{"is_correct":false,"text":"Call a customer."}],"text":"What can the worker do?","type":"choice"}],"title":"No Paper"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7f95bec-d4c3-56e5-85c3-e8920b308a15', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“replace” matches the first definition.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SHAF_20","is_correct":true,"text":"To remove something and put another one in its place"},{"id":"A2SHAF_21","is_correct":false,"text":"To begin a work shift"},{"id":"A2SHAF_22","is_correct":false,"text":"To talk during a break"}],"word":"replace"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3c16e51-7f07-5202-86ca-956473d83142', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My office key is missing.","explanation":"The missing word is “missing.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"missing","id":"A2SHAF_24","is_correct":true},{"audio_text":"ready","id":"A2SHAF_25","is_correct":false},{"audio_text":"sunny","id":"A2SHAF_26","is_correct":false}],"sentence_template":"My office key is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41434209-e36b-5b37-a9b0-02544912fca7', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"missing","explanation":"The complete sentence is “My office key is missing.”","hint_prefix":"mi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My office key is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9e06cbc-0467-54f0-b733-40c3318cfc56', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each work phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"broken","id":"A2SHAF_29","text":"broken"},{"audio_text":"missing","id":"A2SHAF_30","text":"missing"},{"audio_text":"does not work","id":"A2SHAF_31","text":"does not work"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14c53038-f56d-5111-9817-258ccc902db3', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Worker","text":"The phone does not work."}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SHAF_33","is_correct":true,"text":"I will report the problem."},{"id":"A2SHAF_34","is_correct":false,"text":"Lunch starts at one."},{"id":"A2SHAF_35","is_correct":false,"text":"Nice to see you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5af408fb-2221-5e1c-a004-dd70f617c415', 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9722f907-8151-5435-aa7d-04b1910294b5', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Stress and Feelings","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8f81533-9590-5653-9251-8ee2d6f1ce56', '9722f907-8151-5435-aa7d-04b1910294b5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SHAF_37","left":"late","right":"поздно"},{"id":"A2SHAF_38","left":"absent","right":"отсутствующий"},{"id":"A2SHAF_39","left":"sick","right":"больной"},{"id":"A2SHAF_40","left":"traffic","right":"дорожное движение"},{"id":"A2SHAF_41","left":"call the manager","right":"позвонить руководителю"},{"id":"A2SHAF_42","left":"I cannot come today","right":"Я не могу прийти сегодня"},{"id":"A2SHAF_43","left":"I will be ten minutes late","right":"Я опоздаю на десять минут"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f569d468-2b1c-5543-b25d-254ce41a8a3d', '9722f907-8151-5435-aa7d-04b1910294b5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I will be ten minutes late.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SHAF_45","is_correct":true,"text":"I will be ten minutes late."},{"id":"A2SHAF_46","is_correct":false,"text":"I finish at five."},{"id":"A2SHAF_47","is_correct":false,"text":"I need a new key."}],"question":"Which sentence reports a short delay?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('108cace9-ce27-5e7b-a954-87aeb36f0df9', '9722f907-8151-5435-aa7d-04b1910294b5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I will be late today.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сегодня я опоздаю.","target_language":"en","word_bank":["today.","late","be","will","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44f14a29-612c-538c-9891-1c7e584f3d35', '9722f907-8151-5435-aa7d-04b1910294b5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sick","instruction":"Выберите подходящее слово.","options":["sick","ready","quiet"],"sentence_template":"I cannot come because I am ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2df1da3c-dcc2-548d-8e79-0aac23448944', '9722f907-8151-5435-aa7d-04b1910294b5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","will","call","the","manager."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["manager.","the","call","will","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aad0f336-eedf-5ea1-a14b-b81640c6621b', '9722f907-8151-5435-aa7d-04b1910294b5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The bus is late because of traffic.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6649c9d-08e4-582c-a67b-0f2977c0888e', '9722f907-8151-5435-aa7d-04b1910294b5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am sorry. I will be fifteen minutes late today. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините. Сегодня я опоздаю на пятнадцать минут. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf4193c5-d71c-5dd9-ab46-f7ff0af2e936', '9722f907-8151-5435-aa7d-04b1910294b5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Worker","text":"I am sick and cannot come today.","translation":"Я болен и не могу прийти сегодня.","type":"dialogue"},{"character":"Manager","text":"Thank you for telling me.","translation":"Спасибо, что сообщили.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I hope to return tomorrow."},{"is_correct":false,"text":"The printer needs paper."}],"text":"What should the worker say?","type":"choice"}],"title":"A Morning Call"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba8e5371-8f05-5b4d-a2aa-fb10117cfde3', '9722f907-8151-5435-aa7d-04b1910294b5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“absent” matches the first definition.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SHAF_55","is_correct":true,"text":"Not present at work or another place"},{"id":"A2SHAF_56","is_correct":false,"text":"Arriving before the start time"},{"id":"A2SHAF_57","is_correct":false,"text":"Working an evening shift"}],"word":"absent"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66314328-1e76-58a2-9bf6-ba6daddde4b5', '9722f907-8151-5435-aa7d-04b1910294b5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I cannot come because I am sick.","explanation":"The missing word is “sick.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sick","id":"A2SHAF_59","is_correct":true},{"audio_text":"ready","id":"A2SHAF_60","is_correct":false},{"audio_text":"quiet","id":"A2SHAF_61","is_correct":false}],"sentence_template":"I cannot come because I am ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba7489d8-da3f-5421-921d-51c1281d4b0f', '9722f907-8151-5435-aa7d-04b1910294b5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sick","explanation":"The complete sentence is “I cannot come because I am sick.”","hint_prefix":"si","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I cannot come because I am ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d44c4d2-a45c-5d9c-b80a-f93ca6d2d27a', '9722f907-8151-5435-aa7d-04b1910294b5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each work phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"late","id":"A2SHAF_64","text":"late"},{"audio_text":"absent","id":"A2SHAF_65","text":"absent"},{"audio_text":"sick","id":"A2SHAF_66","text":"sick"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42c570c8-01bf-5f91-9618-2582c3b6a065', '9722f907-8151-5435-aa7d-04b1910294b5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"Why are you late?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SHAF_68","is_correct":true,"text":"The bus was late because of traffic."},{"id":"A2SHAF_69","is_correct":false,"text":"The report is on the desk."},{"id":"A2SHAF_70","is_correct":false,"text":"I like sunny weather."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5af408fb-2221-5e1c-a004-dd70f617c415', '9722f907-8151-5435-aa7d-04b1910294b5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('13d11c92-b56e-5637-9876-156aef0b4e02', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Giving Advice","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32402e2e-d7fc-5404-a0a7-f7e785acd807', '13d11c92-b56e-5637-9876-156aef0b4e02', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SHAF_72","left":"customer","right":"клиент"},{"id":"A2SHAF_73","left":"wrong","right":"неправильный"},{"id":"A2SHAF_74","left":"order","right":"заказ"},{"id":"A2SHAF_75","left":"receipt","right":"чек"},{"id":"A2SHAF_76","left":"return","right":"вернуть"},{"id":"A2SHAF_77","left":"wait a moment","right":"подождите минуту"},{"id":"A2SHAF_78","left":"I am sorry","right":"Мне жаль"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ea30c1e-37c2-5af3-8fc7-02f6506f4c57', '13d11c92-b56e-5637-9876-156aef0b4e02', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I am sorry.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SHAF_80","is_correct":true,"text":"I am sorry."},{"id":"A2SHAF_81","is_correct":false,"text":"Finish your report."},{"id":"A2SHAF_82","is_correct":false,"text":"My shift starts now."}],"question":"Which phrase politely responds to a customer problem?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da103454-da07-5871-9432-b80c31883941', '13d11c92-b56e-5637-9876-156aef0b4e02', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Please wait a moment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, подождите минуту.","target_language":"en","word_bank":["moment.","a","wait","Please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2aaa6ef-74df-50bd-8b80-4a30c9a3acd6', '13d11c92-b56e-5637-9876-156aef0b4e02', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"wrong","instruction":"Выберите подходящее слово.","options":["wrong","sunny","full-time"],"sentence_template":"This is the ___ order."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97a8047c-51e8-5622-89cb-095f17c8b735', '13d11c92-b56e-5637-9876-156aef0b4e02', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Can","I","help","you?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["help","Can","I","you?"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8241dd5-7f6c-5a17-b400-5528c6d69cdc', '13d11c92-b56e-5637-9876-156aef0b4e02', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am sorry. Your order is not ready.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95d90907-59c4-5400-a249-eb908e0be1ae', '13d11c92-b56e-5637-9876-156aef0b4e02', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Please wait a moment. I will check your order. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Пожалуйста, подождите минуту. Я проверю ваш заказ. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e24bcd4-f273-507f-83c8-eca886e2b672', '13d11c92-b56e-5637-9876-156aef0b4e02', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"This is not my order.","translation":"Это не мой заказ.","type":"dialogue"},{"character":"Worker","text":"I am sorry. Let me check it.","translation":"Мне жаль. Позвольте проверить.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"I work part-time."}],"text":"What can the customer say?","type":"choice"}],"title":"A Wrong Order"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65c41338-2a0d-5023-8ac1-e051c85a53dc', '13d11c92-b56e-5637-9876-156aef0b4e02', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“customer” matches the first definition.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SHAF_90","is_correct":true,"text":"A person who buys goods or services"},{"id":"A2SHAF_91","is_correct":false,"text":"A worker who manages a team"},{"id":"A2SHAF_92","is_correct":false,"text":"A document sent by email"}],"word":"customer"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc14ef63-3479-5918-ad81-bd0a85a2dcb1', '13d11c92-b56e-5637-9876-156aef0b4e02', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is the wrong order.","explanation":"The missing word is “wrong.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"wrong","id":"A2SHAF_94","is_correct":true},{"audio_text":"sunny","id":"A2SHAF_95","is_correct":false},{"audio_text":"full-time","id":"A2SHAF_96","is_correct":false}],"sentence_template":"This is the ___ order."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abc5eae6-b6b1-5586-b303-b1d11951a4fa', '13d11c92-b56e-5637-9876-156aef0b4e02', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"wrong","explanation":"The complete sentence is “This is the wrong order.”","hint_prefix":"wr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is the ___ order."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b03fa0ac-c34b-592d-9975-2f232f62299d', '13d11c92-b56e-5637-9876-156aef0b4e02', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each work phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"customer","id":"A2SHAF_99","text":"customer"},{"audio_text":"wrong","id":"A2SHAF_100","text":"wrong"},{"audio_text":"order","id":"A2SHAF_101","text":"order"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f504ae78-cd55-5ace-8e62-dddeef577541', '13d11c92-b56e-5637-9876-156aef0b4e02', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"I have the wrong order."}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SHAF_103","is_correct":true,"text":"I am sorry. I will help you."},{"id":"A2SHAF_104","is_correct":false,"text":"My break is at one."},{"id":"A2SHAF_105","is_correct":false,"text":"The meeting room is upstairs."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5af408fb-2221-5e1c-a004-dd70f617c415', '13d11c92-b56e-5637-9876-156aef0b4e02', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('76be4cd9-87db-5841-9357-d483baf1c4bd', 'en', 'broken', 'сломанный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efeba433-9113-5db8-a025-6da79022fd65', 'en', 'missing', 'пропавший', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2df50242-7b0d-5c1d-b5ae-2af2a2e05aff', 'en', 'does not work', 'не работает', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7509e6d1-5e04-567b-9a44-403f3d63d889', 'en', 'cannot find', 'не могу найти', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ebdef1a6-b173-53dc-9460-c2cd4e6cc36e', 'en', 'fix', 'чинить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e7938af8-5212-5bde-983c-bf22d53705b5', 'en', 'replace', 'заменить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2f87fbc4-162b-5711-9544-a8fba77e2969', 'en', 'report a problem', 'сообщить о проблеме', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b88631d7-b15a-50e0-8061-594df693c0d8', 'en', 'late', 'поздно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3754ffa-a1c2-54b7-8435-50dfab7df9b6', 'en', 'absent', 'отсутствующий', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c7f70dc-ab1a-5fec-9ffb-89f5a27190b4', 'en', 'sick', 'больной', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c04328b0-da67-5ba6-b821-5a0066c0d85b', 'en', 'traffic', 'дорожное движение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fb7cc334-41ac-5f04-8006-244f0ba62e12', 'en', 'call the manager', 'позвонить руководителю', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05260fda-3cdc-52e0-9b9a-da446217f082', 'en', 'I cannot come today', 'Я не могу прийти сегодня', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc6b2626-9966-5ec7-8ec7-4cd7f1fee91d', 'en', 'I will be ten minutes late', 'Я опоздаю на десять минут', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45b40515-951b-5f8e-bdc2-d2396bc7c623', 'en', 'customer', 'клиент', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b43fc03-112c-539f-8267-16623fa98018', 'en', 'wrong', 'неправильный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c41c3f90-be0a-5a93-a241-79a4038c81b5', 'en', 'order', 'заказ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27e3270f-54f1-5b1e-bad3-635c01068c3f', 'en', 'return', 'вернуть', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36cd5352-5231-5005-9f9c-066e547442be', 'en', 'wait a moment', 'подождите минуту', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('22ef8e2d-c926-5560-8f09-ccef5a21fe9c', 'en', 'I am sorry', 'Мне жаль', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'broken' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'missing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'does not work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'cannot find' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'fix' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'replace' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, 'ce5e4ed4-ad2d-5ea4-b976-ae831da77632', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'report a problem' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'late' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'absent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'sick' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'traffic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'call the manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'I cannot come today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '9722f907-8151-5435-aa7d-04b1910294b5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I will be ten minutes late' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'wrong' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'return' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'wait a moment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5af408fb-2221-5e1c-a004-dd70f617c415', id, '13d11c92-b56e-5637-9876-156aef0b4e02', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am sorry' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
