-- Track: A2_TRAVEL_SHOPPING_SOUVENIRS_AND_SERVICES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('23f89e9f-f32d-5552-a479-1b402d5ac04d', 'A2_TRAVEL_SHOPPING_SOUVENIRS_AND_SERVICES', 'Покупки, сувениры и услуги', 'Развивайте английский для путешествий уровня A2 по теме «Покупки, сувениры и услуги».', '{"en":"Shopping, Souvenirs and Services","ru":"Покупки, сувениры и услуги"}'::jsonb, '{"en":"Develop A2 travel English for shopping, souvenirs and services.","ru":"Развивайте английский для путешествий уровня A2 по теме «Покупки, сувениры и услуги»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1274cb80-f62d-5cc9-a3b3-8789f76648a5', NULL, 'Покупки и сувениры', 'Рассказать о покупках, используя past simple и present perfect.', '{"en":"Shopping and Souvenirs","ru":"Покупки и сувениры"}'::jsonb, '{"en":"Talk about shopping using past simple and present perfect.","ru":"Рассказать о покупках, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2def0370-f538-56d3-b1e8-925d7a5109be', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"souvenir","right":"сувенир"},{"id":"P2","left":"to bargain","right":"торговаться"},{"id":"P3","left":"receipt","right":"чек"},{"id":"P4","left":"handmade","right":"ручной работы"},{"id":"P5","left":"to pay by card","right":"платить картой"},{"id":"P6","left":"discount","right":"скидка"},{"id":"P7","left":"so far","right":"до сих пор"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed8a60f2-0a3a-5dd8-87e0-faea9d28da3f', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “I have bought six postcards so far.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"I have bought six postcards so far."},{"id":"Q_B","is_correct":false,"text":"I have bought six postcards yesterday."},{"id":"Q_C","is_correct":false,"text":"I buy six postcards so far already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8798589f-0e13-5b6b-a854-87dd970dc6d7', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I bought a handmade gift and paid by card, but I have lost the receipt.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я купил подарок ручной работы и заплатил картой, но чек потерял.","target_language":"en","word_bank":["but","bought","paid","did","tomorrow","by","and","receipt.","I","gift","card,","I","lost","a","have","buy","the","handmade"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a233427-06e6-594a-935c-f0fb454a7e9a', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"asked for","instruction":"Выберите подходящее слово.","options":["asked for","has ask for","asking for"],"sentence_template":"She ___ a small discount at the market yesterday.","translation_hint":"Вчера на рынке она попросила небольшую скидку."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c14cee2-f42a-5c97-9ad8-bced94586298', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","already","spent","all","our","cash","on","souvenirs."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["on","have","We","already","did","our","all","was","spent","cash","souvenirs."]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1841324-c7a1-54dc-98fe-609d3b7c058b', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The market has opened at eight, and by nine the best handmade goods have almost gone.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3545a13-64d6-5f08-b1c6-39b181c99e10', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The market has opened at eight, and by nine the best handmade goods have almost gone.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Рынок открылся в восемь, а к девяти лучшие изделия ручной работы почти разошлись."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86886f70-1510-59f4-b1f9-f22878870a30', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Look at these ceramics! Have you bought anything for your parents yet?","translation":"Смотри на эту керамику! Ты уже купил что-нибудь родителям?","type":"dialogue"},{"character":"Tom","text":"Not yet. Did you see the price of those lamps?","translation":"Ещё нет. Ты видела цену тех ламп?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, but they are handmade — I think we should get one."},{"is_correct":false,"text":"Yes, I buy them yesterday tomorrow."},{"is_correct":false,"text":"The ceramics are buying our parents."}],"text":"What does Anna say?","type":"choice"}],"title":"The Last Souvenir"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f385f87-e704-5532-a553-f57f98f7fd24', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“receipt” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The paper that proves you paid for something"},{"id":"D_B","is_correct":false,"text":"A list of things you want to buy"},{"id":"D_C","is_correct":false,"text":"A map of the shopping street"}],"word":"receipt"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e25fcc47-95c8-51e9-99bf-b6e4d3dcdf7b', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have asked for a discount politely.","explanation":"The missing word is “asked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"asked","id":"LW_A","is_correct":true},{"audio_text":"ask","id":"LW_B","is_correct":false},{"audio_text":"asking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ for a discount politely."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('baa42519-708f-5113-9c2c-1ba755b5b56c', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"by","explanation":"The complete sentence is “Could I pay by card?”.","hint_prefix":"by","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could I pay ___ card?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1335f0ac-7c6c-5a44-b146-2cfbed0b6da6', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"souvenir","id":"V1","text":"souvenir"},{"audio_text":"to bargain","id":"V2","text":"to bargain"},{"audio_text":"receipt","id":"V3","text":"receipt"},{"audio_text":"handmade","id":"V4","text":"handmade"},{"audio_text":"to pay by card","id":"V5","text":"to pay by card"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cafd723b-439f-56d8-aa8e-97053a31fcd4', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Seller","text":"These scarves are handmade, madam."}],"explanation":"“They are beautiful — I have already bought two, but this blue one is the nicest.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"They are beautiful — I have already bought two, but this blue one is the nicest."},{"id":"C_B","is_correct":false,"text":"I bought it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The scarves are buying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('23f89e9f-f32d-5552-a479-1b402d5ac04d', '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0860effd-7659-5184-ac69-fe5c10c91689', NULL, 'Что купим завтра', 'Спланировать покупки и сравнить места для них.', '{"en":"What We Will Buy Tomorrow","ru":"Что купим завтра"}'::jsonb, '{"en":"Plan purchases and compare shopping places.","ru":"Спланировать покупки и сравнить места для них."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cb44f58-ab3e-5168-a5d7-14bc1425a3a6', '0860effd-7659-5184-ac69-fe5c10c91689', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"market","right":"рынок"},{"id":"P2","left":"duty-free","right":"duty-free / беспошлинный"},{"id":"P3","left":"more original","right":"оригинальнее"},{"id":"P4","left":"to wrap","right":"упаковать"},{"id":"P5","left":"as a gift","right":"в подарок"},{"id":"P6","left":"weight limit","right":"лимит веса (багажа)"},{"id":"P7","left":"to leave space","right":"оставить место (в чемодане)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b58c77b0-2e76-5787-9a8c-5e2d359d3710', '0860effd-7659-5184-ac69-fe5c10c91689', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The market is more original than the airport shops.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The market is more original than the airport shops."},{"id":"Q_B","is_correct":false,"text":"The market is originaler than the shops."},{"id":"Q_C","is_correct":false,"text":"The market is most original than the shops."}],"question":"Which sentence compares two shopping places correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a6655fcb-bbbb-5e92-ab94-975894f7e853', '0860effd-7659-5184-ac69-fe5c10c91689', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Tomorrow we are going to the market — the gifts there are more original than at the airport.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра мы пойдём на рынок — там подарки оригинальнее, чем в аэропорту.","target_language":"en","word_bank":["are","the","Tomorrow","going","—","did","to","airport.","the","more","the","at","than","there","gifts","are","went","market","yesterday","we","original"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9015f08-d777-5cb3-aa54-be81e1039777', '0860effd-7659-5184-ac69-fe5c10c91689', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"lower","instruction":"Выберите подходящее слово.","options":["lower","lowest","more low"],"sentence_template":"The market prices are ___ than in the shopping centre.","translation_hint":"Цены на рынке ниже, чем в торговом центре."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae3686e7-3365-5c1d-931e-9cf8620bd402', '0860effd-7659-5184-ac69-fe5c10c91689', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","buy","the","tea","as","a","gift","for","my","colleagues."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["buy","I","colleagues.","the","going","tea","was","for","to","as","my","gift","am","did","a"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e6b1884-3a99-5414-93d7-a10ad9d43c35', '0860effd-7659-5184-ac69-fe5c10c91689', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you leave some space in your suitcase, you will not sit on your souvenirs on the way home.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d3642aa-93b1-5c29-863b-b444e5bbb4af', '0860effd-7659-5184-ac69-fe5c10c91689', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you leave some space in your suitcase, you will not sit on your souvenirs on the way home.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если оставить в чемодане место, не придётся сидеть на сувенирах по дороге домой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb08b060-40c4-5b4e-9727-12c03d6feafe', '0860effd-7659-5184-ac69-fe5c10c91689', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I want to buy this ceramic set, but my suitcase is already full.","translation":"Хочу купить этот керамический набор, но чемодан уже полон.","type":"dialogue"},{"character":"Tom","text":"What is your weight limit?","translation":"Какой у тебя лимит веса?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If I wear my heaviest jacket, I can take the set."},{"is_correct":false,"text":"I worn it yesterday tomorrow."},{"is_correct":false,"text":"The suitcase is buying the ceramics."}],"text":"What should Anna do?","type":"choice"}],"title":"The Heavy Suitcase"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2afedf43-e039-5dbf-891b-33a3fbbffe1c', '0860effd-7659-5184-ac69-fe5c10c91689', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to wrap” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To cover something in paper as a present"},{"id":"D_B","is_correct":false,"text":"To pay extra for heavy luggage"},{"id":"D_C","is_correct":false,"text":"To open a box before giving it"}],"word":"to wrap"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22811898-1de5-5261-802a-5dfb65d42a15', '0860effd-7659-5184-ac69-fe5c10c91689', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"They are going to wrap it as a gift.","explanation":"The missing word is “wrap”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"wrap","id":"LW_A","is_correct":true},{"audio_text":"wrapped","id":"LW_B","is_correct":false},{"audio_text":"wrapping","id":"LW_C","is_correct":false}],"sentence_template":"They are going to ___ it as a gift."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0142b6b-2d19-5084-a662-2e771759ed74', '0860effd-7659-5184-ac69-fe5c10c91689', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cheaper","explanation":"The complete sentence is “The market is cheaper than duty-free.”.","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The market is ___ than duty-free."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96c2d43e-44ae-5b87-a280-8ceb743204a2', '0860effd-7659-5184-ac69-fe5c10c91689', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"market","id":"V1","text":"market"},{"audio_text":"duty-free","id":"V2","text":"duty-free"},{"audio_text":"more original","id":"V3","text":"more original"},{"audio_text":"to wrap","id":"V4","text":"to wrap"},{"audio_text":"as a gift","id":"V5","text":"as a gift"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c8dda02-0450-5105-9c54-501860c413e1', '0860effd-7659-5184-ac69-fe5c10c91689', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Where should I buy the local honey?"}],"explanation":"“At the Saturday market — if you go before ten, the choice will be better.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"At the Saturday market — if you go before ten, the choice will be better."},{"id":"C_B","is_correct":false,"text":"I bought it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The honey is buying me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('23f89e9f-f32d-5552-a479-1b402d5ac04d', '0860effd-7659-5184-ac69-fe5c10c91689', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ddf96733-8896-5518-8342-d6f8177b166c', NULL, 'Если нужно вернуть покупку', 'Объяснить возврат товара, используя should и первое условное.', '{"en":"If You Need a Return","ru":"Если нужно вернуть покупку"}'::jsonb, '{"en":"Explain returns using should and the first conditional.","ru":"Объяснить возврат товара, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b5be1d2-6eaa-50df-adf6-dba3fe2ef1ef', 'ddf96733-8896-5518-8342-d6f8177b166c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to refund","right":"вернуть деньги"},{"id":"P2","left":"exchange","right":"обмен"},{"id":"P3","left":"faulty","right":"бракованный"},{"id":"P4","left":"to keep the receipt","right":"сохранить чек"},{"id":"P5","left":"size","right":"размер"},{"id":"P6","left":"unworn","right":"ненадеванный"},{"id":"P7","left":"within fourteen days","right":"в течение четырнадцати дней"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('119dc573-f449-5c59-86b3-7686c5252f2a', 'ddf96733-8896-5518-8342-d6f8177b166c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should keep the receipt until you are home.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should keep the receipt until you are home."},{"id":"Q_B","is_correct":false,"text":"You should to keep it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must keeping it last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ced7f08-3e57-5f93-84fd-68da41266f7f', 'ddf96733-8896-5518-8342-d6f8177b166c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the goods are faulty, the shop must give you a refund.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если товар бракованный, магазин обязан вернуть деньги.","target_language":"en","word_bank":["give","a","refund.","must","are","goods","If","the","the","was","shop","you","faulty,","did","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b4ad6e14-eb95-50e6-b5eb-236fcc37a67f', 'ddf96733-8896-5518-8342-d6f8177b166c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"exchange","instruction":"Выберите подходящее слово.","options":["exchange","exchanging","exchanged"],"sentence_template":"If you want an ___, bring the unworn item with the receipt.","translation_hint":"Если нужен обмен, принесите неношеную вещь с чеком."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfbd3342-420d-5ec9-a048-0f6f58454e75', 'ddf96733-8896-5518-8342-d6f8177b166c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","souvenirs","for","cracks","before","buying."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["should","mustn''t","check","went","You","cracks","buying.","souvenirs","for","before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27076c50-bd71-5b1a-8ee9-26a9870a5223', 'ddf96733-8896-5518-8342-d6f8177b166c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you keep all your receipts in one envelope, any return will take five minutes.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e920b19-bee9-50f7-939c-e479601bbf58', 'ddf96733-8896-5518-8342-d6f8177b166c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you keep all your receipts in one envelope, any return will take five minutes.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если хранить все чеки в одном конверте, любой возврат займёт пять минут."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('964e2612-4e8e-53a9-a76c-d25092f187bb', 'ddf96733-8896-5518-8342-d6f8177b166c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tourist","text":"I bought this vase yesterday, and it has a crack on the side.","translation":"Я купил эту вазу вчера, а на ней трещина сбоку.","type":"dialogue"},{"character":"Seller","text":"Do you have the receipt with you?","translation":"Чек с вами?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, here it is — could I exchange it for an intact one?"},{"is_correct":false,"text":"Yes, I have it tomorrow yesterday."},{"is_correct":false,"text":"The crack is buying a new vase."}],"text":"What does the tourist show?","type":"choice"}],"title":"The Cracked Vase"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76071b96-74ae-5bf8-b36b-6c81789a0f91', 'ddf96733-8896-5518-8342-d6f8177b166c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“exchange” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To change an item you bought for a different one"},{"id":"D_B","is_correct":false,"text":"To get your money back completely"},{"id":"D_C","is_correct":false,"text":"To sell your old things to a shop"}],"word":"exchange"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7251b802-65bb-520d-90f9-0fa700c01e45', 'ddf96733-8896-5518-8342-d6f8177b166c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the item is faulty, they will refund you.","explanation":"The missing word is “faulty”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"faulty","id":"LW_A","is_correct":true},{"audio_text":"fault","id":"LW_B","is_correct":false},{"audio_text":"falsely","id":"LW_C","is_correct":false}],"sentence_template":"If the item is ___ , they will refund you."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3042b42-d595-5914-8b1c-2b812919987c', 'ddf96733-8896-5518-8342-d6f8177b166c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"receipt","explanation":"The complete sentence is “You should keep the receipt for two weeks.”.","hint_prefix":"re","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should keep the ___ for two weeks."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f59b334b-f05e-5ed7-b1ea-42c38537a36f', 'ddf96733-8896-5518-8342-d6f8177b166c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to refund","id":"V1","text":"to refund"},{"audio_text":"exchange","id":"V2","text":"exchange"},{"audio_text":"faulty","id":"V3","text":"faulty"},{"audio_text":"to keep the receipt","id":"V4","text":"to keep the receipt"},{"audio_text":"size","id":"V5","text":"size"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a0dba43-8874-502d-9075-7e724be93103', 'ddf96733-8896-5518-8342-d6f8177b166c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The jumper I bought is too small."}],"explanation":"“Take it back — if it is unworn and you have the receipt, they will exchange it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Take it back — if it is unworn and you have the receipt, they will exchange it."},{"id":"C_B","is_correct":false,"text":"I exchanged it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The jumper is returning me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('23f89e9f-f32d-5552-a479-1b402d5ac04d', 'ddf96733-8896-5518-8342-d6f8177b166c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9e07c630-1f18-5298-9fdd-975e1e55e6fe', 'en', 'souvenir', 'сувенир', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49ad8026-d8be-5c89-b6c8-639d34566f54', 'en', 'to bargain', 'торговаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5a895a23-9a6e-54db-b048-abcd9d283f06', 'en', 'handmade', 'ручной работы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d6b1206-8fd2-5798-8a2e-c446e5279d7a', 'en', 'to pay by card', 'платить картой', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9a8474a4-2ce5-580f-8eb2-7959cdfc4e60', 'en', 'discount', 'скидка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('478640e0-c4e8-5234-9e00-ca9b74dde93b', 'en', 'so far', 'до сих пор', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('549c6b96-2a2f-5cd8-84a4-e21cc897e522', 'en', 'market', 'рынок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2f1d5986-b203-58f4-9f7d-36d1617728f9', 'en', 'duty-free', 'duty-free / беспошлинный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b6bf8e0-3f98-51d9-86c0-451a6c4faf4c', 'en', 'more original', 'оригинальнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba4c7569-77eb-5bbd-88a9-74fb7432e571', 'en', 'to wrap', 'упаковать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d98c889b-8123-5aae-8f79-5019c1469edd', 'en', 'as a gift', 'в подарок', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59bb4f1e-a288-5c44-b4ac-f5373111a9fd', 'en', 'weight limit', 'лимит веса (багажа)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ffa3fcdd-9080-5c76-84fb-deb99ae40d27', 'en', 'to leave space', 'оставить место (в чемодане)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4aa4de57-3a30-5f4a-a383-892cf663a765', 'en', 'to refund', 'вернуть деньги', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1d37f8-e3e0-54f9-b81d-9effb30531a1', 'en', 'exchange', 'обмен', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07d1c350-d989-58a2-88e2-0b39b2760547', 'en', 'faulty', 'бракованный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f0c94b53-6b0d-5c0e-b600-17a57a2d955a', 'en', 'to keep the receipt', 'сохранить чек', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5cf317a5-f099-5831-a983-ec97f72f15d7', 'en', 'size', 'размер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d854e7e-f24f-537d-a8a2-040709d85c3e', 'en', 'unworn', 'ненадеванный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b017ba80-5664-51ef-a499-e8d095b91e6a', 'en', 'within fourteen days', 'в течение четырнадцати дней', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'souvenir' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to bargain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'handmade' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pay by card' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'discount' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '1274cb80-f62d-5cc9-a3b3-8789f76648a5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'so far' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'market' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'duty-free' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more original' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to wrap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'as a gift' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'weight limit' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, '0860effd-7659-5184-ac69-fe5c10c91689', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to leave space' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to refund' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'faulty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to keep the receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'size' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'unworn' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '23f89e9f-f32d-5552-a479-1b402d5ac04d', id, 'ddf96733-8896-5518-8342-d6f8177b166c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'within fourteen days' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
