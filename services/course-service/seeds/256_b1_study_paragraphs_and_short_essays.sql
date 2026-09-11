-- Track: B1_STUDY_PARAGRAPHS_AND_SHORT_ESSAYS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('2255610a-b619-57e9-a405-fc42ff7183cb', 'B1_STUDY_PARAGRAPHS_AND_SHORT_ESSAYS', 'Абзацы и короткие эссе', 'Развивайте учебные навыки уровня B1 по теме «Абзацы и короткие эссе».', '{"en":"Paragraphs and Short Essays","ru":"Абзацы и короткие эссе"}'::jsonb, '{"en":"Develop B1 study skills for paragraphs and short essays.","ru":"Развивайте учебные навыки уровня B1 по теме «Абзацы и короткие эссе»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('16a30d12-2775-5d38-b72a-ce0062d1aa0e', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Topic Sentences","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5cc6f89-fc83-527f-aa7c-dcdf4508282f', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STWSP_2","left":"first name","right":"имя"},{"id":"A2STWSP_3","left":"last name","right":"фамилия"},{"id":"A2STWSP_4","left":"full name","right":"полное имя"},{"id":"A2STWSP_5","left":"spell","right":"произносить по буквам"},{"id":"A2STWSP_6","left":"letter","right":"буква"},{"id":"A2STWSP_7","left":"My name is","right":"Меня зовут"},{"id":"A2STWSP_8","left":"How do you spell that?","right":"Как это пишется по буквам?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41459a4f-7dc4-5978-9782-b36fe8abb81f', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Brown is the last name.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STWSP_10","is_correct":true,"text":"Brown"},{"id":"A2STWSP_11","is_correct":false,"text":"Anna"},{"id":"A2STWSP_12","is_correct":false,"text":"Name"}],"question":"What is the last name in “My name is Anna Brown”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26f2f723-7bd4-53b0-9398-38ca30738c3d', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My name is Anna Brown.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Меня зовут Анна Браун.","target_language":"en","word_bank":["Brown.","Anna","is","name","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7511149-6f50-521a-b73b-64c58fe087a4', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"spell","instruction":"Выберите подходящее слово.","options":["spell","live","Friday"],"sentence_template":"How do you ___ your name?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4744aa47-f647-547b-b3b3-08b2c74c68d9', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","is","your","last","name?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["name?","last","your","is","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd4a9116-963f-58a6-b1c4-bb0abb9f960f', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My full name is Daniel Green.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de1fcc7f-ab7d-59a9-a835-4ec389f0b192', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My last name is Clark. C-L-A-R-K. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Моя фамилия Кларк. К-Л-А-Р-К. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e03f47cc-1044-50ed-9adb-cd3e0c7bda13', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Clerk","text":"What is your full name?","translation":"Как ваше полное имя?","type":"dialogue"},{"character":"Guest","text":"My name is Sofia Bell.","translation":"Меня зовут София Белл.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How do you spell Bell?"},{"is_correct":false,"text":"What time is lunch?"}],"text":"What can the clerk ask next?","type":"choice"}],"title":"At Registration"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('efcd14f0-43a7-59f3-afe1-0bbfd0c9a552', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Spell means to give the letters of a word.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STWSP_20","is_correct":true,"text":"To say or write the letters of a word"},{"id":"A2STWSP_21","is_correct":false,"text":"To say your age"},{"id":"A2STWSP_22","is_correct":false,"text":"To give a street number"}],"word":"spell"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b9c184b-8498-5b9b-8c51-1fba372947fd', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My last name is Clark.","explanation":"The missing name is “Clark.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Clark","id":"A2STWSP_24","is_correct":true},{"audio_text":"Monday","id":"A2STWSP_25","is_correct":false},{"audio_text":"table","id":"A2STWSP_26","is_correct":false}],"sentence_template":"My last name is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d7e2be2-4093-5bf3-bc29-23a3ff94236b', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"first","explanation":"The complete phrase is “My first name is Anna.”","hint_prefix":"fi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"My ___ name is Anna."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0930e24-3839-5c54-8a8a-53fdf6dac53b', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio phrase with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"first name","id":"A2STWSP_29","text":"first name"},{"audio_text":"last name","id":"A2STWSP_30","text":"last name"},{"audio_text":"How do you spell that?","id":"A2STWSP_31","text":"How do you spell that?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b71b42c6-444e-51c6-8cbd-f10b42d986e9', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Clerk","text":"What is your full name?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STWSP_33","is_correct":true,"text":"My full name is Anna Brown."},{"id":"A2STWSP_34","is_correct":false,"text":"I am at nine o’clock."},{"id":"A2STWSP_35","is_correct":false,"text":"The bank is on the left."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2255610a-b619-57e9-a405-fc42ff7183cb', '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e560ea82-8c36-5d81-a014-8baa3440d441', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Supporting Ideas","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb53e8ee-b211-5e0d-a25e-8f800a6f641b', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STWSP_37","left":"age","right":"возраст"},{"id":"A2STWSP_38","left":"years old","right":"лет"},{"id":"A2STWSP_39","left":"country","right":"страна"},{"id":"A2STWSP_40","left":"nationality","right":"национальность"},{"id":"A2STWSP_41","left":"from","right":"из"},{"id":"A2STWSP_42","left":"Russian","right":"русский"},{"id":"A2STWSP_43","left":"I am twenty years old","right":"Мне двадцать лет"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69b6ea55-4897-5cca-8634-a6d40b6f8196', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The speaker says “eighteen years old.”","instruction":"Выберите правильный ответ.","options":[{"id":"A2STWSP_45","is_correct":true,"text":"Eighteen"},{"id":"A2STWSP_46","is_correct":false,"text":"Eighty"},{"id":"A2STWSP_47","is_correct":false,"text":"Eight"}],"question":"How old is the speaker in “I am eighteen years old”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d54f128a-e963-5143-bd04-7642563eb25e', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I am from Tajikistan.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я из Таджикистана.","target_language":"en","word_bank":["Tajikistan.","from","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dff2e2f8-a473-5688-ba35-40a34cf19108', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"old","instruction":"Выберите подходящее слово.","options":["old","left","January"],"sentence_template":"I am twenty years ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d23ddd03-46bd-5ab2-9f84-ff636a99dfb6', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Where","are","you","from?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["you","from?","are","Where"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cbce4fc-05c4-5beb-a69d-5e0be0249f98', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I am nineteen years old and I am from Russia.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f59710b1-5111-5145-9576-c95e6760595d', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am from Tajikistan, and my nationality is Tajik. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я из Таджикистана, и моя национальность — таджик. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ec610bf-da23-5b36-9b7e-d2af7e2f6f69', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"Where are you from?","translation":"Откуда ты?","type":"dialogue"},{"character":"Ivan","text":"I am from Russia.","translation":"Я из России.","type":"dialogue"},{"options":[{"is_correct":true,"text":"How old are you?"},{"is_correct":false,"text":"Where is the library?"}],"text":"What can Maya ask next?","type":"choice"}],"title":"Meeting a Student"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cea8826d-9820-5d87-94a6-133a9b9eb0a4', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Nationality describes which country group a person belongs to.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STWSP_55","is_correct":true,"text":"The country group a person belongs to"},{"id":"A2STWSP_56","is_correct":false,"text":"The number of years a person has lived"},{"id":"A2STWSP_57","is_correct":false,"text":"The street where a person lives"}],"word":"nationality"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('231f6857-a6d3-5f85-bdf1-1e2c5c1f1040', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am twenty years old.","explanation":"The missing word is “old.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"old","id":"A2STWSP_59","is_correct":true},{"audio_text":"right","id":"A2STWSP_60","is_correct":false},{"audio_text":"book","id":"A2STWSP_61","is_correct":false}],"sentence_template":"I am twenty years ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddb91459-aa30-5811-b398-6b95fd8a3c8e', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"from","explanation":"The complete sentence is “I am from Russia.”","hint_prefix":"fr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am ___ Russia."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9792a1d7-038a-5210-ae62-ceda3460be22', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio phrase with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"eighteen years old","id":"A2STWSP_64","text":"eighteen years old"},{"audio_text":"from Russia","id":"A2STWSP_65","text":"from Russia"},{"audio_text":"Tajik nationality","id":"A2STWSP_66","text":"Tajik nationality"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69be6d8c-60a7-5007-b56e-8337d45381a8', 'e560ea82-8c36-5d81-a014-8baa3440d441', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Ben","text":"Where are you from?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STWSP_68","is_correct":true,"text":"I am from Tajikistan."},{"id":"A2STWSP_69","is_correct":false,"text":"I am twenty years old."},{"id":"A2STWSP_70","is_correct":false,"text":"My class starts at nine."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2255610a-b619-57e9-a405-fc42ff7183cb', 'e560ea82-8c36-5d81-a014-8baa3440d441', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a98c7636-40d7-5cc8-88ba-ca9a35c43486', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Editing a Short Essay","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcb55504-0297-5c22-8bf8-748cfee90db5', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STWSP_72","left":"address","right":"адрес"},{"id":"A2STWSP_73","left":"street","right":"улица"},{"id":"A2STWSP_74","left":"house number","right":"номер дома"},{"id":"A2STWSP_75","left":"phone number","right":"номер телефона"},{"id":"A2STWSP_76","left":"email address","right":"адрес электронной почты"},{"id":"A2STWSP_77","left":"at","right":"собака в адресе электронной почты"},{"id":"A2STWSP_78","left":"dot","right":"точка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a344b08e-8c5d-5a34-b524-77178a02d1b5', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The speaker gives a phone number.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STWSP_80","is_correct":true,"text":"A phone number"},{"id":"A2STWSP_81","is_correct":false,"text":"A street name"},{"id":"A2STWSP_82","is_correct":false,"text":"An email address"}],"question":"Which detail do you hear in “My phone number is 555 204”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28a26be3-6211-5b05-99c4-030b30b41a0c', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I live on Park Street.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я живу на Парковой улице.","target_language":"en","word_bank":["Street.","Park","on","live","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('491510af-a9d6-5ddb-9c5e-d70baf200a22', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"number","instruction":"Выберите подходящее слово.","options":["number","Friday","coffee"],"sentence_template":"My house ___ is twelve."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea96407f-1b99-5379-9040-0c2776532e55', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["What","is","your","email","address?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["address?","email","your","is","What"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa9e3a1e-ba5c-5578-aa2b-402a02801156', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My address is twelve King Street.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57365469-9806-56ac-817a-ee2334910218', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My email is anna at mail dot com. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Мой адрес электронной почты: anna@mail.com. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('234ed388-05e5-503d-9393-7c3e488e37da', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Clerk","text":"What is your address?","translation":"Какой у вас адрес?","type":"dialogue"},{"character":"Student","text":"I live at ten Green Street.","translation":"Я живу по адресу Грин-стрит, дом десять.","type":"dialogue"},{"options":[{"is_correct":true,"text":"What is your phone number?"},{"is_correct":false,"text":"What is your favorite food?"}],"text":"What can the clerk ask next?","type":"choice"}],"title":"Joining a Course"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5a46379-bc7b-5b6f-a538-e47c4aab989f', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"An address shows where someone lives.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STWSP_90","is_correct":true,"text":"Information showing where someone lives"},{"id":"A2STWSP_91","is_correct":false,"text":"The number of years someone has lived"},{"id":"A2STWSP_92","is_correct":false,"text":"A person’s country group"}],"word":"address"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19c60a92-c11d-5854-b892-6a8a5364a7a8', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"My house number is twelve.","explanation":"The missing house number is “twelve.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"twelve","id":"A2STWSP_94","is_correct":true},{"audio_text":"Tuesday","id":"A2STWSP_95","is_correct":false},{"audio_text":"teacher","id":"A2STWSP_96","is_correct":false}],"sentence_template":"My house number is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f8ad06d-485c-5a4e-a1ac-b9a7bba8726a', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"Street","explanation":"The complete address is “I live on Park Street.”","hint_prefix":"St","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I live on Park ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77e3be40-1e6b-57e6-873d-3cbca1d2dd91', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each audio phrase with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"phone number","id":"A2STWSP_99","text":"phone number"},{"audio_text":"email address","id":"A2STWSP_100","text":"email address"},{"audio_text":"twelve King Street","id":"A2STWSP_101","text":"twelve King Street"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae21783e-a18e-59ac-95f4-965ec1a6cc91', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Clerk","text":"What is your phone number?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STWSP_103","is_correct":true,"text":"It is 555 204."},{"id":"A2STWSP_104","is_correct":false,"text":"It is Friday."},{"id":"A2STWSP_105","is_correct":false,"text":"It is near the cafe."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('2255610a-b619-57e9-a405-fc42ff7183cb', 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a40bead-ee3b-5a50-b5b3-2a7ac515e63f', 'en', 'first name', 'имя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d7b2e8f7-0ac7-50e7-82ab-adbf781788d8', 'en', 'last name', 'фамилия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1e42ee-a1e5-5254-ad42-c392a20bbabf', 'en', 'full name', 'полное имя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('23655212-4ff5-56e7-a796-94a85f0c8945', 'en', 'spell', 'произносить по буквам', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fb6a805-eb41-5151-aeb7-83d7923f372c', 'en', 'letter', 'буква', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10535791-2ab9-5963-a77c-534729030e5e', 'en', 'My name is', 'Меня зовут', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7d57a8a7-df3c-5959-888d-29617a1fa780', 'en', 'How do you spell that?', 'Как это пишется по буквам?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880aad55-bae4-5925-ac19-ba3fbbedaba4', 'en', 'age', 'возраст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c1ca07e-448a-5279-a8d5-f243a10ce07b', 'en', 'years old', 'лет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40fa4460-4d84-5eb4-ae8b-d1c28cebd1bb', 'en', 'country', 'страна', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80765ac9-437a-5af9-81c2-8d36ae1bf7f3', 'en', 'nationality', 'национальность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b502de8a-71d2-532a-a960-9e6d55a478bb', 'en', 'from', 'из', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b9bd039-9a79-5fe3-a03a-15125ca8aefa', 'en', 'Russian', 'русский', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b090dacc-14cf-5062-8f99-e7063e0df167', 'en', 'I am twenty years old', 'Мне двадцать лет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9bc6c78-f5d9-51ba-9023-aef3ffa96308', 'en', 'address', 'адрес', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a76dc60-741b-5113-b3e4-77a22e4a1273', 'en', 'street', 'улица', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eef523f7-d240-5c5a-8700-9ea83c774b59', 'en', 'house number', 'номер дома', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffbb77c2-8c23-57c7-9667-ce79ce26cfce', 'en', 'phone number', 'номер телефона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('596a5a40-c8cf-5acb-b6e9-0acb8212a043', 'en', 'email address', 'адрес электронной почты', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ff85d40-8b7c-54a9-85be-7432dbca8147', 'en', 'at', 'собака в адресе электронной почты', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d1de962-2214-58fe-af33-ddc01ddffb9f', 'en', 'dot', 'точка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'first name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'last name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'full name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'spell' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'letter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'My name is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, '16a30d12-2775-5d38-b72a-ce0062d1aa0e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'How do you spell that?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'age' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'years old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'country' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'nationality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Russian' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'e560ea82-8c36-5d81-a014-8baa3440d441', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am twenty years old' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'address' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'street' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'house number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'phone number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'email address' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'at' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '2255610a-b619-57e9-a405-fc42ff7183cb', id, 'a98c7636-40d7-5cc8-88ba-ca9a35c43486', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'dot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
