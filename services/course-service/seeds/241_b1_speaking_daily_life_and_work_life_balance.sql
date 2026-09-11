-- Track: B1_SPEAKING_DAILY_LIFE_AND_WORK_LIFE_BALANCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('53c64cad-5cfd-59da-bdfe-460544b47a0c', 'B1_SPEAKING_DAILY_LIFE_AND_WORK_LIFE_BALANCE', 'Повседневная жизнь и баланс', 'Развивайте разговорный английский уровня B1 по теме «Повседневная жизнь и баланс».', '{"en":"Daily Life and Work-Life Balance","ru":"Повседневная жизнь и баланс"}'::jsonb, '{"en":"Develop B1 spoken English for daily life and work-life balance.","ru":"Развивайте разговорный английский уровня B1 по теме «Повседневная жизнь и баланс»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('accbcce3-cbd6-5295-91c6-ed3602f20180', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Busy Routines","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fec8035-e20c-583f-a9c9-a8b2e9ec6fe7', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SDHAC_2","left":"wake up","right":"просыпаться"},{"id":"A2SDHAC_3","left":"get up","right":"вставать"},{"id":"A2SDHAC_4","left":"wash my face","right":"умывать лицо"},{"id":"A2SDHAC_5","left":"brush my teeth","right":"чистить зубы"},{"id":"A2SDHAC_6","left":"get dressed","right":"одеваться"},{"id":"A2SDHAC_7","left":"have breakfast","right":"завтракать"},{"id":"A2SDHAC_8","left":"in the morning","right":"утром"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29b07dfc-b2b0-5228-aad5-f3fc7fe2d751', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"After you wake up, you get up.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SDHAC_10","is_correct":true,"text":"Get up"},{"id":"A2SDHAC_11","is_correct":false,"text":"Go to bed"},{"id":"A2SDHAC_12","is_correct":false,"text":"Have dinner"}],"question":"What do you usually do after you wake up?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c3dcac4-357c-521f-9983-aea72e906a3a', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I get up at seven.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я встаю в семь часов.","target_language":"en","word_bank":["seven.","at","up","get","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3d2ef93-e95c-5183-a9ea-bef30b05d516', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"teeth","instruction":"Выберите подходящее слово.","options":["teeth","lunch","friend"],"sentence_template":"I brush my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83091521-055a-58d1-a753-7d866537de69', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","breakfast","in","the","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["breakfast","morning.","the","in","have","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('690e6d93-746a-5ac0-bbb4-399a28135f95', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I wake up and get up at seven.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4a16c1d-a7bb-57c2-8f80-2525d34c3f7d', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I wash my face and brush my teeth. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я умываю лицо и чищу зубы. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1e29835-36de-526f-9a60-0e571a084a5c', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mila","text":"What do you do in the morning?","translation":"Что ты делаешь утром?","type":"dialogue"},{"character":"Sam","text":"I get up and have breakfast.","translation":"Я встаю и завтракаю.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What time do you get up?"},{"is_correct":false,"text":"Who is your grandmother?"}],"text":"What can Mila ask next?","type":"choice"}],"title":"Before School"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bba8747e-4a4f-577c-98ff-9bdb9c6a9a09', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Breakfast is the first meal of the day.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SDHAC_20","is_correct":true,"text":"The first meal of the day"},{"id":"A2SDHAC_21","is_correct":false,"text":"The last activity before sleep"},{"id":"A2SDHAC_22","is_correct":false,"text":"A person in your family"}],"word":"breakfast"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66ebd9f7-7412-5a12-8e38-b083e73410b0', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I brush my teeth.","explanation":"The missing word is “teeth.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"teeth","id":"A2SDHAC_24","is_correct":true},{"audio_text":"friends","id":"A2SDHAC_25","is_correct":false},{"audio_text":"books","id":"A2SDHAC_26","is_correct":false}],"sentence_template":"I brush my ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dff52acd-fe3b-55ea-9a19-94f5943a3c8a', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"get","explanation":"The complete sentence is “I get up at seven.”","hint_prefix":"ge","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ up at seven."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bb1eba5-040d-5c66-8343-c9308628a32f', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"wake up","id":"A2SDHAC_29","text":"wake up"},{"audio_text":"get dressed","id":"A2SDHAC_30","text":"get dressed"},{"audio_text":"have breakfast","id":"A2SDHAC_31","text":"have breakfast"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21c4c704-e9d0-5827-a9c2-b9271422c0cd', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Nora","text":"What time do you get up?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SDHAC_33","is_correct":true,"text":"I get up at seven."},{"id":"A2SDHAC_34","is_correct":false,"text":"My sister is kind."},{"id":"A2SDHAC_35","is_correct":false,"text":"I like football."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('53c64cad-5cfd-59da-bdfe-460544b47a0c', 'accbcce3-cbd6-5295-91c6-ed3602f20180', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('86d46b99-c00f-5540-bcf6-bf5a8a864009', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Balancing Responsibilities","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daa200a9-6c42-507c-a44a-5f14de550c75', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SDHAC_37","left":"go to school","right":"ходить в школу"},{"id":"A2SDHAC_38","left":"go to work","right":"ходить на работу"},{"id":"A2SDHAC_39","left":"start","right":"начинать"},{"id":"A2SDHAC_40","left":"have lunch","right":"обедать"},{"id":"A2SDHAC_41","left":"study","right":"учиться"},{"id":"A2SDHAC_42","left":"finish","right":"заканчивать"},{"id":"A2SDHAC_43","left":"in the afternoon","right":"днём"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d6075e1-5091-5569-b49b-b515683d42ca', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Lunch is a meal people often have in the middle of the day.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SDHAC_45","is_correct":true,"text":"Lunch"},{"id":"A2SDHAC_46","is_correct":false,"text":"Breakfast"},{"id":"A2SDHAC_47","is_correct":false,"text":"Dinner"}],"question":"Which meal do people often have in the middle of the day?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f155984a-05df-5e73-b0bf-fb012dcfed92', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I go to work at eight.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я иду на работу в восемь часов.","target_language":"en","word_bank":["eight.","at","work","to","go","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a1e5357f-7ddc-5220-a91a-7e7dc0706057', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"lunch","instruction":"Выберите подходящее слово.","options":["lunch","teeth","father"],"sentence_template":"I have ___ at one."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73f7ac47-ceb5-5a30-a83f-9ff0fcc73cb9', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["School","starts","at","nine."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["School","nine.","at","starts"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9a584d3-af53-593d-a77c-449ae02c7224', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I study in the afternoon.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76158e9c-8b3f-5cf9-9e53-f37edf741820', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I go to school at eight and finish at three. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я иду в школу в восемь и заканчиваю в три. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa58f4aa-76b8-5f9a-a0fc-ccb7e3f59682', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Dina","text":"What time does school start?","translation":"Во сколько начинается школа?","type":"dialogue"},{"character":"Leo","text":"It starts at nine.","translation":"Она начинается в девять.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What time does it finish?"},{"is_correct":false,"text":"Do you have a daughter?"}],"text":"What can Dina ask next?","type":"choice"}],"title":"A School Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('191b00a0-4137-58d8-8881-44065bdb214e', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Finish means to stop because something is complete.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SDHAC_55","is_correct":true,"text":"To stop doing something because it is complete"},{"id":"A2SDHAC_56","is_correct":false,"text":"To begin doing something"},{"id":"A2SDHAC_57","is_correct":false,"text":"To eat in the morning"}],"word":"finish"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c62f5c2c-cca7-5497-b78c-69dc5b8ed338', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have lunch at one.","explanation":"The missing meal is “lunch.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"lunch","id":"A2SDHAC_59","is_correct":true},{"audio_text":"family","id":"A2SDHAC_60","is_correct":false},{"audio_text":"tennis","id":"A2SDHAC_61","is_correct":false}],"sentence_template":"I have ___ at one."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89a371ab-4a2e-577f-8c09-db15a4e15cbf', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"study","explanation":"The complete sentence is “I study in the afternoon.”","hint_prefix":"st","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ in the afternoon."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac6d48f2-0c3e-5036-b64a-afd27f00fc89', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"go to work","id":"A2SDHAC_64","text":"go to work"},{"audio_text":"have lunch","id":"A2SDHAC_65","text":"have lunch"},{"audio_text":"finish at three","id":"A2SDHAC_66","text":"finish at three"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0aee414-eed9-59a6-bdd3-8553ac2b9c43', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What do you do in the afternoon?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SDHAC_68","is_correct":true,"text":"I study and have lunch."},{"id":"A2SDHAC_69","is_correct":false,"text":"This is my mother."},{"id":"A2SDHAC_70","is_correct":false,"text":"I like red apples."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('53c64cad-5cfd-59da-bdfe-460544b47a0c', '86d46b99-c00f-5540-bcf6-bf5a8a864009', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a1c23886-abc7-546d-abc5-2435b0602402', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Changing Your Lifestyle","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35812d9f-a5c1-5d54-a371-7223331e6440', 'a1c23886-abc7-546d-abc5-2435b0602402', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SDHAC_72","left":"go home","right":"идти домой"},{"id":"A2SDHAC_73","left":"have dinner","right":"ужинать"},{"id":"A2SDHAC_74","left":"watch TV","right":"смотреть телевизор"},{"id":"A2SDHAC_75","left":"read a book","right":"читать книгу"},{"id":"A2SDHAC_76","left":"take a shower","right":"принимать душ"},{"id":"A2SDHAC_77","left":"go to bed","right":"ложиться спать"},{"id":"A2SDHAC_78","left":"in the evening","right":"вечером"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4c66ea2-d41b-52f7-a79f-fc8a7653ff3b', 'a1c23886-abc7-546d-abc5-2435b0602402', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"You go to bed when you are ready to sleep.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SDHAC_80","is_correct":true,"text":"Go to bed"},{"id":"A2SDHAC_81","is_correct":false,"text":"Have breakfast"},{"id":"A2SDHAC_82","is_correct":false,"text":"Go to school"}],"question":"What do you do when you are ready to sleep?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('febdc51c-ea29-5954-9a3d-4ee6aff1e768', 'a1c23886-abc7-546d-abc5-2435b0602402', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I watch TV in the evening.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я смотрю телевизор вечером.","target_language":"en","word_bank":["evening.","the","in","TV","watch","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09bbd859-6b23-5765-99b8-7150605d74ac', 'a1c23886-abc7-546d-abc5-2435b0602402', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"dinner","instruction":"Выберите подходящее слово.","options":["dinner","sister","pencil"],"sentence_template":"We have ___ at seven."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b16bd4f2-b552-5035-9772-db5015d683fb', 'a1c23886-abc7-546d-abc5-2435b0602402', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","go","to","bed","at","ten."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["bed","ten.","at","to","go","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3277bfa-7f43-5fa8-85cd-415446d90ecc', 'a1c23886-abc7-546d-abc5-2435b0602402', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I go home and have dinner at seven.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('609c359a-063f-5c4e-b15f-90d9fe047f4e', 'a1c23886-abc7-546d-abc5-2435b0602402', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"In the evening, I read a book and take a shower. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Вечером я читаю книгу и принимаю душ. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92f7e852-8a83-5466-be33-bbf10d63511b', 'a1c23886-abc7-546d-abc5-2435b0602402', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Omar","text":"What do you do after dinner?","translation":"Что ты делаешь после ужина?","type":"dialogue"},{"character":"Lina","text":"I watch TV and read a book.","translation":"Я смотрю телевизор и читаю книгу.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What time do you go to bed?"},{"is_correct":false,"text":"Is this your brother?"}],"text":"What can Omar ask next?","type":"choice"}],"title":"After Dinner"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0aeda76a-75ab-504f-9123-086795357bdb', 'a1c23886-abc7-546d-abc5-2435b0602402', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Dinner is the main meal eaten in the evening.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SDHAC_90","is_correct":true,"text":"The main meal eaten in the evening"},{"id":"A2SDHAC_91","is_correct":false,"text":"The first meal of the day"},{"id":"A2SDHAC_92","is_correct":false,"text":"A short time at school"}],"word":"dinner"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6cb2a74-9172-53df-94de-a7f08fee03dc', 'a1c23886-abc7-546d-abc5-2435b0602402', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I go to bed at ten.","explanation":"The missing word is “bed.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"bed","id":"A2SDHAC_94","is_correct":true},{"audio_text":"school","id":"A2SDHAC_95","is_correct":false},{"audio_text":"coffee","id":"A2SDHAC_96","is_correct":false}],"sentence_template":"I go to ___ at ten."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f0df48f-8d0e-5cb7-8880-63fbf709a412', 'a1c23886-abc7-546d-abc5-2435b0602402', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"TV","explanation":"The complete sentence is “I watch TV in the evening.”","hint_prefix":"T","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I watch ___ in the evening."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a77a44e-5247-5b6e-818a-09f67a198cae', 'a1c23886-abc7-546d-abc5-2435b0602402', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each speaking phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"go home","id":"A2SDHAC_99","text":"go home"},{"audio_text":"have dinner","id":"A2SDHAC_100","text":"have dinner"},{"audio_text":"go to bed","id":"A2SDHAC_101","text":"go to bed"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3311848-4673-5f69-bc14-2de6ae80fd32', 'a1c23886-abc7-546d-abc5-2435b0602402', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mina","text":"What do you do in the evening?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SDHAC_103","is_correct":true,"text":"I have dinner and read a book."},{"id":"A2SDHAC_104","is_correct":false,"text":"I have two brothers."},{"id":"A2SDHAC_105","is_correct":false,"text":"I can swim well."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('53c64cad-5cfd-59da-bdfe-460544b47a0c', 'a1c23886-abc7-546d-abc5-2435b0602402', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5acbf705-a900-5a11-b7e6-b87e8e6c7c9d', 'en', 'wake up', 'просыпаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('720777b9-407c-5f51-9f62-f574b0aee55c', 'en', 'get up', 'вставать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fad4c565-4010-5330-a917-e3c6e00e9e48', 'en', 'wash my face', 'умывать лицо', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0ffcb0e4-1b2f-5bd7-b6ae-1af942a99253', 'en', 'brush my teeth', 'чистить зубы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39b00560-7b49-5d04-9157-3d378793efb8', 'en', 'get dressed', 'одеваться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6033810f-425a-5533-ba74-c04ca1f05dcb', 'en', 'have breakfast', 'завтракать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a3062ae-57ca-5b9f-80e8-22bf7d0f07aa', 'en', 'in the morning', 'утром', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('62ce2aca-ce52-5ecc-a985-151d0515a929', 'en', 'go to school', 'ходить в школу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40bb0854-3a2e-597b-8b97-09c1dcc63726', 'en', 'go to work', 'ходить на работу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('25f5d5e2-ee11-53ba-9552-e25e8bedd962', 'en', 'start', 'начинать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3e4791c-1a47-5b49-a502-a8a9d7d08b50', 'en', 'have lunch', 'обедать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8161a2e1-76d3-5c51-a1e2-57291c90d809', 'en', 'study', 'учиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f97478e3-6aa0-54f6-844c-a7b07158c905', 'en', 'finish', 'заканчивать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba4bb677-57b1-5aac-8f6a-fa6fb90791ab', 'en', 'in the afternoon', 'днём', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec062dd0-5cc5-5b58-a74d-bdd555247ab6', 'en', 'go home', 'идти домой', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4d1efc5-cb51-515a-bd90-e8b5bdbfcf2e', 'en', 'have dinner', 'ужинать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6639183-e5de-5224-8a28-669bbf719ffe', 'en', 'watch TV', 'смотреть телевизор', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c3a42819-3a85-54ae-a3a0-b70bed24cfa5', 'en', 'read a book', 'читать книгу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5757b255-453f-5cf5-ac20-5c38bd45eb7a', 'en', 'take a shower', 'принимать душ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('afea089f-1692-5533-afe7-db139203a109', 'en', 'go to bed', 'ложиться спать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('280db975-79a0-55b3-b7ee-589608963633', 'en', 'in the evening', 'вечером', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'wake up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'get up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'wash my face' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'brush my teeth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'get dressed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'have breakfast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'accbcce3-cbd6-5295-91c6-ed3602f20180', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'go to school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'go to work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'start' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'have lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'study' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'finish' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, '86d46b99-c00f-5540-bcf6-bf5a8a864009', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'go home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'have dinner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'watch TV' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'read a book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'take a shower' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'go to bed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '53c64cad-5cfd-59da-bdfe-460544b47a0c', id, 'a1c23886-abc7-546d-abc5-2435b0602402', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in the evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
