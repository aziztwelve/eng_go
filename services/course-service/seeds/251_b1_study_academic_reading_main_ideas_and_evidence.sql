-- Track: B1_STUDY_ACADEMIC_READING_MAIN_IDEAS_AND_EVIDENCE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3ab259bc-1389-5195-a7fb-ad5a64f65b37', 'B1_STUDY_ACADEMIC_READING_MAIN_IDEAS_AND_EVIDENCE', 'Учебное чтение: основные идеи и доказательства', 'Развивайте учебные навыки уровня B1 по теме «Учебное чтение: основные идеи и доказательства».', '{"en":"Academic Reading: Main Ideas and Evidence","ru":"Учебное чтение: основные идеи и доказательства"}'::jsonb, '{"en":"Develop B1 study skills for academic reading: main ideas and evidence.","ru":"Развивайте учебные навыки уровня B1 по теме «Учебное чтение: основные идеи и доказательства»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Finding the Main Argument","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea79895c-e82b-5096-b930-1d67e77186b1', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STRFMI_2","left":"name","right":"имя"},{"id":"A2STRFMI_3","left":"age","right":"возраст"},{"id":"A2STRFMI_4","left":"city","right":"город"},{"id":"A2STRFMI_5","left":"live","right":"жить"},{"id":"A2STRFMI_6","left":"like","right":"нравиться"},{"id":"A2STRFMI_7","left":"student","right":"ученик"},{"id":"A2STRFMI_8","left":"teacher","right":"учитель"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9594744c-f93f-59c8-b981-7069bba0bc21', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The sentence says Mia is ten.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STRFMI_10","is_correct":true,"text":"Ten"},{"id":"A2STRFMI_11","is_correct":false,"text":"Nine"},{"id":"A2STRFMI_12","is_correct":false,"text":"Twelve"}],"question":"Read: “Mia is ten.” How old is Mia?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a8db0a4-a41b-5d87-a56c-81eb07939b79', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Tom lives in London.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Том живёт в Лондоне.","target_language":"en","word_bank":["London.","in","lives","Tom"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d959b2c-558a-5dd8-8881-af8b1c2393b2', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"teacher","instruction":"Выберите подходящее слово.","options":["teacher","city","age"],"sentence_template":"Anna is a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6bd886e9-18cf-5e50-87be-69abc9b1dcd1', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Ben","likes","music."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["music.","likes","Ben"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a7cabb2-5ca4-5532-a297-8764a8b9e83b', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Eva is a student.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('492fd334-f70b-50ef-9869-3c0b32c8316c', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"My name is Leo. I live in Rome. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Меня зовут Лео. Я живу в Риме. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97e326bc-9bbe-5b1a-abe5-e3817b697c20', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Text","text":"Sam is eleven. He lives in Paris.","translation":"Сэму одиннадцать лет. Он живёт в Париже.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Paris."},{"is_correct":false,"text":"London."}],"text":"Where does Sam live?","type":"choice"}],"title":"Read and Answer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('474234ef-5dd7-5c42-ab4b-c5081dc1ba38', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Live” means to have your home in a place.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STRFMI_20","is_correct":true,"text":"To have your home in a place"},{"id":"A2STRFMI_21","is_correct":false,"text":"To read a school book"},{"id":"A2STRFMI_22","is_correct":false,"text":"To ask a question"}],"word":"live"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a9d48d9-a5a2-577a-a974-78000dde0865', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Mia lives in Rome.","explanation":"The sentence names Rome.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Rome","id":"A2STRFMI_24","is_correct":true},{"audio_text":"eleven","id":"A2STRFMI_25","is_correct":false},{"audio_text":"teacher","id":"A2STRFMI_26","is_correct":false}],"sentence_template":"Mia lives in ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdac70a4-f71b-5646-a875-ec9853176788', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"music","explanation":"The complete sentence is “Ben likes music.”","hint_prefix":"mu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Ben likes ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4df99ec-2d1a-525b-ba9f-530610928da3', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"name","id":"A2STRFMI_29","text":"name"},{"audio_text":"city","id":"A2STRFMI_30","text":"city"},{"audio_text":"student","id":"A2STRFMI_31","text":"student"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('673ea309-c9d4-573c-9eff-dd2938c6ae35', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Read: “Nina is a doctor.” What is Nina’s job?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STRFMI_33","is_correct":true,"text":"She is a doctor."},{"id":"A2STRFMI_34","is_correct":false,"text":"She is ten."},{"id":"A2STRFMI_35","is_correct":false,"text":"She lives in Rome."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3ab259bc-1389-5195-a7fb-ad5a64f65b37', '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('eaef26b8-af3f-5101-8d38-ea011b9ecd50', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Identifying Supporting Evidence","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cd7c6e06-d11d-5df5-a8ef-25b7c1c1beca', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STRFMI_37","left":"from","right":"из"},{"id":"A2STRFMI_38","left":"favorite","right":"любимый"},{"id":"A2STRFMI_39","left":"family","right":"семья"},{"id":"A2STRFMI_40","left":"brother","right":"брат"},{"id":"A2STRFMI_41","left":"sister","right":"сестра"},{"id":"A2STRFMI_42","left":"friend","right":"друг"},{"id":"A2STRFMI_43","left":"home","right":"дом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81a2e5c9-e6d1-5768-961e-2e5a19639b83', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The description says Leo is from Spain.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STRFMI_45","is_correct":true,"text":"Spain"},{"id":"A2STRFMI_46","is_correct":false,"text":"Italy"},{"id":"A2STRFMI_47","is_correct":false,"text":"France"}],"question":"Read: “Leo is from Spain.” Where is Leo from?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be6e143c-d7cf-59b9-81b2-17f59779da82', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My favorite color is blue.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мой любимый цвет — синий.","target_language":"en","word_bank":["blue.","is","color","favorite","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ec53d72-f3b4-512f-87a5-527231a1af3b', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"brother","instruction":"Выберите подходящее слово.","options":["brother","Spain","blue"],"sentence_template":"This is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2090f234-eb50-59d8-a334-cfb7b059e982', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Sara","is","from","Italy."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["from","is","Sara","Italy."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d05bb2f-0bdb-550c-beaf-726d8c99852e', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"My sister likes books.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7681ee11-d633-5ebb-b8fe-ab009344f211', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This is my friend Ana. She is from Spain. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Это моя подруга Ана. Она из Испании. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5af7c05f-53e4-51cf-bee0-41b676908f39', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Text","text":"My name is Eva. I am from Poland. My favorite color is green.","translation":"Меня зовут Ева. Я из Польши. Мой любимый цвет — зелёный.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Green."},{"is_correct":false,"text":"Blue."}],"text":"What is Eva’s favorite color?","type":"choice"}],"title":"A Short Profile"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91b17289-52db-54fc-80bf-60c8bf491eb5', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“Favorite” means liked more than all others.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STRFMI_55","is_correct":true,"text":"Liked more than all others"},{"id":"A2STRFMI_56","is_correct":false,"text":"A person in your family"},{"id":"A2STRFMI_57","is_correct":false,"text":"The place where you live"}],"word":"favorite"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6eced8de-778a-5e3c-8916-8676e50b706f', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Tom is from Canada.","explanation":"The description names Canada.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Canada","id":"A2STRFMI_59","is_correct":true},{"audio_text":"brother","id":"A2STRFMI_60","is_correct":false},{"audio_text":"green","id":"A2STRFMI_61","is_correct":false}],"sentence_template":"Tom is from ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9387a50d-ac3e-59ba-8315-446b15a9a229', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"friend","explanation":"The complete sentence is “This is my friend.”","hint_prefix":"fr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed92e517-234f-56e4-8aa8-0aa007b97021', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"family","id":"A2STRFMI_64","text":"family"},{"audio_text":"brother","id":"A2STRFMI_65","text":"brother"},{"audio_text":"friend","id":"A2STRFMI_66","text":"friend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6eea1e87-bca0-52f1-99d9-fdc9da5d95ce', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Read: “Anna’s favorite food is pizza.” What food does Anna like best?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STRFMI_68","is_correct":true,"text":"Pizza."},{"id":"A2STRFMI_69","is_correct":false,"text":"Pasta."},{"id":"A2STRFMI_70","is_correct":false,"text":"Rice."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3ab259bc-1389-5195-a7fb-ad5a64f65b37', 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('28ef1d25-a740-51e1-b270-795179cb490f', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Summarising a Text","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('073a37c5-41ac-5de4-be3c-58d0c7055f93', '28ef1d25-a740-51e1-b270-795179cb490f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STRFMI_72","left":"morning","right":"утро"},{"id":"A2STRFMI_73","left":"breakfast","right":"завтрак"},{"id":"A2STRFMI_74","left":"school","right":"школа"},{"id":"A2STRFMI_75","left":"lesson","right":"урок"},{"id":"A2STRFMI_76","left":"lunch","right":"обед"},{"id":"A2STRFMI_77","left":"afternoon","right":"день"},{"id":"A2STRFMI_78","left":"evening","right":"вечер"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1322ff5-8b26-574a-993c-a4a414dc9858', '28ef1d25-a740-51e1-b270-795179cb490f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The text says Max goes in the morning.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STRFMI_80","is_correct":true,"text":"In the morning"},{"id":"A2STRFMI_81","is_correct":false,"text":"In the evening"},{"id":"A2STRFMI_82","is_correct":false,"text":"At night"}],"question":"Read: “Max goes to school in the morning.” When does Max go to school?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('724a42c9-8352-50ea-bd39-7cc840f69661', '28ef1d25-a740-51e1-b270-795179cb490f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"She has lunch at school.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Она обедает в школе.","target_language":"en","word_bank":["school.","at","lunch","has","She"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a20ce30-433c-5b01-86d8-acde76c2fbd4', '28ef1d25-a740-51e1-b270-795179cb490f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"breakfast","instruction":"Выберите подходящее слово.","options":["breakfast","lesson","evening"],"sentence_template":"Tom eats ___ in the morning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b241a0b-da87-5117-bdaa-e99d8e1b705f', '28ef1d25-a740-51e1-b270-795179cb490f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["He","studies","in","the","afternoon."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["afternoon.","the","in","studies","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('608d31b4-e0df-5335-a89f-cb32f7aa6e6d', '28ef1d25-a740-51e1-b270-795179cb490f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Anna has two lessons today.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('113e005c-70e0-5bbf-9172-188d779e5713', '28ef1d25-a740-51e1-b270-795179cb490f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I go to school in the morning and come home in the afternoon. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я иду в школу утром и прихожу домой днём. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8546b46-057e-51b5-8e08-70bd6a762089', '28ef1d25-a740-51e1-b270-795179cb490f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Text","text":"Ben gets up at seven. He has breakfast and goes to school. He has lunch at school.","translation":"Бен встаёт в семь. Он завтракает и идёт в школу. Он обедает в школе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"At school."},{"is_correct":false,"text":"At home."}],"text":"Where does Ben have lunch?","type":"choice"}],"title":"A School Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e4f54ab-c366-5fa8-8891-edb82e9c03e5', '28ef1d25-a740-51e1-b270-795179cb490f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Breakfast is the first meal of the day.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STRFMI_90","is_correct":true,"text":"The first meal of the day"},{"id":"A2STRFMI_91","is_correct":false,"text":"A class at school"},{"id":"A2STRFMI_92","is_correct":false,"text":"The later part of the day"}],"word":"breakfast"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85f1cc57-03e5-508d-aeff-843f015bfa43', '28ef1d25-a740-51e1-b270-795179cb490f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"He goes to school in the morning.","explanation":"The sentence names school.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"school","id":"A2STRFMI_94","is_correct":true},{"audio_text":"lunch","id":"A2STRFMI_95","is_correct":false},{"audio_text":"evening","id":"A2STRFMI_96","is_correct":false}],"sentence_template":"He goes to ___ in the morning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43107f13-a791-5742-9e35-e1fdcd7cfb58', '28ef1d25-a740-51e1-b270-795179cb490f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"lunch","explanation":"The complete sentence is “She has lunch at school.”","hint_prefix":"lu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has ___ at school."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0eb0aa10-9da9-5f30-a24c-c1c19227a2be', '28ef1d25-a740-51e1-b270-795179cb490f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"breakfast","id":"A2STRFMI_99","text":"breakfast"},{"audio_text":"lesson","id":"A2STRFMI_100","text":"lesson"},{"audio_text":"afternoon","id":"A2STRFMI_101","text":"afternoon"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c27a561-61e2-5122-b766-2f2f7961aed4', '28ef1d25-a740-51e1-b270-795179cb490f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Read: “Mia studies in the evening.” When does Mia study?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STRFMI_103","is_correct":true,"text":"In the evening."},{"id":"A2STRFMI_104","is_correct":false,"text":"In the morning."},{"id":"A2STRFMI_105","is_correct":false,"text":"At lunch."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3ab259bc-1389-5195-a7fb-ad5a64f65b37', '28ef1d25-a740-51e1-b270-795179cb490f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4060b2dd-4a78-5bae-b4fb-33a4613c94aa', 'en', 'name', 'имя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880aad55-bae4-5925-ac19-ba3fbbedaba4', 'en', 'age', 'возраст', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1008785a-c291-5dc4-a7f8-9a8323ab8391', 'en', 'city', 'город', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb51ce95-b009-5e4d-a94e-0db02fcdc4b4', 'en', 'live', 'жить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5432ea15-2ca8-5555-9d0f-61e13b5b30f3', 'en', 'like', 'нравиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f184b31b-14a7-57fb-88c9-c5ec1c7d1b76', 'en', 'student', 'ученик', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6a98f-afb3-5537-8c66-6a09281be17f', 'en', 'teacher', 'учитель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b502de8a-71d2-532a-a960-9e6d55a478bb', 'en', 'from', 'из', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3da2c5c5-91f8-533c-8fde-65cf69af6f00', 'en', 'favorite', 'любимый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('794e29c5-321e-5516-b895-58f53c78766e', 'en', 'family', 'семья', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a5b6189-e084-599b-944b-1cbbbc7374f4', 'en', 'brother', 'брат', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6916daf-478b-5060-8bc2-63090e01ae36', 'en', 'sister', 'сестра', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd75c44-4f87-5783-9614-619d962ba6c5', 'en', 'friend', 'друг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4eb9e350-d2e1-5752-82a7-794745e4eb1d', 'en', 'home', 'дом', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6677565-4fe9-533d-a9e4-5aae2162b24e', 'en', 'morning', 'утро', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ccf6750-d205-5e2e-a2a1-0de0a1d876d2', 'en', 'breakfast', 'завтрак', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d35ef1b-ed4c-5bb5-932f-0646e8b39596', 'en', 'school', 'школа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('817bcc28-e37f-5143-9ab8-68cf71d92731', 'en', 'lesson', 'урок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b569cb3-9410-5ed6-8a43-0c325bcf0232', 'en', 'lunch', 'обед', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cd3f771-4f41-56c9-972b-8e849cb916b4', 'en', 'afternoon', 'день', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6cd9c830-3d2c-5669-939d-1b534d06e12f', 'en', 'evening', 'вечер', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'age' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'city' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'live' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'like' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'student' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '7cb5b1cd-7e64-5ccc-8bc0-d09fe86d5977', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'from' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'favorite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'family' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'brother' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'sister' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'friend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, 'eaef26b8-af3f-5101-8d38-ea011b9ecd50', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'morning' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'breakfast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'lesson' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'lunch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'afternoon' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3ab259bc-1389-5195-a7fb-ad5a64f65b37', id, '28ef1d25-a740-51e1-b270-795179cb490f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
