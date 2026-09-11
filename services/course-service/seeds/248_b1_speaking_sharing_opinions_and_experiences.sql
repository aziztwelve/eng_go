-- Track: B1_SPEAKING_SHARING_OPINIONS_AND_EXPERIENCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('061027f9-83c8-5702-9cd3-60de8ca667c8', 'B1_SPEAKING_SHARING_OPINIONS_AND_EXPERIENCES', 'Обмен мнениями и опытом', 'Развивайте разговорный английский уровня B1 по теме «Обмен мнениями и опытом».', '{"en":"Sharing Opinions and Experiences","ru":"Обмен мнениями и опытом"}'::jsonb, '{"en":"Develop B1 spoken English for sharing opinions and experiences.","ru":"Развивайте разговорный английский уровня B1 по теме «Обмен мнениями и опытом»."}'::jsonb, 'en', 'B1', '', ARRAY['speaking']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', NULL, 'Разговорная практика 1', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Expressing an Opinion","ru":"Разговорная практика 1"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bdd8885-254e-5f29-857a-d736de5c202d', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SSE_2","left":"name","right":"имя"},{"id":"A2SSE_3","left":"age","right":"возраст"},{"id":"A2SSE_4","left":"years old","right":"лет"},{"id":"A2SSE_5","left":"What is your name?","right":"Как вас зовут?"},{"id":"A2SSE_6","left":"My name is","right":"Меня зовут"},{"id":"A2SSE_7","left":"How old are you?","right":"Сколько вам лет?"},{"id":"A2SSE_8","left":"I am ten","right":"Мне десять лет"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2680ab38-8e85-5945-bfbb-5146eb7f37b9', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“How old are you?” asks about a person’s age.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SSE_10","is_correct":true,"text":"How old are you?"},{"id":"A2SSE_11","is_correct":false,"text":"What is your name?"},{"id":"A2SSE_12","is_correct":false,"text":"Where are you from?"}],"question":"Which question asks about age?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b686b6b5-cc68-5041-963e-4b1a202a50ae', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am ten years old.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне десять лет.","target_language":"en","word_bank":["years","ten","old.","I","am"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c004422-60ea-517d-9249-f218f21a18f0', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","age","old"],"sentence_template":"My ___ is Kate."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f92c5623-3dac-5e8e-b008-2bcbee1c3a39', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","ten","years","old."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["old.","years","I","ten","am"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7cb5c6cb-ab1e-594c-b4fe-e4684f504d3d', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My name is Kate. I am ten years old.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24438740-3c12-5dda-9a82-0a5b699fe224', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello! My name is Kate. I am ten years old. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Привет! Меня зовут Кейт. Мне десять лет. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e64c6a-ea26-57ad-a988-69c618bcd320', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"Hello! My name is Ben. What is your name?","translation":"Привет! Меня зовут Бен. Как тебя зовут?","type":"dialogue"},{"character":"Lily","text":"My name is Lily.","translation":"Меня зовут Лили.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How old are you?"},{"is_correct":false,"text":"Good night?"}],"text":"What should Ben ask next?","type":"choice"}],"title":"A New Classmate"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bee2ef03-91d3-59f7-a40d-737058599678', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Age” means the number of years a person has lived.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SSE_20","is_correct":true,"text":"The number of years a person has lived"},{"id":"A2SSE_21","is_correct":false,"text":"The name of a country"},{"id":"A2SSE_22","is_correct":false,"text":"Something a person likes"}],"word":"age"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b49401d-c86e-575f-9617-a74692e981f4', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am ten years old.","explanation":"The complete sentence is “I am ten years old.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"old","id":"A2SSE_24","is_correct":true},{"audio_text":"name","id":"A2SSE_25","is_correct":false},{"audio_text":"from","id":"A2SSE_26","is_correct":false}],"sentence_template":"I am ten years ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64a1f31a-6042-5b06-b273-bd145009e5a8', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"name","explanation":"The complete sentence is “My name is Dan.”","hint_prefix":"na","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ is Dan."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36f3d0f9-2454-56f0-b52f-43a33fb60d94', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"name","id":"A2SSE_29","text":"name"},{"audio_text":"age","id":"A2SSE_30","text":"age"},{"audio_text":"years old","id":"A2SSE_31","text":"years old"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ac5636a-c985-5a46-a0bf-0c5245d097bc', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mia","text":"Hello! What is your name?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SSE_33","is_correct":true,"text":"Hi! My name is Leo."},{"id":"A2SSE_34","is_correct":false,"text":"I am from name."},{"id":"A2SSE_35","is_correct":false,"text":"Ten goodbye."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('061027f9-83c8-5702-9cd3-60de8ca667c8', '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('94cdb70e-100b-5b28-ba1b-55ae8bb89074', NULL, 'Разговорная практика 2', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Giving Reasons and Examples","ru":"Разговорная практика 2"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('905b0504-e817-5866-80c2-b3de7e45c2a6', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SSE_37","left":"country","right":"страна"},{"id":"A2SSE_38","left":"city","right":"город"},{"id":"A2SSE_39","left":"live","right":"жить"},{"id":"A2SSE_40","left":"from","right":"из"},{"id":"A2SSE_41","left":"Where are you from?","right":"Откуда вы?"},{"id":"A2SSE_42","left":"I am from Russia","right":"Я из России"},{"id":"A2SSE_43","left":"I live in Moscow","right":"Я живу в Москве"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16a4e1b7-933f-57a9-87b8-2edf85dfad49', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Where are you from?” asks about a person’s country or place of origin.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SSE_45","is_correct":true,"text":"Where are you from?"},{"id":"A2SSE_46","is_correct":false,"text":"How old are you?"},{"id":"A2SSE_47","is_correct":false,"text":"What is your name?"}],"question":"Which question asks about your country?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('700d7ca5-dc00-5bfd-94a3-b840692f766b', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am from Russia.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я из России.","target_language":"en","word_bank":["Russia.","from","I","am"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80e37619-1b80-5341-9f06-c93f10c09ed7', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"in","instruction":"Выберите подходящее слово.","options":["in","old","name"],"sentence_template":"I live ___ Moscow."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bac3e0a9-82b4-502a-bd2a-b1b621ec3932', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Where","are","you","from?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["from?","are","Where","you"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('000992fa-1518-5154-913c-b67211f52ef8', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am from Russia. I live in Moscow.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f010f56d-c36b-5ff1-952f-f5c46cbed570', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am from Russia, and I live in Moscow. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я из России и живу в Москве. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c6c3bad-027c-512d-8e58-f3bb42711dbd', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Eva","text":"Hi! I am Eva. Where are you from?","translation":"Привет! Я Ева. Откуда ты?","type":"dialogue"},{"character":"Tom","text":"I am from Canada.","translation":"Я из Канады.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What city do you live in?"},{"is_correct":false,"text":"How name are you?"}],"text":"What should Eva ask next?","type":"choice"}],"title":"Two New Friends"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dd7752b-a3ca-5f09-b5ce-f8a71b8474e3', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A city is a large place where many people live.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SSE_55","is_correct":true,"text":"A large place where many people live"},{"id":"A2SSE_56","is_correct":false,"text":"The number of years a person has lived"},{"id":"A2SSE_57","is_correct":false,"text":"A word used to say goodbye"}],"word":"city"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a55ff66c-cbc5-538b-9a9a-89f3c2376835', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am from Canada.","explanation":"The complete sentence is “I am from Canada.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"from","id":"A2SSE_59","is_correct":true},{"audio_text":"live","id":"A2SSE_60","is_correct":false},{"audio_text":"city","id":"A2SSE_61","is_correct":false}],"sentence_template":"I am ___ Canada."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f4ef889-f38e-5b4f-8a2c-47b575ff7195', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"live","explanation":"The complete sentence is “I live in London.”","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ in London."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3c45702-e669-560a-9e8a-aa5981970e56', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"country","id":"A2SSE_64","text":"country"},{"audio_text":"city","id":"A2SSE_65","text":"city"},{"audio_text":"live","id":"A2SSE_66","text":"live"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('997a03a7-98a7-5557-8902-07b2e265e8c6', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Noah","text":"Where are you from?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SSE_68","is_correct":true,"text":"I am from Brazil."},{"id":"A2SSE_69","is_correct":false,"text":"I am twelve name."},{"id":"A2SSE_70","is_correct":false,"text":"Good night from."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('061027f9-83c8-5702-9cd3-60de8ca667c8', '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('77f2306d-608f-5b4b-8713-5c191bfd734e', NULL, 'Разговорная практика 3', 'Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами.', '{"en":"Agreeing and Disagreeing","ru":"Разговорная практика 3"}'::jsonb, '{"en":"Take part confidently in familiar B1 discussions by connecting ideas and supporting opinions with reasons and examples.","ru":"Уверенно участвовать в знакомых обсуждениях уровня B1, связывая идеи и подкрепляя мнение причинами и примерами."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35391f9a-d9d4-5d3c-9b77-8ac083d52edf', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2SSE_72","left":"like","right":"нравиться"},{"id":"A2SSE_73","left":"love","right":"очень любить"},{"id":"A2SSE_74","left":"music","right":"музыка"},{"id":"A2SSE_75","left":"books","right":"книги"},{"id":"A2SSE_76","left":"sports","right":"спорт"},{"id":"A2SSE_77","left":"What do you like?","right":"Что вам нравится?"},{"id":"A2SSE_78","left":"I like music","right":"Мне нравится музыка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6ebc907-a815-5210-a5a7-41b9c986a052', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“I like music” tells someone about a personal interest.","instruction":"Выберите правильный ответ.","options":[{"id":"A2SSE_80","is_correct":true,"text":"I like music."},{"id":"A2SSE_81","is_correct":false,"text":"I am from Spain."},{"id":"A2SSE_82","is_correct":false,"text":"My name is Alex."}],"question":"Which sentence talks about a personal interest?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('562bed30-9d9e-5cd7-9285-06e1eae601c4', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I like books.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нравятся книги.","target_language":"en","word_bank":["books.","like","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('696bc674-56e3-53a3-bc36-011df3343cf6', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"like","instruction":"Выберите подходящее слово.","options":["like","live","old"],"sentence_template":"I ___ music."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('46a89a0c-ba41-5870-ba35-c3600905cf43', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","like","sports."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["sports.","I","like"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fed4c24-7c47-502a-8bf5-0d84d88665ab', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I like music and books.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2abec4e7-303d-510f-af92-7a724efe3648', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My name is Alex. I like music and sports. I can give one more detail. In my experience, the best choice depends on the situation, so I would consider both advantages and disadvantages.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Меня зовут Алекс. Мне нравятся музыка и спорт. Я могу добавить ещё одну деталь. По моему опыту, лучший выбор зависит от ситуации, поэтому я бы рассмотрел как преимущества, так и недостатки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f458b258-426c-594a-908d-7cc79617b186', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Amy","text":"Hi! I am Amy. I like books. What do you like?","translation":"Привет! Я Эми. Мне нравятся книги. Что нравится тебе?","type":"dialogue"},{"character":"Max","text":"I like music and sports.","translation":"Мне нравятся музыка и спорт.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That is nice!"},{"is_correct":false,"text":"I am from books."}],"text":"What should Amy say?","type":"choice"}],"title":"Talking About Interests"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5a5e577-6ee5-537b-91c4-fe1a76ea340e', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Sports are games and physical activities.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2SSE_90","is_correct":true,"text":"Games and physical activities"},{"id":"A2SSE_91","is_correct":false,"text":"Words printed in a book"},{"id":"A2SSE_92","is_correct":false,"text":"Sounds in a song"}],"word":"sports"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d773696-38ed-5f53-9fc0-932bb0795434', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I like music.","explanation":"The complete sentence is “I like music.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"music","id":"A2SSE_94","is_correct":true},{"audio_text":"city","id":"A2SSE_95","is_correct":false},{"audio_text":"age","id":"A2SSE_96","is_correct":false}],"sentence_template":"I like ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52901619-8e61-5813-9a83-9ac17a11d177', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"like","explanation":"The complete sentence is “I like books.”","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ books."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3897d42-9988-52e8-b781-348db48a0a6f', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"music","id":"A2SSE_99","text":"music"},{"audio_text":"books","id":"A2SSE_100","text":"books"},{"audio_text":"sports","id":"A2SSE_101","text":"sports"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f530100-293b-5cf8-b601-92febd8d16da', '77f2306d-608f-5b4b-8713-5c191bfd734e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Emma","text":"What do you like?"}],"explanation":"Choose the response that develops the discussion with a clear opinion, reason, or relevant example.","instruction":"Ответьте.","options":[{"id":"A2SSE_103","is_correct":true,"text":"I like music and books."},{"id":"A2SSE_104","is_correct":false,"text":"I live in music."},{"id":"A2SSE_105","is_correct":false,"text":"My age is books."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('061027f9-83c8-5702-9cd3-60de8ca667c8', '77f2306d-608f-5b4b-8713-5c191bfd734e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4060b2dd-4a78-5bae-b4fb-33a4613c94aa', 'en', 'name', 'имя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880aad55-bae4-5925-ac19-ba3fbbedaba4', 'en', 'age', 'возраст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c1ca07e-448a-5279-a8d5-f243a10ce07b', 'en', 'years old', 'лет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6da48424-02f0-5c09-afab-17005f5ceb5f', 'en', 'What is your name?', 'Как вас зовут?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('307efd6f-9555-5d9b-9780-a6fcf74f948b', 'en', 'How old are you?', 'Сколько вам лет?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4b2106a-31c1-5e81-92ed-05e98efc27c9', 'en', 'I am ten', 'Мне десять лет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40fa4460-4d84-5eb4-ae8b-d1c28cebd1bb', 'en', 'country', 'страна', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1008785a-c291-5dc4-a7f8-9a8323ab8391', 'en', 'city', 'город', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb51ce95-b009-5e4d-a94e-0db02fcdc4b4', 'en', 'live', 'жить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b502de8a-71d2-532a-a960-9e6d55a478bb', 'en', 'from', 'из', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('322d95de-8006-5d9e-bb2f-4fed296ecbaa', 'en', 'Where are you from?', 'Откуда вы?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('def89a12-d671-51c4-b3b2-c2cd68947e01', 'en', 'I am from Russia', 'Я из России', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('233e7ae7-c7e3-5151-96db-3e7944e3dfaa', 'en', 'I live in Moscow', 'Я живу в Москве', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5432ea15-2ca8-5555-9d0f-61e13b5b30f3', 'en', 'like', 'нравиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2131ca47-0216-5acf-a9ce-bcbeb29331c1', 'en', 'love', 'очень любить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('99e8f107-7345-5964-a5cb-60a50d4dbebd', 'en', 'music', 'музыка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4c03562-207d-5c27-8003-4d16aa14aaf3', 'en', 'books', 'книги', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c2b4877-269f-5a87-927c-b029a19b6efa', 'en', 'sports', 'спорт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e2dd48f-e87d-5e4e-8d3c-7f63065115f3', 'en', 'What do you like?', 'Что вам нравится?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f6fcdd0-f394-54bc-a77a-5f12f821969a', 'en', 'I like music', 'Мне нравится музыка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'age' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'years old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is your name?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'How old are you?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '75d0cb7a-50e6-5c2b-829d-4d9d49f3f610', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am ten' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'country' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'city' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'live' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Where are you from?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am from Russia' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '94cdb70e-100b-5b28-ba1b-55ae8bb89074', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I live in Moscow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'like' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'love' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'music' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'books' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sports' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'What do you like?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '061027f9-83c8-5702-9cd3-60de8ca667c8', id, '77f2306d-608f-5b4b-8713-5c191bfd734e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I like music' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
