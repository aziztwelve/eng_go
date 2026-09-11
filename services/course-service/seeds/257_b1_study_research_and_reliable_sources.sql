-- Track: B1_STUDY_RESEARCH_AND_RELIABLE_SOURCES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('be4eae4d-b0c9-5a4c-b718-b14857ab2a60', 'B1_STUDY_RESEARCH_AND_RELIABLE_SOURCES', 'Исследование и надёжные источники', 'Развивайте учебные навыки уровня B1 по теме «Исследование и надёжные источники».', '{"en":"Research and Reliable Sources","ru":"Исследование и надёжные источники"}'::jsonb, '{"en":"Develop B1 study skills for research and reliable sources.","ru":"Развивайте учебные навыки уровня B1 по теме «Исследование и надёжные источники»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('f7542761-697d-5d16-954f-25299860a766', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Searching Effectively","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a532b88c-b46f-553e-bd62-0c9d84037dc3', 'f7542761-697d-5d16-954f-25299860a766', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STDAOR_2","left":"textbook","right":"учебник"},{"id":"A2STDAOR_3","left":"workbook","right":"рабочая тетрадь"},{"id":"A2STDAOR_4","left":"notebook","right":"тетрадь"},{"id":"A2STDAOR_5","left":"dictionary","right":"словарь"},{"id":"A2STDAOR_6","left":"page","right":"страница"},{"id":"A2STDAOR_7","left":"paper","right":"бумага"},{"id":"A2STDAOR_8","left":"open your textbook","right":"откройте учебник"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('814515b4-a02c-5d6f-9e67-1cc784771ad8', 'f7542761-697d-5d16-954f-25299860a766', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A dictionary gives word meanings.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STDAOR_10","is_correct":true,"text":"A dictionary"},{"id":"A2STDAOR_11","is_correct":false,"text":"A notebook"},{"id":"A2STDAOR_12","is_correct":false,"text":"A workbook"}],"question":"Which book helps you find the meaning of a word?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75ef3ccc-15ef-559c-9bb5-ff8639da8468', 'f7542761-697d-5d16-954f-25299860a766', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is my textbook.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это мой учебник.","target_language":"en","word_bank":["textbook.","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcdd6299-8812-5468-ac92-54d301998454', 'f7542761-697d-5d16-954f-25299860a766', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"page","instruction":"Выберите подходящее слово.","options":["page","party","milk"],"sentence_template":"Open your book on ___ ten."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec47dc46-b477-51c2-87c2-b4f97632a360', 'f7542761-697d-5d16-954f-25299860a766', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","need","a","notebook."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","need","I","notebook."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a157b4d1-a638-5490-aa62-7b3ff0d1a1f9', 'f7542761-697d-5d16-954f-25299860a766', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please open your workbook on page five.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1968b4f-1c5c-586e-89fa-3051b2fa9500', 'f7542761-697d-5d16-954f-25299860a766', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Write the new words in your notebook. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Запишите новые слова в тетрадь. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3267ef5-ed69-5783-ab9e-2366031d6694', 'f7542761-697d-5d16-954f-25299860a766', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mila","text":"Do I need my textbook today?","translation":"Мне сегодня нужен учебник?","type":"dialogue"},{"character":"Teacher","text":"Yes. Open it on page twelve.","translation":"Да. Открой его на странице двенадцать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Okay, thank you."},{"is_correct":false,"text":"See you at the cafe."}],"text":"What should Mila say?","type":"choice"}],"title":"Before the Lesson"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc77535c-6243-53fb-9bee-972933ea5819', 'f7542761-697d-5d16-954f-25299860a766', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A dictionary is a book that explains words.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STDAOR_20","is_correct":true,"text":"A book that explains words"},{"id":"A2STDAOR_21","is_correct":false,"text":"A book with empty pages for notes"},{"id":"A2STDAOR_22","is_correct":false,"text":"One side of a sheet in a book"}],"word":"dictionary"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad1cff37-47ad-5cf4-837b-1269cde5a104', 'f7542761-697d-5d16-954f-25299860a766', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Open your book on page ten.","explanation":"The missing word is “page.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"page","id":"A2STDAOR_24","is_correct":true},{"audio_text":"teacher","id":"A2STDAOR_25","is_correct":false},{"audio_text":"juice","id":"A2STDAOR_26","is_correct":false}],"sentence_template":"Open your book on ___ ten."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f419d5c-f1ca-51d4-b41e-248d0da96487', 'f7542761-697d-5d16-954f-25299860a766', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"notebook","explanation":"The complete sentence is “This is my notebook.”","hint_prefix":"no","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57fbffef-0bb2-50c9-894a-86fa38321b3a', 'f7542761-697d-5d16-954f-25299860a766', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"textbook","id":"A2STDAOR_29","text":"textbook"},{"audio_text":"dictionary","id":"A2STDAOR_30","text":"dictionary"},{"audio_text":"page ten","id":"A2STDAOR_31","text":"page ten"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('499d4269-c0c9-55aa-b703-9e6aff0dd82c', 'f7542761-697d-5d16-954f-25299860a766', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Please take out your workbook."}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STDAOR_33","is_correct":true,"text":"Okay. Here it is."},{"id":"A2STDAOR_34","is_correct":false,"text":"I like orange juice."},{"id":"A2STDAOR_35","is_correct":false,"text":"The park is near my home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('be4eae4d-b0c9-5a4c-b718-b14857ab2a60', 'f7542761-697d-5d16-954f-25299860a766', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('baae1335-65a4-57ab-9bdf-1e5f49091f0a', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Evaluating Sources","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e836c17-e4e1-5b73-af6e-c954a4ce0e68', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STDAOR_37","left":"pen","right":"ручка"},{"id":"A2STDAOR_38","left":"pencil","right":"карандаш"},{"id":"A2STDAOR_39","left":"eraser","right":"ластик"},{"id":"A2STDAOR_40","left":"ruler","right":"линейка"},{"id":"A2STDAOR_41","left":"pencil case","right":"пенал"},{"id":"A2STDAOR_42","left":"colored pencil","right":"цветной карандаш"},{"id":"A2STDAOR_43","left":"Can I borrow a pen?","right":"Можно мне одолжить ручку?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('207288a3-87ab-5d6e-b146-ee747162dcfd', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"An eraser removes pencil marks.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STDAOR_45","is_correct":true,"text":"An eraser"},{"id":"A2STDAOR_46","is_correct":false,"text":"A ruler"},{"id":"A2STDAOR_47","is_correct":false,"text":"A pen"}],"question":"Which tool removes pencil marks?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfff5c4a-9c57-5270-9769-0258ec83912f', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I need a pencil.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нужен карандаш.","target_language":"en","word_bank":["pencil.","a","need","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a56878cd-fd84-58a4-850f-6906f7e4f412', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ruler","instruction":"Выберите подходящее слово.","options":["ruler","science","breakfast"],"sentence_template":"Can I borrow your ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2301d0e-7b13-5604-a69e-7df0b4ecc2d2', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","pencil","is","in","the","case."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","pencil","case.","My","the","in"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5f5f1e-221b-5e3b-a3d1-7abc840e1e55', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have two pens and one pencil.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0e11026-7793-5085-8e5c-be6e2c54542e', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Excuse me. Can I borrow an eraser, please? I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините. Можно мне одолжить ластик, пожалуйста? Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e907d5a1-02bc-5873-a5b8-99741bb82df9', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"I cannot find my pen.","translation":"Я не могу найти свою ручку.","type":"dialogue"},{"character":"Aida","text":"You can borrow my pen.","translation":"Ты можешь взять мою ручку.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"Open the library."}],"text":"What should Ben say?","type":"choice"}],"title":"A Missing Pen"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4df0e8f-f23b-5121-b50a-24b28117a16c', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A ruler is used to measure or draw straight lines.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STDAOR_55","is_correct":true,"text":"A straight tool used to measure or draw lines"},{"id":"A2STDAOR_56","is_correct":false,"text":"A tool used to remove pencil marks"},{"id":"A2STDAOR_57","is_correct":false,"text":"A container for school pencils"}],"word":"ruler"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6d7ea5a-6236-55b6-bffa-870a89246255', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Can I borrow a pen?","explanation":"The missing study tool is “pen.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"pen","id":"A2STDAOR_59","is_correct":true},{"audio_text":"lesson","id":"A2STDAOR_60","is_correct":false},{"audio_text":"sandwich","id":"A2STDAOR_61","is_correct":false}],"sentence_template":"Can I borrow a ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d91e21b-1de8-5e11-83bd-2494b2e27428', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"eraser","explanation":"The complete sentence is “I need an eraser.”","hint_prefix":"er","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I need an ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e950d711-4419-551b-87fe-59ad9c6dfb64', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"pen","id":"A2STDAOR_64","text":"pen"},{"audio_text":"pencil case","id":"A2STDAOR_65","text":"pencil case"},{"audio_text":"colored pencil","id":"A2STDAOR_66","text":"colored pencil"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c514b3c7-5d09-5db5-9077-048077750831', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Sara","text":"Do you have a ruler?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STDAOR_68","is_correct":true,"text":"Yes. You can borrow it."},{"id":"A2STDAOR_69","is_correct":false,"text":"Yes. English starts at nine."},{"id":"A2STDAOR_70","is_correct":false,"text":"Yes. My house is small."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('be4eae4d-b0c9-5a4c-b718-b14857ab2a60', 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6b366644-e0a6-533a-a0ad-e00fba7fa3f9', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Recording Source Information","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('06a9f7ab-9e47-53ba-8341-c7312ee42beb', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STDAOR_72","left":"computer","right":"компьютер"},{"id":"A2STDAOR_73","left":"tablet","right":"планшет"},{"id":"A2STDAOR_74","left":"screen","right":"экран"},{"id":"A2STDAOR_75","left":"keyboard","right":"клавиатура"},{"id":"A2STDAOR_76","left":"file","right":"файл"},{"id":"A2STDAOR_77","left":"website","right":"веб-сайт"},{"id":"A2STDAOR_78","left":"open the file","right":"откройте файл"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2fa5cb17-7a55-5275-852a-ca61d4d37acb', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The screen displays pictures and words.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STDAOR_80","is_correct":true,"text":"The screen"},{"id":"A2STDAOR_81","is_correct":false,"text":"The keyboard"},{"id":"A2STDAOR_82","is_correct":false,"text":"The file"}],"question":"Which part shows pictures and words on a computer?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ae27e7d-9829-501d-b19c-fe946700a752', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Open the file on the computer.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Откройте файл на компьютере.","target_language":"en","word_bank":["computer.","the","on","file","the","Open"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2709d855-4476-5b1e-ae21-d23eaab2448b', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"screen","instruction":"Выберите подходящее слово.","options":["screen","dinner","classmate"],"sentence_template":"The words are on the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65ff6143-2c21-5905-a3e2-46c9adf9d0a1', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Use","the","school","website."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","Use","website.","school"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1997a066-57fc-5b3a-8842-021df0b66450', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The homework file is on the school website.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d0a9041-8d2d-5cf5-ae68-f04792e95af9', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Use the keyboard to write your answer. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Используйте клавиатуру, чтобы написать ответ. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc07ecf9-2ab0-5f9a-9238-f28273648650', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Please open the English file.","translation":"Пожалуйста, откройте файл по английскому.","type":"dialogue"},{"character":"Omar","text":"Where is the file?","translation":"Где файл?","type":"dialogue"},{"options":[{"is_correct":true,"text":"It is on the school website."},{"is_correct":false,"text":"It is my favorite food."}],"text":"What can the teacher say?","type":"choice"}],"title":"In the Computer Room"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('257cce9f-8890-5597-9563-a51e0fb366cf', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A keyboard has keys used for typing.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STDAOR_90","is_correct":true,"text":"The set of keys used to type on a computer"},{"id":"A2STDAOR_91","is_correct":false,"text":"The part that displays pictures"},{"id":"A2STDAOR_92","is_correct":false,"text":"A document stored on a computer"}],"word":"keyboard"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccdcfbac-7221-5fae-b4e4-16f44a7e29b1', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Open the English file.","explanation":"The missing digital item is “file.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"file","id":"A2STDAOR_94","is_correct":true},{"audio_text":"park","id":"A2STDAOR_95","is_correct":false},{"audio_text":"coffee","id":"A2STDAOR_96","is_correct":false}],"sentence_template":"Open the English ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0428fdab-d75e-5d7a-9be3-89bd7363b458', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"screen","explanation":"The complete instruction is “Look at the screen.”","hint_prefix":"sc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Look at the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcbc2386-48c9-53bd-ba7b-78580a129495', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"computer","id":"A2STDAOR_99","text":"computer"},{"audio_text":"school website","id":"A2STDAOR_100","text":"school website"},{"audio_text":"open the file","id":"A2STDAOR_101","text":"open the file"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ddaa58a-fb7a-567e-a837-35ea08d3a415', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Can you open the homework file?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STDAOR_103","is_correct":true,"text":"Yes. It is open now."},{"id":"A2STDAOR_104","is_correct":false,"text":"Yes. I have two sisters."},{"id":"A2STDAOR_105","is_correct":false,"text":"Yes. Lunch is at one."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('be4eae4d-b0c9-5a4c-b718-b14857ab2a60', '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2b2c7f92-b96a-5b35-ada9-fc4530d6ef06', 'en', 'textbook', 'учебник', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('13a2e6d7-c151-5a67-804d-866472ceeef8', 'en', 'workbook', 'рабочая тетрадь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('24d3b6d8-102f-55dd-8560-99bc49527f64', 'en', 'notebook', 'тетрадь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d406b91-4134-5cde-9767-dac74676bc72', 'en', 'dictionary', 'словарь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee3cfceb-65b1-53ca-bc2b-f52e6da0386b', 'en', 'page', 'страница', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0f8db2b-c4f0-5182-add5-d9acaf5a92ce', 'en', 'paper', 'бумага', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d3c23250-97b6-56e4-9b9d-f99470dfe147', 'en', 'open your textbook', 'откройте учебник', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86bad7f8-fc35-563e-a0c1-cf8ab0150261', 'en', 'pen', 'ручка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef36de23-8c77-52ba-a78c-d05fb2c04959', 'en', 'pencil', 'карандаш', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c0873631-afe9-5440-a2ac-30dce2121989', 'en', 'eraser', 'ластик', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ae61055-785b-5abe-8990-a7636c1d67cf', 'en', 'ruler', 'линейка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('90456431-9cd3-57f8-ac3f-330cd33a5672', 'en', 'pencil case', 'пенал', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d911a42f-0d99-5d5f-bc0c-b6dc4f13f73e', 'en', 'colored pencil', 'цветной карандаш', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('500c56de-48d3-5f42-abff-10a02496d57b', 'en', 'Can I borrow a pen?', 'Можно мне одолжить ручку?', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a6033b6f-908a-5f82-b82a-e887dd07af6b', 'en', 'computer', 'компьютер', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('839d2e66-13a0-50ca-a57a-f20650a5da7c', 'en', 'tablet', 'планшет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('63d7addf-9c17-52b5-b3c3-c3a331124224', 'en', 'screen', 'экран', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd1b06e5-3f8d-5a71-a3df-7d4c048c7adf', 'en', 'keyboard', 'клавиатура', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ab7bcb81-5b5a-5184-8aef-5ac75eedecef', 'en', 'file', 'файл', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4cae3021-b3cb-5833-99da-f8be32daa7a7', 'en', 'website', 'веб-сайт', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d8a7aad-c914-5b78-a864-a819b4326cab', 'en', 'open the file', 'откройте файл', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'textbook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'workbook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'notebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'dictionary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'page' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'paper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'f7542761-697d-5d16-954f-25299860a766', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'open your textbook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'pen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'eraser' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'ruler' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'colored pencil' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, 'baae1335-65a4-57ab-9bdf-1e5f49091f0a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can I borrow a pen?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'computer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'tablet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'screen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'keyboard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'file' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'website' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'be4eae4d-b0c9-5a4c-b718-b14857ab2a60', id, '6b366644-e0a6-533a-a0ad-e00fba7fa3f9', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'open the file' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
