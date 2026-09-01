-- Track: A1_TRAVEL_AT_THE_AIRPORT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('77fffddd-1d4d-534e-be1e-e28e6a53397f', 'A1_TRAVEL_AT_THE_AIRPORT', 'В аэропорту', 'Научитесь регистрироваться на рейс, находить выход и понимать фразы при посадке.', '{"en":"At the Airport","ru":"В аэропорту"}'::jsonb, '{"en":"Learn to check in, find the gate, and understand boarding phrases.","ru":"Научитесь регистрироваться на рейс, находить выход и понимать фразы при посадке."}'::jsonb, 'en', 'A1', '', ARRAY['travel']::text[], true, 128, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', NULL, 'Регистрация на рейс', 'Научиться использовать простые фразы при регистрации на рейс.', '{"en":"Checking In","ru":"Регистрация на рейс"}'::jsonb, '{"en":"Learn to use simple phrases when checking in for a flight.","ru":"Научиться использовать простые фразы при регистрации на рейс."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b67c217e-09bc-5f8b-b926-7cee5ce29101', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAA_L1_MP_P1","left":"passport","right":"паспорт"},{"id":"TAA_L1_MP_P2","left":"ticket","right":"билет"},{"id":"TAA_L1_MP_P3","left":"flight","right":"рейс"},{"id":"TAA_L1_MP_P4","left":"check-in desk","right":"стойка регистрации"},{"id":"TAA_L1_MP_P5","left":"bag","right":"сумка"},{"id":"TAA_L1_MP_P6","left":"boarding pass","right":"посадочный талон"},{"id":"TAA_L1_MP_P7","left":"Here you are","right":"Вот, пожалуйста"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('053d869a-ff3a-5bc8-ab7b-fe9d297883e0', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"A passport shows your identity and nationality.","instruction":"Выберите правильный ответ.","options":[{"id":"TAA_L1_Q_A","is_correct":true,"text":"Passport"},{"id":"TAA_L1_Q_B","is_correct":false,"text":"Bag"},{"id":"TAA_L1_Q_C","is_correct":false,"text":"Gate"}],"question":"What document shows your name and nationality?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9599d61-1a44-5227-8e59-1bd49d707fb3', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Here is my passport.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вот мой паспорт.","target_language":"en","word_bank":["passport.","my","is","Here"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9238a89f-dd69-525e-ac9e-78fe8a3b0a69', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ticket","instruction":"Выберите подходящее слово.","options":["ticket","hotel","menu"],"sentence_template":"This is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88f2d41f-0e7d-5941-a776-4b14d81441c7', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","have","one","bag."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["bag.","one","have","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83e2b92d-6b2b-5c02-991a-65f596192837', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Here is my passport and ticket.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89db9712-d8fc-5d58-8279-d45d93314835', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Hello. I am checking in for my flight.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Здравствуйте. Я регистрируюсь на свой рейс."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6088316-2149-59f6-8746-bd7e5d72369e', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Agent","text":"May I see your passport?","translation":"Можно посмотреть ваш паспорт?","type":"dialogue"},{"character":"Mila","text":"Yes. Here you are.","translation":"Да. Вот, пожалуйста.","type":"dialogue"},{"options":[{"is_correct":true,"text":"A boarding pass."},{"is_correct":false,"text":"A hotel key."}],"text":"What should the agent give Mila?","type":"choice"}],"title":"At Check-in"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('689a7782-dc48-5758-a6d7-d983c93c9ac9', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A boarding pass is used to enter an airplane.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAA_L1_D_A","is_correct":true,"text":"A document used to enter an airplane"},{"id":"TAA_L1_D_B","is_correct":false,"text":"A book with restaurant food"},{"id":"TAA_L1_D_C","is_correct":false,"text":"A card used to open a hotel room"}],"word":"boarding pass"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('347701a2-d412-5d66-94f1-b4a8f191faff', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Here is my passport.","explanation":"The missing word is “passport.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"passport","id":"TAA_L1_LW_A","is_correct":true},{"audio_text":"menu","id":"TAA_L1_LW_B","is_correct":false},{"audio_text":"room","id":"TAA_L1_LW_C","is_correct":false}],"sentence_template":"Here is my ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a337fdf-09e1-5419-8391-664a111a2d0d', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"bag","explanation":"The complete sentence is “I have one bag.”","hint_prefix":"ba","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have one ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6924cb55-7ead-5b78-9fd6-32260ffb0d04', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"passport","id":"TAA_L1_VM_P1","text":"passport"},{"audio_text":"ticket","id":"TAA_L1_VM_P2","text":"ticket"},{"audio_text":"boarding pass","id":"TAA_L1_VM_P3","text":"boarding pass"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bd82342-49db-537d-b20a-82a912992a27', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Agent","text":"May I see your ticket?"}],"explanation":"This is a natural reply at the check-in desk.","instruction":"Ответьте.","options":[{"id":"TAA_L1_C_A","is_correct":true,"text":"Yes. Here you are."},{"id":"TAA_L1_C_B","is_correct":false,"text":"I want a hotel room."},{"id":"TAA_L1_C_C","is_correct":false,"text":"The menu is here."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('77fffddd-1d4d-534e-be1e-e28e6a53397f', '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', NULL, 'Выход на посадку', 'Научиться спрашивать номер выхода и понимать простые указания в аэропорту.', '{"en":"Finding the Gate","ru":"Выход на посадку"}'::jsonb, '{"en":"Learn to ask for a gate number and understand simple airport directions.","ru":"Научиться спрашивать номер выхода и понимать простые указания в аэропорту."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f02429e5-b810-5830-b489-4f48352c29fa', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAA_L2_MP_P1","left":"gate","right":"выход на посадку"},{"id":"TAA_L2_MP_P2","left":"gate number","right":"номер выхода"},{"id":"TAA_L2_MP_P3","left":"departure","right":"вылет"},{"id":"TAA_L2_MP_P4","left":"arrivals","right":"прибытие"},{"id":"TAA_L2_MP_P5","left":"left","right":"налево"},{"id":"TAA_L2_MP_P6","left":"right","right":"направо"},{"id":"TAA_L2_MP_P7","left":"straight ahead","right":"прямо"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94aa8b15-1e1b-57ba-aa9b-f121b3b31d3d', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Passengers go to the gate to board a plane.","instruction":"Выберите правильный ответ.","options":[{"id":"TAA_L2_Q_A","is_correct":true,"text":"The gate"},{"id":"TAA_L2_Q_B","is_correct":false,"text":"The restaurant table"},{"id":"TAA_L2_Q_C","is_correct":false,"text":"The hotel room"}],"question":"Where do passengers go to board a plane?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14882b53-7129-5d27-93b9-974f910a0e58', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Where is gate five?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Где выход номер пять?","target_language":"en","word_bank":["five?","gate","is","Where"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3eedd702-84d7-5e9c-b171-f4d33c789c36', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ahead","instruction":"Выберите подходящее слово.","options":["ahead","ticket","room"],"sentence_template":"Go straight ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8309e3a-673e-5021-b792-83858090abeb', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","gate","is","on","the","right."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","on","is","The","right.","gate"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6adb36d5-378f-54f4-8c5f-e9f64619db2e', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Gate six is on the left.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9694c77d-bd5f-5371-b3c5-0a59a0ac066a', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Excuse me. Where is gate ten?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините. Где выход номер десять?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9e25ada-97c0-531e-9fd2-e0805ac8b666', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Leo","text":"Excuse me. Where is gate ten?","translation":"Извините. Где выход номер десять?","type":"dialogue"},{"character":"Worker","text":"Go straight ahead. It is on the right.","translation":"Идите прямо. Он справа.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"A table for two."}],"text":"What should Leo say?","type":"choice"}],"title":"Looking for Gate Ten"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('610770cc-763f-52db-9377-8ed37ea3c5a1', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"A departure is when a flight leaves.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAA_L2_D_A","is_correct":true,"text":"The act of leaving on a journey"},{"id":"TAA_L2_D_B","is_correct":false,"text":"The act of arriving somewhere"},{"id":"TAA_L2_D_C","is_correct":false,"text":"A place to sleep at a hotel"}],"word":"departure"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f219c53-c923-559a-a607-5ed49e9236cc', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The gate is on the left.","explanation":"The missing direction is “left.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"left","id":"TAA_L2_LW_A","is_correct":true},{"audio_text":"passport","id":"TAA_L2_LW_B","is_correct":false},{"audio_text":"menu","id":"TAA_L2_LW_C","is_correct":false}],"sentence_template":"The gate is on the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6951f42f-65b5-5e09-baa7-937373323f04', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ahead","explanation":"The complete direction is “Go straight ahead.”","hint_prefix":"ah","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Go straight ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4fff754-0b74-566b-99f6-2b8f3b31e786', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"gate","id":"TAA_L2_VM_P1","text":"gate"},{"audio_text":"left","id":"TAA_L2_VM_P2","text":"left"},{"audio_text":"straight ahead","id":"TAA_L2_VM_P3","text":"straight ahead"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('950deb46-161b-53b1-9134-5dde513f0fde', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Traveler","text":"Where is gate three?"}],"explanation":"This answer gives a clear airport direction.","instruction":"Ответьте.","options":[{"id":"TAA_L2_C_A","is_correct":true,"text":"It is on the right."},{"id":"TAA_L2_C_B","is_correct":false,"text":"Your room is ready."},{"id":"TAA_L2_C_C","is_correct":false,"text":"I would like soup."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('77fffddd-1d4d-534e-be1e-e28e6a53397f', 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5477d73a-0216-50a7-adb0-0e4337a71f7e', NULL, 'Посадка и полёт', 'Научиться понимать простые фразы при посадке и в самолёте.', '{"en":"Boarding and the Flight","ru":"Посадка и полёт"}'::jsonb, '{"en":"Learn to understand simple phrases when boarding and on the plane.","ru":"Научиться понимать простые фразы при посадке и в самолёте."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10ed786a-9b12-58d5-a4f0-ae9f7eb45153', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAA_L3_MP_P1","left":"board the plane","right":"сесть в самолёт"},{"id":"TAA_L3_MP_P2","left":"seat","right":"место"},{"id":"TAA_L3_MP_P3","left":"window seat","right":"место у окна"},{"id":"TAA_L3_MP_P4","left":"aisle seat","right":"место у прохода"},{"id":"TAA_L3_MP_P5","left":"seat belt","right":"ремень безопасности"},{"id":"TAA_L3_MP_P6","left":"plane","right":"самолёт"},{"id":"TAA_L3_MP_P7","left":"Have a good flight","right":"Хорошего полёта"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64cdd19b-7da6-5816-b2d8-1fb9658d0e49', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"Passengers fasten their seat belts on the plane.","instruction":"Выберите правильный ответ.","options":[{"id":"TAA_L3_Q_A","is_correct":true,"text":"Your seat belt"},{"id":"TAA_L3_Q_B","is_correct":false,"text":"Your passport desk"},{"id":"TAA_L3_Q_C","is_correct":false,"text":"Your hotel key"}],"question":"What should you fasten on the plane?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('041e939a-c36f-5047-aa37-79415a2f3f95', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My seat is by the window.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Моё место у окна.","target_language":"en","word_bank":["window.","the","by","is","seat","My"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bbfc070-6daa-527d-8a51-c50bf6deef12', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"belt","instruction":"Выберите подходящее слово.","options":["belt","gate","menu"],"sentence_template":"Please fasten your seat ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c391efe1-801d-5fda-9ef5-757e1426bd68', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","a","good","flight."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","Have","flight.","good"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52e76206-c165-569a-a1df-7e2cee65a05d', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Your seat is twelve A.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8110420c-1f34-5640-832c-a944cdb4e108', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Please sit down and fasten your seat belt.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Пожалуйста, сядьте и пристегните ремень безопасности."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bc2056d-ae49-5fef-800a-f73e0945c4bc', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Passenger","text":"Excuse me. Where is seat twelve A?","translation":"Извините. Где место двенадцать А?","type":"dialogue"},{"character":"Crew Member","text":"It is by the window.","translation":"Оно у окна.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"I need a hotel room."}],"text":"What should the passenger say?","type":"choice"}],"title":"On the Plane"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9178bb3c-3137-561a-a8f1-e75e1dbb3c7b', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"An aisle seat is next to the walkway on a plane.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAA_L3_D_A","is_correct":true,"text":"A seat next to the walkway on a plane"},{"id":"TAA_L3_D_B","is_correct":false,"text":"A seat next to a window"},{"id":"TAA_L3_D_C","is_correct":false,"text":"A place where passengers check in"}],"word":"aisle seat"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d336e210-bb22-562d-99da-ac954a9b078a', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Fasten your seat belt.","explanation":"The missing word is “belt.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"belt","id":"TAA_L3_LW_A","is_correct":true},{"audio_text":"flight","id":"TAA_L3_LW_B","is_correct":false},{"audio_text":"hotel","id":"TAA_L3_LW_C","is_correct":false}],"sentence_template":"Fasten your seat ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fcdb31d-51b6-5406-9a6b-97f88fb295f6', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"seat","explanation":"The complete sentence is “This is my seat.”","hint_prefix":"se","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is my ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fac5a7e-2369-53bf-a5a0-7baaee9eebd5', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"seat","id":"TAA_L3_VM_P1","text":"seat"},{"audio_text":"window seat","id":"TAA_L3_VM_P2","text":"window seat"},{"audio_text":"seat belt","id":"TAA_L3_VM_P3","text":"seat belt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c9d1cb1-0042-525c-9986-dbaa4890abd2', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Crew Member","text":"Welcome aboard. Have a good flight."}],"explanation":"“Thank you” is a natural reply when boarding.","instruction":"Ответьте.","options":[{"id":"TAA_L3_C_A","is_correct":true,"text":"Thank you."},{"id":"TAA_L3_C_B","is_correct":false,"text":"A table for two, please."},{"id":"TAA_L3_C_C","is_correct":false,"text":"My room is small."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('77fffddd-1d4d-534e-be1e-e28e6a53397f', '5477d73a-0216-50a7-adb0-0e4337a71f7e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ddff6a84-2475-5199-9f39-fdd8c5354934', 'en', 'passport', 'паспорт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5750c35d-bdd5-57b0-94f5-18997ecaed0a', 'en', 'ticket', 'билет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('579e2ed8-1fd2-5fb4-8a29-fd45b6c3bb83', 'en', 'flight', 'рейс', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9364c8d2-5817-50f6-bfbc-d1a12333dc09', 'en', 'check-in desk', 'стойка регистрации', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('68621952-6b9d-5e32-a025-7eef4afdd621', 'en', 'bag', 'сумка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3175b097-4686-51f8-8298-0f4d33306ad1', 'en', 'boarding pass', 'посадочный талон', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f23aa870-88e7-51f9-8068-1378bf265ba4', 'en', 'Here you are', 'Вот, пожалуйста', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8999dba-e15b-5c68-8b13-8e246f32ae28', 'en', 'gate', 'выход на посадку', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('51f92a63-75db-5fd3-86f6-921bbb41d12c', 'en', 'gate number', 'номер выхода', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5d2562b-f173-57ee-8151-2da29a3dd226', 'en', 'departure', 'вылет', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a512a2b-7f9e-5b34-b4fb-dd0db018c864', 'en', 'arrivals', 'прибытие', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eed7f8ff-c798-5fd7-8e96-e053707e678b', 'en', 'left', 'налево', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c7d7e021-26f2-5992-8bc5-b4652f8d31ef', 'en', 'right', 'направо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('94c37918-1251-5576-aa6a-997b21a67d2e', 'en', 'straight ahead', 'прямо', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d0586e0-21aa-5e9a-a07b-845f0726dfb8', 'en', 'board the plane', 'сесть в самолёт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f19111d2-20b0-56cb-8f53-a1f6509e7bf2', 'en', 'seat', 'место', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d200a98e-249b-5dce-a22a-c67c517a9889', 'en', 'window seat', 'место у окна', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('982fd314-4f02-5263-89f2-d9c5576b579e', 'en', 'aisle seat', 'место у прохода', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0db8616d-d6e7-53dd-a162-64aab6c46a19', 'en', 'seat belt', 'ремень безопасности', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('703f869f-5df0-5446-b8de-a3c6c93fdc61', 'en', 'plane', 'самолёт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0437e5f8-e548-55a0-8f23-2d04163a0d15', 'en', 'Have a good flight', 'Хорошего полёта', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'passport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'flight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'check-in desk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'bag' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'boarding pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '67bd1aba-9b52-5bcf-abe8-a2ca0d5aa1d8', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Here you are' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'gate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'gate number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrivals' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'left' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, 'ee605feb-d9f8-5b1e-a9ab-fb0a9158a19b', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'straight ahead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'board the plane' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'seat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'window seat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'aisle seat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'seat belt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'plane' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '77fffddd-1d4d-534e-be1e-e28e6a53397f', id, '5477d73a-0216-50a7-adb0-0e4337a71f7e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Have a good flight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
