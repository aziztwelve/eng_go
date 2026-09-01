-- Track: A1_SPEAKING_WHAT_I_CAN_DO. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('45c085d8-9d91-543f-99a0-61cac4315235', 'A1_SPEAKING_WHAT_I_CAN_DO', 'Что я умею делать', 'Научитесь говорить о своих способностях и спрашивать других, что они умеют делать.', 'en', 'A1', '', ARRAY['speaking']::text[], true, 23, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('37b28cca-c93e-56e4-b7ea-72be66881b47', NULL, 'Мои способности', 'Научиться называть простые действия, которые вы умеете выполнять.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b51d12a9-5e1a-5c77-8f14-401d745c8414', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WICD_L1_MP_P1","left":"run","right":"бегать"},{"id":"WICD_L1_MP_P2","left":"swim","right":"плавать"},{"id":"WICD_L1_MP_P3","left":"read","right":"читать"},{"id":"WICD_L1_MP_P4","left":"write","right":"писать"},{"id":"WICD_L1_MP_P5","left":"sing","right":"петь"},{"id":"WICD_L1_MP_P6","left":"dance","right":"танцевать"},{"id":"WICD_L1_MP_P7","left":"draw","right":"рисовать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3877fc1a-5121-5062-aa25-71e8b200a90f', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'quiz', 'Проверьте себя', '{"explanation":"“I can swim” says that you have the ability to swim.","instruction":"Выберите правильный ответ.","options":[{"id":"WICD_L1_Q_A","is_correct":true,"text":"I can swim."},{"id":"WICD_L1_Q_B","is_correct":false,"text":"I am swim."},{"id":"WICD_L1_Q_C","is_correct":false,"text":"I like can."}],"question":"Which sentence says you have an ability?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9a50ed3f-cdf0-5a2c-863d-2f3a82196706', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'translate', 'Переведите', '{"correct_translation":"I can read.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я умею читать.","target_language":"en","word_bank":["read.","can","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3a0e6170-f34a-53d9-bc24-9657fa6943b7', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"dance","instruction":"Выберите подходящее слово.","options":["dance","name","city"],"sentence_template":"I can ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f430cbd5-a280-5c72-ad65-1bc41cf977df', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'tap_words', 'Соберите фразу', '{"correct_words":["I","can","draw."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["draw.","can","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7d447e30-c19a-586e-a3a4-41f9f0065dc2', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'listening', 'Послушайте', '{"audio_text":"I can read and write.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('58968090-d501-5924-a699-200931d7a6f6', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'listening_shadowing', 'Повторите', '{"audio_text":"I can sing, dance, and draw.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я умею петь, танцевать и рисовать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('acbb4f80-f9a2-5cc7-9731-0de11abf63b9', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Eva","text":"I can draw a cat.","translation":"Я умею рисовать кошку.","type":"dialogue"},{"character":"Ben","text":"I can draw too.","translation":"Я тоже умею рисовать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Let us draw together."},{"is_correct":false,"text":"I am ten draw."}],"text":"What can Eva say next?","type":"choice"}],"title":"The Art Class"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('01d675b3-22dd-5285-9e18-381d0dd44537', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'choose_definition', 'Определение', '{"explanation":"“Swim” means to move through water.","instruction":"Выберите значение.","language":"en","options":[{"id":"WICD_L1_D_A","is_correct":true,"text":"To move through water"},{"id":"WICD_L1_D_B","is_correct":false,"text":"To make words on paper"},{"id":"WICD_L1_D_C","is_correct":false,"text":"To make music with your voice"}],"word":"swim"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('2192569c-7721-5acd-8837-866788736587', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'listen_choose_word', 'Слово', '{"audio_text":"I can sing.","explanation":"The complete sentence is “I can sing.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"sing","id":"WICD_L1_LW_A","is_correct":true},{"audio_text":"age","id":"WICD_L1_LW_B","is_correct":false},{"audio_text":"from","id":"WICD_L1_LW_C","is_correct":false}],"sentence_template":"I can ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9a4784b1-9678-5b3a-aac1-7bb983dbe7ab', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'missing_word', 'Впишите', '{"correct_answer":"read","explanation":"The complete sentence is “I can read.”","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I can ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c4085ac1-7ca6-5c41-9fe8-2600a040a20e', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"run","id":"WICD_L1_VM_P1","text":"run"},{"audio_text":"swim","id":"WICD_L1_VM_P2","text":"swim"},{"audio_text":"draw","id":"WICD_L1_VM_P3","text":"draw"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('de5eda0e-93d7-5331-8887-3ff7c99798a2', '37b28cca-c93e-56e4-b7ea-72be66881b47', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Liam","text":"What can you do?"}],"explanation":"“I can read and write” naturally describes your abilities.","instruction":"Ответьте.","options":[{"id":"WICD_L1_C_A","is_correct":true,"text":"I can read and write."},{"id":"WICD_L1_C_B","is_correct":false,"text":"I am from read."},{"id":"WICD_L1_C_C","is_correct":false,"text":"My name can."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('45c085d8-9d91-543f-99a0-61cac4315235', '37b28cca-c93e-56e4-b7ea-72be66881b47', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', NULL, 'Что я могу и не могу делать', 'Научиться говорить о том, что вы умеете и не умеете делать.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d04ac9c9-f21c-5bc9-b0b8-b275e393c138', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WICD_L2_MP_P1","left":"can","right":"мочь, уметь"},{"id":"WICD_L2_MP_P2","left":"cannot","right":"не мочь, не уметь"},{"id":"WICD_L2_MP_P3","left":"play football","right":"играть в футбол"},{"id":"WICD_L2_MP_P4","left":"ride a bike","right":"кататься на велосипеде"},{"id":"WICD_L2_MP_P5","left":"cook","right":"готовить"},{"id":"WICD_L2_MP_P6","left":"use a computer","right":"пользоваться компьютером"},{"id":"WICD_L2_MP_P7","left":"play the piano","right":"играть на пианино"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('ee4538e1-5b8e-58e2-b3d8-855b59d8a55b', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'quiz', 'Проверьте себя', '{"explanation":"“I cannot cook” means that you do not have the ability to cook.","instruction":"Выберите правильный ответ.","options":[{"id":"WICD_L2_Q_A","is_correct":true,"text":"I cannot cook."},{"id":"WICD_L2_Q_B","is_correct":false,"text":"I can cook."},{"id":"WICD_L2_Q_C","is_correct":false,"text":"I like cooking."}],"question":"Which sentence says you do not have an ability?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0ee243c8-1f95-5c5f-9641-924ee23f3aea', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'translate', 'Переведите', '{"correct_translation":"I cannot cook.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я не умею готовить.","target_language":"en","word_bank":["cook.","cannot","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('594c264f-a9bc-5f6d-aaf3-3a8f8766f281', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"can","instruction":"Выберите подходящее слово.","options":["can","am","from"],"sentence_template":"I ___ ride a bike."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('afb6854c-7199-5331-8787-d08161af5227', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'tap_words', 'Соберите фразу', '{"correct_words":["I","cannot","play","football."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["football.","cannot","play","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('61f1915c-eb3e-5ecb-a6a7-02c596e14c08', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'listening', 'Послушайте', '{"audio_text":"I can ride a bike, but I cannot cook.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8a9385c8-fa3c-580e-8753-e9ae16bce77b', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'listening_shadowing', 'Повторите', '{"audio_text":"I can use a computer, but I cannot play the piano.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я умею пользоваться компьютером, но не умею играть на пианино."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e3b81112-ba76-53c9-a3c3-39952a0649d1', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Maya","text":"I can play football. Can you play?","translation":"Я умею играть в футбол. Ты умеешь играть?","type":"dialogue"},{"character":"Dan","text":"No, I cannot play football.","translation":"Нет, я не умею играть в футбол.","type":"dialogue"},{"options":[{"is_correct":true,"text":"But I can ride a bike."},{"is_correct":false,"text":"My bike is age."}],"text":"What can Dan say next?","type":"choice"}],"title":"After School"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('68b90371-d03b-5070-b1c2-6a07de087852', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'choose_definition', 'Определение', '{"explanation":"“Cook” means to prepare food.","instruction":"Выберите значение.","language":"en","options":[{"id":"WICD_L2_D_A","is_correct":true,"text":"To prepare food"},{"id":"WICD_L2_D_B","is_correct":false,"text":"To move through water"},{"id":"WICD_L2_D_C","is_correct":false,"text":"To make pictures with a pencil"}],"word":"cook"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('63b0f6cd-5f79-566e-a059-f49f89bd68e7', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'listen_choose_word', 'Слово', '{"audio_text":"I cannot cook.","explanation":"The complete sentence is “I cannot cook.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cook","id":"WICD_L2_LW_A","is_correct":true},{"audio_text":"country","id":"WICD_L2_LW_B","is_correct":false},{"audio_text":"name","id":"WICD_L2_LW_C","is_correct":false}],"sentence_template":"I cannot ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('05ab86e7-74e6-5846-bad9-9f45a84aa57a', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'missing_word', 'Впишите', '{"correct_answer":"cannot","explanation":"The complete sentence is “I cannot play the piano.”","hint_prefix":"can","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I ___ play the piano."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('10f72400-0bc6-5a29-a4f1-9c273d731007', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"play football","id":"WICD_L2_VM_P1","text":"play football"},{"audio_text":"ride a bike","id":"WICD_L2_VM_P2","text":"ride a bike"},{"audio_text":"cook","id":"WICD_L2_VM_P3","text":"cook"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5453155a-e34b-5409-b77e-27feb3ece982', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Nora","text":"Can you ride a bike?"}],"explanation":"“Yes, I can” is a natural positive answer to a question with “Can you...?”","instruction":"Ответьте.","options":[{"id":"WICD_L2_C_A","is_correct":true,"text":"Yes, I can."},{"id":"WICD_L2_C_B","is_correct":false,"text":"Yes, I am bike."},{"id":"WICD_L2_C_C","is_correct":false,"text":"I live ride."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('45c085d8-9d91-543f-99a0-61cac4315235', 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('fc069fe5-b48b-51ce-9b75-4c6efe228db7', NULL, 'Вопросы о способностях', 'Научиться спрашивать других об их способностях и давать короткие ответы.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1a459cb5-79ac-5647-aa6a-cb66588d7f3c', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"WICD_L3_MP_P1","left":"Can you swim?","right":"Ты умеешь плавать?"},{"id":"WICD_L3_MP_P2","left":"Yes, I can","right":"Да, умею"},{"id":"WICD_L3_MP_P3","left":"No, I cannot","right":"Нет, не умею"},{"id":"WICD_L3_MP_P4","left":"Can she sing?","right":"Она умеет петь?"},{"id":"WICD_L3_MP_P5","left":"Can he draw?","right":"Он умеет рисовать?"},{"id":"WICD_L3_MP_P6","left":"very well","right":"очень хорошо"},{"id":"WICD_L3_MP_P7","left":"a little","right":"немного"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('96f3c571-0ce5-5e14-98b6-0d89c868cad6', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'quiz', 'Проверьте себя', '{"explanation":"“Yes, I can” is the correct positive short answer.","instruction":"Выберите правильный ответ.","options":[{"id":"WICD_L3_Q_A","is_correct":true,"text":"Yes, I can."},{"id":"WICD_L3_Q_B","is_correct":false,"text":"Yes, I swim can."},{"id":"WICD_L3_Q_C","is_correct":false,"text":"Yes, I am."}],"question":"What is the correct short answer to “Can you swim?”"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('58922ce3-5059-55f7-a362-c635a3c8799a', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'translate', 'Переведите', '{"correct_translation":"Can you dance?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ты умеешь танцевать?","target_language":"en","word_bank":["dance?","you","Can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f6a80687-8e38-526b-ae40-244fd28e41fc', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"swim","instruction":"Выберите подходящее слово.","options":["swim","old","city"],"sentence_template":"Can you ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('92b964a7-9b1b-50bd-8ed5-6a92c48f70c1', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'tap_words', 'Соберите фразу', '{"correct_words":["Yes,","I","can."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["can.","Yes,","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a2b9124e-a8fc-5faf-805c-52c53f33bd11', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'listening', 'Послушайте', '{"audio_text":"Can you sing? Yes, I can.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c80078e5-dd44-54c7-b4fb-820f1212ba2a', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'listening_shadowing', 'Повторите', '{"audio_text":"Can you draw? Yes, I can draw a little.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Ты умеешь рисовать? Да, я умею немного рисовать."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c8f68a98-d469-5ef6-a5d4-fcd0918ddb2a', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Sam","text":"Can you sing, Anna?","translation":"Анна, ты умеешь петь?","type":"dialogue"},{"character":"Anna","text":"Yes, I can sing very well.","translation":"Да, я умею очень хорошо петь.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Can you play the piano?"},{"is_correct":false,"text":"Where old are you?"}],"text":"What should Anna ask Sam?","type":"choice"}],"title":"At the Music Club"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dcb94a95-9641-5ec8-ae2e-bf3009ae9024', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'choose_definition', 'Определение', '{"explanation":"“A little” means a small amount.","instruction":"Выберите значение.","language":"en","options":[{"id":"WICD_L3_D_A","is_correct":true,"text":"A small amount"},{"id":"WICD_L3_D_B","is_correct":false,"text":"A very great amount"},{"id":"WICD_L3_D_C","is_correct":false,"text":"Not at any time"}],"word":"a little"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d805828e-c913-546e-8dd7-3d4a0bfd01ab', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'listen_choose_word', 'Слово', '{"audio_text":"Can you dance?","explanation":"The complete question is “Can you dance?”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"dance","id":"WICD_L3_LW_A","is_correct":true},{"audio_text":"country","id":"WICD_L3_LW_B","is_correct":false},{"audio_text":"name","id":"WICD_L3_LW_C","is_correct":false}],"sentence_template":"Can you ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c3effb0d-6cdc-5041-8b42-fc49669a9689', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'missing_word', 'Впишите', '{"correct_answer":"can","explanation":"The complete answer is “Yes, I can.”","hint_prefix":"ca","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Yes, I ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3a9fba08-9a9f-5026-bd2d-cf42d3a39eb0', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'match_pairs_voice', 'Звук', '{"explanation":"Match each audio item with the same written English word or phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"Can you swim?","id":"WICD_L3_VM_P1","text":"Can you swim?"},{"audio_text":"Yes, I can","id":"WICD_L3_VM_P2","text":"Yes, I can"},{"audio_text":"No, I cannot","id":"WICD_L3_VM_P3","text":"No, I cannot"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('05783bf8-45cf-5940-aee7-d8cd77393d74', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Olivia","text":"Can you play the piano?"}],"explanation":"“No, I cannot, but I can sing” answers the question and adds another ability.","instruction":"Ответьте.","options":[{"id":"WICD_L3_C_A","is_correct":true,"text":"No, I cannot, but I can sing."},{"id":"WICD_L3_C_B","is_correct":false,"text":"I am piano years old."},{"id":"WICD_L3_C_C","is_correct":false,"text":"My name is play."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('45c085d8-9d91-543f-99a0-61cac4315235', 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54fdc2b8-d63f-5edb-9d5d-d832b833be0b', 'en', 'run', 'бегать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d3d99ef8-6dc1-5ce4-94f4-2866a8ab5607', 'en', 'swim', 'плавать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65824254-f932-5be0-976d-25387bd6921e', 'en', 'read', 'читать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82af31c5-ed7e-55ee-a990-c1885a5cfb33', 'en', 'write', 'писать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('45423c64-04d7-53ef-92be-bd4a6a0bad47', 'en', 'sing', 'петь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9c341fa-7ce3-50f0-b3ae-0f057c4fd74a', 'en', 'dance', 'танцевать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dfc0ffab-bd8c-5989-a5bd-5ed4a5d48cb3', 'en', 'draw', 'рисовать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6e0c99a-9785-5962-9b52-e1d7cb0b230a', 'en', 'can', 'мочь, уметь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ab2efe5-acb1-51d0-8a56-0cf0b592b4c1', 'en', 'cannot', 'не мочь, не уметь', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('93d7384f-f66a-5c8e-84a7-e73f0cc020ff', 'en', 'play football', 'играть в футбол', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7c5aa33c-de2d-5aad-b5e7-71c52ab837c6', 'en', 'ride a bike', 'кататься на велосипеде', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6ff9124-73ea-56d4-923b-8296aaf36222', 'en', 'cook', 'готовить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16b4bd97-adc9-55c2-adce-19ea6a285419', 'en', 'use a computer', 'пользоваться компьютером', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a5f88-d426-542e-92ef-94ce29cec523', 'en', 'play the piano', 'играть на пианино', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('007140ff-0b1b-5091-9832-66f1dd364763', 'en', 'Can you swim?', 'Ты умеешь плавать?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d03ab2ea-4168-5ed2-95ed-ca22069d041a', 'en', 'Yes, I can', 'Да, умею', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8561275-6350-5c8c-ba76-d0bf74e2e4f4', 'en', 'No, I cannot', 'Нет, не умею', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('db559aba-8ebd-5050-8f97-9e3a53e7b1a0', 'en', 'Can she sing?', 'Она умеет петь?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cd6129c6-6d1e-5929-bef1-b9b0c3a3a9b1', 'en', 'Can he draw?', 'Он умеет рисовать?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('88efafae-3db5-5a57-95f3-85cfb394fa7f', 'en', 'very well', 'очень хорошо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3354e77b-462d-5b03-8127-4ab2c8d7e0bd', 'en', 'a little', 'немного', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT (language, word, target_language) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'run' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'swim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'read' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'write' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'sing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'dance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, '37b28cca-c93e-56e4-b7ea-72be66881b47', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'draw' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'can' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cannot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'play football' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'ride a bike' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'cook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'use a computer' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'b2b721c9-87e7-5fb8-86b5-5aa85a2d6d30', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'play the piano' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can you swim?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'Yes, I can' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'No, I cannot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can she sing?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can he draw?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'very well' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '45c085d8-9d91-543f-99a0-61cac4315235', id, 'fc069fe5-b48b-51ce-9b75-4c6efe228db7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'a little' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
