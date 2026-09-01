-- Track: A1_TRAVEL_AT_THE_HOTEL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d35a0e0b-a640-506e-b34e-c9152b27f733', 'A1_TRAVEL_AT_THE_HOTEL', 'В отеле', 'Научитесь регистрироваться в отеле, говорить о номере и выезжать.', 'en', 'A1', '', ARRAY['travel']::text[], true, 129, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('3e5953d9-1495-59fb-95ba-553fb22daad2', NULL, 'Регистрация в отеле', 'Научиться назвать бронирование и зарегистрироваться в отеле.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('42892eaa-83a3-5c79-b92d-449015be8c11', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAH_L1_MP_P1","left":"hotel","right":"отель"},{"id":"TAH_L1_MP_P2","left":"reservation","right":"бронирование"},{"id":"TAH_L1_MP_P3","left":"reception","right":"стойка регистрации"},{"id":"TAH_L1_MP_P4","left":"room","right":"номер"},{"id":"TAH_L1_MP_P5","left":"passport","right":"паспорт"},{"id":"TAH_L1_MP_P6","left":"room key","right":"ключ от номера"},{"id":"TAH_L1_MP_P7","left":"I have a reservation","right":"У меня есть бронирование"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('d63dbbe2-4310-502a-b975-4af9fc361e0e', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'quiz', 'Проверьте себя', '{"explanation":"“I have a reservation” tells reception that a room was booked.","instruction":"Выберите правильный ответ.","options":[{"id":"TAH_L1_Q_A","is_correct":true,"text":"I have a reservation."},{"id":"TAH_L1_Q_B","is_correct":false,"text":"I have a boarding pass."},{"id":"TAH_L1_Q_C","is_correct":false,"text":"I need a menu."}],"question":"What do you say when you booked a room before arriving?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c7cbf288-ced4-519a-93fd-274bbb9045ea', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'translate', 'Переведите', '{"correct_translation":"I have a reservation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У меня есть бронирование.","target_language":"en","word_bank":["reservation.","a","have","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('65fd3a51-ae65-55b0-860c-5848ac5adb17', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"passport","instruction":"Выберите подходящее слово.","options":["passport","meal","gate"],"sentence_template":"Here is my ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('56e3a12a-94b9-56cc-a1bf-4faeca729819', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'tap_words', 'Соберите фразу', '{"correct_words":["My","room","is","ready."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["room","is","My","ready."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('096ee4c2-d7f3-5879-bb58-1270807d4249', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'listening', 'Послушайте', '{"audio_text":"Hello. I have a reservation.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9586239e-58ae-51e8-9546-59a1528e854c', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'listening_shadowing', 'Повторите', '{"audio_text":"My name is Anna Petrova. I have a reservation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Меня зовут Анна Петрова. У меня есть бронирование."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4f381520-1790-5288-8387-b8c81ef109e8', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Receptionist","text":"Good evening. How can I help?","translation":"Добрый вечер. Чем могу помочь?","type":"dialogue"},{"character":"Guest","text":"I have a reservation.","translation":"У меня есть бронирование.","type":"dialogue"},{"options":[{"is_correct":true,"text":"The guest’s passport."},{"is_correct":false,"text":"The restaurant menu."}],"text":"What should the receptionist ask for?","type":"choice"}],"title":"At Reception"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6a8969ef-c2c6-5d0a-a7b9-f130cffaa078', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'choose_definition', 'Определение', '{"explanation":"A reservation is an arrangement made before arrival.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAH_L1_D_A","is_correct":true,"text":"An arrangement made before arrival"},{"id":"TAH_L1_D_B","is_correct":false,"text":"A card for boarding a plane"},{"id":"TAH_L1_D_C","is_correct":false,"text":"A list of food and drinks"}],"word":"reservation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('553d2725-c91f-5a8f-b951-b140ca6d4316', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'listen_choose_word', 'Слово', '{"audio_text":"I have a reservation.","explanation":"The missing word is “reservation.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"reservation","id":"TAH_L1_LW_A","is_correct":true},{"audio_text":"gate","id":"TAH_L1_LW_B","is_correct":false},{"audio_text":"soup","id":"TAH_L1_LW_C","is_correct":false}],"sentence_template":"I have a ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('86b7dbac-3c50-5d83-954f-1cedb2b9b1f7', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'missing_word', 'Впишите', '{"correct_answer":"key","explanation":"The complete phrase is “room key.”","hint_prefix":"ke","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is your room ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('89709c71-b0e7-56ce-aff2-3439ffcdb9c1', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'match_pairs_voice', 'Звук', '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"reservation","id":"TAH_L1_VM_P1","text":"reservation"},{"audio_text":"reception","id":"TAH_L1_VM_P2","text":"reception"},{"audio_text":"room key","id":"TAH_L1_VM_P3","text":"room key"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5e1e93e2-a7fe-5c53-819c-a1c2d49ef4a5', '3e5953d9-1495-59fb-95ba-553fb22daad2', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Receptionist","text":"May I see your passport?"}],"explanation":"This is a natural reply at hotel reception.","instruction":"Ответьте.","options":[{"id":"TAH_L1_C_A","is_correct":true,"text":"Yes. Here you are."},{"id":"TAH_L1_C_B","is_correct":false,"text":"I would like chicken."},{"id":"TAH_L1_C_C","is_correct":false,"text":"My flight is at gate five."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d35a0e0b-a640-506e-b34e-c9152b27f733', '3e5953d9-1495-59fb-95ba-553fb22daad2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('037bb4bf-67b7-51c3-a098-9669a7396d1a', NULL, 'В номере', 'Научиться называть основные предметы и удобства в гостиничном номере.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f258c638-5214-5dd4-8414-ab8c02448cc2', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAH_L2_MP_P1","left":"bed","right":"кровать"},{"id":"TAH_L2_MP_P2","left":"bathroom","right":"ванная комната"},{"id":"TAH_L2_MP_P3","left":"towel","right":"полотенце"},{"id":"TAH_L2_MP_P4","left":"shower","right":"душ"},{"id":"TAH_L2_MP_P5","left":"Wi-Fi","right":"вай-фай"},{"id":"TAH_L2_MP_P6","left":"air conditioner","right":"кондиционер"},{"id":"TAH_L2_MP_P7","left":"window","right":"окно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('13dd2304-31da-5bf5-b572-8ef3174a7bed', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'quiz', 'Проверьте себя', '{"explanation":"Guests wash in the bathroom.","instruction":"Выберите правильный ответ.","options":[{"id":"TAH_L2_Q_A","is_correct":true,"text":"The bathroom"},{"id":"TAH_L2_Q_B","is_correct":false,"text":"The gate"},{"id":"TAH_L2_Q_C","is_correct":false,"text":"The restaurant menu"}],"question":"Where do guests wash in a hotel room?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f1726952-4a4e-5879-8440-87b910f27ac5', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'translate', 'Переведите', '{"correct_translation":"The room has a bathroom.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В номере есть ванная комната.","target_language":"en","word_bank":["bathroom.","a","has","room","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('53d6241f-ddd5-5431-9abd-ab41f4db76bb', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"towel","instruction":"Выберите подходящее слово.","options":["towel","ticket","meal"],"sentence_template":"I need a clean ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('fa445514-dbbb-5bda-a631-5ee69192e3a3', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'tap_words', 'Соберите фразу', '{"correct_words":["Is","there","Wi-Fi?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Wi-Fi?","there","Is"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('eccc6419-8dff-53a9-b8c6-29dfe915a614', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'listening', 'Послушайте', '{"audio_text":"The room has a bed and a bathroom.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('268af60c-46b3-5d2b-8a22-5d27c14a24d6', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'listening_shadowing', 'Повторите', '{"audio_text":"Excuse me. I need a clean towel, please.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Извините. Мне нужно чистое полотенце, пожалуйста."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('306d3529-882d-5bd0-be72-840754652604', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Guest","text":"Excuse me. Is there Wi-Fi?","translation":"Извините. Есть ли вай-фай?","type":"dialogue"},{"character":"Receptionist","text":"Yes. The Wi-Fi is free.","translation":"Да. Вай-фай бесплатный.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Thank you."},{"is_correct":false,"text":"Where is gate ten?"}],"text":"What should the guest say?","type":"choice"}],"title":"A Room Question"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4fd342d3-a32f-531b-8cf7-7b84b0043cad', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'choose_definition', 'Определение', '{"explanation":"A towel is used for drying.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAH_L2_D_A","is_correct":true,"text":"A piece of cloth used for drying"},{"id":"TAH_L2_D_B","is_correct":false,"text":"A card that opens a room"},{"id":"TAH_L2_D_C","is_correct":false,"text":"A place where guests eat"}],"word":"towel"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e183138b-c52e-5cea-bc5c-18dd2ba201ee', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'listen_choose_word', 'Слово', '{"audio_text":"I need a clean towel.","explanation":"The missing word is “towel.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"towel","id":"TAH_L2_LW_A","is_correct":true},{"audio_text":"passport","id":"TAH_L2_LW_B","is_correct":false},{"audio_text":"menu","id":"TAH_L2_LW_C","is_correct":false}],"sentence_template":"I need a clean ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('49de4d29-1258-5322-9b8b-e3c97fdcbc6e', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'missing_word', 'Впишите', '{"correct_answer":"Wi-Fi","explanation":"The complete question is “Is there Wi-Fi?”","hint_prefix":"Wi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Is there ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e02bc5d9-8ca3-5cf7-b2e2-1038eb2aec1e', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'match_pairs_voice', 'Звук', '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"bathroom","id":"TAH_L2_VM_P1","text":"bathroom"},{"audio_text":"towel","id":"TAH_L2_VM_P2","text":"towel"},{"audio_text":"Wi-Fi","id":"TAH_L2_VM_P3","text":"Wi-Fi"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b6a01c50-603c-5d19-a7d7-98e5ee2c51f5', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Guest","text":"The air conditioner does not work."}],"explanation":"This is a helpful hotel response.","instruction":"Ответьте.","options":[{"id":"TAH_L2_C_A","is_correct":true,"text":"I will send someone to help."},{"id":"TAH_L2_C_B","is_correct":false,"text":"Your flight is boarding."},{"id":"TAH_L2_C_C","is_correct":false,"text":"Would you like soup?"}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d35a0e0b-a640-506e-b34e-c9152b27f733', '037bb4bf-67b7-51c3-a098-9669a7396d1a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('4f7e2152-625b-564e-95e0-0b90511ead81', NULL, 'Просьбы и выезд', 'Научиться делать простую просьбу и выезжать из отеля.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8252d671-6468-580f-83b4-ba53f5ef3637', '4f7e2152-625b-564e-95e0-0b90511ead81', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAH_L3_MP_P1","left":"check out","right":"выехать из отеля"},{"id":"TAH_L3_MP_P2","left":"bill","right":"счёт"},{"id":"TAH_L3_MP_P3","left":"pay","right":"платить"},{"id":"TAH_L3_MP_P4","left":"cash","right":"наличные"},{"id":"TAH_L3_MP_P5","left":"card","right":"карта"},{"id":"TAH_L3_MP_P6","left":"late check-out","right":"поздний выезд"},{"id":"TAH_L3_MP_P7","left":"Thank you for your stay","right":"Спасибо, что выбрали наш отель"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('452ed279-585b-5d8a-9ef0-19e004309695', '4f7e2152-625b-564e-95e0-0b90511ead81', 'quiz', 'Проверьте себя', '{"explanation":"The bill shows the amount to pay.","instruction":"Выберите правильный ответ.","options":[{"id":"TAH_L3_Q_A","is_correct":true,"text":"The bill"},{"id":"TAH_L3_Q_B","is_correct":false,"text":"The boarding gate"},{"id":"TAH_L3_Q_C","is_correct":false,"text":"The food menu"}],"question":"What do guests ask for when they want to see the amount to pay?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('de8edeca-cd3f-5116-9000-d8e5b7a7a3b3', '4f7e2152-625b-564e-95e0-0b90511ead81', 'translate', 'Переведите', '{"correct_translation":"I would like to check out.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я хочу выехать из отеля.","target_language":"en","word_bank":["out.","check","to","like","would","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a6260410-f84c-514a-ba28-56f8753ecff7', '4f7e2152-625b-564e-95e0-0b90511ead81', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"card","instruction":"Выберите подходящее слово.","options":["card","room","flight"],"sentence_template":"Can I pay by ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b5a41cd8-c13d-553a-bb90-7f2d6456d6c4', '4f7e2152-625b-564e-95e0-0b90511ead81', 'tap_words', 'Соберите фразу', '{"correct_words":["I","need","the","bill,","please."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","please.","bill,","need","I"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('951ac9d6-cd7f-5671-8e9d-46bb6cdaa360', '4f7e2152-625b-564e-95e0-0b90511ead81', 'listening', 'Послушайте', '{"audio_text":"I would like to check out.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dc191c23-9abd-5f56-8a36-e0934668a2de', '4f7e2152-625b-564e-95e0-0b90511ead81', 'listening_shadowing', 'Повторите', '{"audio_text":"Can I have a late check-out, please?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Можно мне поздний выезд, пожалуйста?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f8e19e2e-3aab-5fba-8b3f-e1e576fb19b0', '4f7e2152-625b-564e-95e0-0b90511ead81', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Guest","text":"Good morning. I would like to check out.","translation":"Доброе утро. Я хочу выехать.","type":"dialogue"},{"character":"Receptionist","text":"Of course. Here is your bill.","translation":"Конечно. Вот ваш счёт.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Can I pay by card?"},{"is_correct":false,"text":"Where is my airplane seat?"}],"text":"What should the guest ask?","type":"choice"}],"title":"Leaving the Hotel"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7a0cdbfa-1a3d-553d-b05f-7960d7097027', '4f7e2152-625b-564e-95e0-0b90511ead81', 'choose_definition', 'Определение', '{"explanation":"A bill shows how much to pay.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAH_L3_D_A","is_correct":true,"text":"A document showing how much to pay"},{"id":"TAH_L3_D_B","is_correct":false,"text":"A card used to open a room"},{"id":"TAH_L3_D_C","is_correct":false,"text":"An arrangement made before arrival"}],"word":"bill"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('080ce5d2-473d-52ff-b7bf-3f9ed5f1ad40', '4f7e2152-625b-564e-95e0-0b90511ead81', 'listen_choose_word', 'Слово', '{"audio_text":"Can I pay by card?","explanation":"The missing word is “card.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"card","id":"TAH_L3_LW_A","is_correct":true},{"audio_text":"bed","id":"TAH_L3_LW_B","is_correct":false},{"audio_text":"gate","id":"TAH_L3_LW_C","is_correct":false}],"sentence_template":"Can I pay by ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3f7475bc-0044-5e7e-bd20-bd11d51776da', '4f7e2152-625b-564e-95e0-0b90511ead81', 'missing_word', 'Впишите', '{"correct_answer":"bill","explanation":"The complete sentence is “Here is the bill.”","hint_prefix":"bi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Here is the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('e362a067-a111-5ff1-a9b1-acb5ee6ac6da', '4f7e2152-625b-564e-95e0-0b90511ead81', 'match_pairs_voice', 'Звук', '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"check out","id":"TAH_L3_VM_P1","text":"check out"},{"audio_text":"bill","id":"TAH_L3_VM_P2","text":"bill"},{"audio_text":"late check-out","id":"TAH_L3_VM_P3","text":"late check-out"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('77f0377a-7a01-5308-b03e-4fb548f26ba3', '4f7e2152-625b-564e-95e0-0b90511ead81', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Receptionist","text":"Thank you for your stay."}],"explanation":"This is a polite reply when leaving the hotel.","instruction":"Ответьте.","options":[{"id":"TAH_L3_C_A","is_correct":true,"text":"Thank you. Goodbye."},{"id":"TAH_L3_C_B","is_correct":false,"text":"A table for two."},{"id":"TAH_L3_C_C","is_correct":false,"text":"My gate is ready."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d35a0e0b-a640-506e-b34e-c9152b27f733', '4f7e2152-625b-564e-95e0-0b90511ead81', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c6d7a76-9542-5cd6-98ee-7ed2e5a8751c', 'en', 'hotel', 'отель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'бронирование', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc239625-9be5-54cd-a1c3-15c3a99f6539', 'en', 'reception', 'стойка регистрации', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a58adf52-5ad8-5ea5-87c7-c583f7abf62e', 'en', 'room', 'номер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ddff6a84-2475-5199-9f39-fdd8c5354934', 'en', 'passport', 'паспорт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9d355d0-9890-5624-b192-9aedb7fd815e', 'en', 'room key', 'ключ от номера', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bad11e82-ea41-5cab-b845-ae4be022ccb3', 'en', 'I have a reservation', 'У меня есть бронирование', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('314547c7-dd28-5c60-8e83-4c71871ce0a2', 'en', 'bed', 'кровать', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bcf3a106-75d6-5e65-89be-b3f4372333eb', 'en', 'bathroom', 'ванная комната', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e232b5b4-af88-5759-8974-34b60bd7b8c5', 'en', 'towel', 'полотенце', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91a12b78-8222-5534-86b0-43e2d3f1f6df', 'en', 'shower', 'душ', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6065f87-ba4e-5e17-a55d-13f14ab596e4', 'en', 'Wi-Fi', 'вай-фай', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32af787b-d75c-5c81-ab9d-4fc0f306d72e', 'en', 'air conditioner', 'кондиционер', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7574fa3-911c-53c8-95a5-612d2e49f877', 'en', 'window', 'окно', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5f9df80-c553-53b4-a185-8c602dbba435', 'en', 'check out', 'выехать из отеля', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6fe155ac-164e-5dc9-a684-a3577f404d4b', 'en', 'bill', 'счёт', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1819abe7-8db8-5189-a37d-3b3266e4a3fb', 'en', 'pay', 'платить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5c7193f5-e486-5df8-a5cc-a05102b20d02', 'en', 'cash', 'наличные', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('078b172d-8324-5a0f-9f66-65c282d485c1', 'en', 'card', 'карта', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86b96774-518a-54a8-a2ef-439af82a3bf7', 'en', 'late check-out', 'поздний выезд', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8ab28374-819a-566c-a54e-f8511de46f4d', 'en', 'Thank you for your stay', 'Спасибо, что выбрали наш отель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'hotel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'reception' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'room' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'passport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'room key' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '3e5953d9-1495-59fb-95ba-553fb22daad2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'I have a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'bed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'bathroom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'towel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'shower' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'Wi-Fi' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'air conditioner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '037bb4bf-67b7-51c3-a098-9669a7396d1a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'check out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'pay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'late check-out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd35a0e0b-a640-506e-b34e-c9152b27f733', id, '4f7e2152-625b-564e-95e0-0b90511ead81', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Thank you for your stay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
