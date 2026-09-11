-- Track: A2_BUSINESS_ENGLISH_CUSTOMER_REQUESTS_AND_COMPLAINTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('64c9e454-d741-59be-84ca-4239a4eca979', 'A2_BUSINESS_ENGLISH_CUSTOMER_REQUESTS_AND_COMPLAINTS', 'Запросы и жалобы клиентов', 'Развивайте деловой английский уровня A2 по теме «Запросы и жалобы клиентов».', '{"en":"Customer Requests and Complaints","ru":"Запросы и жалобы клиентов"}'::jsonb, '{"en":"Develop A2 business English for customer requests and complaints.","ru":"Развивайте деловой английский уровня A2 по теме «Запросы и жалобы клиентов»."}'::jsonb, 'en', 'A2', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c99bf79e-e5ca-53e2-90cd-f98a40843658', NULL, 'Жалоба клиента', 'Описать жалобу и действия, используя past simple и present perfect.', '{"en":"A Customer Complaint","ru":"Жалоба клиента"}'::jsonb, '{"en":"Describe a complaint and the actions taken using past simple and present perfect.","ru":"Описать жалобу и действия, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('547d5966-2079-5a4a-9288-7ace40c260d7', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"complaint","right":"жалоба"},{"id":"P2","left":"refund","right":"возврат средств"},{"id":"P3","left":"faulty","right":"неисправный"},{"id":"P4","left":"to replace","right":"заменить"},{"id":"P5","left":"to apologise","right":"извиниться"},{"id":"P6","left":"within","right":"в течение"},{"id":"P7","left":"to investigate","right":"расследовать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('740eb915-1cb7-5555-b3a7-099c4cfe8036', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have received three complaints about the same product this month.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have received three complaints about the same product this month."},{"id":"Q_B","is_correct":false,"text":"We have received a complaint yesterday."},{"id":"Q_C","is_correct":false,"text":"We receive three complaints already this month."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a96cd141-01a8-5686-a368-032db30c9170', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The customer received a faulty product, and we have already sent him a replacement.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Клиент получил неисправный товар, и мы уже отправили ему замену.","target_language":"en","word_bank":["we","and","faulty","a","received","product,","receive","sent","him","already","replacement.","yesterday","customer","have","did","The","a"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce602920-4783-5f9a-a2d0-9d8f4d81560f', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"apologised","instruction":"Выберите подходящее слово.","options":["apologised","has apologise","apologising"],"sentence_template":"The support team ___ to the customer within an hour.","translation_hint":"Команда поддержки извинилась перед клиентом в течение часа."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('73f9fe65-f462-54d7-9d66-8cf4b52b0980', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","investigated","the","problem","and","found","the","cause."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["have","was","problem","did","and","cause.","found","We","the","investigated","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75145ca1-8447-55c5-a8b1-580ac0b00062', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The customer has complained twice this week, so the manager has called her personally.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5218cb5b-9e6b-5a7f-879c-3b7b1003b68d', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The customer has complained twice this week, so the manager has called her personally.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Клиент жаловался дважды за неделю, поэтому менеджер позвонил ей лично."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87a1edce-a80a-570f-a36c-cde495ccfc0b', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Client","text":"The printer you delivered last week does not work.","translation":"Принтер, который вы доставили на прошлой неделе, не работает.","type":"dialogue"},{"character":"Anna","text":"I''m sorry about that. Have you checked the power cable?","translation":"Сожалею. Вы проверили кабель питания?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, the machine itself is faulty — I would like a replacement."},{"is_correct":false,"text":"Yes, I check it tomorrow morning."},{"is_correct":false,"text":"The printer is complaining about the cable."}],"text":"What does the client say?","type":"choice"}],"title":"The Faulty Printer"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bf5a2a1-d125-5cb9-b300-34080b9db950', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“faulty” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Not working correctly; having a fault"},{"id":"D_B","is_correct":false,"text":"Brand new and never used"},{"id":"D_C","is_correct":false,"text":"Very expensive but popular"}],"word":"faulty"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21d54a3a-4490-5ea5-b89e-6bea17c9ae1e', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have investigated the complaint already.","explanation":"The missing word is “investigated”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"investigated","id":"LW_A","is_correct":true},{"audio_text":"investigate","id":"LW_B","is_correct":false},{"audio_text":"investigating","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ the complaint already."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1871d08a-effc-5a61-a3a7-d6ad9ef6b17e', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"refund","explanation":"The complete sentence is “She has asked for a refund of the payment.”.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has asked for a ___ of the payment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7be0aae6-d2a7-5b81-a573-8f61a430c78c', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"complaint","id":"V1","text":"complaint"},{"audio_text":"refund","id":"V2","text":"refund"},{"audio_text":"faulty","id":"V3","text":"faulty"},{"audio_text":"to replace","id":"V4","text":"to replace"},{"audio_text":"to apologise","id":"V5","text":"to apologise"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1866ccb-19c0-527b-953d-dfb2b84ca82d', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"Did the customer accept the replacement?"}],"explanation":"“Yes, she accepted it and has already thanked the support team.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, she accepted it and has already thanked the support team."},{"id":"C_B","is_correct":false,"text":"Yes, she accepts it tomorrow."},{"id":"C_C","is_correct":false,"text":"The replacement is accepting her."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('64c9e454-d741-59be-84ca-4239a4eca979', 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('62c5909f-9311-58a4-b2bd-3fa200528cb9', NULL, 'Как мы ответим', 'Предложить решения по жалобе и сравнить варианты.', '{"en":"How We Will Respond","ru":"Как мы ответим"}'::jsonb, '{"en":"Offer solutions to a complaint and compare options.","ru":"Предложить решения по жалобе и сравнить варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62be4e11-8864-5c07-bc70-d455ed14e47b', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"solution","right":"решение"},{"id":"P2","left":"compensation","right":"компенсация"},{"id":"P3","left":"faster","right":"быстрее"},{"id":"P4","left":"to offer a discount","right":"предложить скидку"},{"id":"P5","left":"loyal","right":"лояльный"},{"id":"P6","left":"to satisfy","right":"удовлетворить (клиента)"},{"id":"P7","left":"more generous","right":"щедрее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4fdd814-317f-5cf0-af51-e0914d191067', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “A discount is more generous than a simple apology.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"A discount is more generous than a simple apology."},{"id":"Q_B","is_correct":false,"text":"A discount is generousest than an apology."},{"id":"Q_C","is_correct":false,"text":"A discount is more generous of the two most."}],"question":"Which sentence compares two offers correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33ef66aa-220e-54fc-acd7-7e43f522c4ae', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to offer a ten percent discount — it is better than a simple apology.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы предложим скидку десять процентов — это лучше, чем просто извинение.","target_language":"en","word_bank":["We","percent","ten","discount","going","it","did","than","yesterday","better","are","is","apology.","to","a","a","offered","—","offer","simple"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3e358b8-7a1c-5031-8ab0-574894d5bf87', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A quick answer is ___ important than a perfect answer.","translation_hint":"Быстрый ответ важнее идеального ответа."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8cdf5323-b0d5-5ad7-b1a8-f05cf4aa7b4b', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","manager","is","going","to","call","the","client","personally","tomorrow."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["call","was","the","personally","is","client","manager","to","tomorrow.","going","did","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cebfb1fb-bc80-5d56-ab9b-58075353738d', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we respond faster than the competition, the customer will stay with us.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57e98b76-e6c3-5b1b-a778-f7567fb31bec', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we respond faster than the competition, the customer will stay with us.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если мы отвечаем быстрее конкурентов, клиент останется с нами."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('358b94f9-9d57-547d-94cb-7fd9238bb9ef', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Manager","text":"The client is angry. What can we offer?","translation":"Клиент недоволен. Что мы можем предложить?","type":"dialogue"},{"character":"Anna","text":"A refund or a twenty percent discount on the next order.","translation":"Возврат средств или скидку двадцать процентов на следующий заказ.","type":"dialogue"},{"options":[{"is_correct":true,"text":"The discount is better — it keeps the customer loyal."},{"is_correct":false,"text":"The refund was better yesterday tomorrow."},{"is_correct":false,"text":"The anger is offering a discount."}],"text":"What does the manager decide?","type":"choice"}],"title":"Choosing Compensation"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32e99f3b-6924-5668-b121-175655dc7555', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“compensation” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something given to make up for a problem"},{"id":"D_B","is_correct":false,"text":"A price list sent before the order"},{"id":"D_C","is_correct":false,"text":"A thank-you letter without any offer"}],"word":"compensation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b7edf38-e510-5438-b6d0-20037ae6ca14', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to offer a full refund.","explanation":"The missing word is “offer”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"offer","id":"LW_A","is_correct":true},{"audio_text":"offered","id":"LW_B","is_correct":false},{"audio_text":"offering","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ a full refund."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('166aefa1-0ce3-5315-af98-4a2066004044', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “This solution is more generous than the first one.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This solution is ___ generous than the first one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3d68b36-9f61-5be5-ba44-c61246c2045a', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"solution","id":"V1","text":"solution"},{"audio_text":"compensation","id":"V2","text":"compensation"},{"audio_text":"faster","id":"V3","text":"faster"},{"audio_text":"to offer a discount","id":"V4","text":"to offer a discount"},{"audio_text":"loyal","id":"V5","text":"loyal"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e0560ab-812d-533b-8cac-353b28fb69fa', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The client wants a discount this time."}],"explanation":"“I agree — if we offer ten percent now, we will keep the order.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"I agree — if we offer ten percent now, we will keep the order."},{"id":"C_B","is_correct":false,"text":"We offered it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The discount is wanting the client."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('64c9e454-d741-59be-84ca-4239a4eca979', '62c5909f-9311-58a4-b2bd-3fa200528cb9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('25405fb5-2d28-55e5-8519-d837224edb46', NULL, 'Профилактика жалоб', 'Предложить меры против жалоб, используя should и первое условное.', '{"en":"Preventing Complaints","ru":"Профилактика жалоб"}'::jsonb, '{"en":"Suggest measures against complaints using should and the first conditional.","ru":"Предложить меры против жалоб, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb6efe97-b4ac-50b5-b946-9ecdc1107709', '25405fb5-2d28-55e5-8519-d837224edb46', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to prevent","right":"предотвратить"},{"id":"P2","left":"to check quality","right":"проверять качество"},{"id":"P3","left":"before delivery","right":"до доставки"},{"id":"P4","left":"feedback","right":"обратная связь"},{"id":"P5","left":"to repeat","right":"повториться"},{"id":"P6","left":"to improve service","right":"улучшить сервис"},{"id":"P7","left":"to promise","right":"обещать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5758c0da-7a86-55b9-a171-b2530ecd0acd', '25405fb5-2d28-55e5-8519-d837224edb46', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We should check the quality before every delivery.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We should check the quality before every delivery."},{"id":"Q_B","is_correct":false,"text":"We should to check the quality yesterday."},{"id":"Q_C","is_correct":false,"text":"We must checking quality last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('45bfd5a5-b9fb-5433-b009-4ca1017f5f23', '25405fb5-2d28-55e5-8519-d837224edb46', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If we check the quality before delivery, there will be fewer complaints.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если мы будем проверять качество до отправки, жалоб станет меньше.","target_language":"en","word_bank":["did","be","before","check","delivery,","fewer","quality","yesterday","there","the","checked","we","If","will","complaints."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68b5885c-b66e-5e57-943c-234b2c79348c', '25405fb5-2d28-55e5-8519-d837224edb46', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"promise","instruction":"Выберите подходящее слово.","options":["promise","will promise","promised"],"sentence_template":"If we ___ only what we can deliver, clients will trust us.","translation_hint":"Если обещать только то, что можем выполнить, клиенты будут нам доверять."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3af59557-de57-5845-ba83-895f91f1f962', '25405fb5-2d28-55e5-8519-d837224edb46', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","ask","for","feedback","after","every","order."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["ask","should","every","You","went","feedback","for","order.","after","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5de22da-5a88-531b-98f4-990e69b34490', '25405fb5-2d28-55e5-8519-d837224edb46', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we call customers after delivery, we will solve small problems before they grow.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7c2c3db-66f7-55ac-a8cd-0a40caef6fd1', '25405fb5-2d28-55e5-8519-d837224edb46', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we call customers after delivery, we will solve small problems before they grow.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если звонить клиентам после доставки, мы решим мелкие проблемы до того, как они вырастут."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed54b16a-7afd-593c-9bea-01742b3af02c', '25405fb5-2d28-55e5-8519-d837224edb46', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Director","text":"This is the second complaint about packaging this month.","translation":"Это вторая жалоба на упаковку за месяц.","type":"dialogue"},{"character":"Anna","text":"What should we change?","translation":"Что нам изменить?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we use stronger boxes, the damage will not repeat."},{"is_correct":false,"text":"If we will use stronger boxes, the damage repeated yesterday."},{"is_correct":false,"text":"The packaging is complaining about itself."}],"text":"What does the director suggest?","type":"choice"}],"title":"After the Incident"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3e54e77-1134-5e96-9b4f-1b8caa7df243', '25405fb5-2d28-55e5-8519-d837224edb46', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“feedback” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Opinions about how well something is done"},{"id":"D_B","is_correct":false,"text":"A list of products for the next order"},{"id":"D_C","is_correct":false,"text":"A signed contract with a client"}],"word":"feedback"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3709eee0-9090-55e6-a145-f5434e550ce9', '25405fb5-2d28-55e5-8519-d837224edb46', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If we check quality twice, faults will not reach clients.","explanation":"The missing word is “check”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"check","id":"LW_A","is_correct":true},{"audio_text":"will check","id":"LW_B","is_correct":false},{"audio_text":"checked","id":"LW_C","is_correct":false}],"sentence_template":"If we ___ quality twice, faults will not reach clients."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('902e671c-3947-5fc2-bdd5-b3f8f737af3c', '25405fb5-2d28-55e5-8519-d837224edb46', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"after","explanation":"The complete sentence is “We should call clients after every delivery.”.","hint_prefix":"af","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We should call clients ___ every delivery."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10d66c5b-3da4-5432-903b-620f0f7d4df8', '25405fb5-2d28-55e5-8519-d837224edb46', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to prevent","id":"V1","text":"to prevent"},{"audio_text":"to check quality","id":"V2","text":"to check quality"},{"audio_text":"before delivery","id":"V3","text":"before delivery"},{"audio_text":"feedback","id":"V4","text":"feedback"},{"audio_text":"to repeat","id":"V5","text":"to repeat"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cbd9ee4-62e2-504d-a6e6-3558d064ecde', '25405fb5-2d28-55e5-8519-d837224edb46', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"The same client has complained again."}],"explanation":"“We should offer a call — if he explains the problem, we will fix it for good.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We should offer a call — if he explains the problem, we will fix it for good."},{"id":"C_B","is_correct":false,"text":"We must to call him yesterday."},{"id":"C_C","is_correct":false,"text":"The problem is complaining again."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('64c9e454-d741-59be-84ca-4239a4eca979', '25405fb5-2d28-55e5-8519-d837224edb46', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eaa6462c-1d21-5a10-8838-63239f0d62b8', 'en', 'complaint', 'жалоба', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат средств', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07d1c350-d989-58a2-88e2-0b39b2760547', 'en', 'faulty', 'неисправный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a98aafdf-cd03-58a9-88e8-3189a45f9bad', 'en', 'to replace', 'заменить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf7f596f-bcb7-5cb6-9711-bacf705f7044', 'en', 'to apologise', 'извиниться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1e0fbf9e-a135-5181-8c26-cd1617d1829c', 'en', 'within', 'в течение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b9f1c106-2293-5d5a-aea6-c9ca754339d3', 'en', 'to investigate', 'расследовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a74332-dbe4-5a74-98a9-c09242c4a534', 'en', 'solution', 'решение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97ece0a5-3ae2-55e6-a867-88936b166552', 'en', 'compensation', 'компенсация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4b43ee9-777a-5164-b53b-1e1787c7aa0e', 'en', 'faster', 'быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65e47522-4fbf-5ab8-b4c6-dde9edd12743', 'en', 'to offer a discount', 'предложить скидку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('942f5938-149f-5186-a539-497292478081', 'en', 'loyal', 'лояльный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('297491d1-3634-507c-a2de-11ff477dd76a', 'en', 'to satisfy', 'удовлетворить (клиента)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2284f6b4-6bab-5fc1-a641-d582a817cf53', 'en', 'more generous', 'щедрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ac848c0e-50da-5cfd-9eae-c60078a30893', 'en', 'to prevent', 'предотвратить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e9641402-372a-57d2-973e-bf0d65f5184d', 'en', 'to check quality', 'проверять качество', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7cb9e53b-8cd8-52f2-9d60-a63262f007aa', 'en', 'before delivery', 'до доставки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('558f3e34-64c4-59f9-8396-8f1506c22c17', 'en', 'feedback', 'обратная связь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('89a50a4e-fd62-58b8-ab87-fc7dedbbff6e', 'en', 'to repeat', 'повториться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('287cb256-8d0b-53f0-b6c3-ca9192c73d6f', 'en', 'to improve service', 'улучшить сервис', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3b26e3f7-9562-5f52-84aa-4cec7fd3e524', 'en', 'to promise', 'обещать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'complaint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'faulty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to replace' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to apologise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'within' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, 'c99bf79e-e5ca-53e2-90cd-f98a40843658', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to investigate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'faster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to offer a discount' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'loyal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to satisfy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '62c5909f-9311-58a4-b2bd-3fa200528cb9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'more generous' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prevent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check quality' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'before delivery' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to repeat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to improve service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '64c9e454-d741-59be-84ca-4239a4eca979', id, '25405fb5-2d28-55e5-8519-d837224edb46', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to promise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
