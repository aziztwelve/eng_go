-- Track: A1_WORK_JOBS_WORKPLACES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('9e4f2b3c-aefe-54db-950a-d4eb931e32f9', 'A1_WORK_JOBS_WORKPLACES', 'Профессии и рабочие места', 'Научитесь называть профессии и рабочие места и кратко представляться на работе.', 'en', 'A1', '', ARRAY['work']::text[], true, 130, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('eb74bf05-92b9-5a12-a691-0ed6394d1950', NULL, 'Основные профессии', 'Научиться называть распространённые профессии и спрашивать человека о его работе.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0aa0ec5f-4fba-57f9-bc4c-27dce495723d', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WJW_L1_MP_P1","left":"teacher","right":"учитель"},{"id":"WJW_L1_MP_P2","left":"doctor","right":"врач"},{"id":"WJW_L1_MP_P3","left":"nurse","right":"медсестра"},{"id":"WJW_L1_MP_P4","left":"driver","right":"водитель"},{"id":"WJW_L1_MP_P5","left":"cook","right":"повар"},{"id":"WJW_L1_MP_P6","left":"office worker","right":"офисный сотрудник"},{"id":"WJW_L1_MP_P7","left":"shop assistant","right":"продавец-консультант"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('db0ea2de-ab6e-5878-9edd-3de949a88f48', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'quiz', 'Проверьте себя', '{"explanation":"A doctor helps sick people in a hospital.","instruction":"Выберите правильный ответ.","options":[{"id":"WJW_L1_Q_A","is_correct":true,"text":"A doctor"},{"id":"WJW_L1_Q_B","is_correct":false,"text":"A driver"},{"id":"WJW_L1_Q_C","is_correct":false,"text":"A cook"}],"question":"Which person helps sick people in a hospital?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8c23aa5a-cf9c-514c-a8f5-38b73e36c1cd', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'translate', 'Переведите', '{"correct_translation":"I am a teacher.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я учитель.","target_language":"en","word_bank":["teacher.","a","am","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5365699c-aebb-5596-b0b3-0793fcda9cbd', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"nurse","instruction":"Выберите подходящее слово.","options":["nurse","office","hospital"],"sentence_template":"She is a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('21aa43fa-02d3-59ee-89c1-3c7dfed5b2ae', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'tap_words', 'Соберите фразу', '{"correct_words":["He","is","a","driver."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","is","driver.","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('39f0b232-529a-5f0c-88f0-e047e6c7a655', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'listening', 'Послушайте', '{"audio_text":"I am an office worker.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3c5e79de-d8d7-51ab-a75a-361b83d297bb', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'listening_shadowing', 'Повторите', '{"audio_text":"Hello. My name is Anna, and I am a doctor.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте. Меня зовут Анна, и я врач."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ec04a6d0-a553-5901-abb8-c3fe74410ec6', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Mia","text":"Hello. I am Mia. I am a nurse.","translation":"Здравствуйте. Я Миа. Я медсестра.","type":"dialogue"},{"character":"Ben","text":"Nice to meet you. I am a doctor.","translation":"Приятно познакомиться. Я врач.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Where do you work?"},{"is_correct":false,"text":"Can your job swim?"}],"text":"What should Mia ask?","type":"choice"}],"title":"Meeting a New Colleague"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8f3b0b92-e5c6-5952-96fb-979f3aacc723', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'choose_definition', 'Определение', '{"explanation":"A cook is a person who prepares food.","instruction":"Выберите значение.","language":"en","options":[{"id":"WJW_L1_D_A","is_correct":true,"text":"A person who prepares food"},{"id":"WJW_L1_D_B","is_correct":false,"text":"A person who drives a vehicle"},{"id":"WJW_L1_D_C","is_correct":false,"text":"A person who teaches students"}],"word":"cook"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7b40e7df-0fbe-5aac-a9b0-14fb368e4ed9', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'listen_choose_word', 'Слово', '{"audio_text":"I am a teacher.","explanation":"The missing job is “teacher.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"teacher","id":"WJW_L1_LW_A","is_correct":true},{"audio_text":"desk","id":"WJW_L1_LW_B","is_correct":false},{"audio_text":"morning","id":"WJW_L1_LW_C","is_correct":false}],"sentence_template":"I am a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8d86318b-976c-5c42-806b-03ae09448bbf', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'missing_word', 'Впишите', '{"correct_answer":"doctor","explanation":"The complete sentence is “She is a doctor.”","hint_prefix":"do","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She is a ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a5d54893-dd1a-5a1f-a589-721dec2ba989', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'match_pairs_voice', 'Звук', '{"explanation":"Match each job or workplace you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"teacher","id":"WJW_L1_VM_P1","text":"teacher"},{"audio_text":"doctor","id":"WJW_L1_VM_P2","text":"doctor"},{"audio_text":"driver","id":"WJW_L1_VM_P3","text":"driver"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('89bf86a4-0db2-5f9d-96d8-884d7b8edff9', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Alex","text":"What is your job?"}],"explanation":"“I am a shop assistant” answers the question naturally.","instruction":"Ответьте.","options":[{"id":"WJW_L1_C_A","is_correct":true,"text":"I am a shop assistant."},{"id":"WJW_L1_C_B","is_correct":false,"text":"I am from job."},{"id":"WJW_L1_C_C","is_correct":false,"text":"My job is Monday."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9e4f2b3c-aefe-54db-950a-d4eb931e32f9', 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b9359f14-e938-5a61-b5ad-3a0bd24de6b6', NULL, 'Рабочие места', 'Научиться называть основные рабочие места и говорить, где вы работаете.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c566d304-3526-58c1-b2d7-6585b2e6558f', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WJW_L2_MP_P1","left":"office","right":"офис"},{"id":"WJW_L2_MP_P2","left":"hospital","right":"больница"},{"id":"WJW_L2_MP_P3","left":"school","right":"школа"},{"id":"WJW_L2_MP_P4","left":"shop","right":"магазин"},{"id":"WJW_L2_MP_P5","left":"restaurant","right":"ресторан"},{"id":"WJW_L2_MP_P6","left":"factory","right":"фабрика"},{"id":"WJW_L2_MP_P7","left":"workplace","right":"рабочее место"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('43f5bc7c-903c-5c10-924c-e65ac59add3f', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'quiz', 'Проверьте себя', '{"explanation":"A teacher usually works at a school.","instruction":"Выберите правильный ответ.","options":[{"id":"WJW_L2_Q_A","is_correct":true,"text":"At a school"},{"id":"WJW_L2_Q_B","is_correct":false,"text":"At a hospital"},{"id":"WJW_L2_Q_C","is_correct":false,"text":"At a restaurant"}],"question":"Where does a teacher usually work?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f17337a2-cdb8-5462-9986-07b99f3f05d6', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'translate', 'Переведите', '{"correct_translation":"I work in an office.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я работаю в офисе.","target_language":"en","word_bank":["office.","an","in","work","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('af9c7880-a135-5a0e-9454-5cfcef0266df', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"hospital","instruction":"Выберите подходящее слово.","options":["hospital","driver","cook"],"sentence_template":"She works at a ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('198d2750-d8cb-548e-b4f8-6134ae0b40a7', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'tap_words', 'Соберите фразу', '{"correct_words":["He","works","at","a","shop."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","at","works","shop.","He"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6148a68f-48ce-588e-9dba-03759fe434aa', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'listening', 'Послушайте', '{"audio_text":"I work at a restaurant.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e2abaec2-4545-5612-8e55-206017bec888', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'listening_shadowing', 'Повторите', '{"audio_text":"I am a teacher, and I work at a school.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я учитель и работаю в школе."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c1eb5afe-4b23-54cd-a565-dc3ff4ab0265', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sara","text":"Where do you work, Tom?","translation":"Где ты работаешь, Том?","type":"dialogue"},{"character":"Tom","text":"I work in an office.","translation":"Я работаю в офисе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Where do you work?"},{"is_correct":false,"text":"How old is your office?"}],"text":"What should Tom ask Sara?","type":"choice"}],"title":"Where We Work"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('227dbe12-0a77-57a5-9301-8175ef38a912', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'choose_definition', 'Определение', '{"explanation":"A factory is a place where people make things.","instruction":"Выберите значение.","language":"en","options":[{"id":"WJW_L2_D_A","is_correct":true,"text":"A place where people make things"},{"id":"WJW_L2_D_B","is_correct":false,"text":"A place where doctors help patients"},{"id":"WJW_L2_D_C","is_correct":false,"text":"A place where students learn"}],"word":"factory"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5f0d1e81-b62a-5b6a-b0dc-5bef18810f2e', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'listen_choose_word', 'Слово', '{"audio_text":"I work at a hospital.","explanation":"The missing workplace is “hospital.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"hospital","id":"WJW_L2_LW_A","is_correct":true},{"audio_text":"nurse","id":"WJW_L2_LW_B","is_correct":false},{"audio_text":"answer","id":"WJW_L2_LW_C","is_correct":false}],"sentence_template":"I work at a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b1ca051f-8c4e-5b1d-9d91-ac9dfa93bfe0', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'missing_word', 'Впишите', '{"correct_answer":"office","explanation":"The complete sentence is “I work in an office.”","hint_prefix":"of","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I work in an ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6ba12ec3-b768-52c3-a5af-8686720abfa5', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'match_pairs_voice', 'Звук', '{"explanation":"Match each job or workplace you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"office","id":"WJW_L2_VM_P1","text":"office"},{"audio_text":"school","id":"WJW_L2_VM_P2","text":"school"},{"audio_text":"restaurant","id":"WJW_L2_VM_P3","text":"restaurant"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('afc2cc60-7a4e-58cb-bc04-60031ef5c86b', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nina","text":"Where do you work?"}],"explanation":"“I work at a shop” answers the workplace question.","instruction":"Ответьте.","options":[{"id":"WJW_L2_C_A","is_correct":true,"text":"I work at a shop."},{"id":"WJW_L2_C_B","is_correct":false,"text":"I am a shop years old."},{"id":"WJW_L2_C_C","is_correct":false,"text":"My name is work."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9e4f2b3c-aefe-54db-950a-d4eb931e32f9', 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('3a636d90-16a3-543a-8546-4d3efad56154', NULL, 'Знакомство на работе', 'Научиться кратко представляться и знакомиться с коллегой на работе.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f67ad3e3-8cfa-559c-a8a9-cc113a1cd1ca', '3a636d90-16a3-543a-8546-4d3efad56154', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WJW_L3_MP_P1","left":"colleague","right":"коллега"},{"id":"WJW_L3_MP_P2","left":"manager","right":"руководитель"},{"id":"WJW_L3_MP_P3","left":"team","right":"команда"},{"id":"WJW_L3_MP_P4","left":"new","right":"новый"},{"id":"WJW_L3_MP_P5","left":"This is my colleague","right":"Это мой коллега"},{"id":"WJW_L3_MP_P6","left":"I work here","right":"Я работаю здесь"},{"id":"WJW_L3_MP_P7","left":"Nice to meet you","right":"Приятно познакомиться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e22e0819-8a58-5ea9-a172-8fa4fd2522cf', '3a636d90-16a3-543a-8546-4d3efad56154', 'quiz', 'Проверьте себя', '{"explanation":"“Nice to meet you” is a natural phrase when meeting a colleague.","instruction":"Выберите правильный ответ.","options":[{"id":"WJW_L3_Q_A","is_correct":true,"text":"Nice to meet you."},{"id":"WJW_L3_Q_B","is_correct":false,"text":"Good night, office."},{"id":"WJW_L3_Q_C","is_correct":false,"text":"I am a workplace."}],"question":"What do you say when you meet a new colleague?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('97fddde3-0636-5233-bb64-de3d2b138109', '3a636d90-16a3-543a-8546-4d3efad56154', 'translate', 'Переведите', '{"correct_translation":"This is my new colleague.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это мой новый коллега.","target_language":"en","word_bank":["colleague.","new","my","is","This"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('356d7382-d442-5400-b505-db15a321d71b', '3a636d90-16a3-543a-8546-4d3efad56154', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"here","instruction":"Выберите подходящее слово.","options":["here","team","doctor"],"sentence_template":"I work ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c07b4c9d-fb22-5db4-8bd7-83b90a627700', '3a636d90-16a3-543a-8546-4d3efad56154', 'tap_words', 'Соберите фразу', '{"correct_words":["Welcome","to","our","team."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["our","to","Welcome","team."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4f45e1fe-80c2-5a00-abf6-a1a721372034', '3a636d90-16a3-543a-8546-4d3efad56154', 'listening', 'Послушайте', '{"audio_text":"Hello. I am your new colleague.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5d870061-6a67-592d-a59f-3e3fa00644f4', '3a636d90-16a3-543a-8546-4d3efad56154', 'listening_shadowing', 'Повторите', '{"audio_text":"Nice to meet you. Welcome to our team.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Приятно познакомиться. Добро пожаловать в нашу команду."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6a3ee592-40ea-58c9-bf3a-7aeaf64294e2', '3a636d90-16a3-543a-8546-4d3efad56154', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Hello, Eva. Welcome to our team.","translation":"Здравствуйте, Ева. Добро пожаловать в нашу команду.","type":"dialogue"},{"character":"Eva","text":"Thank you. Nice to meet you.","translation":"Спасибо. Приятно познакомиться.","type":"dialogue"},{"options":[{"is_correct":true,"text":"This is your colleague, Max."},{"is_correct":false,"text":"Your team is a pencil."}],"text":"What should the manager say next?","type":"choice"}],"title":"The First Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ccc93fb9-421e-559c-88fb-f545dafd4f39', '3a636d90-16a3-543a-8546-4d3efad56154', 'choose_definition', 'Определение', '{"explanation":"A colleague is a person who works with you.","instruction":"Выберите значение.","language":"en","options":[{"id":"WJW_L3_D_A","is_correct":true,"text":"A person who works with you"},{"id":"WJW_L3_D_B","is_correct":false,"text":"A place where people work"},{"id":"WJW_L3_D_C","is_correct":false,"text":"A person who buys food"}],"word":"colleague"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ee2178f3-0a43-5aad-ab65-19b06a68aadb', '3a636d90-16a3-543a-8546-4d3efad56154', 'listen_choose_word', 'Слово', '{"audio_text":"Welcome to our team.","explanation":"The missing word is “team.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"team","id":"WJW_L3_LW_A","is_correct":true},{"audio_text":"hospital","id":"WJW_L3_LW_B","is_correct":false},{"audio_text":"cook","id":"WJW_L3_LW_C","is_correct":false}],"sentence_template":"Welcome to our ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5336bba6-3e21-5a88-9144-f267e0714ded', '3a636d90-16a3-543a-8546-4d3efad56154', 'missing_word', 'Впишите', '{"correct_answer":"here","explanation":"The complete sentence is “I work here.”","hint_prefix":"he","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I work ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ce8f5cd8-c936-594a-a0e5-eb067127c9be', '3a636d90-16a3-543a-8546-4d3efad56154', 'match_pairs_voice', 'Звук', '{"explanation":"Match each job or workplace you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"colleague","id":"WJW_L3_VM_P1","text":"colleague"},{"audio_text":"manager","id":"WJW_L3_VM_P2","text":"manager"},{"audio_text":"team","id":"WJW_L3_VM_P3","text":"team"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d4788813-ddf5-5397-bd0a-1fe7e577a384', '3a636d90-16a3-543a-8546-4d3efad56154', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Manager","text":"Hello. I am Anna, the manager."}],"explanation":"This reply is a clear and natural workplace introduction.","instruction":"Ответьте.","options":[{"id":"WJW_L3_C_A","is_correct":true,"text":"Hello. I am Leo, the new office worker."},{"id":"WJW_L3_C_B","is_correct":false,"text":"I am manager Monday."},{"id":"WJW_L3_C_C","is_correct":false,"text":"Where is your age?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('9e4f2b3c-aefe-54db-950a-d4eb931e32f9', '3a636d90-16a3-543a-8546-4d3efad56154', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79c6a98f-afb3-5537-8c66-6a09281be17f', 'en', 'teacher', 'учитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c1dd47d-0896-5d40-b836-85a187c3472a', 'en', 'doctor', 'врач', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3ead845a-672c-5916-8668-0449f721538b', 'en', 'nurse', 'медсестра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb635c7e-dbc5-5b39-ba1c-50895b5840f2', 'en', 'driver', 'водитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6ff9124-73ea-56d4-923b-8296aaf36222', 'en', 'cook', 'повар', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ef5b3f79-1cad-5bcd-8e21-5723ec3d9373', 'en', 'office worker', 'офисный сотрудник', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0b404c5-97ce-531a-b290-db2ee329912e', 'en', 'shop assistant', 'продавец-консультант', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e7121b2-a408-5c04-b26e-bea2a5591670', 'en', 'office', 'офис', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('feb921b3-d737-5fd0-ba38-fbef1086f3d5', 'en', 'hospital', 'больница', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d35ef1b-ed4c-5bb5-932f-0646e8b39596', 'en', 'school', 'школа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a839839e-c6a7-582f-8444-edce5569661a', 'en', 'shop', 'магазин', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a55cef8-2c67-5269-b677-31616bbc26d9', 'en', 'restaurant', 'ресторан', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c24678f7-f114-5aab-9af3-085ec791e6bc', 'en', 'factory', 'фабрика', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8559218c-bae8-5cf1-a45c-47fdd88bd41f', 'en', 'workplace', 'рабочее место', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('44d4a962-56ae-58fb-868f-087abd9e2e17', 'en', 'colleague', 'коллега', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('929c3b47-1430-56c4-9802-a42c236cefe7', 'en', 'manager', 'руководитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8aa16c3f-9953-5483-9522-c6cb31db9d7f', 'en', 'team', 'команда', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cea61e47-0ba2-5d85-a8f7-4ab91213e27f', 'en', 'new', 'новый', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16d59882-e170-5a07-9d41-c96d7c380455', 'en', 'This is my colleague', 'Это мой коллега', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('779cc6e9-9c0a-51dc-b0e5-54e94013f067', 'en', 'I work here', 'Я работаю здесь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a5c847a-0f0a-5d3b-9009-8d812e8d24d4', 'en', 'Nice to meet you', 'Приятно познакомиться', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'teacher' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'doctor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'nurse' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'driver' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'cook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'office worker' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'eb74bf05-92b9-5a12-a691-0ed6394d1950', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'shop assistant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'hospital' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'school' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'shop' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'restaurant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'factory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, 'b9359f14-e938-5a61-b5ad-3a0bd24de6b6', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'workplace' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'colleague' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'team' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'new' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'This is my colleague' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'I work here' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '9e4f2b3c-aefe-54db-950a-d4eb931e32f9', id, '3a636d90-16a3-543a-8546-4d3efad56154', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Nice to meet you' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
