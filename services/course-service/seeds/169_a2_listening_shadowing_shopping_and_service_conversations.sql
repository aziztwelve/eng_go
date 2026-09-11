-- Track: A2_LISTENING_SHADOWING_SHOPPING_AND_SERVICE_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('162b40ad-e895-5592-aefa-9f9f578b4f68', 'A2_LISTENING_SHADOWING_SHOPPING_AND_SERVICE_CONVERSATIONS', 'Покупки и обслуживание', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Покупки и обслуживание».', '{"en":"Shopping and Service Conversations","ru":"Покупки и обслуживание"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for shopping and service conversations.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Покупки и обслуживание»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('099db9c4-c563-5332-95e4-618142da8fc2', NULL, 'Покупки и сервис', 'Понимать сервисные разговоры, используя past simple и present perfect.', '{"en":"Shopping and Service","ru":"Покупки и сервис"}'::jsonb, '{"en":"Understand service conversations using past simple and present perfect.","ru":"Понимать сервисные разговоры, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5434810-0cf0-5763-b005-f31706bd771c', '099db9c4-c563-5332-95e4-618142da8fc2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to pay by card","right":"платить картой"},{"id":"P2","left":"loyalty card","right":"карта лояльности"},{"id":"P3","left":"to ask for a refund","right":"попросить возврат"},{"id":"P4","left":"out of stock","right":"нет в наличии"},{"id":"P5","left":"to order in","right":"заказать (под заказ)"},{"id":"P6","left":"receipt","right":"чек"},{"id":"P7","left":"to try on","right":"примерить"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76d9dc7b-1526-59df-b82d-7bf5049475f3', '099db9c4-c563-5332-95e4-618142da8fc2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The shampoo has been out of stock since Friday.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The shampoo has been out of stock since Friday."},{"id":"Q_B","is_correct":false,"text":"The shampoo is out of stock yesterday."},{"id":"Q_C","is_correct":false,"text":"The shampoo out of stock already since Friday."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d756876-ad3b-5951-b8a8-655a66cf00f1', '099db9c4-c563-5332-95e4-618142da8fc2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I asked for a refund because the charger stopped working after a week.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я попросил возврат, потому что зарядка перестала работать через неделю.","target_language":"en","word_bank":["a","the","week.","for","after","because","stopped","refund","I","charger","tomorrow","did","working","a","asked","ask"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28f03387-5375-578b-9b3e-eee049be4215', '099db9c4-c563-5332-95e4-618142da8fc2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"bought","instruction":"Выберите подходящее слово.","options":["bought","has buy","buying"],"sentence_template":"She tried on the dress and ___ it immediately.","translation_hint":"Она примерила платье и сразу купила."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91579364-73ea-5e0c-bf27-7c53dca56381', '099db9c4-c563-5332-95e4-618142da8fc2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","you","shown","your","loyalty","card?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["card?","was","shown","did","you","loyalty","your","Have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83e033ed-92a7-5a10-bb4c-ec16fabe8f45', '099db9c4-c563-5332-95e4-618142da8fc2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have forgotten my loyalty card, but the cashier has found my number by phone and applied the discount.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef23c69c-b303-59ef-abac-1cb412b6b589', '099db9c4-c563-5332-95e4-618142da8fc2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have forgotten my loyalty card, but the cashier has found my number by phone and applied the discount.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я забыл карту лояльности, но кассир нашёл мой номер по телефону и применил скидку."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa0d63eb-dcb9-50e4-9e42-eef71f424cd7', '099db9c4-c563-5332-95e4-618142da8fc2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Cashier","text":"Would you like to pay by card or cash?","translation":"Будете платить картой или наличными?","type":"dialogue"},{"character":"Customer","text":"Card, please. And could you check my loyalty points?","translation":"Картой. И можно проверить мои бонусные баллы?","type":"dialogue"},{"options":[{"is_correct":true,"text":"You have collected two hundred points — that is ten euros off."},{"is_correct":false,"text":"You collected them yesterday tomorrow."},{"is_correct":false,"text":"The points are paying by card."}],"text":"What does the cashier say?","type":"choice"}],"title":"At the Checkout"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('540a6f27-b863-51d7-9dc1-3b7eb64c474a', '099db9c4-c563-5332-95e4-618142da8fc2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“loyalty card” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A shop card that gives you points or discounts"},{"id":"D_B","is_correct":false,"text":"A bank card for online payments"},{"id":"D_C","is_correct":false,"text":"A gift card bought for a friend"}],"word":"loyalty card"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('039fd98b-a6f7-5211-b778-53d6d7cd3b82', '099db9c4-c563-5332-95e4-618142da8fc2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have asked for a refund at the desk.","explanation":"The missing word is “asked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"asked","id":"LW_A","is_correct":true},{"audio_text":"ask","id":"LW_B","is_correct":false},{"audio_text":"asking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ for a refund at the desk."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a440fa85-1062-5cac-811a-cafbc5ade5ef', '099db9c4-c563-5332-95e4-618142da8fc2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “Can I pay by card?”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Can I pay ___ card?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4722e1b-b742-5578-a1a3-948ee0e9bf97', '099db9c4-c563-5332-95e4-618142da8fc2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to pay by card","id":"V1","text":"to pay by card"},{"audio_text":"loyalty card","id":"V2","text":"loyalty card"},{"audio_text":"to ask for a refund","id":"V3","text":"to ask for a refund"},{"audio_text":"out of stock","id":"V4","text":"out of stock"},{"audio_text":"to order in","id":"V5","text":"to order in"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d8ffe54-2506-5f7a-9012-d424040b1cc5', '099db9c4-c563-5332-95e4-618142da8fc2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"The blue one is out of stock, I''m afraid."}],"explanation":"“Could you order it in? I have waited for this model since autumn.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Could you order it in? I have waited for this model since autumn."},{"id":"C_B","is_correct":false,"text":"You ordered it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The model is stocking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('162b40ad-e895-5592-aefa-9f9f578b4f68', '099db9c4-c563-5332-95e4-618142da8fc2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', NULL, 'Выбираем услугу', 'Сравнивать услуги и планировать покупку.', '{"en":"Choosing a Service","ru":"Выбираем услугу"}'::jsonb, '{"en":"Compare services and plan a purchase.","ru":"Сравнивать услуги и планировать покупку."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('971e177d-420b-5231-b627-d7ebfc95dc19', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"package deal","right":"пакетное предложение"},{"id":"P2","left":"more flexible","right":"гибче"},{"id":"P3","left":"subscription","right":"подписка"},{"id":"P4","left":"to compare offers","right":"сравнить предложения"},{"id":"P5","left":"hidden fee","right":"скрытый платёж"},{"id":"P6","left":"more suitable","right":"подходящeе (более)"},{"id":"P7","left":"to sign up","right":"оформить (подписку)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0447bbc1-fed4-5de2-b437-875ff00e1700', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The yearly subscription is more flexible than the monthly one.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The yearly subscription is more flexible than the monthly one."},{"id":"Q_B","is_correct":false,"text":"The yearly one is flexibler than monthly."},{"id":"Q_C","is_correct":false,"text":"The subscription is most flexible than monthly."}],"question":"Which sentence compares two offers correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('71697044-9b26-55a0-a549-684cd09b047f', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to sign up for the yearly subscription — it works out a third cheaper.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся оформить годовую подписку — так выходит на треть дешевле.","target_language":"en","word_bank":["out","sign","third","signed","subscription","did","going","to","yesterday","are","We","a","for","cheaper.","yearly","up","—","works","it","the"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7405e7d1-3db4-50ea-823a-bc67822fedf6', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more suitable","instruction":"Выберите подходящее слово.","options":["more suitable","most suitable","much suitable"],"sentence_template":"This plan is ___ for students than the business one.","translation_hint":"Этот тариф больше подходит студентам, чем бизнес-тариф."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6d2c625-1b80-5881-a238-9ef57d91d682', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","compare","three","offers","before","deciding."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["before","did","They","deciding.","are","three","to","offers","going","was","compare"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4e19d02f-83ed-55e1-8c62-5381a0fae579', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you read the small print, you will spot the hidden fees before signing up.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a0bff7d-a813-5c09-8aa2-a57dfa36394c', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you read the small print, you will spot the hidden fees before signing up.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если прочитать мелкий шрифт, найдёте скрытые платежи до оформления."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('496696be-fb3d-5cc0-b119-bbb8f74877be', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"There is a package deal — gym plus pool for one price.","translation":"Есть пакет — зал плюс бассейн за одну цену.","type":"dialogue"},{"character":"Voice 2","text":"Sounds good, but is it more flexible than the basic plan?","translation":"Звучит неплохо, но это гибче базового плана?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Less flexible, but cheaper if you go twice a week."},{"is_correct":false,"text":"It was flexible yesterday tomorrow."},{"is_correct":false,"text":"The pool is packaging the gym."}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Choosing a Gym Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d60da859-eb83-542d-a0f6-47c741094b3a', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hidden fee” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A charge you do not expect at first"},{"id":"D_B","is_correct":false,"text":"The price written on the main page"},{"id":"D_C","is_correct":false,"text":"A discount for the first month"}],"word":"hidden fee"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff245f0a-06b0-5e34-a28a-a086de045182', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to sign up for the basic plan.","explanation":"The missing word is “sign up”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"sign up","id":"LW_A","is_correct":true},{"audio_text":"signed up","id":"LW_B","is_correct":false},{"audio_text":"signing up","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ for the basic plan."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b99bcba-80c6-56e1-ab41-19e5b2d636cf', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “The family plan is less expensive per person.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The family plan is ___ expensive per person."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e335f46-daea-52b6-9ed5-28ec08dd061c', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"package deal","id":"V1","text":"package deal"},{"audio_text":"more flexible","id":"V2","text":"more flexible"},{"audio_text":"subscription","id":"V3","text":"subscription"},{"audio_text":"to compare offers","id":"V4","text":"to compare offers"},{"audio_text":"hidden fee","id":"V5","text":"hidden fee"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('417fd802-9d84-50e6-8659-78930455aa99', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Assistant","text":"Would you like the package with insurance?"}],"explanation":"“Let me compare offers first — if the insurance is in the basic one, I will skip it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Let me compare offers first — if the insurance is in the basic one, I will skip it."},{"id":"C_B","is_correct":false,"text":"I compared them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The package is insuring me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('162b40ad-e895-5592-aefa-9f9f578b4f68', '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4d078ee1-014e-57a2-a6ed-9b4c57e4496a', NULL, 'Если сервис подвёл', 'Понимать жалобы и решения, используя should и первое условное.', '{"en":"If the Service Fails","ru":"Если сервис подвёл"}'::jsonb, '{"en":"Understand complaints and solutions using should and the first conditional.","ru":"Понимать жалобы и решения, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32d512e6-765d-58df-96d2-017b36cdde76', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to charge too much","right":"списать слишком много"},{"id":"P2","left":"to sort out","right":"разобраться с"},{"id":"P3","left":"refund","right":"возврат средств"},{"id":"P4","left":"to insist on","right":"настаивать на"},{"id":"P5","left":"compensation","right":"компенсация"},{"id":"P6","left":"politely but firmly","right":"вежливо, но твёрдо"},{"id":"P7","left":"manager","right":"менеджер"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ff0ba28-0d70-59df-b6fb-042b135e0453', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should ask for the manager if the staff cannot help.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should ask for the manager if the staff cannot help."},{"id":"Q_B","is_correct":false,"text":"You should to ask him yesterday."},{"id":"Q_C","is_correct":false,"text":"You must asking manager last time."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f12ad03f-eb43-59fd-8f8f-e746d9c84344', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If they have charged you too much, you should politely but firmly ask for a refund.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если с тебя списали лишнее, вежливо, но твёрдо попроси возврат.","target_language":"en","word_bank":["have","they","did","but","much,","a","politely","for","too","refund.","yesterday","charged","ask","If","firmly","charged","you","you","should"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aea5fc7e-8295-51ba-b2ee-9b738bb897af', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"insist","instruction":"Выберите подходящее слово.","options":["insist","will insist","insisted"],"sentence_template":"If the refund does not arrive in a week, ___ on speaking to the manager.","translation_hint":"Если возврат не придёт за неделю, настаивай на разговоре с менеджером."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d1b228c-411d-5567-8163-9f9d0fdcbf22', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","keep","the","receipt","as","proof."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["should","went","receipt","proof.","the","You","as","mustn''t","keep"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('be758c21-b89e-5592-86ec-96a241f9659c', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you explain the mistake calmly, they will sort it out on the spot in most cases.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f99f297c-47f6-5979-9807-7e87393a79c0', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you explain the mistake calmly, they will sort it out on the spot in most cases.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если спокойно объяснить ошибку, в большинстве случаев её решат на месте."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16166bde-1035-50f8-95e6-ab613fe52978', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Customer","text":"I think you have charged me twice for the same item.","translation":"Кажется, вы дважды списали одну и ту же позицию.","type":"dialogue"},{"character":"Assistant","text":"Let me check... You are right, I am sorry. I will sort it out now.","translation":"Сейчас проверю... Вы правы, извините. Сейчас всё исправлю.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Could I get the refund to the same card, please?"},{"is_correct":false,"text":"Did I get the refund tomorrow yesterday?"},{"is_correct":false,"text":"Is the item charging me twice itself?"}],"text":"What does the customer ask?","type":"choice"}],"title":"The Double Charge"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a5612ac-5ac0-5621-a487-e1be7fac9b34', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“compensation” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Something given to make up for a mistake"},{"id":"D_B","is_correct":false,"text":"An extra item you buy at full price"},{"id":"D_C","is_correct":false,"text":"A thank-you letter with no offer"}],"word":"compensation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc2d8430-965a-5f83-af5e-0cf48f6aac5e', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If they charge too much, ask for a refund.","explanation":"The missing word is “charge”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"charge","id":"LW_A","is_correct":true},{"audio_text":"will charge","id":"LW_B","is_correct":false},{"audio_text":"charged","id":"LW_C","is_correct":false}],"sentence_template":"If they ___ too much, ask for a refund."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f15df81a-6893-5299-a2a6-2ca8087ffcdc', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"on","explanation":"The complete sentence is “You should insist on your rights.”.","hint_prefix":"on","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should insist ___ your rights."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('067a837f-b576-50df-bf20-ba0e99451a3b', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to charge too much","id":"V1","text":"to charge too much"},{"audio_text":"to sort out","id":"V2","text":"to sort out"},{"audio_text":"refund","id":"V3","text":"refund"},{"audio_text":"to insist on","id":"V4","text":"to insist on"},{"audio_text":"compensation","id":"V5","text":"compensation"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36db251a-78aa-59c7-a93b-8f12b1bf8f67', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The dry cleaner lost my shirt!"}],"explanation":"“Take the receipt — if you show it, they will offer compensation today.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Take the receipt — if you show it, they will offer compensation today."},{"id":"C_B","is_correct":false,"text":"They lost it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The shirt is drying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('162b40ad-e895-5592-aefa-9f9f578b4f68', '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d6b1206-8fd2-5798-8a2e-c446e5279d7a', 'en', 'to pay by card', 'платить картой', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('166f862e-6d52-5778-97e5-af1e0f7ad12d', 'en', 'loyalty card', 'карта лояльности', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a8f92a86-5b55-5545-aab6-04c3861d7ccd', 'en', 'to ask for a refund', 'попросить возврат', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('24278eef-00ce-58be-ba01-bf2b1f554d17', 'en', 'out of stock', 'нет в наличии', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0e433143-ccb8-5416-81e7-cf3e0b758512', 'en', 'to order in', 'заказать (под заказ)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7f6975d-f318-50e3-8154-e73fc21e858b', 'en', 'to try on', 'примерить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff64e1dd-1442-5632-98bc-5c3fada16a14', 'en', 'package deal', 'пакетное предложение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7290111-7bca-5e81-a03e-c01aa270837a', 'en', 'more flexible', 'гибче', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bdce9108-89ab-58d1-b7a9-c5b3713bf089', 'en', 'subscription', 'подписка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa1289ad-c503-5fc1-94ed-2c03fa834b0e', 'en', 'to compare offers', 'сравнить предложения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fbeaf94e-b5ae-509e-960a-a7c06313fad4', 'en', 'hidden fee', 'скрытый платёж', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('530c9208-62a6-51fc-914d-ee21683862fb', 'en', 'more suitable', 'подходящeе (более)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39516e23-f4c5-5085-8ed4-36b66028af94', 'en', 'to sign up', 'оформить (подписку)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c5c7499-9dd5-59ea-ae7b-980abebf3642', 'en', 'to charge too much', 'списать слишком много', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('360bd2fb-5fc8-5ba3-983c-603d7bb1d034', 'en', 'to sort out', 'разобраться с', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('01e002a9-4b87-5c3e-b557-467139962a8e', 'en', 'refund', 'возврат средств', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ee593790-938e-5271-89cc-4a9628751228', 'en', 'to insist on', 'настаивать на', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97ece0a5-3ae2-55e6-a867-88936b166552', 'en', 'compensation', 'компенсация', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('60e60bcd-41cc-5e45-ab3b-8b35e6ffc0aa', 'en', 'politely but firmly', 'вежливо, но твёрдо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('929c3b47-1430-56c4-9802-a42c236cefe7', 'en', 'manager', 'менеджер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pay by card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'loyalty card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ask for a refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'out of stock' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to order in' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '099db9c4-c563-5332-95e4-618142da8fc2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'package deal' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more flexible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'subscription' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to compare offers' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'hidden fee' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more suitable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '98a7bb0a-f9d2-55a3-b530-d25a9a9dcfc5', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sign up' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to charge too much' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to sort out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to insist on' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'politely but firmly' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '162b40ad-e895-5592-aefa-9f9f578b4f68', id, '4d078ee1-014e-57a2-a6ed-9b4c57e4496a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'manager' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
