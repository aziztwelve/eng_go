-- Track: A2_BUSINESS_ENGLISH_ORDERS_DELIVERIES_AND_FOLLOW_UP. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('37d90fac-72ba-5954-b570-ce3b017537c1', 'A2_BUSINESS_ENGLISH_ORDERS_DELIVERIES_AND_FOLLOW_UP', 'Заказы, доставки и последующие действия', 'Развивайте деловой английский уровня A2 по теме «Заказы, доставки и последующие действия».', '{"en":"Orders, Deliveries and Follow-up","ru":"Заказы, доставки и последующие действия"}'::jsonb, '{"en":"Develop A2 business English for orders, deliveries and follow-up.","ru":"Развивайте деловой английский уровня A2 по теме «Заказы, доставки и последующие действия»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5837623b-8cd6-586d-8e3a-9b153d38e285', NULL, 'Что случилось с заказом', 'Сообщить о статусе заказа, используя past simple и present perfect.', '{"en":"What Happened to the Order","ru":"Что случилось с заказом"}'::jsonb, '{"en":"Report an order status using past simple and present perfect.","ru":"Сообщить о статусе заказа, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a996cfa5-e024-520d-86ee-339f4ea60fda', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"purchase order","right":"заказ на закупку"},{"id":"P2","left":"to dispatch","right":"отправить (товар)"},{"id":"P3","left":"tracking number","right":"трек-номер"},{"id":"P4","left":"out of stock","right":"нет на складе"},{"id":"P5","left":"partial delivery","right":"частичная доставка"},{"id":"P6","left":"to arrive","right":"прибыть"},{"id":"P7","left":"invoice","right":"счёт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa337eb3-f340-57c8-adcd-c5185ad874f5', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Half of the order has already arrived at the warehouse.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Half of the order has already arrived at the warehouse."},{"id":"Q_B","is_correct":false,"text":"Half of the order has arrived yesterday."},{"id":"Q_C","is_correct":false,"text":"Half of the order arrive already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b10c1e3-00e7-5a69-8da5-1d320722a958', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We dispatched the order on Friday, but half of the items were out of stock.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы отправили заказ в пятницу, но половина позиций была не на складе.","target_language":"en","word_bank":["order","of","the","the","We","yesterday","on","half","of","items","but","were","stock.","Friday,","out","did","dispatch","dispatched"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a78e542d-bad9-5cc2-8815-ddcd03d9dfb9', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"sent","instruction":"Выберите подходящее слово.","options":["sent","has send","sending"],"sentence_template":"The supplier ___ us the tracking number two days ago.","translation_hint":"Поставщик прислал трек-номер два дня назад."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6366b08-dfcd-5fcc-99b3-66a32c6c0b18', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","remaining","items","have","left","the","warehouse","this","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","have","warehouse","items","The","did","remaining","morning.","this","left","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0bd2f76-f77b-5384-9b86-98c21eedc7d9', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The first delivery has arrived, but the invoice has not come yet, so accounting cannot close the month.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01906648-adbc-5168-83e7-1efc5ad7fe2f', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The first delivery has arrived, but the invoice has not come yet, so accounting cannot close the month.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Первая поставка пришла, но счёт ещё не пришёл, поэтому бухгалтерия не может закрыть месяц."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c557a05c-d7b4-58b4-a399-eee83473edca', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Client","text":"We ordered fifty chairs, but only twenty arrived.","translation":"Мы заказали пятьдесят стульев, а пришло только двадцать.","type":"dialogue"},{"character":"Anna","text":"You are right. The rest were out of stock at that moment.","translation":"Вы правы. Остальных не было на складе в тот момент.","type":"dialogue"},{"options":[{"is_correct":true,"text":"When are the other thirty going to arrive?"},{"is_correct":false,"text":"When did the other thirty arrived tomorrow?"},{"is_correct":false,"text":"Are the chairs ordering themselves?"}],"text":"What does the client ask?","type":"choice"}],"title":"The Partial Delivery"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26714893-acf0-52d6-9afe-4e543e0e39b3', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“out of stock” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Not available to buy or order at the moment"},{"id":"D_B","is_correct":false,"text":"Ready to send from the warehouse today"},{"id":"D_C","is_correct":false,"text":"Delivered last week without problems"}],"word":"out of stock"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a353d11e-4369-5160-9ddd-b7010ee98da4', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The rest of the order has left the warehouse.","explanation":"The missing word is “left”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"left","id":"LW_A","is_correct":true},{"audio_text":"leave","id":"LW_B","is_correct":false},{"audio_text":"leaving","id":"LW_C","is_correct":false}],"sentence_template":"The rest of the order has ___ the warehouse."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87d0ec56-d19b-58ec-bb3c-bc34b0f81cd9', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"invoice","explanation":"The complete sentence is “Have you received the invoice for order 512?”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Have you received the ___ for order 512?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7db23a68-f445-5336-b915-2d8c0a9ff453', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"purchase order","id":"V1","text":"purchase order"},{"audio_text":"to dispatch","id":"V2","text":"to dispatch"},{"audio_text":"tracking number","id":"V3","text":"tracking number"},{"audio_text":"out of stock","id":"V4","text":"out of stock"},{"audio_text":"partial delivery","id":"V5","text":"partial delivery"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9f818d4-2941-5c1c-9b0a-02dc4cbceede', '5837623b-8cd6-586d-8e3a-9b153d38e285', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did the replacement items arrive?"}],"explanation":"“Yes, they arrived today, and I have already checked them against the invoice.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, they arrived today, and I have already checked them against the invoice."},{"id":"C_B","is_correct":false,"text":"Yes, they arrive tomorrow morning."},{"id":"C_C","is_correct":false,"text":"The items are checking themselves."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('37d90fac-72ba-5954-b570-ce3b017537c1', '5837623b-8cd6-586d-8e3a-9b153d38e285', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5a66c1d7-7fde-52d2-939b-1f22c7207c44', NULL, 'Следующий заказ', 'Спланировать будущие заказы и сравнить условия доставки.', '{"en":"The Next Order","ru":"Следующий заказ"}'::jsonb, '{"en":"Plan future orders and compare delivery terms.","ru":"Спланировать будущие заказы и сравнить условия доставки."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc987043-9410-5784-8823-fb94b3f9ad52', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to place an order","right":"разместить заказ"},{"id":"P2","left":"delivery time","right":"срок доставки"},{"id":"P3","left":"faster","right":"быстрее"},{"id":"P4","left":"cheaper","right":"дешевле"},{"id":"P5","left":"minimum order","right":"минимальный заказ"},{"id":"P6","left":"to expect","right":"ожидать"},{"id":"P7","left":"in total","right":"всего"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b83b0fe5-e78c-5dff-b907-f080e2219abb', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Express delivery is faster but more expensive.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Express delivery is faster but more expensive."},{"id":"Q_B","is_correct":false,"text":"Express delivery is more fast but expensiver."},{"id":"Q_C","is_correct":false,"text":"Express delivery is fastest but most cheap."}],"question":"Which sentence compares delivery options correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f7859cd-cde4-5e90-b7d8-5705352858c0', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to place a larger order because the delivery works out cheaper that way.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся разместить более крупный заказ, потому что так доставка выходит дешевле.","target_language":"en","word_bank":["yesterday","to","because","way.","placed","order","out","the","We","larger","delivery","a","that","works","going","cheaper","are","did","place"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f00b424-639c-5ab0-8f5d-94207cbc8c37', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"in","instruction":"Выберите подходящее слово.","options":["in","at","on"],"sentence_template":"The minimum order is fifty units ___ total.","translation_hint":"Минимальный заказ — пятьдесят единиц в сумме."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4acca41-2a9a-5b88-9ef6-f7ba0d8f0e81', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","order","twice","a","month","instead","of","every","week."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["a","twice","instead","was","did","week.","We","to","order","are","every","going","of","month"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('293414ab-7a52-5116-ac76-f591117d8f36', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we place the order before noon, the goods will leave the warehouse today.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d20c16db-3fe3-5f19-9538-2510fd6a48c5', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we place the order before noon, the goods will leave the warehouse today.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если разместить заказ до полудня, товар покинет склад сегодня же."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d557c10-aa1a-5210-a45a-19d0682d1776', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Supplier","text":"We can offer standard delivery in five days or express in two.","translation":"Мы можем предложить стандартную доставку за пять дней или экспресс за два.","type":"dialogue"},{"character":"Tom","text":"How much more expensive is the express option?","translation":"Насколько экспресс дороже?","type":"dialogue"},{"options":[{"is_correct":true,"text":"It costs thirty percent more, but it is three days faster."},{"is_correct":false,"text":"It costs thirty percent more yesterday."},{"is_correct":false,"text":"The delivery is ordering itself faster."}],"text":"What does the supplier say?","type":"choice"}],"title":"Two Delivery Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f159ba9a-13fd-565d-a0f0-961c84af7cd1', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to place an order” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To officially ask a company to send goods"},{"id":"D_B","is_correct":false,"text":"To cancel an order that has not arrived"},{"id":"D_C","is_correct":false,"text":"To return goods to the shop"}],"word":"to place an order"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57100de8-c264-549b-890e-31f8fecede38', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to place a bigger order.","explanation":"The missing word is “place”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"place","id":"LW_A","is_correct":true},{"audio_text":"placed","id":"LW_B","is_correct":false},{"audio_text":"placing","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ a bigger order."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('846b1aac-901c-5c2c-8dd2-764d27f8f353', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"quicker","explanation":"The complete sentence is “Express delivery is quicker than standard.”.","hint_prefix":"qu","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Express delivery is ___ than standard."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19f73762-52a4-5f9e-b06d-3defa6247e58', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to place an order","id":"V1","text":"to place an order"},{"audio_text":"delivery time","id":"V2","text":"delivery time"},{"audio_text":"faster","id":"V3","text":"faster"},{"audio_text":"cheaper","id":"V4","text":"cheaper"},{"audio_text":"minimum order","id":"V5","text":"minimum order"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ac23fae-5175-53e4-b4d3-b55ea2a3be00', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Should we order the smaller pack?"}],"explanation":"“No — if we order the large one, the price per unit will be ten percent lower.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No — if we order the large one, the price per unit will be ten percent lower."},{"id":"C_B","is_correct":false,"text":"We ordered it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The pack is ordering us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('37d90fac-72ba-5954-b570-ce3b017537c1', '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c066a39e-b299-5197-b023-310d362416c6', NULL, 'Если поставка задержится', 'Обсудить задержки поставки, используя should и первое условное.', '{"en":"If the Delivery Is Late","ru":"Если поставка задержится"}'::jsonb, '{"en":"Discuss delivery delays using should and the first conditional.","ru":"Обсудить задержки поставки, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a9ac6be-3f45-5f36-a105-e73753efc469', 'c066a39e-b299-5197-b023-310d362416c6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"delay","right":"задержка"},{"id":"P2","left":"to notify","right":"уведомить"},{"id":"P3","left":"immediately","right":"немедленно"},{"id":"P4","left":"to run out of","right":"закончиться (о запасах)"},{"id":"P5","left":"stock level","right":"уровень запасов"},{"id":"P6","left":"to plan ahead","right":"планировать заранее"},{"id":"P7","left":"alternative supplier","right":"альтернативный поставщик"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ea6b80e-2e1e-5e3b-bdfa-3c2dcfa9ff3c', 'c066a39e-b299-5197-b023-310d362416c6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The supplier should notify us about delays immediately.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The supplier should notify us about delays immediately."},{"id":"Q_B","is_correct":false,"text":"The supplier should to notify us yesterday."},{"id":"Q_C","is_correct":false,"text":"The supplier must notifying us last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df152e2c-1ce5-52b1-bff5-bb05d7be75e5', 'c066a39e-b299-5197-b023-310d362416c6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the supplier delays the delivery, we will run out of stock by Friday.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если поставщик задержит доставку, мы закончим запасы к пятнице.","target_language":"en","word_bank":["stock","we","did","of","yesterday","delivery,","supplier","delayed","the","out","Friday.","the","run","will","delays","by","If"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('025a28a4-bcfc-5726-847e-9d0af8874d35', 'c066a39e-b299-5197-b023-310d362416c6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"gets","instruction":"Выберите подходящее слово.","options":["gets","will get","got"],"sentence_template":"If stock ___ too low, we will lose orders.","translation_hint":"Если запасов станет слишком мало, мы потеряем заказы."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f3414b6-9026-563a-90b3-03c3b4436de6', 'c066a39e-b299-5197-b023-310d362416c6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","keep","stock","levels","higher","in","the","busy","season."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["in","should","the","went","season.","mustn''t","levels","stock","busy","higher","keep","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('590f19e2-acd0-55f8-8e8c-9ab3eebd7428', 'c066a39e-b299-5197-b023-310d362416c6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the main supplier is late again, we should contact the alternative supplier the same day.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2db29ccf-794c-50d0-9b23-08c9be5b2aa1', 'c066a39e-b299-5197-b023-310d362416c6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the main supplier is late again, we should contact the alternative supplier the same day.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если основной поставщик снова задержит, стоит в тот же день связаться с запасным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6669964-d4c2-5c7e-9963-63a6659ac94b', 'c066a39e-b299-5197-b023-310d362416c6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The delivery has not arrived, and it was due yesterday.","translation":"Поставка не пришла, хотя её ждали ещё вчера.","type":"dialogue"},{"character":"Tom","text":"Have they told us why?","translation":"Они сказали почему?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If it does not come today, the production line will stop tomorrow."},{"is_correct":false,"text":"If it will not come, the line stopped yesterday."},{"is_correct":false,"text":"The delivery is stopping itself."}],"text":"What is the risk?","type":"choice"}],"title":"The Monday Delay"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d3bf9a1-62f1-5bd4-92bf-d8c416827d1e', 'c066a39e-b299-5197-b023-310d362416c6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to run out of” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To have no more of something left"},{"id":"D_B","is_correct":false,"text":"To order a large quantity of goods"},{"id":"D_C","is_correct":false,"text":"To check the quality of a delivery"}],"word":"to run out of"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19c3c8ae-72fb-503f-bb7d-59d62a485b4d', 'c066a39e-b299-5197-b023-310d362416c6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If we run out of packaging, orders will stop.","explanation":"The missing word is “run out”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"run out","id":"LW_A","is_correct":true},{"audio_text":"will run out","id":"LW_B","is_correct":false},{"audio_text":"ran out","id":"LW_C","is_correct":false}],"sentence_template":"If we ___ of packaging, orders will stop."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c5385aa-5e55-5988-8bab-d875084fc6fe', 'c066a39e-b299-5197-b023-310d362416c6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “The supplier should notify us in advance.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The supplier should notify us ___ advance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad38dcb9-3b61-59bf-bbe7-5e7744cf5423', 'c066a39e-b299-5197-b023-310d362416c6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"delay","id":"V1","text":"delay"},{"audio_text":"to notify","id":"V2","text":"to notify"},{"audio_text":"immediately","id":"V3","text":"immediately"},{"audio_text":"to run out of","id":"V4","text":"to run out of"},{"audio_text":"stock level","id":"V5","text":"stock level"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2fac8ea-9c61-5174-93bc-51b0dafeeabf', 'c066a39e-b299-5197-b023-310d362416c6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The supplier is late again."}],"explanation":"“We should plan ahead — if we keep a buffer stock, a delay will not stop us.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We should plan ahead — if we keep a buffer stock, a delay will not stop us."},{"id":"C_B","is_correct":false,"text":"We planned it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The delay is stocking us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('37d90fac-72ba-5954-b570-ce3b017537c1', 'c066a39e-b299-5197-b023-310d362416c6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d220acb2-0a80-528b-bd0f-de5168320d7e', 'en', 'purchase order', 'заказ на закупку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9bcf8c3-a778-5365-81a4-88a03403df5a', 'en', 'to dispatch', 'отправить (товар)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0d84cb47-6bd4-5064-81c6-3951bef68fe7', 'en', 'tracking number', 'трек-номер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('24278eef-00ce-58be-ba01-bf2b1f554d17', 'en', 'out of stock', 'нет на складе', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('86f988a2-1a50-51f4-90ab-935d4114daaa', 'en', 'partial delivery', 'частичная доставка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c95f1df5-7649-53ec-b5fc-d1832d16f8fa', 'en', 'to arrive', 'прибыть', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ed9570f-bddf-5dee-9d34-b7db8b2ebdc3', 'en', 'invoice', 'счёт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1378d0fe-b767-599c-9006-ac08f16fda58', 'en', 'to place an order', 'разместить заказ', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e6ade45d-3e54-5149-aaa3-4e23e56e72ab', 'en', 'delivery time', 'срок доставки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4b43ee9-777a-5164-b53b-1e1787c7aa0e', 'en', 'faster', 'быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78da3fe7-3d59-578d-b0b1-d93d182f0655', 'en', 'cheaper', 'дешевле', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('584c6f76-fba2-591c-9eee-ac7cdb053b58', 'en', 'minimum order', 'минимальный заказ', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e74a997d-c5ff-5098-8361-be03257f961b', 'en', 'to expect', 'ожидать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fae0cdb5-15be-510c-a799-1e78b7b4082b', 'en', 'in total', 'всего', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3404484a-5a3c-5e2a-8561-b6202f3e2c31', 'en', 'to notify', 'уведомить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0fba5a64-d89d-5856-83ab-bef60d051ba3', 'en', 'immediately', 'немедленно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f8f30e1f-bf9b-5df4-bcdb-66de22da4ecb', 'en', 'to run out of', 'закончиться (о запасах)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9bfc5dca-460a-5f00-ae36-8f4d35646bfa', 'en', 'stock level', 'уровень запасов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e3cb89e-bd14-514d-a6b1-af2602e37f47', 'en', 'to plan ahead', 'планировать заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82888ec4-c91b-5aa2-befa-c5a1884bce76', 'en', 'alternative supplier', 'альтернативный поставщик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'purchase order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to dispatch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'tracking number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'out of stock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'partial delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to arrive' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5837623b-8cd6-586d-8e3a-9b153d38e285', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'invoice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to place an order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'faster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheaper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to expect' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, '5a66c1d7-7fde-52d2-939b-1f22c7207c44', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in total' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to notify' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'immediately' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to run out of' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'stock level' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to plan ahead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '37d90fac-72ba-5954-b570-ce3b017537c1', id, 'c066a39e-b299-5197-b023-310d362416c6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
