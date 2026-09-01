-- Track: A1_TRAVEL_AT_A_RESTAURANT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8db3ef7f-7c2b-5818-aee6-2372df54d597', 'A1_TRAVEL_AT_A_RESTAURANT', 'В ресторане', 'Научитесь просить столик, заказывать еду и оплачивать счёт.', 'en', 'A1', '', ARRAY['travel']::text[], true, 127, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('21144084-a4da-5c9a-8bf9-e8394ba9f19a', NULL, 'Столик и меню', 'Научиться попросить столик и меню в ресторане.', 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b5b313bd-2d99-51ea-aa3a-73c1a2868efc', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAR_L1_MP_P1","left":"restaurant","right":"ресторан"},{"id":"TAR_L1_MP_P2","left":"table","right":"столик"},{"id":"TAR_L1_MP_P3","left":"menu","right":"меню"},{"id":"TAR_L1_MP_P4","left":"waiter","right":"официант"},{"id":"TAR_L1_MP_P5","left":"waitress","right":"официантка"},{"id":"TAR_L1_MP_P6","left":"A table for two","right":"Столик на двоих"},{"id":"TAR_L1_MP_P7","left":"Here is the menu","right":"Вот меню"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('c2e1b9bf-110f-5a4e-a839-a521745310e7', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'quiz', 'Проверьте себя', '{"explanation":"A menu lists food and drinks.","instruction":"Выберите правильный ответ.","options":[{"id":"TAR_L1_Q_A","is_correct":true,"text":"The menu"},{"id":"TAR_L1_Q_B","is_correct":false,"text":"The boarding pass"},{"id":"TAR_L1_Q_C","is_correct":false,"text":"The room key"}],"question":"What do you read to choose food?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0f4c5c25-7ab3-538e-87f2-e1b96e521af6', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'translate', 'Переведите', '{"correct_translation":"A table for two, please.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Столик на двоих, пожалуйста.","target_language":"en","word_bank":["please.","two,","for","table","A"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9c30c7b5-a29e-5c3d-9b23-ab6d587cd045', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"menu","instruction":"Выберите подходящее слово.","options":["menu","passport","room"],"sentence_template":"Can I see the ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d1047d7-cd18-5879-8ebb-7bb01a6adf43', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'tap_words', 'Соберите фразу', '{"correct_words":["Here","is","the","menu."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","is","Here","menu."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('1af09040-d681-5297-b57c-aa2630e7276f', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'listening', 'Послушайте', '{"audio_text":"A table for two, please.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('dc9849d7-fa93-523f-a588-bb7819db43e9', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'listening_shadowing', 'Повторите', '{"audio_text":"Good evening. Can we see the menu, please?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Добрый вечер. Можно посмотреть меню, пожалуйста?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('9fbdabb0-6fa6-5d82-8c5b-44f0e3df2302', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Waiter","text":"Good evening. How many people?","translation":"Добрый вечер. Сколько человек?","type":"dialogue"},{"character":"Guest","text":"Two people, please.","translation":"Два человека, пожалуйста.","type":"dialogue"},{"options":[{"is_correct":true,"text":"A table for two."},{"is_correct":false,"text":"A boarding pass."}],"text":"What should the waiter offer?","type":"choice"}],"title":"Entering a Restaurant"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('78f49fae-19b6-5fca-ab3b-1d9055f6842b', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'choose_definition', 'Определение', '{"explanation":"A menu is a list of food and drinks.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAR_L1_D_A","is_correct":true,"text":"A list of food and drinks"},{"id":"TAR_L1_D_B","is_correct":false,"text":"A document used for travel"},{"id":"TAR_L1_D_C","is_correct":false,"text":"A card used in a hotel"}],"word":"menu"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4d0e79d6-05c6-5c87-a519-ea19c4c768c3', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'listen_choose_word', 'Слово', '{"audio_text":"A table for two.","explanation":"The missing number is “two.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"two","id":"TAR_L1_LW_A","is_correct":true},{"audio_text":"gate","id":"TAR_L1_LW_B","is_correct":false},{"audio_text":"room","id":"TAR_L1_LW_C","is_correct":false}],"sentence_template":"A table for ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('4a11638a-e9de-5583-a92a-5ac7f1f48a00', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'missing_word', 'Впишите', '{"correct_answer":"menu","explanation":"The complete sentence is “Here is the menu.”","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Here is the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6526224d-ae5e-5143-91ed-14cb7ca4a26b', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'match_pairs_voice', 'Звук', '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"table","id":"TAR_L1_VM_P1","text":"table"},{"audio_text":"menu","id":"TAR_L1_VM_P2","text":"menu"},{"audio_text":"waiter","id":"TAR_L1_VM_P3","text":"waiter"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6602718e-6628-54c2-b503-26eb29cc3451', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"Here is your table."}],"explanation":"“Thank you” is a natural restaurant reply.","instruction":"Ответьте.","options":[{"id":"TAR_L1_C_A","is_correct":true,"text":"Thank you."},{"id":"TAR_L1_C_B","is_correct":false,"text":"I need a passport."},{"id":"TAR_L1_C_C","is_correct":false,"text":"My room is upstairs."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8db3ef7f-7c2b-5818-aee6-2372df54d597', '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('53019f62-9385-584f-9f2c-0710a2528a90', NULL, 'Заказываем еду', 'Научиться заказывать простую еду и напитки.', 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0a15aa84-2abc-58c6-a34f-c254ecf1fae0', '53019f62-9385-584f-9f2c-0710a2528a90', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAR_L2_MP_P1","left":"water","right":"вода"},{"id":"TAR_L2_MP_P2","left":"tea","right":"чай"},{"id":"TAR_L2_MP_P3","left":"coffee","right":"кофе"},{"id":"TAR_L2_MP_P4","left":"soup","right":"суп"},{"id":"TAR_L2_MP_P5","left":"salad","right":"салат"},{"id":"TAR_L2_MP_P6","left":"chicken","right":"курица"},{"id":"TAR_L2_MP_P7","left":"I would like","right":"Я бы хотел"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('bdd6c43a-d2b5-510c-9490-9525fde71df6', '53019f62-9385-584f-9f2c-0710a2528a90', 'quiz', 'Проверьте себя', '{"explanation":"“I would like...” is a polite way to order.","instruction":"Выберите правильный ответ.","options":[{"id":"TAR_L2_Q_A","is_correct":true,"text":"I would like the soup."},{"id":"TAR_L2_Q_B","is_correct":false,"text":"My soup is a gate."},{"id":"TAR_L2_Q_C","is_correct":false,"text":"Where is the hotel soup?"}],"question":"Which phrase politely orders food?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f39f4975-a1d2-55b6-a805-3d5b10ebde44', '53019f62-9385-584f-9f2c-0710a2528a90', 'translate', 'Переведите', '{"correct_translation":"I would like the salad.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я бы хотел салат.","target_language":"en","word_bank":["salad.","the","like","would","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('7134578c-2aa7-5e8f-84e1-3c5fd2e4f790', '53019f62-9385-584f-9f2c-0710a2528a90', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"water","instruction":"Выберите подходящее слово.","options":["water","passport","key"],"sentence_template":"I would like some ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('43945c0b-d3cf-565e-bfbf-e21aee4cb690', '53019f62-9385-584f-9f2c-0710a2528a90', 'tap_words', 'Соберите фразу', '{"correct_words":["A","coffee,","please."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["coffee,","please.","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('aa66b83c-851f-5407-9a3f-d134001aba86', '53019f62-9385-584f-9f2c-0710a2528a90', 'listening', 'Послушайте', '{"audio_text":"I would like the chicken, please.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('200474e1-a91d-5b42-a6bc-705f364ec9c9', '53019f62-9385-584f-9f2c-0710a2528a90', 'listening_shadowing', 'Повторите', '{"audio_text":"Can I have the soup and a glass of water, please?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Можно мне суп и стакан воды, пожалуйста?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('59ff1351-f52d-51f2-abe1-3166d4ac2566', '53019f62-9385-584f-9f2c-0710a2528a90', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Waiter","text":"Are you ready to order?","translation":"Вы готовы сделать заказ?","type":"dialogue"},{"character":"Guest","text":"Yes. I would like the salad.","translation":"Да. Я бы хотел салат.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Would you like a drink?"},{"is_correct":false,"text":"Where is your flight?"}],"text":"What can the waiter ask next?","type":"choice"}],"title":"Placing an Order"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('af35bb4b-a9f5-5a26-9c94-dffb10221f67', '53019f62-9385-584f-9f2c-0710a2528a90', 'choose_definition', 'Определение', '{"explanation":"To order means to ask for food or drinks.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAR_L2_D_A","is_correct":true,"text":"To ask for food or drinks in a restaurant"},{"id":"TAR_L2_D_B","is_correct":false,"text":"To book a hotel room"},{"id":"TAR_L2_D_C","is_correct":false,"text":"To enter an airplane"}],"word":"order"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f57f3db3-28a7-5beb-b26c-a4a5ac812afa', '53019f62-9385-584f-9f2c-0710a2528a90', 'listen_choose_word', 'Слово', '{"audio_text":"I would like the soup.","explanation":"The missing food is “soup.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"soup","id":"TAR_L2_LW_A","is_correct":true},{"audio_text":"gate","id":"TAR_L2_LW_B","is_correct":false},{"audio_text":"towel","id":"TAR_L2_LW_C","is_correct":false}],"sentence_template":"I would like the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('93361bb1-2224-57ed-bf6d-73a7bcff28ec', '53019f62-9385-584f-9f2c-0710a2528a90', 'missing_word', 'Впишите', '{"correct_answer":"please","explanation":"The complete request is “A coffee, please.”","hint_prefix":"pl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A coffee, ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('0fa1d066-24ef-5c2c-ae50-91dba3d2f476', '53019f62-9385-584f-9f2c-0710a2528a90', 'match_pairs_voice', 'Звук', '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"water","id":"TAR_L2_VM_P1","text":"water"},{"audio_text":"soup","id":"TAR_L2_VM_P2","text":"soup"},{"audio_text":"chicken","id":"TAR_L2_VM_P3","text":"chicken"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('03469f43-4b96-5a23-a17e-e8566d69f9aa', '53019f62-9385-584f-9f2c-0710a2528a90', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"What would you like?"}],"explanation":"This is a polite food order.","instruction":"Ответьте.","options":[{"id":"TAR_L2_C_A","is_correct":true,"text":"I would like the chicken, please."},{"id":"TAR_L2_C_B","is_correct":false,"text":"I have a hotel reservation."},{"id":"TAR_L2_C_C","is_correct":false,"text":"My gate is five."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8db3ef7f-7c2b-5818-aee6-2372df54d597', '53019f62-9385-584f-9f2c-0710a2528a90', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, order_index, created_at, updated_at)
VALUES ('8470e67b-dca6-576c-a616-5e7aa6f3b2c4', NULL, 'Счёт и оплата', 'Научиться попросить счёт и оплатить еду.', 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6a8df641-f4c6-56a8-b857-067e8adec14d', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'match_pairs', 'Соедините пары', '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"TAR_L3_MP_P1","left":"bill","right":"счёт"},{"id":"TAR_L3_MP_P2","left":"pay","right":"платить"},{"id":"TAR_L3_MP_P3","left":"cash","right":"наличные"},{"id":"TAR_L3_MP_P4","left":"card","right":"карта"},{"id":"TAR_L3_MP_P5","left":"tip","right":"чаевые"},{"id":"TAR_L3_MP_P6","left":"The food is good","right":"Еда хорошая"},{"id":"TAR_L3_MP_P7","left":"Can I have the bill?","right":"Можно мне счёт?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('a8bd6a4e-9805-5af1-ad24-914610a42c8c', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'quiz', 'Проверьте себя', '{"explanation":"Ask for the bill when you are ready to pay.","instruction":"Выберите правильный ответ.","options":[{"id":"TAR_L3_Q_A","is_correct":true,"text":"The bill"},{"id":"TAR_L3_Q_B","is_correct":false,"text":"The room key"},{"id":"TAR_L3_Q_C","is_correct":false,"text":"The boarding gate"}],"question":"What do you ask for when you finish eating and want to pay?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('b72fa65a-7644-5d62-9007-fb42f821c31f', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'translate', 'Переведите', '{"correct_translation":"Can I have the bill, please?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Можно мне счёт, пожалуйста?","target_language":"en","word_bank":["please?","bill,","the","have","I","Can"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('082acfbf-1d4f-50f1-a540-c4cb92840f49', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'fill_blank', 'Заполните пропуск', '{"correct_answer":"card","instruction":"Выберите подходящее слово.","options":["card","soup","hotel"],"sentence_template":"Can I pay by ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8488c5ba-e5f6-5e33-8b06-566525eaf7f4', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'tap_words', 'Соберите фразу', '{"correct_words":["The","food","is","good."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["food","good.","is","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('f0ccb545-36ec-5ef3-99fa-f5953cf62176', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'listening', 'Послушайте', '{"audio_text":"Can I have the bill, please?","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('cedf2f18-89cc-5d2d-8ad4-b6f3413368b0', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'listening_shadowing', 'Повторите', '{"audio_text":"The food was very good. Can I pay by card?","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Еда была очень хорошей. Можно оплатить картой?"}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('8c36d49f-ee4e-5f07-8a25-94d4d9631cfe', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'story', 'История', '{"instruction":"Прочитайте историю.","scenes":[{"character":"Guest","text":"Can I have the bill, please?","translation":"Можно мне счёт, пожалуйста?","type":"dialogue"},{"character":"Waiter","text":"Of course. Here you are.","translation":"Конечно. Вот, пожалуйста.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Can I pay by card?"},{"is_correct":false,"text":"Where is gate two?"}],"text":"What should the guest ask?","type":"choice"}],"title":"After the Meal"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('5362ce37-f727-578a-86ec-1d69a011c446', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'choose_definition', 'Определение', '{"explanation":"A tip is extra money given for service.","instruction":"Выберите значение.","language":"en","options":[{"id":"TAR_L3_D_A","is_correct":true,"text":"Extra money given for service"},{"id":"TAR_L3_D_B","is_correct":false,"text":"The total amount on the bill"},{"id":"TAR_L3_D_C","is_correct":false,"text":"A list of food and drinks"}],"word":"tip"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('3e194f4c-0b1e-5b43-ae4e-ce1c49012c51', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'listen_choose_word', 'Слово', '{"audio_text":"Can I pay by cash?","explanation":"The missing payment method is “cash.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cash","id":"TAR_L3_LW_A","is_correct":true},{"audio_text":"menu","id":"TAR_L3_LW_B","is_correct":false},{"audio_text":"room","id":"TAR_L3_LW_C","is_correct":false}],"sentence_template":"Can I pay by ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('35d1c2b4-b0b8-5b59-9b90-ad887480d94f', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'missing_word', 'Впишите', '{"correct_answer":"bill","explanation":"The complete question is “Can I have the bill?”","hint_prefix":"bi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can I have the ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('16ec5e62-1807-565a-a1c7-0fd754b68ed7', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'match_pairs_voice', 'Звук', '{"explanation":"Match each travel phrase you hear with the same written English phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"bill","id":"TAR_L3_VM_P1","text":"bill"},{"audio_text":"cash","id":"TAR_L3_VM_P2","text":"cash"},{"audio_text":"card","id":"TAR_L3_VM_P3","text":"card"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, content, order_index, created_at, updated_at)
VALUES ('6d17db90-c102-54c3-a688-41ae849887a2', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 'complete_chat', 'Диалог', '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"Here is your bill."}],"explanation":"This is a natural response when paying at a restaurant.","instruction":"Ответьте.","options":[{"id":"TAR_L3_C_A","is_correct":true,"text":"Thank you. Can I pay by card?"},{"id":"TAR_L3_C_B","is_correct":false,"text":"I need a boarding pass."},{"id":"TAR_L3_C_C","is_correct":false,"text":"My room has a bed."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8db3ef7f-7c2b-5818-aee6-2372df54d597', '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a55cef8-2c67-5269-b677-31616bbc26d9', 'en', 'restaurant', 'ресторан', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59133b4a-606c-554e-9842-6d608aa8b8ef', 'en', 'table', 'столик', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae6ee5b9-be49-5709-8c63-9a020f7a8e8e', 'en', 'menu', 'меню', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f19dcdc4-184a-504c-9796-8f82b71800e0', 'en', 'waiter', 'официант', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e934dfc4-e3c7-59f3-95af-0952550f3fea', 'en', 'waitress', 'официантка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0171e906-d223-5da4-82dd-acbb4ab35856', 'en', 'A table for two', 'Столик на двоих', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b745f877-769a-5c78-85ee-3885b30c25f9', 'en', 'Here is the menu', 'Вот меню', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8fda92cb-44de-5dbd-a2b6-b8741952b655', 'en', 'water', 'вода', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('79118c55-945c-56d9-9329-0cf06fb939b8', 'en', 'tea', 'чай', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('df92c2a6-ae3b-5820-adf7-fc85d3d9b6aa', 'en', 'coffee', 'кофе', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('02936db0-cdc6-574d-9d2a-7760a50780c5', 'en', 'soup', 'суп', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bc52ef5d-993f-5230-bc88-cf3862c37745', 'en', 'salad', 'салат', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f66a087d-f2d7-5482-a289-682b108dbdfc', 'en', 'chicken', 'курица', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('115806c2-4b85-5fe6-9bd3-c80785f0df02', 'en', 'I would like', 'Я бы хотел', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
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
VALUES ('e1293a25-60a1-5eca-9cb8-1855c1065eaa', 'en', 'tip', 'чаевые', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2a36c40a-08fc-59e0-84fa-6f4232f69935', 'en', 'The food is good', 'Еда хорошая', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9535f5c9-d931-575a-92f0-b2d27c3e4b6a', 'en', 'Can I have the bill?', 'Можно мне счёт?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'restaurant' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'table' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'menu' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'waiter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'waitress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'A table for two' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '21144084-a4da-5c9a-8bf9-e8394ba9f19a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'Here is the menu' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'water' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'tea' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'coffee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'soup' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'salad' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'chicken' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '53019f62-9385-584f-9f2c-0710a2528a90', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'I would like' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'pay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cash' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'The food is good' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8db3ef7f-7c2b-5818-aee6-2372df54d597', id, '8470e67b-dca6-576c-a616-5e7aa6f3b2c4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Can I have the bill?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
