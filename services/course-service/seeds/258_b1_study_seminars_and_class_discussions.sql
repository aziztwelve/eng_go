-- Track: B1_STUDY_SEMINARS_AND_CLASS_DISCUSSIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6259218e-6e35-59b5-81ac-ff8e3c319e4c', 'B1_STUDY_SEMINARS_AND_CLASS_DISCUSSIONS', 'Семинары и обсуждения в классе', 'Развивайте учебные навыки уровня B1 по теме «Семинары и обсуждения в классе».', '{"en":"Seminars and Class Discussions","ru":"Семинары и обсуждения в классе"}'::jsonb, '{"en":"Develop B1 study skills for seminars and class discussions.","ru":"Развивайте учебные навыки уровня B1 по теме «Семинары и обсуждения в классе»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c58aaa5b-a552-563d-a0e0-365ed2929596', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Joining a Discussion","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1a6d53b-0797-5eb8-b2a5-0549c1acce61', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STCD_2","left":"open your book","right":"откройте книгу"},{"id":"A2STCD_3","left":"close your book","right":"закройте книгу"},{"id":"A2STCD_4","left":"listen","right":"слушайте"},{"id":"A2STCD_5","left":"repeat","right":"повторите"},{"id":"A2STCD_6","left":"read","right":"читайте"},{"id":"A2STCD_7","left":"write","right":"пишите"},{"id":"A2STCD_8","left":"look at the board","right":"посмотрите на доску"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ad9f6c7-fb7b-502f-92eb-fd3d3f6a0d29', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Open your book” tells you to open it.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STCD_10","is_correct":true,"text":"Open the book"},{"id":"A2STCD_11","is_correct":false,"text":"Close the book"},{"id":"A2STCD_12","is_correct":false,"text":"Leave the room"}],"question":"What should you do when the teacher says “Open your book”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('060e7caf-eaff-538c-9c89-bad8251549d1', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Open your book.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Откройте книгу.","target_language":"en","word_bank":["book.","your","Open"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c43ca8c-a0e8-588a-82d9-2650e6fa35c4', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"board","instruction":"Выберите подходящее слово.","options":["board","party","juice"],"sentence_template":"Look at the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6339d6f-3cd1-512d-ad39-bdafdb4d2bc7', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Listen","and","repeat."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["and","Listen","repeat."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af34b70a-b14e-5030-9e8d-ec3aba32d2a9', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please open your book.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbcb7ea9-beb0-53a3-b819-d655928bc40c', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Look at the board and read the sentence. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Посмотрите на доску и прочитайте предложение. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('273f49a2-d337-52cb-bbc5-482a9f7a6644', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Open your books, please.","translation":"Откройте книги, пожалуйста.","type":"dialogue"},{"character":"Ali","text":"Which page?","translation":"Какая страница?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Page ten."},{"is_correct":false,"text":"See you at the cafe."}],"text":"What can the teacher say?","type":"choice"}],"title":"English Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de34cc69-2c74-5a91-b078-dddec386bccb', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Repeat means to say something again.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STCD_20","is_correct":true,"text":"To say something again"},{"id":"A2STCD_21","is_correct":false,"text":"To shut a book"},{"id":"A2STCD_22","is_correct":false,"text":"To draw a picture"}],"word":"repeat"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('123a14b7-0edf-549f-9bf6-7781638752ce', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Look at the board.","explanation":"The missing classroom word is “board.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"board","id":"A2STCD_24","is_correct":true},{"audio_text":"park","id":"A2STCD_25","is_correct":false},{"audio_text":"coffee","id":"A2STCD_26","is_correct":false}],"sentence_template":"Look at the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41e92886-fcbd-5312-80a0-4adc8bf6c8c0', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"read","explanation":"The complete instruction is “Please read the sentence.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please ___ the sentence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fafcdc94-9150-529d-87bc-1dd12d524588', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"open your book","id":"A2STCD_29","text":"open your book"},{"audio_text":"listen","id":"A2STCD_30","text":"listen"},{"audio_text":"repeat","id":"A2STCD_31","text":"repeat"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('086dd4b3-de8a-5c32-8df8-213b68af051c', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Please close your books."}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STCD_33","is_correct":true,"text":"Okay."},{"id":"A2STCD_34","is_correct":false,"text":"At three o’clock."},{"id":"A2STCD_35","is_correct":false,"text":"I like apples."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6259218e-6e35-59b5-81ac-ff8e3c319e4c', 'c58aaa5b-a552-563d-a0e0-365ed2929596', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b2baddb4-b109-5881-8674-3e2ca1fe6f4e', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Explaining an Opinion","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e781979-a63d-582e-94d3-706039937ebc', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STCD_37","left":"answer the question","right":"ответьте на вопрос"},{"id":"A2STCD_38","left":"complete the exercise","right":"выполните упражнение"},{"id":"A2STCD_39","left":"choose the answer","right":"выберите ответ"},{"id":"A2STCD_40","left":"work in pairs","right":"работайте в парах"},{"id":"A2STCD_41","left":"check your work","right":"проверьте свою работу"},{"id":"A2STCD_42","left":"underline the word","right":"подчеркните слово"},{"id":"A2STCD_43","left":"write your name","right":"напишите своё имя"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25a5f750-b0c8-55f9-9c37-84fcc088094a', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Work in pairs” means two students work together.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STCD_45","is_correct":true,"text":"Work together"},{"id":"A2STCD_46","is_correct":false,"text":"Work alone"},{"id":"A2STCD_47","is_correct":false,"text":"Go home"}],"question":"What should two students do when told to “work in pairs”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b131513b-7b93-554d-9e27-d8f2c52e0b98', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Answer the question.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ответьте на вопрос.","target_language":"en","word_bank":["question.","the","Answer"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd8573f7-4497-5804-91ab-86beca780a9a', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","cafe","dinner"],"sentence_template":"Write your ___ at the top."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c334aec-9e40-5afd-b90b-607fe091dc61', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Check","your","work."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["your","Check","work."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5eb59662-951d-5ca1-b90b-bb173d0a7048', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Complete exercise number two.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1eb100c-be72-570f-b1e3-23915bfe15b7', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Work in pairs and answer the questions. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Работайте в парах и ответьте на вопросы. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c24e0cee-5b15-5141-91f3-34b3a6d30da6', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Please work in pairs.","translation":"Пожалуйста, работайте в парах.","type":"dialogue"},{"character":"Mila","text":"Can I work with Tom?","translation":"Можно мне работать с Томом?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, of course."},{"is_correct":false,"text":"Meet me at the park."}],"text":"What can the teacher say?","type":"choice"}],"title":"A Pair Activity"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0a991d6-ecb8-5799-a4ef-0dbb8b90a103', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Underline means to draw a line under a word.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STCD_55","is_correct":true,"text":"To draw a line under a word"},{"id":"A2STCD_56","is_correct":false,"text":"To speak very quietly"},{"id":"A2STCD_57","is_correct":false,"text":"To close a notebook"}],"word":"underline"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2175146-5d92-5e38-b8d3-9a81a9966de2', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Check your work.","explanation":"The missing word is “work.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"work","id":"A2STCD_59","is_correct":true},{"audio_text":"milk","id":"A2STCD_60","is_correct":false},{"audio_text":"street","id":"A2STCD_61","is_correct":false}],"sentence_template":"Check your ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('63adfaf8-98b9-5449-b6de-9ca04ec757f4', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"answer","explanation":"The complete instruction is “Choose the correct answer.”","hint_prefix":"an","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Choose the correct ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2b2fe44-ddf6-57d1-8ab7-5b87a21d2a93', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"work in pairs","id":"A2STCD_64","text":"work in pairs"},{"audio_text":"check your work","id":"A2STCD_65","text":"check your work"},{"audio_text":"write your name","id":"A2STCD_66","text":"write your name"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a92f32f5-d0fb-5772-a3f4-4608cd2c2719', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Please complete exercise three."}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STCD_68","is_correct":true,"text":"Okay. Which page?"},{"id":"A2STCD_69","is_correct":false,"text":"Yes. I like tea."},{"id":"A2STCD_70","is_correct":false,"text":"At the bus stop."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6259218e-6e35-59b5-81ac-ff8e3c319e4c', 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5599b82e-6629-5e0b-976b-23486b48b5dc', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Responding to Ideas","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('303a6a49-802b-503b-931a-6b6ac2e70b51', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STCD_72","left":"I understand","right":"Я понимаю"},{"id":"A2STCD_73","left":"I don''t understand","right":"Я не понимаю"},{"id":"A2STCD_74","left":"Please repeat","right":"Повторите, пожалуйста"},{"id":"A2STCD_75","left":"Please speak slowly","right":"Говорите медленнее, пожалуйста"},{"id":"A2STCD_76","left":"What do we do?","right":"Что мы делаем?"},{"id":"A2STCD_77","left":"Which page?","right":"Какая страница?"},{"id":"A2STCD_78","left":"Can you help me?","right":"Вы можете мне помочь?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('77df7409-7481-5c1a-a873-d8a93c3a30bf', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"“Please speak slowly” is a polite request.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STCD_80","is_correct":true,"text":"Please speak slowly."},{"id":"A2STCD_81","is_correct":false,"text":"Close the window."},{"id":"A2STCD_82","is_correct":false,"text":"I have lunch."}],"question":"What can you say when the teacher speaks too fast?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20491dd7-9ab2-57d7-ade7-416e1e9475ed', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Please repeat.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Повторите, пожалуйста.","target_language":"en","word_bank":["repeat.","Please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef5437fa-52fd-5147-ad79-00e566d25012', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"understand","instruction":"Выберите подходящее слово.","options":["understand","invite","breakfast"],"sentence_template":"I don''t ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e0a0bdf-54cc-53cf-a14f-4c720e11cccd', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Can","you","help","me?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["help","you","me?","Can"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39dcf988-e237-5686-ad94-3f6cfc0419cc', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I don''t understand this question.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('361bdfa6-373f-5d65-bdb9-4ea953af544f', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Excuse me. Can you repeat that, please? I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините. Вы можете повторить это, пожалуйста? Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83eb4703-21ed-57ae-bb8c-c14c0ccf2b83', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Underline the verbs in exercise five.","translation":"Подчеркните глаголы в упражнении пять.","type":"dialogue"},{"character":"Nora","text":"Sorry, I don''t understand.","translation":"Извините, я не понимаю.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Can you repeat that, please?"},{"is_correct":false,"text":"Would you like some tea?"}],"text":"What should Nora ask?","type":"choice"}],"title":"A Difficult Instruction"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e71466f9-813a-58e3-9581-24ee4a373e30', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Understand means to know what something means.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STCD_90","is_correct":true,"text":"To know what something means"},{"id":"A2STCD_91","is_correct":false,"text":"To ask someone to a party"},{"id":"A2STCD_92","is_correct":false,"text":"To arrive at a place"}],"word":"understand"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f803786e-52f1-5e87-b0f5-bdefc1472fce', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please speak slowly.","explanation":"The missing word is “slowly.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"slowly","id":"A2STCD_94","is_correct":true},{"audio_text":"science","id":"A2STCD_95","is_correct":false},{"audio_text":"cheese","id":"A2STCD_96","is_correct":false}],"sentence_template":"Please speak ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8f07b46-f369-59fe-8c60-cdb0b697aa14', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"help","explanation":"The complete question is “Can you help me?”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can you ___ me?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53160c32-3e37-5859-8d09-5dc0520c3540', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"I don''t understand","id":"A2STCD_99","text":"I don''t understand"},{"audio_text":"Please repeat","id":"A2STCD_100","text":"Please repeat"},{"audio_text":"Which page?","id":"A2STCD_101","text":"Which page?"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97839db4-b65a-51b9-a3e2-f7f1fc8e6795', '5599b82e-6629-5e0b-976b-23486b48b5dc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Do you understand the instruction?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STCD_103","is_correct":true,"text":"No. Can you repeat it, please?"},{"id":"A2STCD_104","is_correct":false,"text":"No. I meet at three."},{"id":"A2STCD_105","is_correct":false,"text":"No. My home is small."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6259218e-6e35-59b5-81ac-ff8e3c319e4c', '5599b82e-6629-5e0b-976b-23486b48b5dc', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d269eb0-5153-54a4-8e4a-30d7c0d58f91', 'en', 'open your book', 'откройте книгу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c80a995d-fa4e-500b-8d41-aa58642d3dd1', 'en', 'close your book', 'закройте книгу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b06eacfc-7e5f-5b48-8715-a15db61cbb37', 'en', 'listen', 'слушайте', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ce3dc67b-a619-5f94-a3b3-9cf7986feeec', 'en', 'repeat', 'повторите', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65824254-f932-5be0-976d-25387bd6921e', 'en', 'read', 'читайте', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82af31c5-ed7e-55ee-a990-c1885a5cfb33', 'en', 'write', 'пишите', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2476c6f8-aa4f-58a5-92cc-b7d66306fb2c', 'en', 'look at the board', 'посмотрите на доску', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f27486be-96fc-5669-be59-a4a1bc69f727', 'en', 'answer the question', 'ответьте на вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('19b75197-74e6-548c-aa23-8e12ca5213a2', 'en', 'complete the exercise', 'выполните упражнение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('999aac0a-c0c1-59bc-b420-fdf687d1ea8b', 'en', 'choose the answer', 'выберите ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca2c996e-92f8-5ff7-ab2c-643087d95e52', 'en', 'work in pairs', 'работайте в парах', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ddeb54c-502a-5b9e-9531-ffdb58442d1a', 'en', 'check your work', 'проверьте свою работу', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dafdef42-9528-561b-9aa0-16419e854d6a', 'en', 'underline the word', 'подчеркните слово', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f37a52fc-1107-5f9d-baec-db6e8268bc14', 'en', 'write your name', 'напишите своё имя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('37778822-2ef6-58c9-996a-2b96bc494d74', 'en', 'I understand', 'Я понимаю', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03e1675c-213f-5671-b4aa-8e2524a953e5', 'en', 'I don''t understand', 'Я не понимаю', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7afdd560-ab43-5512-9183-d93b76487d9d', 'en', 'Please repeat', 'Повторите, пожалуйста', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab51364b-0620-5b75-8983-34bf1e346f3f', 'en', 'Please speak slowly', 'Говорите медленнее, пожалуйста', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('079f4485-4227-55ec-87dc-eb9636540273', 'en', 'What do we do?', 'Что мы делаем?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12e68c39-5d41-5af1-aedb-7669a4fee91c', 'en', 'Which page?', 'Какая страница?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c912c497-ca0e-5b03-9644-f0ab9015efde', 'en', 'Can you help me?', 'Вы можете мне помочь?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'open your book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'close your book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'listen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'repeat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'read' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'write' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'c58aaa5b-a552-563d-a0e0-365ed2929596', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'look at the board' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer the question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'complete the exercise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'choose the answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'work in pairs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'check your work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'underline the word' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, 'b2baddb4-b109-5881-8674-3e2ca1fe6f4e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'write your name' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'I understand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'I don''t understand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please repeat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please speak slowly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'What do we do?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Which page?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6259218e-6e35-59b5-81ac-ff8e3c319e4c', id, '5599b82e-6629-5e0b-976b-23486b48b5dc', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you help me?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
