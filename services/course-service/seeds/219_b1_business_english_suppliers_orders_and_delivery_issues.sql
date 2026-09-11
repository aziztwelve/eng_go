-- Track: B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('b599230a-f8f7-59f0-ba60-7d805b1aea20', 'B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES', 'Поставщики, заказы и проблемы доставки', 'Развивайте деловой английский уровня B1 по теме «Поставщики, заказы и проблемы доставки».', '{"en":"Suppliers, Orders and Delivery Issues","ru":"Поставщики, заказы и проблемы доставки"}'::jsonb, '{"en":"Develop B1 business English for suppliers, orders and delivery issues.","ru":"Развивайте деловой английский уровня B1 по теме «Поставщики, заказы и проблемы доставки»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6658574f-1732-5044-80fa-01e9893d3bbe', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Working with Suppliers","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0014e782-f8a9-544b-849d-a4ec9f0f36a9', '6658574f-1732-5044-80fa-01e9893d3bbe', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B01","left":"supplier","right":"поставщик"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B02","left":"purchase order","right":"заказ на закупку"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B03","left":"stock","right":"товарные запасы"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B04","left":"dispatch","right":"отправлять"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B05","left":"delivery window","right":"интервал доставки"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B06","left":"shortage","right":"нехватка"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B07","left":"alternative","right":"альтернатива"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8db3cd3e-64b7-5f17-b415-a2126557b7d8', '6658574f-1732-5044-80fa-01e9893d3bbe', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B08","is_correct":true,"text":"The supplier confirmed the purchase order but warned that one item was currently out of stock."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b001399e-fd1b-54c7-b16f-1fb1fc466d95', '6658574f-1732-5044-80fa-01e9893d3bbe', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The supplier confirmed the purchase order but warned that one item was currently out of stock.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поставщик подтвердил заказ на закупку, но предупредил, что одного товара сейчас нет на складе.","target_language":"en","word_bank":["The","supplier","confirmed","the","purchase","order","but","warned","that","one","item","was","currently","out","of","stock."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a92b1f50-b277-55d0-b78a-2eae8e543666', '6658574f-1732-5044-80fa-01e9893d3bbe', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"supplier","instruction":"Выберите подходящее слово.","options":["supplier","dispatch","shortage"],"sentence_template":"The ___ confirmed the purchase order but warned that one item was currently out of stock."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f15e8f6-bdd4-5edb-8107-b2c8378441db', '6658574f-1732-5044-80fa-01e9893d3bbe', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","supplier","confirmed","the","purchase","order","but","warned","that","one","item","was","currently","out","of","stock."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["stock.","of","out","currently","was","item","one","that","warned","but","order","purchase","the","confirmed","supplier","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03ce3620-a66b-5205-8c87-3d012fd6af52', '6658574f-1732-5044-80fa-01e9893d3bbe', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The supplier confirmed the purchase order but warned that one item was currently out of stock. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21738110-dd7e-5591-adde-bd5c946e2a52', '6658574f-1732-5044-80fa-01e9893d3bbe', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The supplier confirmed the purchase order but warned that one item was currently out of stock. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Поставщик подтвердил заказ на закупку, но предупредил, что одного товара сейчас нет на складе. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9e7a3fd-c356-5d4f-b0d1-1e410d32600b', '6658574f-1732-5044-80fa-01e9893d3bbe', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The supplier confirmed the purchase order but warned that one item was currently out of stock.","translation":"Поставщик подтвердил заказ на закупку, но предупредил, что одного товара сейчас нет на складе.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Working with Suppliers"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9a55f890-d82a-5370-ab4e-3e25a2f7e9d1', '6658574f-1732-5044-80fa-01e9893d3bbe', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“supplier” means a company providing goods or services.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B11","is_correct":true,"text":"a company providing goods or services"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B12","is_correct":false,"text":"an official document ordering goods"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B13","is_correct":false,"text":"goods available for sale or use"}],"word":"supplier"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe5b2206-d942-5fcc-a82c-9229084669e9', '6658574f-1732-5044-80fa-01e9893d3bbe', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The supplier confirmed the purchase order but warned that one item was currently out of stock.","explanation":"The missing business expression is “supplier”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"supplier","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B14","is_correct":true},{"audio_text":"stock","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B15","is_correct":false},{"audio_text":"delivery window","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B16","is_correct":false}],"sentence_template":"The ___ confirmed the purchase order but warned that one item was currently out of stock."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad9c7a1c-a8ac-5343-9fb8-66307181410a', '6658574f-1732-5044-80fa-01e9893d3bbe', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"supplier","explanation":"The sentence requires “supplier” to express the intended business meaning.","hint_prefix":"sup","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ confirmed the purchase order but warned that one item was currently out of stock."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34d829db-f439-5493-a9a8-4b69d4fd6644', '6658574f-1732-5044-80fa-01e9893d3bbe', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"supplier","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B17","text":"supplier"},{"audio_text":"purchase order","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B18","text":"purchase order"},{"audio_text":"stock","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B19","text":"stock"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78ee2515-bca1-5723-9159-3dd2c776914a', '6658574f-1732-5044-80fa-01e9893d3bbe', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Working with Suppliers”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B20","is_correct":true,"text":"The supplier confirmed the purchase order but warned that one item was currently out of stock."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b599230a-f8f7-59f0-ba60-7d805b1aea20', '6658574f-1732-5044-80fa-01e9893d3bbe', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1c9625c2-ba19-547e-9874-43c3c1c4085d', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Confirming Order Requirements","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8dc9fac-c35a-56db-b67d-4ed0661ac33f', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B01","left":"supplier","right":"поставщик"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B02","left":"purchase order","right":"заказ на закупку"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B03","left":"stock","right":"товарные запасы"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B04","left":"dispatch","right":"отправлять"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B05","left":"delivery window","right":"интервал доставки"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B06","left":"shortage","right":"нехватка"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B07","left":"alternative","right":"альтернатива"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f21949f-9c1f-5b17-b47b-3cda2980c587', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B08","is_correct":true,"text":"The goods were dispatched on time, although the delivery window changed because of severe weather."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad3bf446-0e4c-547a-be79-3b9e6cd1c02e', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The goods were dispatched on time, although the delivery window changed because of severe weather.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Товары были отправлены вовремя, хотя интервал доставки изменился из-за плохой погоды.","target_language":"en","word_bank":["The","goods","were","dispatched","on","time,","although","the","delivery","window","changed","because","of","severe","weather."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8732f85a-29c3-538a-9b8e-9cf8521cc34b', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"purchase order","instruction":"Выберите подходящее слово.","options":["purchase order","delivery window","alternative"],"sentence_template":"The goods were dispatched on time, although the delivery window changed because of severe weather."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e716a92-0fbf-5fd3-b148-d202601778bc', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","goods","were","dispatched","on","time,","although","the","delivery","window","changed","because","of","severe","weather."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["weather.","severe","of","because","changed","window","delivery","the","although","time,","on","dispatched","were","goods","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3c05cc5-b6c1-52ce-bfb1-747568f49709', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The goods were dispatched on time, although the delivery window changed because of severe weather. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56800ac1-d833-50fb-9151-86604191bd79', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The goods were dispatched on time, although the delivery window changed because of severe weather. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Товары были отправлены вовремя, хотя интервал доставки изменился из-за плохой погоды. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7aa58a5-c18d-5323-b7fe-675e101cf583', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The goods were dispatched on time, although the delivery window changed because of severe weather.","translation":"Товары были отправлены вовремя, хотя интервал доставки изменился из-за плохой погоды.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Confirming Order Requirements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bec3af32-36ab-5794-95fe-a324b3318934', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“purchase order” means an official document ordering goods.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B11","is_correct":true,"text":"an official document ordering goods"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B12","is_correct":false,"text":"goods available for sale or use"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B13","is_correct":false,"text":"send goods to a destination"}],"word":"purchase order"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1af0b6f1-c6af-5849-a834-6473f02fc0a9', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The goods were dispatched on time, although the delivery window changed because of severe weather.","explanation":"The missing business expression is “purchase order”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"purchase order","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B14","is_correct":true},{"audio_text":"dispatch","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B15","is_correct":false},{"audio_text":"shortage","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B16","is_correct":false}],"sentence_template":"The goods were dispatched on time, although the delivery window changed because of severe weather."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79915f5c-d000-58de-816c-284085b0cb78', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"purchase order","explanation":"The sentence requires “purchase order” to express the intended business meaning.","hint_prefix":"pur","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The goods were dispatched on time, although the delivery window changed because of severe weather."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0566caf9-e85f-540c-ad1d-64f12ea687df', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"supplier","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B17","text":"supplier"},{"audio_text":"purchase order","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B18","text":"purchase order"},{"audio_text":"stock","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B19","text":"stock"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ffbde910-d335-5214-88e3-17380b627384', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Confirming Order Requirements”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B20","is_correct":true,"text":"The goods were dispatched on time, although the delivery window changed because of severe weather."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b599230a-f8f7-59f0-ba60-7d805b1aea20', '1c9625c2-ba19-547e-9874-43c3c1c4085d', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('57df8682-085b-56c8-b9b7-fe46f47e7d2f', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Resolving Delivery Issues","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1e97b60-5e75-5b6e-87c5-e6b004fac848', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B01","left":"supplier","right":"поставщик"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B02","left":"purchase order","right":"заказ на закупку"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B03","left":"stock","right":"товарные запасы"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B04","left":"dispatch","right":"отправлять"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B05","left":"delivery window","right":"интервал доставки"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B06","left":"shortage","right":"нехватка"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B07","left":"alternative","right":"альтернатива"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0837c993-297c-5fdf-82fc-5996e9690f41', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B08","is_correct":true,"text":"To avoid a shortage, we accepted an alternative product that met the same technical requirements."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c8ba3dc-cf8d-5af9-aab7-259eaeae1cc1', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To avoid a shortage, we accepted an alternative product that met the same technical requirements.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы избежать нехватки, мы приняли альтернативный товар, соответствующий тем же техническим требованиям.","target_language":"en","word_bank":["To","avoid","a","shortage,","we","accepted","an","alternative","product","that","met","the","same","technical","requirements."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8886a0a3-b4ad-5fe7-99f0-e934769e09a7', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"stock","instruction":"Выберите подходящее слово.","options":["stock","shortage","supplier"],"sentence_template":"To avoid a shortage, we accepted an alternative product that met the same technical requirements."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ffae6ff-ff88-5fcc-9e27-c1ce92fb472b', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","avoid","a","shortage,","we","accepted","an","alternative","product","that","met","the","same","technical","requirements."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["requirements.","technical","same","the","met","that","product","alternative","an","accepted","we","shortage,","a","avoid","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6895c1fa-31cb-5621-b14a-db9e4999a155', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To avoid a shortage, we accepted an alternative product that met the same technical requirements. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31d409fb-b1d2-5798-a859-74f68061b1f3', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To avoid a shortage, we accepted an alternative product that met the same technical requirements. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Чтобы избежать нехватки, мы приняли альтернативный товар, соответствующий тем же техническим требованиям. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e5e738d-b866-5f59-96f3-01b4db4941fc', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"To avoid a shortage, we accepted an alternative product that met the same technical requirements.","translation":"Чтобы избежать нехватки, мы приняли альтернативный товар, соответствующий тем же техническим требованиям.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Resolving Delivery Issues"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('17ff097b-83d1-5560-a0ba-80976aa3ba81', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“stock” means goods available for sale or use.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B11","is_correct":true,"text":"goods available for sale or use"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B12","is_correct":false,"text":"send goods to a destination"},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B13","is_correct":false,"text":"the expected period for delivery"}],"word":"stock"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7a2a100-1bfe-51e6-99e0-77fc6f4fd85a', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To avoid a shortage, we accepted an alternative product that met the same technical requirements.","explanation":"The missing business expression is “stock”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"stock","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B14","is_correct":true},{"audio_text":"delivery window","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B15","is_correct":false},{"audio_text":"alternative","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B16","is_correct":false}],"sentence_template":"To avoid a shortage, we accepted an alternative product that met the same technical requirements."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8dc7e3ac-479f-533d-8ac4-c69cfd8a821a', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"stock","explanation":"The sentence requires “stock” to express the intended business meaning.","hint_prefix":"sto","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To avoid a shortage, we accepted an alternative product that met the same technical requirements."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec66cba0-8e67-503e-950b-92fa0a7c25a6', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"supplier","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B17","text":"supplier"},{"audio_text":"purchase order","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B18","text":"purchase order"},{"audio_text":"stock","id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B19","text":"stock"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86ccc228-29bc-526f-83d5-4ca96b3e09ff', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Resolving Delivery Issues”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B20","is_correct":true,"text":"To avoid a shortage, we accepted an alternative product that met the same technical requirements."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_SUPPLIERS_ORDERS_AND_DELIVERY_ISSUES_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('b599230a-f8f7-59f0-ba60-7d805b1aea20', '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e91574f-f870-58c1-916d-e20495c197ea', 'en', 'supplier', 'поставщик', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d220acb2-0a80-528b-bd0f-de5168320d7e', 'en', 'purchase order', 'заказ на закупку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c56a2f7-17b5-5aed-accc-e35fc31e84cf', 'en', 'stock', 'товарные запасы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('112f64c1-f58b-5f56-a0de-ddea165d6c26', 'en', 'dispatch', 'отправлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('693ac16d-7c64-5882-80e4-7ebdf9747926', 'en', 'delivery window', 'интервал доставки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7386e124-f917-5b89-83f8-3a739636c16a', 'en', 'shortage', 'нехватка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e91574f-f870-58c1-916d-e20495c197ea', 'en', 'supplier', 'поставщик', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d220acb2-0a80-528b-bd0f-de5168320d7e', 'en', 'purchase order', 'заказ на закупку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c56a2f7-17b5-5aed-accc-e35fc31e84cf', 'en', 'stock', 'товарные запасы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('112f64c1-f58b-5f56-a0de-ddea165d6c26', 'en', 'dispatch', 'отправлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('693ac16d-7c64-5882-80e4-7ebdf9747926', 'en', 'delivery window', 'интервал доставки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7386e124-f917-5b89-83f8-3a739636c16a', 'en', 'shortage', 'нехватка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5e91574f-f870-58c1-916d-e20495c197ea', 'en', 'supplier', 'поставщик', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d220acb2-0a80-528b-bd0f-de5168320d7e', 'en', 'purchase order', 'заказ на закупку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8c56a2f7-17b5-5aed-accc-e35fc31e84cf', 'en', 'stock', 'товарные запасы', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('112f64c1-f58b-5f56-a0de-ddea165d6c26', 'en', 'dispatch', 'отправлять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('693ac16d-7c64-5882-80e4-7ebdf9747926', 'en', 'delivery window', 'интервал доставки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7386e124-f917-5b89-83f8-3a739636c16a', 'en', 'shortage', 'нехватка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'purchase order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'stock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'dispatch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '6658574f-1732-5044-80fa-01e9893d3bbe', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'purchase order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'stock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'dispatch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '1c9625c2-ba19-547e-9874-43c3c1c4085d', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'supplier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'purchase order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'stock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'dispatch' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery window' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'b599230a-f8f7-59f0-ba60-7d805b1aea20', id, '57df8682-085b-56c8-b9b7-fe46f47e7d2f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
