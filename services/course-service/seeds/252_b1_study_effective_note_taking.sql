-- Track: B1_STUDY_EFFECTIVE_NOTE_TAKING. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('0dfa7496-b17b-510a-b986-0598a71170da', 'B1_STUDY_EFFECTIVE_NOTE_TAKING', 'Эффективное ведение конспекта', 'Развивайте учебные навыки уровня B1 по теме «Эффективное ведение конспекта».', '{"en":"Effective Note-Taking","ru":"Эффективное ведение конспекта"}'::jsonb, '{"en":"Develop B1 study skills for effective note-taking.","ru":"Развивайте учебные навыки уровня B1 по теме «Эффективное ведение конспекта»."}'::jsonb, 'en', 'B1', '', ARRAY['study']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('3b40c7da-eb75-53b6-be48-655b13aa943b', NULL, 'Учебная практика 1', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Selecting Key Points","ru":"Учебная практика 1"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc64f122-e3e5-5d75-aab1-ae77706927b0', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STNTB_2","left":"textbook","right":"учебник"},{"id":"A2STNTB_3","left":"workbook","right":"рабочая тетрадь"},{"id":"A2STNTB_4","left":"notebook","right":"тетрадь"},{"id":"A2STNTB_5","left":"dictionary","right":"словарь"},{"id":"A2STNTB_6","left":"page","right":"страница"},{"id":"A2STNTB_7","left":"paper","right":"бумага"},{"id":"A2STNTB_8","left":"open your textbook","right":"откройте учебник"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24a04e66-b571-547e-9c4b-fd65d5d70e56', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A dictionary gives word meanings.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STNTB_10","is_correct":true,"text":"A dictionary"},{"id":"A2STNTB_11","is_correct":false,"text":"A notebook"},{"id":"A2STNTB_12","is_correct":false,"text":"A workbook"}],"question":"Which book helps you find the meaning of a word?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9415257d-5f51-59fb-a66c-da230b16be42', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is my textbook.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это мой учебник.","target_language":"en","word_bank":["textbook.","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('568ce61f-986e-5677-ab8f-0b9417358df7', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"page","instruction":"Выберите подходящее слово.","options":["page","party","milk"],"sentence_template":"Open your book on ___ ten."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d8bd930-5ee6-577d-af82-e53fcfa3ef34', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","need","a","notebook."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","need","I","notebook."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40c44a15-6efe-5fd6-8eca-1743aa8ced61', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please open your workbook on page five.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5435c996-3afe-5bf3-801b-f2b521f848cf', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Write the new words in your notebook. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Запишите новые слова в тетрадь. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6c61a42-3d6c-521a-8754-5eb000b99654', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mila","text":"Do I need my textbook today?","translation":"Мне сегодня нужен учебник?","type":"dialogue"},{"character":"Teacher","text":"Yes. Open it on page twelve.","translation":"Да. Открой его на странице двенадцать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Okay, thank you."},{"is_correct":false,"text":"See you at the cafe."}],"text":"What should Mila say?","type":"choice"}],"title":"Before the Lesson"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07e8b024-4ddf-5cc8-8793-4b38a84f232b', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A dictionary is a book that explains words.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STNTB_20","is_correct":true,"text":"A book that explains words"},{"id":"A2STNTB_21","is_correct":false,"text":"A book with empty pages for notes"},{"id":"A2STNTB_22","is_correct":false,"text":"One side of a sheet in a book"}],"word":"dictionary"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2861a22e-e6e4-5dce-9480-a729d5db3292', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Open your book on page ten.","explanation":"The missing word is “page.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"page","id":"A2STNTB_24","is_correct":true},{"audio_text":"teacher","id":"A2STNTB_25","is_correct":false},{"audio_text":"juice","id":"A2STNTB_26","is_correct":false}],"sentence_template":"Open your book on ___ ten."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25fdff6a-aa90-53f6-a665-e344879c604a', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"notebook","explanation":"The complete sentence is “This is my notebook.”","hint_prefix":"no","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f4ed966-5071-5bbd-923f-5761f980c789', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"textbook","id":"A2STNTB_29","text":"textbook"},{"audio_text":"dictionary","id":"A2STNTB_30","text":"dictionary"},{"audio_text":"page ten","id":"A2STNTB_31","text":"page ten"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e1f34bf-0d74-5126-8241-69f6b5c54885', '3b40c7da-eb75-53b6-be48-655b13aa943b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Please take out your workbook."}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STNTB_33","is_correct":true,"text":"Okay. Here it is."},{"id":"A2STNTB_34","is_correct":false,"text":"I like orange juice."},{"id":"A2STNTB_35","is_correct":false,"text":"The park is near my home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0dfa7496-b17b-510a-b986-0598a71170da', '3b40c7da-eb75-53b6-be48-655b13aa943b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('da14aaa9-8588-5dcd-9889-9a5688107e3d', NULL, 'Учебная практика 2', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Organising Notes","ru":"Учебная практика 2"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ed03c12-dcd3-5b27-8143-55c27b4bf946', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STNTB_37","left":"pen","right":"ручка"},{"id":"A2STNTB_38","left":"pencil","right":"карандаш"},{"id":"A2STNTB_39","left":"eraser","right":"ластик"},{"id":"A2STNTB_40","left":"ruler","right":"линейка"},{"id":"A2STNTB_41","left":"pencil case","right":"пенал"},{"id":"A2STNTB_42","left":"colored pencil","right":"цветной карандаш"},{"id":"A2STNTB_43","left":"Can I borrow a pen?","right":"Можно мне одолжить ручку?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e14f82d2-19bd-598a-b8f9-dd1555036341', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"An eraser removes pencil marks.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STNTB_45","is_correct":true,"text":"An eraser"},{"id":"A2STNTB_46","is_correct":false,"text":"A ruler"},{"id":"A2STNTB_47","is_correct":false,"text":"A pen"}],"question":"Which tool removes pencil marks?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3db5b2e-d3de-5422-b760-7e17eee9a987', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I need a pencil.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мне нужен карандаш.","target_language":"en","word_bank":["pencil.","a","need","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab3411ab-abf0-559f-857d-417285d65d49', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ruler","instruction":"Выберите подходящее слово.","options":["ruler","science","breakfast"],"sentence_template":"Can I borrow your ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d4840c7-a9e8-5a0d-b533-b8bddf2ed78e', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["My","pencil","is","in","the","case."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["is","pencil","case.","My","the","in"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('257ad5ed-5680-58bc-b34f-da0769a2bcc1', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have two pens and one pencil.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99291b25-2880-5fd9-aac8-67df227de3f4', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Excuse me. Can I borrow an eraser, please? I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините. Можно мне одолжить ластик, пожалуйста? Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ea43284-9c8d-551e-ba0f-115d11e2b9b1', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Ben","text":"I cannot find my pen.","translation":"Я не могу найти свою ручку.","type":"dialogue"},{"character":"Aida","text":"You can borrow my pen.","translation":"Ты можешь взять мою ручку.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"Open the library."}],"text":"What should Ben say?","type":"choice"}],"title":"A Missing Pen"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56371bcc-49a1-52f4-ac52-71c83264405a', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A ruler is used to measure or draw straight lines.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STNTB_55","is_correct":true,"text":"A straight tool used to measure or draw lines"},{"id":"A2STNTB_56","is_correct":false,"text":"A tool used to remove pencil marks"},{"id":"A2STNTB_57","is_correct":false,"text":"A container for school pencils"}],"word":"ruler"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('facacbe0-1aa2-5fdf-8278-a2cf0289eea3', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Can I borrow a pen?","explanation":"The missing study tool is “pen.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"pen","id":"A2STNTB_59","is_correct":true},{"audio_text":"lesson","id":"A2STNTB_60","is_correct":false},{"audio_text":"sandwich","id":"A2STNTB_61","is_correct":false}],"sentence_template":"Can I borrow a ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88b84f30-3e93-5fc3-b19d-f02d065ada3d', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"eraser","explanation":"The complete sentence is “I need an eraser.”","hint_prefix":"er","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I need an ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d072d9bb-4057-54e1-955b-a81dbc01f30c', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"pen","id":"A2STNTB_64","text":"pen"},{"audio_text":"pencil case","id":"A2STNTB_65","text":"pencil case"},{"audio_text":"colored pencil","id":"A2STNTB_66","text":"colored pencil"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c167a68-9b74-579a-8785-0a0f037fe6e2', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Sara","text":"Do you have a ruler?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STNTB_68","is_correct":true,"text":"Yes. You can borrow it."},{"id":"A2STNTB_69","is_correct":false,"text":"Yes. English starts at nine."},{"id":"A2STNTB_70","is_correct":false,"text":"Yes. My house is small."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0dfa7496-b17b-510a-b986-0598a71170da', 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', NULL, 'Учебная практика 3', 'Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс.', '{"en":"Reviewing and Expanding Notes","ru":"Учебная практика 3"}'::jsonb, '{"en":"Complete familiar B1 study tasks independently by connecting ideas, using evidence, and evaluating progress.","ru":"Самостоятельно выполнять знакомые учебные задачи уровня B1, связывая идеи, используя доказательства и оценивая свой прогресс."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5d59d40-62df-5727-95a8-b967fe89127c', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"A2STNTB_72","left":"computer","right":"компьютер"},{"id":"A2STNTB_73","left":"tablet","right":"планшет"},{"id":"A2STNTB_74","left":"screen","right":"экран"},{"id":"A2STNTB_75","left":"keyboard","right":"клавиатура"},{"id":"A2STNTB_76","left":"file","right":"файл"},{"id":"A2STNTB_77","left":"website","right":"веб-сайт"},{"id":"A2STNTB_78","left":"open the file","right":"откройте файл"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0666121e-65e0-567a-9fd3-ca6250c86897', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The screen displays pictures and words.","instruction":"Выберите правильный ответ.","options":[{"id":"A2STNTB_80","is_correct":true,"text":"The screen"},{"id":"A2STNTB_81","is_correct":false,"text":"The keyboard"},{"id":"A2STNTB_82","is_correct":false,"text":"The file"}],"question":"Which part shows pictures and words on a computer?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfca10ea-204a-52e8-8a75-51233a74dd11', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Open the file on the computer.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Откройте файл на компьютере.","target_language":"en","word_bank":["computer.","the","on","file","the","Open"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1991b928-b0e5-556e-abf8-f428b1e9bef7', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"screen","instruction":"Выберите подходящее слово.","options":["screen","dinner","classmate"],"sentence_template":"The words are on the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcd88e99-c253-5dda-9452-897d0be2e6f0', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Use","the","school","website."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","Use","website.","school"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5ca7668d-abdf-5415-be68-5c00e33659b9', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The homework file is on the school website.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d45c15c7-f5f3-5e9a-86c4-1f43d367ac0d', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Use the keyboard to write your answer. I can explain the main point in a short sentence. I will organise the main points, support them with evidence, and review my work before I submit it.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Используйте клавиатуру, чтобы написать ответ. Я могу объяснить основную мысль коротким предложением. Я организую основные идеи, подкреплю их доказательствами и проверю работу перед сдачей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27c10c9e-db7b-58d2-8748-23e06e771944', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Please open the English file.","translation":"Пожалуйста, откройте файл по английскому.","type":"dialogue"},{"character":"Omar","text":"Where is the file?","translation":"Где файл?","type":"dialogue"},{"options":[{"is_correct":true,"text":"It is on the school website."},{"is_correct":false,"text":"It is my favorite food."}],"text":"What can the teacher say?","type":"choice"}],"title":"In the Computer Room"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bff3ecb-db7a-5d8c-a3ba-b1811a80fc5c', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A keyboard has keys used for typing.","instruction":"Выберите значение.","language":"en","options":[{"id":"A2STNTB_90","is_correct":true,"text":"The set of keys used to type on a computer"},{"id":"A2STNTB_91","is_correct":false,"text":"The part that displays pictures"},{"id":"A2STNTB_92","is_correct":false,"text":"A document stored on a computer"}],"word":"keyboard"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e4120aa-bdb1-504a-83d7-17f251dfface', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Open the English file.","explanation":"The missing digital item is “file.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"file","id":"A2STNTB_94","is_correct":true},{"audio_text":"park","id":"A2STNTB_95","is_correct":false},{"audio_text":"coffee","id":"A2STNTB_96","is_correct":false}],"sentence_template":"Open the English ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('884b197c-d542-5be3-bad3-8eaa866f6953', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"screen","explanation":"The complete instruction is “Look at the screen.”","hint_prefix":"sc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Look at the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0838d36-e0a3-5a92-813e-6340a86095e6', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each study phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"computer","id":"A2STNTB_99","text":"computer"},{"audio_text":"school website","id":"A2STNTB_100","text":"school website"},{"audio_text":"open the file","id":"A2STNTB_101","text":"open the file"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('172483e7-3e19-52b5-b910-eb34cf778271', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Can you open the homework file?"}],"explanation":"Choose the response that develops the academic task with a clear reason, example, or next step.","instruction":"Ответьте.","options":[{"id":"A2STNTB_103","is_correct":true,"text":"Yes. It is open now."},{"id":"A2STNTB_104","is_correct":false,"text":"Yes. I have two sisters."},{"id":"A2STNTB_105","is_correct":false,"text":"Yes. Lunch is at one."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('0dfa7496-b17b-510a-b986-0598a71170da', '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 2)
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
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'textbook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'workbook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'notebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'dictionary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'page' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'paper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '3b40c7da-eb75-53b6-be48-655b13aa943b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'open your textbook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'pen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'eraser' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'ruler' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil case' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'colored pencil' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, 'da14aaa9-8588-5dcd-9889-9a5688107e3d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can I borrow a pen?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'computer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'tablet' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'screen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'keyboard' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'file' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'website' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '0dfa7496-b17b-510a-b986-0598a71170da', id, '2dd78c57-3c4d-5ce0-8955-41eb7dc90cc2', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'open the file' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
