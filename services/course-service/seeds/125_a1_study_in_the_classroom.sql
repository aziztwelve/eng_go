-- Track: A1_STUDY_IN_THE_CLASSROOM. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4e0da1de-9dc3-5a3d-8473-a6f4801e9185', 'A1_STUDY_IN_THE_CLASSROOM', 'В классе', 'Научитесь называть предметы в классе, понимать простые инструкции и просить помощь.', 'en', 'A1', '', ARRAY['study']::text[], true, 25, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', NULL, 'Предметы в классе', 'Научиться называть основные предметы в классе и говорить, что у вас есть.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e9b58594-1aff-5e93-950d-29c528ee4110', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"ITC_L1_MP_P1","left":"book","right":"книга"},{"id":"ITC_L1_MP_P2","left":"pen","right":"ручка"},{"id":"ITC_L1_MP_P3","left":"pencil","right":"карандаш"},{"id":"ITC_L1_MP_P4","left":"desk","right":"парта"},{"id":"ITC_L1_MP_P5","left":"chair","right":"стул"},{"id":"ITC_L1_MP_P6","left":"board","right":"доска"},{"id":"ITC_L1_MP_P7","left":"bag","right":"сумка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('db5c7f36-9e43-5228-a256-06b66ce754cf', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'quiz', 'Проверьте себя', '{"explanation":"You use a pen to write.","instruction":"Выберите правильный ответ.","options":[{"id":"ITC_L1_Q_A","is_correct":true,"text":"A pen"},{"id":"ITC_L1_Q_B","is_correct":false,"text":"A chair"},{"id":"ITC_L1_Q_C","is_correct":false,"text":"A bag"}],"question":"Which object do you use to write?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a896e25c-1454-5cd0-9b3e-ca045eee68d8', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'translate', 'Переведите', '{"correct_translation":"I have a book.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня есть книга.","target_language":"en","word_bank":["book.","have","a","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b9f1c2fd-5eb0-5a86-aa5d-29360d427b3b', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"pencil","instruction":"Выберите подходящее слово.","options":["pencil","teacher","open"],"sentence_template":"This is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b73ff318-9038-595f-997e-08b6b43189be', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'tap_words', 'Соберите фразу', '{"correct_words":["I","have","a","pen."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","have","pen.","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e29d5b4b-107d-5e0c-bb96-734d67c9b2b0', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'listening', 'Послушайте', '{"audio_text":"I have a book and a pencil.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4f76bb4c-29be-51e1-970a-951583194277', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'listening_shadowing', 'Повторите', '{"audio_text":"This is my book, and this is my pen.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Это моя книга, а это моя ручка."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f78d2ce2-9882-5790-9aed-d32b96ece6d6', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mia","text":"I have a new pencil.","translation":"У меня есть новый карандаш.","type":"dialogue"},{"character":"Tom","text":"It is a nice pencil.","translation":"Это красивый карандаш.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"Open the chair."}],"text":"What should Mia say?","type":"choice"}],"title":"A New Pencil"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d149948c-75d9-56e4-afea-7f9f597e8aa6', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'choose_definition', 'Определение', '{"explanation":"A desk is a classroom table for a student.","instruction":"Выберите значение.","language":"en","options":[{"id":"ITC_L1_D_A","is_correct":true,"text":"A classroom table for a student"},{"id":"ITC_L1_D_B","is_correct":false,"text":"Something used to write"},{"id":"ITC_L1_D_C","is_correct":false,"text":"Something used to carry books"}],"word":"desk"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('23b3a496-9e2f-58ac-a4de-a11a07b7435d', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'listen_choose_word', 'Слово', '{"audio_text":"I have a book.","explanation":"The complete sentence is “I have a book.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"book","id":"ITC_L1_LW_A","is_correct":true},{"audio_text":"stand","id":"ITC_L1_LW_B","is_correct":false},{"audio_text":"teacher","id":"ITC_L1_LW_C","is_correct":false}],"sentence_template":"I have a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('569c8479-1464-5e30-8dab-fb0b3ca770d5', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'missing_word', 'Впишите', '{"correct_answer":"pen","explanation":"The complete sentence is “This is my pen.”","hint_prefix":"pe","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3f529fd6-7542-5e56-adb4-2014a3f1056d', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"book","id":"ITC_L1_VM_P1","text":"book"},{"audio_text":"pencil","id":"ITC_L1_VM_P2","text":"pencil"},{"audio_text":"bag","id":"ITC_L1_VM_P3","text":"bag"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8233767d-313f-5b5e-85f5-8bcfdbbb5565', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Do you have a pen?"}],"explanation":"“Yes, I have a pen” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"ITC_L1_C_A","is_correct":true,"text":"Yes, I have a pen."},{"id":"ITC_L1_C_B","is_correct":false,"text":"Yes, I am a pen."},{"id":"ITC_L1_C_C","is_correct":false,"text":"My pen is teacher."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4e0da1de-9dc3-5a3d-8473-a6f4801e9185', 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('739c4875-ebbb-52a0-841e-9a54374fabfd', NULL, 'Учитель и ученики', 'Научиться понимать простые роли и инструкции в классе.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cad0626c-e640-5693-8622-e7d8418ab990', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"ITC_L2_MP_P1","left":"teacher","right":"учитель"},{"id":"ITC_L2_MP_P2","left":"student","right":"ученик"},{"id":"ITC_L2_MP_P3","left":"class","right":"урок"},{"id":"ITC_L2_MP_P4","left":"sit down","right":"садитесь"},{"id":"ITC_L2_MP_P5","left":"stand up","right":"встаньте"},{"id":"ITC_L2_MP_P6","left":"open your book","right":"откройте книгу"},{"id":"ITC_L2_MP_P7","left":"close your book","right":"закройте книгу"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5bde3e22-7df7-5f68-aebf-c05046829167', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'quiz', 'Проверьте себя', '{"explanation":"“Open your book” tells students to open their books.","instruction":"Выберите правильный ответ.","options":[{"id":"ITC_L2_Q_A","is_correct":true,"text":"Open your book."},{"id":"ITC_L2_Q_B","is_correct":false,"text":"Close your bag."},{"id":"ITC_L2_Q_C","is_correct":false,"text":"This is a chair."}],"question":"What does a teacher say when students should use their books?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e3bb06e9-7065-5dcd-b9e1-e12be64a634f', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'translate', 'Переведите', '{"correct_translation":"Open your book.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Откройте книгу.","target_language":"en","word_bank":["book.","your","Open"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9855a48d-64cf-57df-bf67-26134cd8a4bc', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"sit","instruction":"Выберите подходящее слово.","options":["sit","book","pen"],"sentence_template":"Please ___ down."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f44efa47-32aa-5210-9829-7c0eb0d8a14e', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'tap_words', 'Соберите фразу', '{"correct_words":["Please","stand","up."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["up.","Please","stand"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fbc6a208-4011-52c2-83c8-8e2a7adce0e2', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'listening', 'Послушайте', '{"audio_text":"Please open your book.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('73457d2b-4fcb-542c-b12a-2d0f6bf98e0c', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'listening_shadowing', 'Повторите', '{"audio_text":"Stand up, please. Now sit down.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Встаньте, пожалуйста. Теперь садитесь."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0f83c9b2-2d08-5118-9771-cfcc39503c1f', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Good morning, students. Please sit down.","translation":"Доброе утро, ученики. Пожалуйста, садитесь.","type":"dialogue"},{"character":"Students","text":"Good morning, teacher.","translation":"Доброе утро, учитель.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Open your books, please."},{"is_correct":false,"text":"Swim your desks, please."}],"text":"What does the teacher say next?","type":"choice"}],"title":"English Class Begins"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('18972053-e3bd-5f7b-b93a-ba355a98cc28', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'choose_definition', 'Определение', '{"explanation":"A student is a person who learns in a class.","instruction":"Выберите значение.","language":"en","options":[{"id":"ITC_L2_D_A","is_correct":true,"text":"A person who learns in a class"},{"id":"ITC_L2_D_B","is_correct":false,"text":"A person who teaches a class"},{"id":"ITC_L2_D_C","is_correct":false,"text":"A classroom table"}],"word":"student"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7559d8cd-c1a8-594e-9f9d-61e257361adf', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'listen_choose_word', 'Слово', '{"audio_text":"Please open your book.","explanation":"The complete instruction is “Please open your book.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"open","id":"ITC_L2_LW_A","is_correct":true},{"audio_text":"chair","id":"ITC_L2_LW_B","is_correct":false},{"audio_text":"student","id":"ITC_L2_LW_C","is_correct":false}],"sentence_template":"Please ___ your book."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4410660c-2d35-515f-8984-11fc6e208c20', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'missing_word', 'Впишите', '{"correct_answer":"down","explanation":"The complete instruction is “Please sit down.”","hint_prefix":"do","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please sit ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e94de474-a2fd-565d-915d-316ecb30b13d', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"teacher","id":"ITC_L2_VM_P1","text":"teacher"},{"audio_text":"student","id":"ITC_L2_VM_P2","text":"student"},{"audio_text":"open your book","id":"ITC_L2_VM_P3","text":"open your book"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('de6aabc3-b940-541f-bb1c-b99849762a14', '739c4875-ebbb-52a0-841e-9a54374fabfd', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Please close your book."}],"explanation":"“Okay, teacher” is a natural response to the instruction.","instruction":"Ответьте.","options":[{"id":"ITC_L2_C_A","is_correct":true,"text":"Okay, teacher."},{"id":"ITC_L2_C_B","is_correct":false,"text":"My book can swim."},{"id":"ITC_L2_C_C","is_correct":false,"text":"I am close years old."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4e0da1de-9dc3-5a3d-8473-a6f4801e9185', '739c4875-ebbb-52a0-841e-9a54374fabfd', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('e078da70-9ddc-5099-9754-6e93c365f03c', NULL, 'Общение в классе', 'Научиться задавать простые вопросы и просить помощь в классе.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('83009a2d-be90-5f80-bbdd-458411d98832', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"ITC_L3_MP_P1","left":"Please help me","right":"Пожалуйста, помогите мне"},{"id":"ITC_L3_MP_P2","left":"I do not understand","right":"Я не понимаю"},{"id":"ITC_L3_MP_P3","left":"Can you repeat?","right":"Вы можете повторить?"},{"id":"ITC_L3_MP_P4","left":"How do you say this?","right":"Как это сказать?"},{"id":"ITC_L3_MP_P5","left":"What does this mean?","right":"Что это значит?"},{"id":"ITC_L3_MP_P6","left":"Thank you","right":"Спасибо"},{"id":"ITC_L3_MP_P7","left":"You are welcome","right":"Пожалуйста"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('89a33ccb-d4dc-5044-9898-5ac462430827', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'quiz', 'Проверьте себя', '{"explanation":"“Can you repeat?” politely asks someone to say something again.","instruction":"Выберите правильный ответ.","options":[{"id":"ITC_L3_Q_A","is_correct":true,"text":"Can you repeat?"},{"id":"ITC_L3_Q_B","is_correct":false,"text":"Close your chair."},{"id":"ITC_L3_Q_C","is_correct":false,"text":"I am a pencil."}],"question":"What can you say when you do not understand?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0a976810-c096-5963-96e8-968ed0591fce', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'translate', 'Переведите', '{"correct_translation":"I do not understand.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я не понимаю.","target_language":"en","word_bank":["understand.","not","do","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('077acf8a-2588-523b-a73e-cf6685818784', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"repeat","instruction":"Выберите подходящее слово.","options":["repeat","desk","student"],"sentence_template":"Can you ___, please?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6b6902a8-732c-5a93-8779-aef50184a722', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'tap_words', 'Соберите фразу', '{"correct_words":["Please","help","me."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["help","Please","me."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('af999c73-bf19-56a2-a5c3-6f916f420f63', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'listening', 'Послушайте', '{"audio_text":"I do not understand. Can you repeat, please?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dbcf4985-fca4-53d1-8ed8-2f66b991ff0d', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'listening_shadowing', 'Повторите', '{"audio_text":"Excuse me, teacher. What does this word mean?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините, учитель. Что означает это слово?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5821f973-3f7c-5907-93eb-c17e41f69b3b', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"Excuse me, teacher. I do not understand.","translation":"Извините, учитель. Я не понимаю.","type":"dialogue"},{"character":"Teacher","text":"That is okay. I can help you.","translation":"Всё в порядке. Я могу тебе помочь.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"Stand up the pencil."}],"text":"What should Leo say?","type":"choice"}],"title":"Asking for Help"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9e53b8c0-4791-5240-a08b-1d7e7f9aec5b', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'choose_definition', 'Определение', '{"explanation":"“Repeat” means to say or do something again.","instruction":"Выберите значение.","language":"en","options":[{"id":"ITC_L3_D_A","is_correct":true,"text":"To say or do something again"},{"id":"ITC_L3_D_B","is_correct":false,"text":"To put a book in a bag"},{"id":"ITC_L3_D_C","is_correct":false,"text":"To sit on a chair"}],"word":"repeat"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('14f5aacc-7e6a-5354-8f98-51972e53c5da', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'listen_choose_word', 'Слово', '{"audio_text":"Can you repeat?","explanation":"The complete question is “Can you repeat?”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"repeat","id":"ITC_L3_LW_A","is_correct":true},{"audio_text":"board","id":"ITC_L3_LW_B","is_correct":false},{"audio_text":"class","id":"ITC_L3_LW_C","is_correct":false}],"sentence_template":"Can you ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dea0d860-43d7-55ad-9070-7864db7d3e25', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'missing_word', 'Впишите', '{"correct_answer":"help","explanation":"The complete request is “Please help me.”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please ___ me."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5933b772-9ad8-57d1-9aa2-b09b440be88e', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Please help me","id":"ITC_L3_VM_P1","text":"Please help me"},{"audio_text":"Can you repeat?","id":"ITC_L3_VM_P2","text":"Can you repeat?"},{"audio_text":"Thank you","id":"ITC_L3_VM_P3","text":"Thank you"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6235b79c-d243-5b5d-b106-8e56bc79f56d', 'e078da70-9ddc-5099-9754-6e93c365f03c', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Do you understand?"}],"explanation":"This answer clearly and politely asks the teacher to repeat.","instruction":"Ответьте.","options":[{"id":"ITC_L3_C_A","is_correct":true,"text":"No, I do not. Can you repeat, please?"},{"id":"ITC_L3_C_B","is_correct":false,"text":"No, I am a desk."},{"id":"ITC_L3_C_C","is_correct":false,"text":"My name is understand."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4e0da1de-9dc3-5a3d-8473-a6f4801e9185', 'e078da70-9ddc-5099-9754-6e93c365f03c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cb701be9-2289-5dd5-95a1-a7379670571e', 'en', 'book', 'книга', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86bad7f8-fc35-563e-a0c1-cf8ab0150261', 'en', 'pen', 'ручка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef36de23-8c77-52ba-a78c-d05fb2c04959', 'en', 'pencil', 'карандаш', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df9e7db3-e1f4-5e9c-96da-36b612b089ce', 'en', 'desk', 'парта', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('09053cc6-9fb8-5b0a-b200-f223459c5537', 'en', 'chair', 'стул', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45a10e45-4f3f-5704-9174-b1dd8a2de64b', 'en', 'board', 'доска', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68621952-6b9d-5e32-a025-7eef4afdd621', 'en', 'bag', 'сумка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6a98f-afb3-5537-8c66-6a09281be17f', 'en', 'teacher', 'учитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f184b31b-14a7-57fb-88c9-c5ec1c7d1b76', 'en', 'student', 'ученик', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3888557c-14bb-54db-8829-246e7197e7c0', 'en', 'class', 'урок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6226b45b-cff2-5162-bb13-502f066eef81', 'en', 'sit down', 'садитесь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cc04089a-aa9c-582e-8f22-aba4f4cf48c7', 'en', 'stand up', 'встаньте', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d269eb0-5153-54a4-8e4a-30d7c0d58f91', 'en', 'open your book', 'откройте книгу', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c80a995d-fa4e-500b-8d41-aa58642d3dd1', 'en', 'close your book', 'закройте книгу', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fd591fb-ead1-5c88-87b7-072a8e6533e1', 'en', 'Please help me', 'Пожалуйста, помогите мне', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3f4a4b54-935b-557a-87c0-b107b95ae854', 'en', 'I do not understand', 'Я не понимаю', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bb98f77c-8eed-5008-9f9c-789e4c6223f4', 'en', 'Can you repeat?', 'Вы можете повторить?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91d4dbc9-b2e5-55aa-9131-c45d27f331c5', 'en', 'How do you say this?', 'Как это сказать?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b10cd95-e174-58ea-b365-42f4b2b391e7', 'en', 'What does this mean?', 'Что это значит?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54461f61-5c4d-585c-83fa-25ffcd20762a', 'en', 'Thank you', 'Спасибо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d113e8cd-ffcc-598c-b217-dd898678cea6', 'en', 'You are welcome', 'Пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'pen' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'pencil' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'desk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'chair' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'board' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'f9b85a59-6feb-5d3c-8a3c-bad7a0dc6e9e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'bag' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'student' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'class' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sit down' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stand up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'open your book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, '739c4875-ebbb-52a0-841e-9a54374fabfd', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'close your book' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Please help me' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'I do not understand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you repeat?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'How do you say this?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'What does this mean?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4e0da1de-9dc3-5a3d-8473-a6f4801e9185', id, 'e078da70-9ddc-5099-9754-6e93c365f03c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'You are welcome' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
