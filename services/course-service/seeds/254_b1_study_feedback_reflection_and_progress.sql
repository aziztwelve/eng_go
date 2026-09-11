-- Track: B1_STUDY_FEEDBACK_REFLECTION_AND_PROGRESS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('eb7ddc17-6d85-58fa-ab24-611978c3685d', 'B1_STUDY_FEEDBACK_REFLECTION_AND_PROGRESS', 'Обратная связь, рефлексия и прогресс', 'Развивайте учебные навыки уровня B1 по теме «Обратная связь, рефлексия и прогресс».', '{"en":"Feedback, Reflection and Progress","ru":"Обратная связь, рефлексия и прогресс"}'::jsonb, '{"en":"Develop B1 study skills for feedback, reflection and progress.","ru":"Развивайте учебные навыки уровня B1 по теме «Обратная связь, рефлексия и прогресс»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ac7b90f3-2f6d-5c2c-a206-4018cb763bee', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Understanding Feedback","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ed3ac4b-da5f-5c92-a78e-ffc729aa0557', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STRLP_2","left":"test","right":"тест"},{"id":"A2STRLP_3","left":"revision","right":"повторение"},{"id":"A2STRLP_4","left":"review","right":"повторять"},{"id":"A2STRLP_5","left":"practice","right":"практиковаться"},{"id":"A2STRLP_6","left":"remember","right":"помнить"},{"id":"A2STRLP_7","left":"study notes","right":"учить записи"},{"id":"A2STRLP_8","left":"The test is tomorrow","right":"Тест завтра"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd1d060b-ab81-5275-a2f7-dc48fa9849fc', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Reviewing notes helps you prepare for a test.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STRLP_10","is_correct":true,"text":"Review your notes"},{"id":"A2STRLP_11","is_correct":false,"text":"Forget your book"},{"id":"A2STRLP_12","is_correct":false,"text":"Leave every answer empty"}],"question":"What should you do before a test?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35b01dcc-8076-543f-b555-8cc9d3bbb014', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The test is tomorrow.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Тест завтра.","target_language":"en","word_bank":["tomorrow.","is","test","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5e59f72-54fe-5135-bb2d-fd09aea9adb3', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"review","instruction":"Выберите подходящее слово.","options":["review","invite","cook"],"sentence_template":"I need to ___ the new words."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e506c4c1-bbb2-55ba-ade9-56ce4d94df35', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","study","for","the","test."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["for","study","test.","the","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af8ff6cd-1b6b-5abc-ae4d-294bb4164bd5', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The English test is on Friday.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('306587d6-78d6-5175-8129-9fafa2694cd6', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I review my notes and practice the questions. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я повторяю свои записи и практикуюсь отвечать на вопросы. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d7b6a2f-eacb-585a-b7b4-83c9ea3a97dc', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"Are you ready for the test?","translation":"Ты готов к тесту?","type":"dialogue"},{"character":"Nora","text":"Almost. I need to review five words.","translation":"Почти. Мне нужно повторить пять слов.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I can practice with you."},{"is_correct":false,"text":"The gym is downstairs."}],"text":"What can Ben offer?","type":"choice"}],"title":"The Night Before"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33f63656-379d-5841-8e84-291b28007b21', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Review means to study something again.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STRLP_20","is_correct":true,"text":"To study something again"},{"id":"A2STRLP_21","is_correct":false,"text":"To give a project presentation"},{"id":"A2STRLP_22","is_correct":false,"text":"To borrow a pencil"}],"word":"review"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2b81c93-c9a0-53bf-b0ab-ebf429ca2616', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The test is tomorrow.","explanation":"The missing time word is “tomorrow.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"tomorrow","id":"A2STRLP_24","is_correct":true},{"audio_text":"library","id":"A2STRLP_25","is_correct":false},{"audio_text":"cheese","id":"A2STRLP_26","is_correct":false}],"sentence_template":"The test is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93ef8c27-31e2-5a68-ace0-7386d1da65b0', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"review","explanation":"The complete sentence is “I review my notes.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ my notes."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('604b02df-6d1e-5287-8431-d1b4605717fb', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"test","id":"A2STRLP_29","text":"test"},{"audio_text":"study notes","id":"A2STRLP_30","text":"study notes"},{"audio_text":"practice questions","id":"A2STRLP_31","text":"practice questions"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6778a3a-8261-52f8-8ec6-c5efa05327fb', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Mira","text":"How do you prepare for the test?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STRLP_33","is_correct":true,"text":"I review my notes and practice."},{"id":"A2STRLP_34","is_correct":false,"text":"I live near the park."},{"id":"A2STRLP_35","is_correct":false,"text":"I would like some tea."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('eb7ddc17-6d85-58fa-ab24-611978c3685d', 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('42ccf3d9-296c-5ce2-a104-29adad879c43', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Reflecting on Performance","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c31d5c7b-f103-5e5a-ac9f-42ab0e60c601', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STRLP_37","left":"question","right":"вопрос"},{"id":"A2STRLP_38","left":"answer","right":"ответ"},{"id":"A2STRLP_39","left":"correct","right":"правильный"},{"id":"A2STRLP_40","left":"wrong","right":"неправильный"},{"id":"A2STRLP_41","left":"choose","right":"выберите"},{"id":"A2STRLP_42","left":"write","right":"напишите"},{"id":"A2STRLP_43","left":"check your answers","right":"проверьте свои ответы"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('067cd434-d15b-5a6b-b75b-bc0d73189071', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Checking answers can help you find mistakes.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STRLP_45","is_correct":true,"text":"Check your answers"},{"id":"A2STRLP_46","is_correct":false,"text":"Close every question"},{"id":"A2STRLP_47","is_correct":false,"text":"Talk to a friend"}],"question":"What should you do before giving the test to the teacher?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eda39480-43b7-5186-918d-0e9711fc18f4', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Choose the correct answer.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Выберите правильный ответ.","target_language":"en","word_bank":["answer.","correct","the","Choose"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4febc727-055e-5996-ae03-2c7b04326c0a', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"name","instruction":"Выберите подходящее слово.","options":["name","party","garden"],"sentence_template":"Write your ___ at the top."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dee59cf-1630-580e-aa85-936d4b6e2a7a', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Check","your","answers."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["your","Check","answers."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3ff9adb-e23a-53c3-9393-d1ef6e99ba75', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Read each question carefully.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68015b17-fefb-58a8-9024-99f86b2be102', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Choose one answer and write it in the box. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Выберите один ответ и напишите его в поле. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35cca28e-6818-59ed-bd5f-175f2117b523', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Student","text":"Can I use a pencil?","translation":"Можно использовать карандаш?","type":"dialogue"},{"character":"Teacher","text":"Yes, you can.","translation":"Да, можно.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"See you at the park."}],"text":"What should the student say?","type":"choice"}],"title":"During the Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d4a57c7-74f0-5b49-86bc-8731d374307f', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"Correct means right and without a mistake.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STRLP_55","is_correct":true,"text":"Right and without a mistake"},{"id":"A2STRLP_56","is_correct":false,"text":"Not right or true"},{"id":"A2STRLP_57","is_correct":false,"text":"Difficult to understand"}],"word":"correct"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc1d07e0-efaa-543f-b492-12180f1ca5e4', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Choose the correct answer.","explanation":"The missing test word is “answer.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"answer","id":"A2STRLP_59","is_correct":true},{"audio_text":"screen","id":"A2STRLP_60","is_correct":false},{"audio_text":"breakfast","id":"A2STRLP_61","is_correct":false}],"sentence_template":"Choose the correct ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('863829c8-4b24-5015-9087-7cf23b25b449', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"question","explanation":"The complete instruction is “Read each question.”","hint_prefix":"qu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Read each ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eddc7338-b461-58e8-ad4a-f668a873ad88', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"read the question","id":"A2STRLP_64","text":"read the question"},{"audio_text":"choose an answer","id":"A2STRLP_65","text":"choose an answer"},{"audio_text":"check your answers","id":"A2STRLP_66","text":"check your answers"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70d8333d-0b8f-5c4e-b699-82084f2b7559', '42ccf3d9-296c-5ce2-a104-29adad879c43', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"You have five minutes left."}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STRLP_68","is_correct":true,"text":"Okay. I will check my answers."},{"id":"A2STRLP_69","is_correct":false,"text":"Okay. I like science."},{"id":"A2STRLP_70","is_correct":false,"text":"Okay. The cafe is opposite."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('eb7ddc17-6d85-58fa-ab24-611978c3685d', '42ccf3d9-296c-5ce2-a104-29adad879c43', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e0e81efd-10b1-557f-b31d-b40d42a81ca0', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Planning Improvement","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88849782-74ce-57fd-a0aa-06cf6bdd608f', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STRLP_72","left":"result","right":"результат"},{"id":"A2STRLP_73","left":"score","right":"балл"},{"id":"A2STRLP_74","left":"mark","right":"оценка"},{"id":"A2STRLP_75","left":"mistake","right":"ошибка"},{"id":"A2STRLP_76","left":"correct a mistake","right":"исправить ошибку"},{"id":"A2STRLP_77","left":"well done","right":"молодец"},{"id":"A2STRLP_78","left":"try again","right":"попробовать снова"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b67bbb9-8225-51ff-91a2-d24ef8c3f386', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Correcting a mistake helps you learn.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STRLP_80","is_correct":true,"text":"Correct the mistake"},{"id":"A2STRLP_81","is_correct":false,"text":"Forget the question"},{"id":"A2STRLP_82","is_correct":false,"text":"Start a party"}],"question":"What should you do when an answer is wrong?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11e833c1-28b0-51fd-9a13-b8568b5ae0ca', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I made one mistake.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я сделал одну ошибку.","target_language":"en","word_bank":["mistake.","one","made","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba0d9e19-d37b-55af-9061-58669914ba65', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"score","instruction":"Выберите подходящее слово.","options":["score","ruler","street"],"sentence_template":"My test ___ is eight."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b78a9b6-4eaa-5e1b-88b0-7c898982baf1', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","will","try","again."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["again.","will","I","try"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4788458-52a3-5fb1-959e-08285fa180f9', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Well done. Your answers are correct.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cf54a687-f120-5c8f-86f1-23b40ddcc381', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I made two mistakes, but I understand them now. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я сделал две ошибки, но теперь я их понимаю. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0479d894-97f2-5c3d-953e-5b8ebfbfda28', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Your score is nine out of ten. Well done.","translation":"Твой результат — девять из десяти. Молодец.","type":"dialogue"},{"character":"Sara","text":"Thank you. Which answer is wrong?","translation":"Спасибо. Какой ответ неправильный?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Look at question four."},{"is_correct":false,"text":"Meet me at the cafe."}],"text":"What can the teacher say?","type":"choice"}],"title":"After the Test"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8bcf2c1-19d8-5d4f-a2a7-35a80213688c', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A mistake is something that is not correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STRLP_90","is_correct":true,"text":"Something that is not correct"},{"id":"A2STRLP_91","is_correct":false,"text":"A number showing a test result"},{"id":"A2STRLP_92","is_correct":false,"text":"Work done before a test"}],"word":"mistake"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44483217-edbf-5948-bd11-ebcf33726612', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I made one mistake.","explanation":"The missing word is “mistake.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"mistake","id":"A2STRLP_94","is_correct":true},{"audio_text":"lesson","id":"A2STRLP_95","is_correct":false},{"audio_text":"water","id":"A2STRLP_96","is_correct":false}],"sentence_template":"I made one ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12251c55-2cdb-59e7-92b8-f84b66237b4f', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"again","explanation":"The complete instruction is “Please try again.”","hint_prefix":"ag","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please try ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fee5b510-4a2c-544d-aca6-7786777e3673', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"test result","id":"A2STRLP_99","text":"test result"},{"audio_text":"well done","id":"A2STRLP_100","text":"well done"},{"audio_text":"correct the mistake","id":"A2STRLP_101","text":"correct the mistake"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e927ecb1-5882-5da9-9be0-64fc4bd105f9', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Ben","text":"How was your test?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STRLP_103","is_correct":true,"text":"Good. I got nine out of ten."},{"id":"A2STRLP_104","is_correct":false,"text":"Good. The library is upstairs."},{"id":"A2STRLP_105","is_correct":false,"text":"Good. I like orange juice."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('eb7ddc17-6d85-58fa-ab24-611978c3685d', 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 2)
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
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'test' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'revision' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'remember' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'study notes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'ac7b90f3-2f6d-5c2c-a206-4018cb763bee', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'The test is tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'answer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'wrong' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'choose' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'write' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, '42ccf3d9-296c-5ce2-a104-29adad879c43', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'check your answers' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'result' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'score' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'mark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct a mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'well done' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eb7ddc17-6d85-58fa-ab24-611978c3685d', id, 'e0e81efd-10b1-557f-b31d-b40d42a81ca0', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'try again' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
