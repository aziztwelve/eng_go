-- Track: A1_BUSINESS_ENGLISH_ORDERS_AND_DELIVERIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3c1487bb-54c6-5051-aa2e-f29ca226d317', 'A1_BUSINESS_ENGLISH_ORDERS_AND_DELIVERIES', 'Заказы и доставка', 'Научитесь оформлять простой заказ, подтверждать детали и обсуждать доставку.', '{"en":"Orders and Deliveries","ru":"Заказы и доставка"}'::jsonb, '{"en":"Learn to place a simple order, confirm details, and discuss delivery.","ru":"Научитесь оформлять простой заказ, подтверждать детали и обсуждать доставку."}'::jsonb, 'en', 'A1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7d03bf3e-30dc-5cc8-b921-d18ede2ff793', NULL, 'Оформляем заказ', 'Научиться использовать простые деловые фразы по теме «Оформляем заказ».', '{"en":"Placing an Order","ru":"Оформляем заказ"}'::jsonb, '{"en":"Learn to use simple business phrases for placing an order.","ru":"Научиться использовать простые деловые фразы по теме «Оформляем заказ»."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2d5d5a5-5645-58f5-8715-8d1dec1ded2a', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEOAD_L1_MP_P1","left":"order","right":"заказ"},{"id":"BEOAD_L1_MP_P2","left":"item","right":"товар"},{"id":"BEOAD_L1_MP_P3","left":"quantity","right":"количество"},{"id":"BEOAD_L1_MP_P4","left":"order form","right":"форма заказа"},{"id":"BEOAD_L1_MP_P5","left":"place an order","right":"оформить заказ"},{"id":"BEOAD_L1_MP_P6","left":"product code","right":"код товара"},{"id":"BEOAD_L1_MP_P7","left":"We need ten boxes","right":"Нам нужно десять коробок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('92cc19c9-4a58-567c-8f32-24a60f121a8e', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “order.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEOAD_L1_Q_A","is_correct":true,"text":"order"},{"id":"BEOAD_L1_Q_B","is_correct":false,"text":"item"},{"id":"BEOAD_L1_Q_C","is_correct":false,"text":"quantity"}],"question":"Which phrase is connected with “order”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa0d9ee7-cff6-5366-8b96-6bf575a9e845', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I would like to place an order.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Я хочу оформить заказ.","target_language":"en","word_bank":["order.","an","place","to","like","would","I"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21d40338-6e2b-5906-8aed-290579e3e65e', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"boxes","instruction":"Выберите подходящее слово.","options":["boxes","meetings","calls"],"sentence_template":"We need ten ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7eacf8d-8ce1-5437-bef1-edb5cfd161c8', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","need","ten","boxes."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["boxes.","ten","need","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45695f83-102b-50cd-9480-577478408eec', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I would like to order ten boxes of paper.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13bb468d-19f7-5542-a94e-abb1fb072ce1', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I would like to place an order.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Я хочу оформить заказ."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04ee9c01-a825-5537-a24e-2fd8a595f0be', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Salesperson","text":"How many boxes do you need?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"We need ten boxes.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We need ten boxes."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Placing an Order"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14ef2b7d-c021-5378-a1ea-31ca9ab21f7d', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“order” means a request to buy products or services.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEOAD_L1_D_A","is_correct":true,"text":"A request to buy products or services"},{"id":"BEOAD_L1_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEOAD_L1_D_C","is_correct":false,"text":"A type of food"}],"word":"order"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c038476b-c2a2-5672-bbad-e3abeb4d28c5', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We need ten boxes.","explanation":"The missing word is “boxes.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"boxes","id":"BEOAD_L1_LW_A","is_correct":true},{"audio_text":"meetings","id":"BEOAD_L1_LW_B","is_correct":false},{"audio_text":"calls","id":"BEOAD_L1_LW_C","is_correct":false}],"sentence_template":"We need ten ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4a67f2f-2c3b-5a71-9f96-8a84e12d68de', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"boxes","explanation":"The complete sentence is “We need ten boxes.”","hint_prefix":"bo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We need ten ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('638186c7-2ac4-5e5f-a179-014323041dca', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"order","id":"BEOAD_L1_VM_P1","text":"order"},{"audio_text":"item","id":"BEOAD_L1_VM_P2","text":"item"},{"audio_text":"quantity","id":"BEOAD_L1_VM_P3","text":"quantity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49ca8062-ade0-53f6-9282-3ec9ce3604d3', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Salesperson","text":"How many boxes do you need?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEOAD_L1_C_A","is_correct":true,"text":"We need ten boxes."},{"id":"BEOAD_L1_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEOAD_L1_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3c1487bb-54c6-5051-aa2e-f29ca226d317', '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('054bdc76-f9c7-598b-84ac-c65d9dd6059c', NULL, 'Подтверждаем заказ', 'Научиться использовать простые деловые фразы по теме «Подтверждаем заказ».', '{"en":"Confirming an Order","ru":"Подтверждаем заказ"}'::jsonb, '{"en":"Learn to use simple business phrases for confirming an order.","ru":"Научиться использовать простые деловые фразы по теме «Подтверждаем заказ»."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e227db9-1488-5cba-a056-a3606472b9c7', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEOAD_L2_MP_P1","left":"confirm","right":"подтвердить"},{"id":"BEOAD_L2_MP_P2","left":"details","right":"детали"},{"id":"BEOAD_L2_MP_P3","left":"correct","right":"правильный"},{"id":"BEOAD_L2_MP_P4","left":"address","right":"адрес"},{"id":"BEOAD_L2_MP_P5","left":"quantity","right":"количество"},{"id":"BEOAD_L2_MP_P6","left":"price","right":"цена"},{"id":"BEOAD_L2_MP_P7","left":"Is that correct?","right":"Всё верно?"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('853a63d4-e722-5709-83bc-0825a95ba329', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “confirm.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEOAD_L2_Q_A","is_correct":true,"text":"confirm"},{"id":"BEOAD_L2_Q_B","is_correct":false,"text":"details"},{"id":"BEOAD_L2_Q_C","is_correct":false,"text":"correct"}],"question":"Which phrase is connected with “confirm”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3edf5aa6-3380-5062-a4a1-4298a9a7dba3', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Please confirm the address.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Пожалуйста, подтвердите адрес.","target_language":"en","word_bank":["address.","the","confirm","Please"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1fab025-5f4f-59b6-ab88-ace4f7b610a7', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"correct","instruction":"Выберите подходящее слово.","options":["correct","available","late"],"sentence_template":"Is the quantity ___?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8996c5bb-993e-5185-a3de-8d7b34a1b04e', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Is","the","quantity","correct?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["correct?","quantity","the","Is"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3112d1cc-ceb0-54e9-bea1-cf33ae155fdc', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Your order is for twenty items at five dollars each.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2aca1834-e3ae-5527-a16a-eaf1568ec01b', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Please confirm the address.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Пожалуйста, подтвердите адрес."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0039495-9cde-56e6-87f9-d9d5baa15f24', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Assistant","text":"Is the delivery address correct?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"Yes, that is correct.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, that is correct."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Confirming an Order"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd38a4fc-284a-5ed3-a94d-6bf0fdd8d977', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“confirm” means to state that information is correct.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEOAD_L2_D_A","is_correct":true,"text":"To state that information is correct"},{"id":"BEOAD_L2_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEOAD_L2_D_C","is_correct":false,"text":"A type of food"}],"word":"confirm"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07b69328-cb3c-5af5-a9b0-8ae0534092e6', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Is the quantity correct?","explanation":"The missing word is “correct.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"correct","id":"BEOAD_L2_LW_A","is_correct":true},{"audio_text":"available","id":"BEOAD_L2_LW_B","is_correct":false},{"audio_text":"late","id":"BEOAD_L2_LW_C","is_correct":false}],"sentence_template":"Is the quantity ___?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('714cabc2-739b-5e4f-8740-47e77725db7b', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"correct","explanation":"The complete sentence is “Is the quantity correct?”","hint_prefix":"co","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Is the quantity ___?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24634853-2844-5ae7-8308-efcdb95a0a53', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"confirm","id":"BEOAD_L2_VM_P1","text":"confirm"},{"audio_text":"details","id":"BEOAD_L2_VM_P2","text":"details"},{"audio_text":"correct","id":"BEOAD_L2_VM_P3","text":"correct"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef85fc9-c6b5-5dc3-900a-28f7d64ef3fe', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"Is the delivery address correct?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEOAD_L2_C_A","is_correct":true,"text":"Yes, that is correct."},{"id":"BEOAD_L2_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEOAD_L2_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3c1487bb-54c6-5051-aa2e-f29ca226d317', '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('721eedac-e4d0-5d0d-b022-2da286924d83', NULL, 'Детали доставки', 'Научиться использовать простые деловые фразы по теме «Детали доставки».', '{"en":"Delivery Details","ru":"Детали доставки"}'::jsonb, '{"en":"Learn to use simple business phrases for delivery details.","ru":"Научиться использовать простые деловые фразы по теме «Детали доставки»."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f73c666-5a09-5c1a-b8a2-9a144d8601b4', '721eedac-e4d0-5d0d-b022-2da286924d83', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"BEOAD_L3_MP_P1","left":"delivery","right":"доставка"},{"id":"BEOAD_L3_MP_P2","left":"driver","right":"водитель"},{"id":"BEOAD_L3_MP_P3","left":"address","right":"адрес"},{"id":"BEOAD_L3_MP_P4","left":"arrive","right":"прибыть"},{"id":"BEOAD_L3_MP_P5","left":"today","right":"сегодня"},{"id":"BEOAD_L3_MP_P6","left":"tomorrow","right":"завтра"},{"id":"BEOAD_L3_MP_P7","left":"delivery time","right":"время доставки"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cc80e64-55d3-5ce3-8571-7144f34e8163', '721eedac-e4d0-5d0d-b022-2da286924d83', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “delivery.”","instruction":"Выберите правильный ответ.","options":[{"id":"BEOAD_L3_Q_A","is_correct":true,"text":"delivery"},{"id":"BEOAD_L3_Q_B","is_correct":false,"text":"driver"},{"id":"BEOAD_L3_Q_C","is_correct":false,"text":"address"}],"question":"Which phrase is connected with “delivery”?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e4914b40-601a-5edd-80b5-6c21dab7f154', '721eedac-e4d0-5d0d-b022-2da286924d83', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The delivery will arrive tomorrow.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Доставка прибудет завтра.","target_language":"en","word_bank":["tomorrow.","arrive","will","delivery","The"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cb5a06d-be78-513e-a881-1f86d841f82d', '721eedac-e4d0-5d0d-b022-2da286924d83', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"arrive","instruction":"Выберите подходящее слово.","options":["arrive","discount","print"],"sentence_template":"The driver will ___ at ten."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('038f259c-a598-57f4-bfad-dbbd5c40b1b8', '721eedac-e4d0-5d0d-b022-2da286924d83', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","driver","will","arrive","at","ten."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["ten.","at","arrive","will","driver","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e818f07-e3ce-54ef-8e08-95c3c3a7d042', '721eedac-e4d0-5d0d-b022-2da286924d83', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Your delivery will arrive tomorrow morning.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e660457f-3b5d-500e-a6e0-72a16e3751b0', '721eedac-e4d0-5d0d-b022-2da286924d83', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The delivery will arrive tomorrow.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.7,"translation_hint":"Доставка прибудет завтра."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98356c8d-ea5d-5064-b464-18d86171448b', '721eedac-e4d0-5d0d-b022-2da286924d83', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Customer","text":"When will the order arrive?","translation":"Деловой вопрос.","type":"dialogue"},{"character":"You","text":"It will arrive tomorrow.","translation":"Деловой ответ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"It will arrive tomorrow."},{"is_correct":false,"text":"I do not know this place."}],"text":"What is the natural response?","type":"choice"}],"title":"Delivery Details"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df99e558-dd4a-5657-8e9e-adf31047dbb8', '721eedac-e4d0-5d0d-b022-2da286924d83', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“delivery” means the act of bringing products to a customer.","instruction":"Выберите значение.","language":"en","options":[{"id":"BEOAD_L3_D_A","is_correct":true,"text":"The act of bringing products to a customer"},{"id":"BEOAD_L3_D_B","is_correct":false,"text":"A day of the week"},{"id":"BEOAD_L3_D_C","is_correct":false,"text":"A type of food"}],"word":"delivery"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50572510-b224-5717-8e77-3e31e7a67fdd', '721eedac-e4d0-5d0d-b022-2da286924d83', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The driver will arrive at ten.","explanation":"The missing word is “arrive.”","instruction":"Слушайте.","language":"en","options":[{"audio_text":"arrive","id":"BEOAD_L3_LW_A","is_correct":true},{"audio_text":"discount","id":"BEOAD_L3_LW_B","is_correct":false},{"audio_text":"print","id":"BEOAD_L3_LW_C","is_correct":false}],"sentence_template":"The driver will ___ at ten."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b459d43e-827e-59c1-a985-f7c46b8a5e64', '721eedac-e4d0-5d0d-b022-2da286924d83', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"arrive","explanation":"The complete sentence is “The driver will arrive at ten.”","hint_prefix":"ar","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The driver will ___ at ten."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b50d694-6b84-5617-b534-c9730854b215', '721eedac-e4d0-5d0d-b022-2da286924d83', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each business phrase with the same written phrase.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"delivery","id":"BEOAD_L3_VM_P1","text":"delivery"},{"audio_text":"driver","id":"BEOAD_L3_VM_P2","text":"driver"},{"audio_text":"address","id":"BEOAD_L3_VM_P3","text":"address"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8bcd0549-80d9-5de7-9a38-69dad9b9d98b', '721eedac-e4d0-5d0d-b022-2da286924d83', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Customer","text":"When will the order arrive?"}],"explanation":"The first option is the natural business response.","instruction":"Ответьте.","options":[{"id":"BEOAD_L3_C_A","is_correct":true,"text":"It will arrive tomorrow."},{"id":"BEOAD_L3_C_B","is_correct":false,"text":"It is a sunny day."},{"id":"BEOAD_L3_C_C","is_correct":false,"text":"My family is at home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3c1487bb-54c6-5051-aa2e-f29ca226d317', '721eedac-e4d0-5d0d-b022-2da286924d83', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c41c3f90-be0a-5a93-a241-79a4038c81b5', 'en', 'order', 'заказ', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f5d75dc-643f-55c9-a0f0-5dbe7407d293', 'en', 'item', 'товар', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4867a29-e293-5d5d-95cf-06004ca67ebc', 'en', 'quantity', 'количество', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2adf4acb-1a21-5733-87f6-9894f1e4067c', 'en', 'order form', 'форма заказа', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6f771df0-a508-527a-833c-ddfc319fa62b', 'en', 'place an order', 'оформить заказ', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a453f24-d0e1-50f5-8d0d-1daca10cad00', 'en', 'product code', 'код товара', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6327a5e6-8083-509c-8261-c9db62c2bf5f', 'en', 'We need ten boxes', 'Нам нужно десять коробок', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72d9effe-e72a-5fe9-b51b-b5bd1454d5ea', 'en', 'details', 'детали', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fc713832-5a89-59d6-b762-94e39781576a', 'en', 'correct', 'правильный', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9bc6c78-f5d9-51ba-9023-aef3ffa96308', 'en', 'address', 'адрес', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4867a29-e293-5d5d-95cf-06004ca67ebc', 'en', 'quantity', 'количество', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('310c3d46-489c-5625-8277-15295f6aabf0', 'en', 'price', 'цена', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97d440eb-05da-5023-a439-8f3d832cf5da', 'en', 'Is that correct?', 'Всё верно?', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('873995c0-95eb-58db-b994-d7ce7100c306', 'en', 'delivery', 'доставка', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb635c7e-dbc5-5b39-ba1c-50895b5840f2', 'en', 'driver', 'водитель', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9bc6c78-f5d9-51ba-9023-aef3ffa96308', 'en', 'address', 'адрес', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2970c9da-d0dd-5a18-a1c6-b239c773ac56', 'en', 'arrive', 'прибыть', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f63596fa-e1a7-596d-839b-65eddde8d504', 'en', 'today', 'сегодня', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d87e567-9d2d-55d9-ba3e-587332645ba9', 'en', 'tomorrow', 'завтра', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6ade45d-3e54-5149-aaa3-4e23e56e72ab', 'en', 'delivery time', 'время доставки', 'ru', 'A1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'item' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'quantity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'order form' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'place an order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'product code' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '7d03bf3e-30dc-5cc8-b921-d18ede2ff793', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'We need ten boxes' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'details' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'correct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'address' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'quantity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'price' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '054bdc76-f9c7-598b-84ac-c65d9dd6059c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'Is that correct?' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'driver' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'address' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'arrive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'today' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'tomorrow' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c1487bb-54c6-5051-aa2e-f29ca226d317', id, '721eedac-e4d0-5d0d-b022-2da286924d83', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
