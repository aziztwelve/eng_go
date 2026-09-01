-- Track: A1_EXAM_SIMPLE_GRAMMAR_QUESTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b53b2373-7b96-5be4-9962-11b21f1aa639', 'A1_EXAM_SIMPLE_GRAMMAR_QUESTIONS', 'Простые задания по грамматике', 'Практикуйте глагол to be, Present Simple, вопросы и отрицания в простых экзаменационных заданиях.', 'en', 'A1', '', ARRAY['exam']::text[], true, 17, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('3ead73cf-c3b9-5eba-a683-a0330ad22f1a', NULL, 'Глагол to be', 'Научиться выбирать am, is и are в простых экзаменационных заданиях.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ccdf8e48-607b-5178-823c-e40c763e1c67', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"ESGQ_L1_MP_P1","left":"I am","right":"я являюсь"},{"id":"ESGQ_L1_MP_P2","left":"you are","right":"ты являешься"},{"id":"ESGQ_L1_MP_P3","left":"he is","right":"он является"},{"id":"ESGQ_L1_MP_P4","left":"she is","right":"она является"},{"id":"ESGQ_L1_MP_P5","left":"it is","right":"это является"},{"id":"ESGQ_L1_MP_P6","left":"we are","right":"мы являемся"},{"id":"ESGQ_L1_MP_P7","left":"they are","right":"они являются"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ac041c87-5c27-5ca4-8eb9-feaf93fdf663', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'quiz', 'Проверьте себя', '{"explanation":"Use “is” with “she.”","instruction":"Выберите правильный ответ.","options":[{"id":"ESGQ_L1_Q_A","is_correct":true,"text":"She is a teacher."},{"id":"ESGQ_L1_Q_B","is_correct":false,"text":"She are a teacher."},{"id":"ESGQ_L1_Q_C","is_correct":false,"text":"She am a teacher."}],"question":"Choose the correct sentence."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('00b1d584-050d-5665-9b1f-36170d8589be', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'translate', 'Переведите', '{"correct_translation":"We are students.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы ученики.","target_language":"en","word_bank":["students.","are","We"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('aae4506c-40c0-53dd-80a7-d90f52e3b3ca', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"am","instruction":"Выберите подходящее слово.","options":["am","is","are"],"sentence_template":"I ___ happy."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5c1c241f-4935-5a75-ae8d-91e51d04e72f', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'tap_words', 'Соберите фразу', '{"correct_words":["He","is","a","doctor."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","is","doctor.","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ee2add31-f7d6-5f67-82c2-f1fde868d7f0', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'listening', 'Послушайте', '{"audio_text":"They are at school.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('72813dfd-3b81-5ef1-9da7-a317f75a8441', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'listening_shadowing', 'Повторите', '{"audio_text":"I am Anna, and she is my teacher.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я Анна, а она моя учительница."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('abfa859a-f986-5380-8dfa-fc6b549c6925', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Complete: He ___ a student.","translation":"Дополните: Он ___ ученик.","type":"dialogue"},{"character":"Student","text":"Is.","translation":"Is.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, “is” is correct."},{"is_correct":false,"text":"No, “are” is correct."}],"text":"Is the answer correct?","type":"choice"}],"title":"A Grammar Question"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0eaffa66-4749-55a5-8742-858115c883ab', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'choose_definition', 'Определение', '{"explanation":"“Are” is used with you, we, and they.","instruction":"Выберите значение.","language":"en","options":[{"id":"ESGQ_L1_D_A","is_correct":true,"text":"A form of “be” used with you, we, and they"},{"id":"ESGQ_L1_D_B","is_correct":false,"text":"A form used only with I"},{"id":"ESGQ_L1_D_C","is_correct":false,"text":"A word for an action"}],"word":"are"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f6e5229e-97b1-56dd-b3ac-da83ea4052e0', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'listen_choose_word', 'Слово', '{"audio_text":"We are ready.","explanation":"The missing word is “are.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"are","id":"ESGQ_L1_LW_A","is_correct":true},{"audio_text":"is","id":"ESGQ_L1_LW_B","is_correct":false},{"audio_text":"am","id":"ESGQ_L1_LW_C","is_correct":false}],"sentence_template":"We ___ ready."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('95178b5d-6b59-532f-b6bd-bdcb023b2207', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'missing_word', 'Впишите', '{"correct_answer":"is","explanation":"The complete sentence is “She is happy.”","hint_prefix":"i","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She ___ happy."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bfb050da-dee9-5c86-862f-191f27b7917f', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'match_pairs_voice', 'Звук', '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"I am","id":"ESGQ_L1_VM_P1","text":"I am"},{"audio_text":"she is","id":"ESGQ_L1_VM_P2","text":"she is"},{"audio_text":"they are","id":"ESGQ_L1_VM_P3","text":"they are"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dc251678-8ab3-5c7f-9cfb-abae6edd423e', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Complete: “I ___ a student.”"}],"explanation":"“Am” is the correct form with “I.”","instruction":"Ответьте.","options":[{"id":"ESGQ_L1_C_A","is_correct":true,"text":"Am."},{"id":"ESGQ_L1_C_B","is_correct":false,"text":"Is."},{"id":"ESGQ_L1_C_C","is_correct":false,"text":"Are."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b53b2373-7b96-5be4-9962-11b21f1aa639', '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('2f296d35-0771-5df3-a7c7-72afa5f9f1d5', NULL, 'Простое настоящее время', 'Научиться выбирать правильную форму глагола в простых предложениях Present Simple.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b913688f-55ae-5f2c-a950-d26e024413f8', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"ESGQ_L2_MP_P1","left":"I work","right":"я работаю"},{"id":"ESGQ_L2_MP_P2","left":"you read","right":"ты читаешь"},{"id":"ESGQ_L2_MP_P3","left":"he works","right":"он работает"},{"id":"ESGQ_L2_MP_P4","left":"she reads","right":"она читает"},{"id":"ESGQ_L2_MP_P5","left":"we study","right":"мы учимся"},{"id":"ESGQ_L2_MP_P6","left":"they play","right":"они играют"},{"id":"ESGQ_L2_MP_P7","left":"every day","right":"каждый день"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10b00082-f689-5677-94b1-6e911c256126', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'quiz', 'Проверьте себя', '{"explanation":"Add “-s” to the verb with “he” in the Present Simple.","instruction":"Выберите правильный ответ.","options":[{"id":"ESGQ_L2_Q_A","is_correct":true,"text":"He works every day."},{"id":"ESGQ_L2_Q_B","is_correct":false,"text":"He work every day."},{"id":"ESGQ_L2_Q_C","is_correct":false,"text":"He working every day."}],"question":"Choose the correct sentence."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a09bd554-1f41-58ba-81f3-69ab1321fd90', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'translate', 'Переведите', '{"correct_translation":"She reads every day.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Она читает каждый день.","target_language":"en","word_bank":["day.","every","reads","She"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f2904815-87f7-598c-847b-b81208dab8a9', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"study","instruction":"Выберите подходящее слово.","options":["study","studies","is"],"sentence_template":"They ___ English."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a428668-ef53-5f40-ad8a-db32c1d6afad', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'tap_words', 'Соберите фразу', '{"correct_words":["He","plays","football."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["football.","plays","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bae85ae5-25dd-5cbe-b683-4fcd69b8da2b', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'listening', 'Послушайте', '{"audio_text":"We study English every day.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('556a2241-825b-5199-8872-90e833a528fd', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'listening_shadowing', 'Повторите', '{"audio_text":"She works at a school, and he works at a shop.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Она работает в школе, а он работает в магазине."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fa19e7d7-955e-55e8-8737-26c7f0c93f0a', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Complete: Anna ___ books.","translation":"Дополните: Анна ___ книги.","type":"dialogue"},{"character":"Student","text":"Reads.","translation":"Reads.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, Anna is “she.”"},{"is_correct":false,"text":"No, use “read” with she."}],"text":"Is “reads” correct?","type":"choice"}],"title":"Choose the Verb Form"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5804a111-1089-58e3-9b8f-d2220c997a5c', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'choose_definition', 'Определение', '{"explanation":"The Present Simple describes routines and regular facts.","instruction":"Выберите значение.","language":"en","options":[{"id":"ESGQ_L2_D_A","is_correct":true,"text":"A tense for routines and regular facts"},{"id":"ESGQ_L2_D_B","is_correct":false,"text":"A tense only for yesterday"},{"id":"ESGQ_L2_D_C","is_correct":false,"text":"A word that names a person"}],"word":"Present Simple"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3fb288e5-6e3d-5dfe-97ee-eb61ad99331d', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'listen_choose_word', 'Слово', '{"audio_text":"He works at home.","explanation":"The missing form is “works.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"works","id":"ESGQ_L2_LW_A","is_correct":true},{"audio_text":"work","id":"ESGQ_L2_LW_B","is_correct":false},{"audio_text":"are","id":"ESGQ_L2_LW_C","is_correct":false}],"sentence_template":"He ___ at home."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('78e96a1a-1799-53c8-9336-bc206c940aae', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'missing_word', 'Впишите', '{"correct_answer":"study","explanation":"The complete sentence is “We study English.”","hint_prefix":"st","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We ___ English."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8f6e35bc-4b82-518f-8365-dc4daa55f9f4', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'match_pairs_voice', 'Звук', '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"I work","id":"ESGQ_L2_VM_P1","text":"I work"},{"audio_text":"he works","id":"ESGQ_L2_VM_P2","text":"he works"},{"audio_text":"they play","id":"ESGQ_L2_VM_P3","text":"they play"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('345c5f3e-bbd9-52dc-aa7f-008b145a2202', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Choose: “She ___ music.”"}],"explanation":"Use “likes” with “she.”","instruction":"Ответьте.","options":[{"id":"ESGQ_L2_C_A","is_correct":true,"text":"Likes."},{"id":"ESGQ_L2_C_B","is_correct":false,"text":"Like."},{"id":"ESGQ_L2_C_C","is_correct":false,"text":"Are."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b53b2373-7b96-5be4-9962-11b21f1aa639', '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('6d403902-fbba-57c8-a672-789d5c70bf67', NULL, 'Простые вопросы и отрицания', 'Научиться узнавать простые вопросы и отрицательные предложения с do и does.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8149279e-ac6e-568c-888a-b2be1cdc245c', '6d403902-fbba-57c8-a672-789d5c70bf67', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"ESGQ_L3_MP_P1","left":"Do you work?","right":"Ты работаешь?"},{"id":"ESGQ_L3_MP_P2","left":"Does he study?","right":"Он учится?"},{"id":"ESGQ_L3_MP_P3","left":"I do not know","right":"Я не знаю"},{"id":"ESGQ_L3_MP_P4","left":"She does not work","right":"Она не работает"},{"id":"ESGQ_L3_MP_P5","left":"Yes, I do","right":"Да"},{"id":"ESGQ_L3_MP_P6","left":"No, he does not","right":"Нет"},{"id":"ESGQ_L3_MP_P7","left":"question","right":"вопрос"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1eb6e667-4e8e-5090-8c0f-2906b7bde13c', '6d403902-fbba-57c8-a672-789d5c70bf67', 'quiz', 'Проверьте себя', '{"explanation":"Use “does” with “she,” followed by the base verb “work.”","instruction":"Выберите правильный ответ.","options":[{"id":"ESGQ_L3_Q_A","is_correct":true,"text":"Does she work?"},{"id":"ESGQ_L3_Q_B","is_correct":false,"text":"Do she works?"},{"id":"ESGQ_L3_Q_C","is_correct":false,"text":"She does work?"}],"question":"Choose the correct question."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0584d237-dbb5-5051-a360-03e1c5a5dcda', '6d403902-fbba-57c8-a672-789d5c70bf67', 'translate', 'Переведите', '{"correct_translation":"I do not work on Sunday.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я не работаю в воскресенье.","target_language":"en","word_bank":["Sunday.","on","work","not","do","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('baece7ea-28dc-5dc1-bd6a-742c31d040d6', '6d403902-fbba-57c8-a672-789d5c70bf67', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"Does","instruction":"Выберите подходящее слово.","options":["Does","Do","Is"],"sentence_template":"___ he study English?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('00b02ca1-f0f3-50ad-b5ff-412e0b929ba1', '6d403902-fbba-57c8-a672-789d5c70bf67', 'tap_words', 'Соберите фразу', '{"correct_words":["She","does","not","work."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["not","She","work.","does"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('97ed27eb-53ed-5478-bb80-3acc347a4a67', '6d403902-fbba-57c8-a672-789d5c70bf67', 'listening', 'Послушайте', '{"audio_text":"Do you speak English?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('269938d1-acb8-5f34-9931-d598a98f2a48', '6d403902-fbba-57c8-a672-789d5c70bf67', 'listening_shadowing', 'Повторите', '{"audio_text":"Does he work here? No, he does not.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Он работает здесь? Нет."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('767fe6fd-fe43-5d79-a9af-648e5cd821ba', '6d403902-fbba-57c8-a672-789d5c70bf67', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Teacher","text":"Choose: ___ Anna like music?","translation":"Выберите: ___ Анне нравится музыка?","type":"dialogue"},{"character":"Student","text":"Does.","translation":"Does.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, use “does” with Anna."},{"is_correct":false,"text":"No, use “are.”"}],"text":"Is the answer correct?","type":"choice"}],"title":"The Final Grammar Item"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5f533eca-d30c-5f02-a75e-058fa96a1668', '6d403902-fbba-57c8-a672-789d5c70bf67', 'choose_definition', 'Определение', '{"explanation":"A negative sentence says something is not true.","instruction":"Выберите значение.","language":"en","options":[{"id":"ESGQ_L3_D_A","is_correct":true,"text":"A sentence that says something is not true"},{"id":"ESGQ_L3_D_B","is_correct":false,"text":"A sentence that asks for information"},{"id":"ESGQ_L3_D_C","is_correct":false,"text":"A word that names an object"}],"word":"negative sentence"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e35aac01-cbc6-5085-a6d3-8497dbd6b2dd', '6d403902-fbba-57c8-a672-789d5c70bf67', 'listen_choose_word', 'Слово', '{"audio_text":"Do you work here?","explanation":"Use “Do” with “you.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"Do","id":"ESGQ_L3_LW_A","is_correct":true},{"audio_text":"Does","id":"ESGQ_L3_LW_B","is_correct":false},{"audio_text":"Is","id":"ESGQ_L3_LW_C","is_correct":false}],"sentence_template":"___ you work here?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('222f0310-2af6-5217-9486-b48769b92a96', '6d403902-fbba-57c8-a672-789d5c70bf67', 'missing_word', 'Впишите', '{"correct_answer":"not","explanation":"The complete sentence is “He does not work here.”","hint_prefix":"no","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"He does ___ work here."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('edbcc28c-615f-5d82-a9b7-732fe2e27b38', '6d403902-fbba-57c8-a672-789d5c70bf67', 'match_pairs_voice', 'Звук', '{"explanation":"Match each item you hear with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Do you work?","id":"ESGQ_L3_VM_P1","text":"Do you work?"},{"audio_text":"Does he study?","id":"ESGQ_L3_VM_P2","text":"Does he study?"},{"audio_text":"I do not know","id":"ESGQ_L3_VM_P3","text":"I do not know"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b999ffb9-154f-5d29-8290-1f2db2f8f5c2', '6d403902-fbba-57c8-a672-789d5c70bf67', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Teacher","text":"Choose: “___ they play football?”"}],"explanation":"Use “Do” with “they.”","instruction":"Ответьте.","options":[{"id":"ESGQ_L3_C_A","is_correct":true,"text":"Do."},{"id":"ESGQ_L3_C_B","is_correct":false,"text":"Does."},{"id":"ESGQ_L3_C_C","is_correct":false,"text":"Is."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b53b2373-7b96-5be4-9962-11b21f1aa639', '6d403902-fbba-57c8-a672-789d5c70bf67', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0db32db-2231-584d-bb8b-d6d8258e975b', 'en', 'I am', 'я являюсь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c275590-7b7e-52b2-8742-1a58edb6ce7b', 'en', 'you are', 'ты являешься', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2295c2a6-c5be-5c8c-a80d-9ee1f038d959', 'en', 'he is', 'он является', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c4dee71-2a52-5c87-a9db-776636263775', 'en', 'she is', 'она является', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c4a8855-328b-599a-944c-ecf1915041c8', 'en', 'it is', 'это является', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2206a891-6ce6-5733-b7f4-4598f57c461a', 'en', 'we are', 'мы являемся', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b34718c9-343c-5c00-a881-e175573f1371', 'en', 'they are', 'они являются', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1886ab90-c219-512a-a4f6-ae245450b51e', 'en', 'I work', 'я работаю', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc127012-831c-5d9b-a892-d695d68b9b83', 'en', 'you read', 'ты читаешь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9c703b17-8e47-5cb8-864b-609c393c78f2', 'en', 'he works', 'он работает', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('18fa24f7-36c5-582c-82f8-0e96ece508c2', 'en', 'she reads', 'она читает', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('151d0176-7565-578a-972e-bd79286cfad7', 'en', 'we study', 'мы учимся', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2e31ad39-c4d1-5761-ab05-be70d6d51b1a', 'en', 'they play', 'они играют', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccbdf5ac-322d-5053-9aa5-96b59b38520a', 'en', 'every day', 'каждый день', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14912d4d-d044-51e6-975f-df531f9cee97', 'en', 'Do you work?', 'Ты работаешь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3842b25-13cd-5423-b976-03541236cb95', 'en', 'Does he study?', 'Он учится?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9107172a-101e-5de1-9080-1317470cd404', 'en', 'I do not know', 'Я не знаю', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f97ec26-4c53-591e-a71c-51ce04a5a0de', 'en', 'She does not work', 'Она не работает', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8b61eaa0-cae9-55ae-a83f-1ccaa104cf56', 'en', 'Yes, I do', 'Да', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7ce02772-79dd-523f-9c48-97bddddaf497', 'en', 'No, he does not', 'Нет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d9432c21-0eda-5a57-ba61-f04226b77803', 'en', 'question', 'вопрос', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'I am' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'you are' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'he is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'she is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'it is' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'we are' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '3ead73cf-c3b9-5eba-a683-a0330ad22f1a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'they are' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'I work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'you read' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'he works' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'she reads' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'we study' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'they play' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '2f296d35-0771-5df3-a7c7-72afa5f9f1d5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'every day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Do you work?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Does he study?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'I do not know' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'She does not work' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I do' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, he does not' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b53b2373-7b96-5be4-9962-11b21f1aa639', id, '6d403902-fbba-57c8-a672-789d5c70bf67', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'question' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
