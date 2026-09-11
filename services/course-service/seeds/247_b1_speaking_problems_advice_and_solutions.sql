-- Track: B1_SPEAKING_PROBLEMS_ADVICE_AND_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e5dde683-e9df-5bce-acac-38ee08c448f0', 'B1_SPEAKING_PROBLEMS_ADVICE_AND_SOLUTIONS', 'Проблемы, советы и решения', 'Развивайте разговорный английский уровня B1 по теме «Проблемы, советы и решения».', '{"en":"Problems, Advice and Solutions","ru":"Проблемы, советы и решения"}'::jsonb, '{"en":"Develop B1 spoken English for problems, advice and solutions.","ru":"Развивайте разговорный английский уровня B1 по теме «Проблемы, советы и решения»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Explaining Problems","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc225ca5-e2ec-5a7e-96f4-3ffb4c0c0a84', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SEPAS_2","left":"lost","right":"потерянный"},{"id":"A2SEPAS_3","left":"bag","right":"сумка"},{"id":"A2SEPAS_4","left":"passport","right":"паспорт"},{"id":"A2SEPAS_5","left":"phone","right":"телефон"},{"id":"A2SEPAS_6","left":"lost property","right":"бюро находок"},{"id":"A2SEPAS_7","left":"cannot find","right":"не могу найти"},{"id":"A2SEPAS_8","left":"Please help me","right":"Пожалуйста, помогите мне"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da89c565-edc4-5686-84e7-323e634decb7', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct phrase is “lost.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SEPAS_10","is_correct":true,"text":"lost"},{"id":"A2SEPAS_11","is_correct":false,"text":"bag"},{"id":"A2SEPAS_12","is_correct":false,"text":"passport"}],"question":"Which phrase matches “потерянный”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76b52ea8-94d9-5386-9d15-88f8c68a2818', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I cannot find my passport.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я не могу найти свой паспорт.","target_language":"en","word_bank":["passport.","my","find","cannot","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8984baa8-27fb-5169-b918-b35bff41668c', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"lost","instruction":"Выберите подходящее слово.","options":["lost","ready","cheap"],"sentence_template":"My bag is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08d38574-355f-5da7-9a37-86a91a0e56fc', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","bag","is","lost."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["lost.","is","bag","My"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f803a7c-8493-5ee0-8ce7-d086bb50f1dd', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I lost my blue bag at the station. Please help me.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('495fb0df-53d1-53a9-9759-a0e5ec1db5e4', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I cannot find my passport. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я не могу найти свой паспорт. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8aaa314-f3f5-5213-9e9c-e133f0e92793', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveler","text":"I cannot find my phone.","translation":"Я не могу найти свой телефон.","type":"dialogue"},{"character":"Worker","text":"Please go to lost property.","translation":"Пожалуйста, пройдите в бюро находок.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Please go to lost property."},{"is_correct":false,"text":"I do not need this lesson."}],"text":"What is the natural next response?","type":"choice"}],"title":"Lost Items"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41166264-b1d7-5fe3-ab8c-0fdb34eea200', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“lost property” matches the first definition.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SEPAS_20","is_correct":true,"text":"A place where found items are kept"},{"id":"A2SEPAS_21","is_correct":false,"text":"A day of the week"},{"id":"A2SEPAS_22","is_correct":false,"text":"A kind of food"}],"word":"lost property"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48d22437-4b58-5f7b-97a3-b53d13c01558', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My bag is lost.","explanation":"The missing word is “lost.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"lost","id":"A2SEPAS_24","is_correct":true},{"audio_text":"ready","id":"A2SEPAS_25","is_correct":false},{"audio_text":"cheap","id":"A2SEPAS_26","is_correct":false}],"sentence_template":"My bag is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecb1e8c8-da5b-5e98-84f2-8e40fbbf7d07', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"lost","explanation":"The complete sentence is “My bag is lost.”","hint_prefix":"lo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My bag is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fd2ba0c-6732-54d8-bdf8-aefd53f673b7', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each travel phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"lost","id":"A2SEPAS_29","text":"lost"},{"audio_text":"bag","id":"A2SEPAS_30","text":"bag"},{"audio_text":"passport","id":"A2SEPAS_31","text":"passport"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb7b6989-a4d3-52fe-bbe2-b2db7d07172d', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Traveler","text":"I cannot find my phone."}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SEPAS_33","is_correct":true,"text":"Please go to lost property."},{"id":"A2SEPAS_34","is_correct":false,"text":"I am studying at home."},{"id":"A2SEPAS_35","is_correct":false,"text":"My favorite subject is science."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e5dde683-e9df-5bce-acac-38ee08c448f0', 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3300cccb-6598-5c32-a312-6ca043164462', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Giving Advice","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('109d8711-ba2e-59aa-bb9a-0aadcf18e59a', '3300cccb-6598-5c32-a312-6ca043164462', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SEPAS_37","left":"delay","right":"задержка"},{"id":"A2SEPAS_38","left":"delayed","right":"задерживается"},{"id":"A2SEPAS_39","left":"cancelled","right":"отменён"},{"id":"A2SEPAS_40","left":"late","right":"поздно"},{"id":"A2SEPAS_41","left":"wait","right":"ждать"},{"id":"A2SEPAS_42","left":"next bus","right":"следующий автобус"},{"id":"A2SEPAS_43","left":"What happened?","right":"Что случилось?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd745733-fa0b-5fb2-8274-fe1b61aa8c86', '3300cccb-6598-5c32-a312-6ca043164462', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct phrase is “delay.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SEPAS_45","is_correct":true,"text":"delay"},{"id":"A2SEPAS_46","is_correct":false,"text":"delayed"},{"id":"A2SEPAS_47","is_correct":false,"text":"cancelled"}],"question":"Which phrase matches “задержка”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e1f4e43-87de-5973-bef1-3acb19804271', '3300cccb-6598-5c32-a312-6ca043164462', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My train is delayed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мой поезд задерживается.","target_language":"en","word_bank":["delayed.","is","train","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b120a29-eff4-54b0-a1b0-00c3dcc99c20', '3300cccb-6598-5c32-a312-6ca043164462', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cancelled","instruction":"Выберите подходящее слово.","options":["cancelled","medium","free"],"sentence_template":"The flight is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70e9d299-ba27-548a-9933-dd17334877f6', '3300cccb-6598-5c32-a312-6ca043164462', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","flight","is","cancelled."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["cancelled.","is","flight","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ef05800-fcd3-58e9-8350-6fea3be2e9eb', '3300cccb-6598-5c32-a312-6ca043164462', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The flight is cancelled. Please wait for more information.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2822fa6-bc45-5594-b936-a9dc6fefe0a6', '3300cccb-6598-5c32-a312-6ca043164462', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My train is delayed. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мой поезд задерживается. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb834406-d434-5ef2-ab02-1080c9addb34', '3300cccb-6598-5c32-a312-6ca043164462', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Passenger","text":"Why is the train late?","translation":"Почему поезд опаздывает?","type":"dialogue"},{"character":"Worker","text":"There is a short delay.","translation":"Есть небольшая задержка.","type":"dialogue"},{"options":[{"is_correct":true,"text":"There is a short delay."},{"is_correct":false,"text":"I do not need this lesson."}],"text":"What is the natural next response?","type":"choice"}],"title":"Delays and Cancellations"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63c3d4ad-5589-5eae-9f0a-bea2869b6c3f', '3300cccb-6598-5c32-a312-6ca043164462', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cancelled” matches the first definition.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SEPAS_55","is_correct":true,"text":"Stopped so that a planned journey will not happen"},{"id":"A2SEPAS_56","is_correct":false,"text":"A day of the week"},{"id":"A2SEPAS_57","is_correct":false,"text":"A kind of food"}],"word":"cancelled"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24244101-39a7-59a7-a1d7-c30cce417989', '3300cccb-6598-5c32-a312-6ca043164462', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The flight is cancelled.","explanation":"The missing word is “cancelled.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cancelled","id":"A2SEPAS_59","is_correct":true},{"audio_text":"medium","id":"A2SEPAS_60","is_correct":false},{"audio_text":"free","id":"A2SEPAS_61","is_correct":false}],"sentence_template":"The flight is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b27f0adb-a9e1-573a-b437-3df798e2ca7b', '3300cccb-6598-5c32-a312-6ca043164462', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cancelled","explanation":"The complete sentence is “The flight is cancelled.”","hint_prefix":"ca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The flight is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42a38d65-1c67-5ec9-9c57-1c9541a198de', '3300cccb-6598-5c32-a312-6ca043164462', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each travel phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"delay","id":"A2SEPAS_64","text":"delay"},{"audio_text":"delayed","id":"A2SEPAS_65","text":"delayed"},{"audio_text":"cancelled","id":"A2SEPAS_66","text":"cancelled"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54fe4447-8163-5915-b0f0-4a3f2be85ed5', '3300cccb-6598-5c32-a312-6ca043164462', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Passenger","text":"Why is the train late?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SEPAS_68","is_correct":true,"text":"There is a short delay."},{"id":"A2SEPAS_69","is_correct":false,"text":"I am studying at home."},{"id":"A2SEPAS_70","is_correct":false,"text":"My favorite subject is science."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e5dde683-e9df-5bce-acac-38ee08c448f0', '3300cccb-6598-5c32-a312-6ca043164462', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9d38306d-6ca6-5f08-9396-dbd74a0568cb', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Evaluating Solutions","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24878391-b95c-5a9f-8774-39b4152ea2a2', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SEPAS_72","left":"reservation","right":"бронирование"},{"id":"A2SEPAS_73","left":"confirmation","right":"подтверждение"},{"id":"A2SEPAS_74","left":"wrong date","right":"неправильная дата"},{"id":"A2SEPAS_75","left":"no room","right":"нет номера"},{"id":"A2SEPAS_76","left":"booked","right":"забронирован"},{"id":"A2SEPAS_77","left":"check again","right":"проверьте ещё раз"},{"id":"A2SEPAS_78","left":"There is a problem","right":"Есть проблема"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2fa586f-19bf-532e-bf6f-4df20f300e40', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct phrase is “reservation.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2SEPAS_80","is_correct":true,"text":"reservation"},{"id":"A2SEPAS_81","is_correct":false,"text":"confirmation"},{"id":"A2SEPAS_82","is_correct":false,"text":"wrong date"}],"question":"Which phrase matches “бронирование”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61b82f8b-91f3-5d75-8f94-7c139ef9bdf4', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"There is a problem with my reservation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Есть проблема с моим бронированием.","target_language":"en","word_bank":["reservation.","my","with","problem","a","is","There"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7b773ce-7e3b-5389-a5cf-2f114e9b2a43', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"again","instruction":"Выберите подходящее слово.","options":["again","straight","cash"],"sentence_template":"Please check ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9164f11c-0e33-5ff2-b56d-b9a8c201567a', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","check","again."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["again.","check","Please"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('366a3a7c-d108-57b9-9000-086e27ca92ed', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My confirmation shows the correct date. Please check again.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5539a316-77b3-5c13-b56b-f345a4b39861', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"There is a problem with my reservation. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Есть проблема с моим бронированием. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1761b7ba-bb8d-508e-9efb-835446eaffdc', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Guest","text":"You cannot find my reservation.","translation":"Вы не можете найти моё бронирование.","type":"dialogue"},{"character":"Receptionist","text":"I am sorry. I will check again.","translation":"Мне жаль. Я проверю ещё раз.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I am sorry. I will check again."},{"is_correct":false,"text":"I do not need this lesson."}],"text":"What is the natural next response?","type":"choice"}],"title":"Reservation Problems"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54c6c7cc-8cb6-58a5-ae55-3171f2257d1f', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“confirmation” matches the first definition.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SEPAS_90","is_correct":true,"text":"A message or document showing that something is booked"},{"id":"A2SEPAS_91","is_correct":false,"text":"A day of the week"},{"id":"A2SEPAS_92","is_correct":false,"text":"A kind of food"}],"word":"confirmation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df22fc29-baba-5576-a018-007ddb40d6d1', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please check again.","explanation":"The missing word is “again.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"again","id":"A2SEPAS_94","is_correct":true},{"audio_text":"straight","id":"A2SEPAS_95","is_correct":false},{"audio_text":"cash","id":"A2SEPAS_96","is_correct":false}],"sentence_template":"Please check ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('941b45b9-774c-5186-b7ce-221ff748d300', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"again","explanation":"The complete sentence is “Please check again.”","hint_prefix":"ag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please check ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ae14294-7dc1-5568-991d-849c5bb6397e', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each travel phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reservation","id":"A2SEPAS_99","text":"reservation"},{"audio_text":"confirmation","id":"A2SEPAS_100","text":"confirmation"},{"audio_text":"wrong date","id":"A2SEPAS_101","text":"wrong date"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d17008f-fe27-544e-891b-34967492f915', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Guest","text":"You cannot find my reservation."}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SEPAS_103","is_correct":true,"text":"I am sorry. I will check again."},{"id":"A2SEPAS_104","is_correct":false,"text":"I am studying at home."},{"id":"A2SEPAS_105","is_correct":false,"text":"My favorite subject is science."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e5dde683-e9df-5bce-acac-38ee08c448f0', '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('321b1a15-2d5f-5e3b-ae82-147ae155b5e2', 'en', 'lost', 'потерянный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68621952-6b9d-5e32-a025-7eef4afdd621', 'en', 'bag', 'сумка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ddff6a84-2475-5199-9f39-fdd8c5354934', 'en', 'passport', 'паспорт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9256cf32-4de8-5026-a876-1e92206b6d91', 'en', 'phone', 'телефон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dbf64ecf-084f-5680-a92a-f70c7ffb51cc', 'en', 'lost property', 'бюро находок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7509e6d1-5e04-567b-9a44-403f3d63d889', 'en', 'cannot find', 'не могу найти', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fd591fb-ead1-5c88-87b7-072a8e6533e1', 'en', 'Please help me', 'Пожалуйста, помогите мне', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('452c85d0-90a6-5a45-a8c9-5d53e4feb35d', 'en', 'delayed', 'задерживается', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a99712d-aa0c-580a-af07-ee83248f4020', 'en', 'cancelled', 'отменён', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b88631d7-b15a-50e0-8061-594df693c0d8', 'en', 'late', 'поздно', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b26ca81a-3d9c-5b5a-9700-063a9df3d6f2', 'en', 'wait', 'ждать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a7afbabb-c159-5cfe-9621-189203c932e0', 'en', 'next bus', 'следующий автобус', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c6ea97a-a776-5991-9aca-43e0610dfd88', 'en', 'What happened?', 'Что случилось?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'бронирование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a46aef91-28ac-58d6-95ef-411e7f4b73d4', 'en', 'confirmation', 'подтверждение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d366f8d-e1d0-595e-8f7f-bd54622cb5a2', 'en', 'wrong date', 'неправильная дата', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('41233b9d-e824-5fd0-b419-40bf5b7302e8', 'en', 'no room', 'нет номера', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('239c20be-a68d-579b-898d-1596e7aa0ff1', 'en', 'booked', 'забронирован', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09874741-0c76-5a55-901f-21eb38653253', 'en', 'check again', 'проверьте ещё раз', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bac8fde6-2700-5e73-a568-115d321736ce', 'en', 'There is a problem', 'Есть проблема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'bag' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'passport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'phone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'lost property' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'cannot find' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, 'f91bb8ac-dd7e-58dd-bdc1-5eff31a3fc93', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please help me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'delayed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cancelled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'late' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'wait' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'next bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '3300cccb-6598-5c32-a312-6ca043164462', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'What happened?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirmation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'wrong date' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'no room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'booked' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'check again' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e5dde683-e9df-5bce-acac-38ee08c448f0', id, '9d38306d-6ca6-5f08-9396-dbd74a0568cb', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'There is a problem' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
