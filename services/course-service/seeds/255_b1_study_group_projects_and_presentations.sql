-- Track: B1_STUDY_GROUP_PROJECTS_AND_PRESENTATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('52d59cf5-1185-5c99-8611-700c0944a4fd', 'B1_STUDY_GROUP_PROJECTS_AND_PRESENTATIONS', 'Групповые проекты и презентации', 'Развивайте учебные навыки уровня B1 по теме «Групповые проекты и презентации».', '{"en":"Group Projects and Presentations","ru":"Групповые проекты и презентации"}'::jsonb, '{"en":"Develop B1 study skills for group projects and presentations.","ru":"Развивайте учебные навыки уровня B1 по теме «Групповые проекты и презентации»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e1390355-64fd-5516-a082-aa4d06f5821a', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Planning as a Team","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6135a0c6-4875-5b24-8d13-b208398dc696', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STGP_2","left":"project","right":"проект"},{"id":"A2STGP_3","left":"topic","right":"тема"},{"id":"A2STGP_4","left":"team","right":"команда"},{"id":"A2STGP_5","left":"leader","right":"руководитель"},{"id":"A2STGP_6","left":"partner","right":"партнёр"},{"id":"A2STGP_7","left":"choose","right":"выбирать"},{"id":"A2STGP_8","left":"What is our topic?","right":"Какая у нас тема?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbee4f25-5b32-5751-a27b-728b208faf94', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A team is a group of people working together.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STGP_10","is_correct":true,"text":"Team"},{"id":"A2STGP_11","is_correct":false,"text":"Topic"},{"id":"A2STGP_12","is_correct":false,"text":"Page"}],"question":"Which word means a group working together?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27becbf4-6e3e-5ec1-9525-f13c67488416', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our topic is animals.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наша тема — животные.","target_language":"en","word_bank":["animals.","is","topic","Our"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d98b5d96-5f0b-50cc-ae67-593419754574', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"leader","instruction":"Выберите подходящее слово.","options":["leader","breakfast","screen"],"sentence_template":"Maya is our team ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('745fbbc6-7bcb-530f-809d-0e901e0ffb4c', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Let","us","choose","a","topic."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","choose","topic.","us","Let"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccede590-45b7-5043-ab78-3f1c0eea7b21', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our project topic is our school.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5377e99-7971-5009-88b4-111b44576fcb', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I am the team leader, and Ben is my partner. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я руководитель команды, а Бен — мой партнёр. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f52e9a78-1067-58b3-83a9-4a9f3c7fb884', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Please choose a topic for your project.","translation":"Пожалуйста, выберите тему для проекта.","type":"dialogue"},{"character":"Sara","text":"Let us choose animals.","translation":"Давайте выберем животных.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Good idea."},{"is_correct":false,"text":"Open your lunch."}],"text":"What can her partner say?","type":"choice"}],"title":"Starting a Project"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a4d4339-b8f1-58dc-b3b4-089e2829523d', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A leader guides a group.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STGP_20","is_correct":true,"text":"The person who guides a group"},{"id":"A2STGP_21","is_correct":false,"text":"A subject a project is about"},{"id":"A2STGP_22","is_correct":false,"text":"A person who works with you"}],"word":"leader"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c02107bc-8138-574c-94b5-a69898010b88', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our topic is animals.","explanation":"The missing word is “topic.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"topic","id":"A2STGP_24","is_correct":true},{"audio_text":"pencil","id":"A2STGP_25","is_correct":false},{"audio_text":"dinner","id":"A2STGP_26","is_correct":false}],"sentence_template":"Our ___ is animals."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71c3c987-84ea-55dc-bd47-788b6585e441', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"team","explanation":"The complete sentence is “We are a team.”","hint_prefix":"te","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We are a ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc594ab5-3d98-5c9d-bd06-996bc4fbe9b3', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"project","id":"A2STGP_29","text":"project"},{"audio_text":"team leader","id":"A2STGP_30","text":"team leader"},{"audio_text":"choose a topic","id":"A2STGP_31","text":"choose a topic"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65415fc9-e3f9-539c-a4c4-3ab0ffc406c7', 'e1390355-64fd-5516-a082-aa4d06f5821a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Omar","text":"What is our project topic?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STGP_33","is_correct":true,"text":"Our topic is healthy food."},{"id":"A2STGP_34","is_correct":false,"text":"The library is upstairs."},{"id":"A2STGP_35","is_correct":false,"text":"English starts at nine."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('52d59cf5-1185-5c99-8611-700c0944a4fd', 'e1390355-64fd-5516-a082-aa4d06f5821a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5bba6ee2-3b2b-5733-a320-91922a4c83b4', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Sharing Responsibilities","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('518c78b4-0635-5c8e-85b1-ffeb7f81be9a', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STGP_37","left":"information","right":"информация"},{"id":"A2STGP_38","left":"find","right":"находить"},{"id":"A2STGP_39","left":"read","right":"читать"},{"id":"A2STGP_40","left":"write notes","right":"делать записи"},{"id":"A2STGP_41","left":"picture","right":"картинка"},{"id":"A2STGP_42","left":"poster","right":"плакат"},{"id":"A2STGP_43","left":"use a website","right":"использовать веб-сайт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a56d631a-419c-5d3a-b557-646c694a7741', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A poster can show project words and pictures.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STGP_45","is_correct":true,"text":"A poster"},{"id":"A2STGP_46","is_correct":false,"text":"An eraser"},{"id":"A2STGP_47","is_correct":false,"text":"A timetable"}],"question":"What can you use to display project words and pictures?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b8835fa-499c-540a-8fc7-96c44a04685e', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Find information on the website.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Найдите информацию на веб-сайте.","target_language":"en","word_bank":["website.","the","on","information","Find"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49b571db-11c8-5811-a146-d6301f7aab5d', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"pictures","instruction":"Выберите подходящее слово.","options":["pictures","teachers","breaks"],"sentence_template":"We need three ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ae992f1-ba55-5a18-b674-9d3cde65f713', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Write","notes","from","the","book."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["notes","book.","the","from","Write"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47400629-0ad6-5b34-b194-048c4aa2e8ea', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Find two pictures for the project.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a911a00c-fe1f-5e33-bafd-4aedc2d56c30', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I read the website and write short notes. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я читаю веб-сайт и делаю короткие записи. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71536f2d-fdfd-5023-82ca-dc4eb9acc833', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Nina","text":"I have two pictures for our poster.","translation":"У меня есть две картинки для нашего плаката.","type":"dialogue"},{"character":"Max","text":"Great. I can write the words.","translation":"Отлично. Я могу написать слова.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let us work together."},{"is_correct":false,"text":"Please close the cafe."}],"text":"What can Nina say?","type":"choice"}],"title":"Making a Poster"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e0ab905-df09-5cb5-82b4-049c46167dc1', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Information means facts that help you learn about something.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STGP_55","is_correct":true,"text":"Facts that help you learn about something"},{"id":"A2STGP_56","is_correct":false,"text":"A large sheet showing words and pictures"},{"id":"A2STGP_57","is_correct":false,"text":"A person working in a team"}],"word":"information"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9159cff-31cc-5e5b-9802-10d8efc9f60e', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We need a poster.","explanation":"The missing project item is “poster.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"poster","id":"A2STGP_59","is_correct":true},{"audio_text":"coffee","id":"A2STGP_60","is_correct":false},{"audio_text":"classmate","id":"A2STGP_61","is_correct":false}],"sentence_template":"We need a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e20474f-24b6-525f-81b2-45fc2f818604', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"use","explanation":"The complete instruction is “Please use this website.”","hint_prefix":"us","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please ___ this website."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a052e805-ec9e-567f-9a03-ebf9e1b6fedd', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"find information","id":"A2STGP_64","text":"find information"},{"audio_text":"write notes","id":"A2STGP_65","text":"write notes"},{"audio_text":"make a poster","id":"A2STGP_66","text":"make a poster"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('69091a06-f6b2-521c-889a-e8babd77edad', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Aida","text":"What do we need for the poster?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STGP_68","is_correct":true,"text":"We need pictures and short notes."},{"id":"A2STGP_69","is_correct":false,"text":"We need lunch at one."},{"id":"A2STGP_70","is_correct":false,"text":"We need a quiet street."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('52d59cf5-1185-5c99-8611-700c0944a4fd', '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('543aa83d-8066-5a23-97cb-2d137503c85e', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Delivering a Presentation","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e408b74-15f1-5207-933c-dcf059608146', '543aa83d-8066-5a23-97cb-2d137503c85e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STGP_72","left":"present","right":"представлять"},{"id":"A2STGP_73","left":"presentation","right":"презентация"},{"id":"A2STGP_74","left":"first","right":"сначала"},{"id":"A2STGP_75","left":"next","right":"затем"},{"id":"A2STGP_76","left":"finally","right":"наконец"},{"id":"A2STGP_77","left":"This is our project","right":"Это наш проект"},{"id":"A2STGP_78","left":"Thank you for listening","right":"Спасибо за внимание"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0918ed1-9a42-5659-bda3-0ca35b75c768', '543aa83d-8066-5a23-97cb-2d137503c85e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Thank you for listening” is a polite ending.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STGP_80","is_correct":true,"text":"Thank you for listening."},{"id":"A2STGP_81","is_correct":false,"text":"Open your workbook."},{"id":"A2STGP_82","is_correct":false,"text":"Can I borrow a ruler?"}],"question":"Which phrase can end a presentation politely?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1969229b-4a2d-53b7-9ba6-62f9171c8c2a', '543aa83d-8066-5a23-97cb-2d137503c85e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is our school project.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это наш школьный проект.","target_language":"en","word_bank":["project.","school","our","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c502f902-e529-5dca-b35e-0204d855b166', '543aa83d-8066-5a23-97cb-2d137503c85e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"First","instruction":"Выберите подходящее слово.","options":["First","Lunch","Teacher"],"sentence_template":"___, I will show our poster."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2d9a2eb-3034-5be6-9826-9e43ba087f7d', '543aa83d-8066-5a23-97cb-2d137503c85e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Thank","you","for","listening."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["for","Thank","listening.","you"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a41546cd-b83a-51a0-92e8-51ef247510b2', '543aa83d-8066-5a23-97cb-2d137503c85e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Hello. This is our project about animals.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfc2f544-877d-5163-a287-2780c715f3d3', '543aa83d-8066-5a23-97cb-2d137503c85e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"First, I will show our poster. Next, Ben will speak. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Сначала я покажу наш плакат. Затем Бен будет говорить. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71de6bcc-7b64-50aa-a02d-642d6cce0a97', '543aa83d-8066-5a23-97cb-2d137503c85e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mila","text":"Hello. This is our project about food.","translation":"Здравствуйте. Это наш проект о еде.","type":"dialogue"},{"character":"Ben","text":"First, we will show our poster.","translation":"Сначала мы покажем наш плакат.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you for listening."},{"is_correct":false,"text":"Where is the school nurse?"}],"text":"How can they finish?","type":"choice"}],"title":"Project Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('418fcbd8-8057-5570-b45c-aa3c5a4c6ecf', '543aa83d-8066-5a23-97cb-2d137503c85e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Present means to show and explain something to other people.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STGP_90","is_correct":true,"text":"To show and explain something to other people"},{"id":"A2STGP_91","is_correct":false,"text":"To search for facts online"},{"id":"A2STGP_92","is_correct":false,"text":"To choose a topic"}],"word":"present"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62e1ca08-9413-5848-b36a-ca1410860464', '543aa83d-8066-5a23-97cb-2d137503c85e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is our school project.","explanation":"The missing word is “project.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"project","id":"A2STGP_94","is_correct":true},{"audio_text":"juice","id":"A2STGP_95","is_correct":false},{"audio_text":"window","id":"A2STGP_96","is_correct":false}],"sentence_template":"This is our school ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a35295b8-2035-5f39-8c5d-5451a3cc8f12', '543aa83d-8066-5a23-97cb-2d137503c85e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"listening","explanation":"The complete phrase is “Thank you for listening.”","hint_prefix":"li","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Thank you for ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02a32302-5534-5d74-95ac-78ea740d746e', '543aa83d-8066-5a23-97cb-2d137503c85e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"This is our project","id":"A2STGP_99","text":"This is our project"},{"audio_text":"first","id":"A2STGP_100","text":"first"},{"audio_text":"thank you for listening","id":"A2STGP_101","text":"thank you for listening"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7aca1435-61fb-5643-8f93-e640d86ab6fb', '543aa83d-8066-5a23-97cb-2d137503c85e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Are you ready to present your project?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STGP_103","is_correct":true,"text":"Yes. We are ready."},{"id":"A2STGP_104","is_correct":false,"text":"Yes. The bank is near."},{"id":"A2STGP_105","is_correct":false,"text":"Yes. I have breakfast."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('52d59cf5-1185-5c99-8611-700c0944a4fd', '543aa83d-8066-5a23-97cb-2d137503c85e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8248509c-eb44-57ac-9c6e-ffb6ca8bad69', 'en', 'project', 'проект', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('202cdf17-290a-5a3f-ab35-21b8834aa5a7', 'en', 'topic', 'тема', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa16c3f-9953-5483-9522-c6cb31db9d7f', 'en', 'team', 'команда', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90c3a412-3634-545c-9a4f-7b5bdf30b6a5', 'en', 'leader', 'руководитель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d87e6c44-dc32-5ec2-b5a9-3a2f47576bcd', 'en', 'partner', 'партнёр', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0762b68c-a15b-5448-8c70-81ec2a80d793', 'en', 'choose', 'выбирать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c5cf7b2-0260-587e-89c2-d4154b84de78', 'en', 'What is our topic?', 'Какая у нас тема?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37ec5cdf-a5e4-5a5b-b9e2-7be533cacbb0', 'en', 'information', 'информация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f270403a-2a6d-5020-96b4-c143c7fbb3e1', 'en', 'find', 'находить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65824254-f932-5be0-976d-25387bd6921e', 'en', 'read', 'читать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1784d747-9af6-5dae-9aa5-1e533c6faaf6', 'en', 'write notes', 'делать записи', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ebc37d73-3289-50fb-a41f-cf0310d2c960', 'en', 'picture', 'картинка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05871232-d825-5dd8-8d28-df24319e2aa4', 'en', 'poster', 'плакат', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5265279d-24d5-52c1-94cd-08e5e42e471c', 'en', 'use a website', 'использовать веб-сайт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('33bed44a-1ebb-58df-b96d-ec547322c67f', 'en', 'present', 'представлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c35612e9-bbf7-57d1-8bea-15a9cccdb151', 'en', 'presentation', 'презентация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1fe2547a-c3f5-53f4-82c2-2b7694be321f', 'en', 'first', 'сначала', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e2afab8e-50dd-56e3-97a0-865fa660638a', 'en', 'next', 'затем', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('622d6d50-db3d-5dc9-8d16-2921989ed392', 'en', 'finally', 'наконец', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f52a0be2-7f89-5eae-b8e7-16af825690fa', 'en', 'This is our project', 'Это наш проект', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32dad5b0-d1e7-577b-ac83-e399338d8860', 'en', 'Thank you for listening', 'Спасибо за внимание', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'project' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'topic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'team' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'leader' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'partner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'choose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, 'e1390355-64fd-5516-a082-aa4d06f5821a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'What is our topic?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'information' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'find' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'read' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'write notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'picture' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'poster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '5bba6ee2-3b2b-5733-a320-91922a4c83b4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'use a website' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'present' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'presentation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'first' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'next' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'finally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is our project' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '52d59cf5-1185-5c99-8611-700c0944a4fd', id, '543aa83d-8066-5a23-97cb-2d137503c85e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you for listening' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
