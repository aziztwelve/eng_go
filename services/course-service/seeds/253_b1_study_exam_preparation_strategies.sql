-- Track: B1_STUDY_EXAM_PREPARATION_STRATEGIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('80690c9d-5e97-53d4-94cd-418e7cf33e9b', 'B1_STUDY_EXAM_PREPARATION_STRATEGIES', 'Стратегии подготовки к экзаменам', 'Развивайте учебные навыки уровня B1 по теме «Стратегии подготовки к экзаменам».', '{"en":"Exam Preparation Strategies","ru":"Стратегии подготовки к экзаменам"}'::jsonb, '{"en":"Develop B1 study skills for exam preparation strategies.","ru":"Развивайте учебные навыки уровня B1 по теме «Стратегии подготовки к экзаменам»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Making a Revision Plan","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08e1c04d-5679-50d1-a06a-9154c9ced3af', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STPFT_2","left":"test","right":"тест"},{"id":"A2STPFT_3","left":"revision","right":"повторение"},{"id":"A2STPFT_4","left":"review","right":"повторять"},{"id":"A2STPFT_5","left":"practice","right":"практиковаться"},{"id":"A2STPFT_6","left":"remember","right":"помнить"},{"id":"A2STPFT_7","left":"study notes","right":"учить записи"},{"id":"A2STPFT_8","left":"The test is tomorrow","right":"Тест завтра"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51008964-5e5a-5bf9-9bf8-0101d6f52889', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Reviewing notes helps you prepare for a test.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STPFT_10","is_correct":true,"text":"Review your notes"},{"id":"A2STPFT_11","is_correct":false,"text":"Forget your book"},{"id":"A2STPFT_12","is_correct":false,"text":"Leave every answer empty"}],"question":"What should you do before a test?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('711b0974-5002-50d6-8e6e-0ea31ef76b7a', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The test is tomorrow.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Тест завтра.","target_language":"en","word_bank":["tomorrow.","is","test","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fc82bb5-36cd-5736-8e9d-9ecffd9d279d', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"review","instruction":"Выберите подходящее слово.","options":["review","invite","cook"],"sentence_template":"I need to ___ the new words."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4db4f500-0fa1-54cb-965e-bd589de86df8', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","study","for","the","test."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["for","study","test.","the","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ba252f5-043a-5da4-872d-12536860190f', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The English test is on Friday.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b14ac29d-8a46-58a3-9233-83e0e5b7ff30', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I review my notes and practice the questions. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я повторяю свои записи и практикуюсь отвечать на вопросы. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a807ecac-121f-58b6-9b5a-ee84145dca72', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"Are you ready for the test?","translation":"Ты готов к тесту?","type":"dialogue"},{"character":"Nora","text":"Almost. I need to review five words.","translation":"Почти. Мне нужно повторить пять слов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I can practice with you."},{"is_correct":false,"text":"The gym is downstairs."}],"text":"What can Ben offer?","type":"choice"}],"title":"The Night Before"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d056dda-37be-518f-bc25-094e07b160a4', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Review means to study something again.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STPFT_20","is_correct":true,"text":"To study something again"},{"id":"A2STPFT_21","is_correct":false,"text":"To give a project presentation"},{"id":"A2STPFT_22","is_correct":false,"text":"To borrow a pencil"}],"word":"review"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e2dcd7b-62a0-5d60-9682-69b2627d411f', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The test is tomorrow.","explanation":"The missing time word is “tomorrow.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tomorrow","id":"A2STPFT_24","is_correct":true},{"audio_text":"library","id":"A2STPFT_25","is_correct":false},{"audio_text":"cheese","id":"A2STPFT_26","is_correct":false}],"sentence_template":"The test is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5fc515a-31a1-5f35-afd3-ac207a9084f5', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"review","explanation":"The complete sentence is “I review my notes.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ my notes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c106144c-1920-5c23-9a16-024190b8fc88', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"test","id":"A2STPFT_29","text":"test"},{"audio_text":"study notes","id":"A2STPFT_30","text":"study notes"},{"audio_text":"practice questions","id":"A2STPFT_31","text":"practice questions"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('536b0ce7-474e-5810-8af6-376ef243bda7', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mira","text":"How do you prepare for the test?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STPFT_33","is_correct":true,"text":"I review my notes and practice."},{"id":"A2STPFT_34","is_correct":false,"text":"I live near the park."},{"id":"A2STPFT_35","is_correct":false,"text":"I would like some tea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('80690c9d-5e97-53d4-94cd-418e7cf33e9b', '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e3791808-8244-51dc-948f-27005d52f004', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Practising Effectively","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c575019c-bb24-545f-809c-197514bf6a63', 'e3791808-8244-51dc-948f-27005d52f004', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STPFT_37","left":"question","right":"вопрос"},{"id":"A2STPFT_38","left":"answer","right":"ответ"},{"id":"A2STPFT_39","left":"correct","right":"правильный"},{"id":"A2STPFT_40","left":"wrong","right":"неправильный"},{"id":"A2STPFT_41","left":"choose","right":"выберите"},{"id":"A2STPFT_42","left":"write","right":"напишите"},{"id":"A2STPFT_43","left":"check your answers","right":"проверьте свои ответы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fba0225d-a29d-5be0-b572-13e366f606a0', 'e3791808-8244-51dc-948f-27005d52f004', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Checking answers can help you find mistakes.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STPFT_45","is_correct":true,"text":"Check your answers"},{"id":"A2STPFT_46","is_correct":false,"text":"Close every question"},{"id":"A2STPFT_47","is_correct":false,"text":"Talk to a friend"}],"question":"What should you do before giving the test to the teacher?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1290b82e-6e47-5029-91ef-0e0fcdb033e3', 'e3791808-8244-51dc-948f-27005d52f004', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Choose the correct answer.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Выберите правильный ответ.","target_language":"en","word_bank":["answer.","correct","the","Choose"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('84c979c2-338a-5a2b-a707-8891c84ed196', 'e3791808-8244-51dc-948f-27005d52f004', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","party","garden"],"sentence_template":"Write your ___ at the top."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31cfe146-c972-5bd3-bdf6-2d4d2135b4e4', 'e3791808-8244-51dc-948f-27005d52f004', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Check","your","answers."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["your","Check","answers."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0365a1e5-a251-51ea-9c09-3a88fd030499', 'e3791808-8244-51dc-948f-27005d52f004', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Read each question carefully.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dd4d11c-0516-5446-9efc-9e356b64ce1e', 'e3791808-8244-51dc-948f-27005d52f004', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Choose one answer and write it in the box. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Выберите один ответ и напишите его в поле. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7eb287f-8145-5fc0-82e3-c96525ff3825', 'e3791808-8244-51dc-948f-27005d52f004', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Student","text":"Can I use a pencil?","translation":"Можно использовать карандаш?","type":"dialogue"},{"character":"Teacher","text":"Yes, you can.","translation":"Да, можно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"See you at the park."}],"text":"What should the student say?","type":"choice"}],"title":"During the Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c38ba1dd-39e6-586f-9b9f-dd1ec343fc99', 'e3791808-8244-51dc-948f-27005d52f004', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Correct means right and without a mistake.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STPFT_55","is_correct":true,"text":"Right and without a mistake"},{"id":"A2STPFT_56","is_correct":false,"text":"Not right or true"},{"id":"A2STPFT_57","is_correct":false,"text":"Difficult to understand"}],"word":"correct"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e393378-ec91-53eb-84ed-97ce827279bd', 'e3791808-8244-51dc-948f-27005d52f004', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Choose the correct answer.","explanation":"The missing test word is “answer.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"answer","id":"A2STPFT_59","is_correct":true},{"audio_text":"screen","id":"A2STPFT_60","is_correct":false},{"audio_text":"breakfast","id":"A2STPFT_61","is_correct":false}],"sentence_template":"Choose the correct ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3eaf70af-bfab-5aa6-83bb-7ab6216b7e65', 'e3791808-8244-51dc-948f-27005d52f004', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"question","explanation":"The complete instruction is “Read each question.”","hint_prefix":"qu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Read each ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da05fb6d-c6ed-5278-9859-78619aa1dcc2', 'e3791808-8244-51dc-948f-27005d52f004', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"read the question","id":"A2STPFT_64","text":"read the question"},{"audio_text":"choose an answer","id":"A2STPFT_65","text":"choose an answer"},{"audio_text":"check your answers","id":"A2STPFT_66","text":"check your answers"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5a1104b-5b02-5776-8c02-1918f00cb7f5', 'e3791808-8244-51dc-948f-27005d52f004', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"You have five minutes left."}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STPFT_68","is_correct":true,"text":"Okay. I will check my answers."},{"id":"A2STPFT_69","is_correct":false,"text":"Okay. I like science."},{"id":"A2STPFT_70","is_correct":false,"text":"Okay. The cafe is opposite."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('80690c9d-5e97-53d4-94cd-418e7cf33e9b', 'e3791808-8244-51dc-948f-27005d52f004', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Managing Exam Time","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1024a56-a75c-5b7e-b735-492ac491e3f4', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STPFT_72","left":"result","right":"результат"},{"id":"A2STPFT_73","left":"score","right":"балл"},{"id":"A2STPFT_74","left":"mark","right":"оценка"},{"id":"A2STPFT_75","left":"mistake","right":"ошибка"},{"id":"A2STPFT_76","left":"correct a mistake","right":"исправить ошибку"},{"id":"A2STPFT_77","left":"well done","right":"молодец"},{"id":"A2STPFT_78","left":"try again","right":"попробовать снова"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d36e7730-d7a5-5348-b35d-bfcb23243020', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Correcting a mistake helps you learn.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STPFT_80","is_correct":true,"text":"Correct the mistake"},{"id":"A2STPFT_81","is_correct":false,"text":"Forget the question"},{"id":"A2STPFT_82","is_correct":false,"text":"Start a party"}],"question":"What should you do when an answer is wrong?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f8eddcf-edf8-5969-a252-47adf996f8a5', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I made one mistake.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я сделал одну ошибку.","target_language":"en","word_bank":["mistake.","one","made","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a8f023b-f907-51eb-92f7-95422cf7e95d', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"score","instruction":"Выберите подходящее слово.","options":["score","ruler","street"],"sentence_template":"My test ___ is eight."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f0b2efb-6c4f-5e70-93b8-e6da77e7b11a', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","will","try","again."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["again.","will","I","try"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('538deec0-846b-507c-a388-159e8b1d49ea', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Well done. Your answers are correct.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76c80bb4-6e90-5419-88c3-c000fbe29807', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I made two mistakes, but I understand them now. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я сделал две ошибки, но теперь я их понимаю. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce5ea424-fe6b-5c74-9b85-eece33e02dd3', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Your score is nine out of ten. Well done.","translation":"Твой результат — девять из десяти. Молодец.","type":"dialogue"},{"character":"Sara","text":"Thank you. Which answer is wrong?","translation":"Спасибо. Какой ответ неправильный?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Look at question four."},{"is_correct":false,"text":"Meet me at the cafe."}],"text":"What can the teacher say?","type":"choice"}],"title":"After the Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df410730-3531-58d8-8c86-03c27f6eff4e', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A mistake is something that is not correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STPFT_90","is_correct":true,"text":"Something that is not correct"},{"id":"A2STPFT_91","is_correct":false,"text":"A number showing a test result"},{"id":"A2STPFT_92","is_correct":false,"text":"Work done before a test"}],"word":"mistake"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('233ab117-7152-5585-a138-66e4f60f7f7e', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I made one mistake.","explanation":"The missing word is “mistake.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mistake","id":"A2STPFT_94","is_correct":true},{"audio_text":"lesson","id":"A2STPFT_95","is_correct":false},{"audio_text":"water","id":"A2STPFT_96","is_correct":false}],"sentence_template":"I made one ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7063990-628a-5eba-9a61-414418ae76ca', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"again","explanation":"The complete instruction is “Please try again.”","hint_prefix":"ag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please try ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5176eda7-338f-5b85-82ce-c35da6a62855', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"test result","id":"A2STPFT_99","text":"test result"},{"audio_text":"well done","id":"A2STPFT_100","text":"well done"},{"audio_text":"correct the mistake","id":"A2STPFT_101","text":"correct the mistake"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a3a6fee-b9bb-5a8a-8aba-de43d389582e', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Ben","text":"How was your test?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STPFT_103","is_correct":true,"text":"Good. I got nine out of ten."},{"id":"A2STPFT_104","is_correct":false,"text":"Good. The library is upstairs."},{"id":"A2STPFT_105","is_correct":false,"text":"Good. I like orange juice."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('80690c9d-5e97-53d4-94cd-418e7cf33e9b', '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb68b165-1cd2-5243-b1b7-3c50756c61a2', 'en', 'test', 'тест', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('349e0973-8b2a-5901-a829-81d8a98e72ca', 'en', 'revision', 'повторение', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d24d23d-005c-50bd-88d4-197138ab6d8e', 'en', 'review', 'повторять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf117a0d-b8ab-5e66-a7ee-4058c5d38498', 'en', 'practice', 'практиковаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95f7022a-3f17-5998-92a0-6110d15e7e57', 'en', 'remember', 'помнить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1c8c5c26-2c6a-5310-9519-73b77bd7114c', 'en', 'study notes', 'учить записи', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2a386d-72c2-58fc-8228-0e160cf749c5', 'en', 'The test is tomorrow', 'Тест завтра', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9432c21-0eda-5a57-ba61-f04226b77803', 'en', 'question', 'вопрос', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5055639a-2206-5c75-8bb8-807c6f2aaef6', 'en', 'answer', 'ответ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc713832-5a89-59d6-b762-94e39781576a', 'en', 'correct', 'правильный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b43fc03-112c-539f-8267-16623fa98018', 'en', 'wrong', 'неправильный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0762b68c-a15b-5448-8c70-81ec2a80d793', 'en', 'choose', 'выберите', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82af31c5-ed7e-55ee-a990-c1885a5cfb33', 'en', 'write', 'напишите', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e504320b-b06b-55c4-b1d3-401ac9f36c91', 'en', 'check your answers', 'проверьте свои ответы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f870a402-24d8-5b30-ba8c-41b19ff22b00', 'en', 'result', 'результат', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d2dfa99-c657-5d9a-8f6e-6b9c70793644', 'en', 'score', 'балл', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5934c4d3-07f9-5bdb-b023-85e464dabf66', 'en', 'mark', 'оценка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2de0da2b-152d-58f7-b870-be54f4a8dfe9', 'en', 'mistake', 'ошибка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a8b2074-b463-5655-8638-dced4e4bcf92', 'en', 'correct a mistake', 'исправить ошибку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('089fd25e-2d67-5d3b-86dd-f4a9086e1412', 'en', 'well done', 'молодец', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a69c037-2b38-5c00-8cbc-3d407ad33643', 'en', 'try again', 'попробовать снова', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'test' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'remember' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'study notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '3e9ddb80-1e24-5903-87ef-8a23b9d5c9c4', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'The test is tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'wrong' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'choose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'write' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, 'e3791808-8244-51dc-948f-27005d52f004', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'check your answers' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'result' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'score' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct a mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'well done' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '80690c9d-5e97-53d4-94cd-418e7cf33e9b', id, '31cf9cd7-319b-5c57-9f1e-ec1c8a7b5063', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'try again' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
