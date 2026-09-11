-- Track: A2_LISTENING_SHADOWING_RESTAURANT_CONVERSATIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('239910a0-7a72-54ab-a6d8-6947bdb98ca9', 'A2_LISTENING_SHADOWING_RESTAURANT_CONVERSATIONS', 'Разговоры в ресторане', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Разговоры в ресторане».', '{"en":"Restaurant Conversations","ru":"Разговоры в ресторане"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for restaurant conversations.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Разговоры в ресторане»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9b46e23c-d01d-55ed-bc3b-aa7497449a8b', NULL, 'За столом на этой неделе', 'Понимать разговоры в ресторане, используя past simple и present perfect.', '{"en":"At the Table This Week","ru":"За столом на этой неделе"}'::jsonb, '{"en":"Understand restaurant talk using past simple and present perfect.","ru":"Понимать разговоры в ресторане, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('de33f307-2dda-5b87-8c44-0666f1adaf4d', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to be starving","right":"умирать с голоду"},{"id":"P2","left":"to order","right":"заказать"},{"id":"P3","left":"to recommend","right":"порекомендовать"},{"id":"P4","left":"special of the day","right":"блюдо дня"},{"id":"P5","left":"rare / medium / well-done","right":"с кровью / средне / прожарено"},{"id":"P6","left":"to book a table","right":"забронировать столик"},{"id":"P7","left":"starter","right":"закуска"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad24112d-0ef9-5cd9-80dc-6484bbaeedf6', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have already ordered the starters.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have already ordered the starters."},{"id":"Q_B","is_correct":false,"text":"We have ordered them yesterday."},{"id":"Q_C","is_correct":false,"text":"We order starters already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8b6b708-9988-53cc-8632-e96750d1c4b4', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"I was so starving that I ordered both a starter and the special of the day.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Я был так голоден, что взял и закуску, и блюдо дня.","target_language":"en","word_bank":["both","of","a","the","tomorrow","starving","I","that","and","be","was","so","the","did","starter","ordered","day.","I","special"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe9f6cc5-acd0-53cd-bdfd-9fc58f59396d', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"recommended","instruction":"Выберите подходящее слово.","options":["recommended","has recommend","recommending"],"sentence_template":"The waiter ___ the fish of the day last time we came.","translation_hint":"Официант порекомендовал рыбу дня в прошлый раз."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57397f61-3fab-50b0-8c35-5a4aae082d96', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","you","booked","a","table","for","Saturday?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","a","Saturday?","Have","for","booked","you","table","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5f73bf6-9d66-5b96-a211-af0ff4d937bd', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We have booked a table by the window, and the waiter has just brought the menu — the special today is grilled salmon.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3740e4fd-1bf0-5963-91a2-2251d637a9fc', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have booked a table by the window, and the waiter has just brought the menu — the special today is grilled salmon.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы забронировали столик у окна, и официант только что принёс меню — блюдо дня лосось на гриле."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aca4061b-718c-5927-8cac-c13666708219', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Waiter","text":"Are you ready to order, or do you need a few more minutes?","translation":"Вы готовы заказать или вам нужно ещё пару минут?","type":"dialogue"},{"character":"Guest","text":"Almost. What is the special of the day?","translation":"Почти. Что у вас блюдо дня?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Grilled salmon with vegetables — our chef has prepared it since morning."},{"is_correct":false,"text":"The salmon grilled itself yesterday."},{"is_correct":false,"text":"The special is ordering the guests."}],"text":"What does the waiter say?","type":"choice"}],"title":"Ordering Dinner"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9ae2ccd-bb04-56fb-9b2c-382613ad271d', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“special of the day” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A dish the restaurant offers only today"},{"id":"D_B","is_correct":false,"text":"A dish that is always on the menu"},{"id":"D_C","is_correct":false,"text":"A discount on all drinks this week"}],"word":"special of the day"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f49eb10-056c-563d-ae30-bffe89c948ec', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have booked a table for four.","explanation":"The missing word is “booked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"booked","id":"LW_A","is_correct":true},{"audio_text":"book","id":"LW_B","is_correct":false},{"audio_text":"booking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ a table for four."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ee41b34-397f-5021-b985-f62ca99c4b36', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"medium","explanation":"The complete sentence is “I would like my steak medium , please.”.","hint_prefix":"me","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I would like my steak ___ , please."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86a6907a-f331-58cd-9e84-eb9385aadf7b', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to be starving","id":"V1","text":"to be starving"},{"audio_text":"to order","id":"V2","text":"to order"},{"audio_text":"to recommend","id":"V3","text":"to recommend"},{"audio_text":"special of the day","id":"V4","text":"special of the day"},{"audio_text":"rare / medium / well-done","id":"V5","text":"rare / medium / well-done"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38c3c2b3-71b9-5e3f-a36b-f2f185903b5c', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Waiter","text":"How would you like your steak?"}],"explanation":"“Medium, please — last time well-done was too dry for me.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Medium, please — last time well-done was too dry for me."},{"id":"C_B","is_correct":false,"text":"I liked it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The steak is doing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('239910a0-7a72-54ab-a6d8-6947bdb98ca9', '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('944524ff-bfcc-5c8b-8424-7244d69c4a56', NULL, 'Куда пойдём в пятницу', 'Сравнить рестораны и спланировать ужин.', '{"en":"Where We Will Go on Friday","ru":"Куда пойдём в пятницу"}'::jsonb, '{"en":"Compare restaurants and plan a dinner.","ru":"Сравнить рестораны и спланировать ужин."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29d922d5-3c05-5ef3-9355-1122ed9d5f55', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"more affordable","right":"дешевле (по карману)"},{"id":"P2","left":"portions","right":"порции"},{"id":"P3","left":"to split the bill","right":"разделить счёт"},{"id":"P4","left":"quieter","right":"тише"},{"id":"P5","left":"vegetarian options","right":"вегетарианские позиции"},{"id":"P6","left":"to try out","right":"попробовать (новое место)"},{"id":"P7","left":"busy","right":"оживлённый (людный)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4562edf1-b357-5895-b2a7-5062edb8b89a', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The new place is more affordable than the one on the square.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The new place is more affordable than the one on the square."},{"id":"Q_B","is_correct":false,"text":"The new place is affordabler than that one."},{"id":"Q_C","is_correct":false,"text":"The place is most affordable than square."}],"question":"Which sentence compares two restaurants correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2fa74ed-dcc3-5e1c-bf3b-953b060d4f8f', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to try out a new place — the portions are bigger and the prices are lower.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся попробовать новое место — порции там больше, а цены ниже.","target_language":"en","word_bank":["are","bigger","portions","to","prices","the","lower.","tried","new","yesterday","are","the","and","We","did","out","going","try","are","a","place","—"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e350f7bc-3cb1-52f7-8700-c2d015cc2b50', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quieter","instruction":"Выберите подходящее слово.","options":["quieter","quietest","more quiet"],"sentence_template":"The corner cafe is ___ than the chain one.","translation_hint":"Угловое кафе тише сетевого."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('daa696cd-ffe6-556b-bb17-cb45de15d4e1', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["They","are","going","to","split","the","bill","as","usual."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["going","They","as","usual.","split","bill","was","are","the","to","did"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1914ec92-035c-5321-8f66-92e9da620368', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we arrive before seven, the kitchen will be less busy and we will get the table by the window.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c77d330f-a182-551a-a81e-76b406ec9b53', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we arrive before seven, the kitchen will be less busy and we will get the table by the window.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если прийти до семи, кухня будет менее загружена, и мы получим столик у окна."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ac988f6-271c-5445-b274-2b02def56d60', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Should we try the new Thai place on Friday?","translation":"Попробовать новое тайское место в пятницу?","type":"dialogue"},{"character":"Voice 2","text":"I have read the reviews. It is busier but cheaper than our usual one.","translation":"Я читал отзывы. Там люднее, но дешевле нашего обычного.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then let''s book early — do they have vegetarian options?"},{"is_correct":false,"text":"Then we booked it yesterday tomorrow."},{"is_correct":false,"text":"Is the Thai place reading us reviews?"}],"text":"What does Voice 1 say?","type":"choice"}],"title":"Friday Dinner"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('118ec449-dd0b-548c-8c32-b129ba57dba6', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to split the bill” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Each person pays their own part of the bill"},{"id":"D_B","is_correct":false,"text":"One person pays the whole bill"},{"id":"D_C","is_correct":false,"text":"The restaurant gives a discount for groups"}],"word":"to split the bill"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23184b4e-0296-5afe-b139-fa5889508a75', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to split the bill.","explanation":"The missing word is “split”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"split","id":"LW_A","is_correct":true},{"audio_text":"splitted","id":"LW_B","is_correct":false},{"audio_text":"splitting","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ the bill."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb3c67f0-b7d5-53e3-b779-6d408ee60ad9', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “Home cooking is more affordable.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Home cooking is ___ affordable."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caf54393-a07b-5539-ae85-cfe01eb99d00', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"more affordable","id":"V1","text":"more affordable"},{"audio_text":"portions","id":"V2","text":"portions"},{"audio_text":"to split the bill","id":"V3","text":"to split the bill"},{"audio_text":"quieter","id":"V4","text":"quieter"},{"audio_text":"vegetarian options","id":"V5","text":"vegetarian options"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea81b908-0bcc-51a9-8c0c-37fd834a9921', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Shall we invite the whole team?"}],"explanation":"“Why not — if we book the long table, they will even bring the birthday dessert for free.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Why not — if we book the long table, they will even bring the birthday dessert for free."},{"id":"C_B","is_correct":false,"text":"I invited them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The team is dining us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('239910a0-7a72-54ab-a6d8-6947bdb98ca9', '944524ff-bfcc-5c8b-8424-7244d69c4a56', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('7a7d83ab-7298-57ce-9345-abf96b7ca654', NULL, 'Если еда пришла не той', 'Понимать решение проблем в ресторане, используя should и первое условное.', '{"en":"If the Dish Comes Wrong","ru":"Если еда пришла не той"}'::jsonb, '{"en":"Understand solving restaurant problems using should and the first conditional.","ru":"Понимать решение проблем в ресторане, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2060c54f-6a8f-5053-a8b4-59280cf915bf', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to complain","right":"пожаловаться"},{"id":"P2","left":"to send back","right":"вернуть (блюдо)"},{"id":"P3","left":"cold","right":"холодный (о еде)"},{"id":"P4","left":"to make a mistake","right":"ошибиться"},{"id":"P5","left":"on the house","right":"за счёт заведения"},{"id":"P6","left":"apology","right":"извинение"},{"id":"P7","left":"tip","right":"чаевые"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cdf463e-8ff8-5d05-bbb8-86dedce2d010', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should complain politely if the dish is cold.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should complain politely if the dish is cold."},{"id":"Q_B","is_correct":false,"text":"You should to complain it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must complaining last dinner."}],"question":"Which sentence gives correct restaurant advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d6609f5-f496-54db-8162-6ec66cef503d', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the dish arrives cold, you should send it back politely — the chef will remake it.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если блюдо принесли холодным, вежливо верните его — повар переделает.","target_language":"en","word_bank":["did","it.","cold,","will","If","arrived","dish","—","you","send","should","chef","politely","remake","arrives","back","the","the","it","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c67bf57b-ef8a-51c2-945c-8926f39c6f78', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"made","instruction":"Выберите подходящее слово.","options":["made","will make","makes"],"sentence_template":"If the waiter ___ a mistake, the dessert will be on the house.","translation_hint":"Если официант ошибся, десерт будет за счёт заведения."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12ebeb57-8753-5d9c-901b-72bd13570e13', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","still","leave","a","tip","if","they","fixed","the","problem."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["problem.","if","fixed","should","the","they","You","leave","tip","a","mustn''t","went","still"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('659d8d62-a7e4-547c-8a3d-d6dc49acc7c4', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you send the dish back calmly and explain the problem, the staff will respect you and fix it faster.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('501b2bcf-84bd-5236-93f1-abaa883116ef', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you send the dish back calmly and explain the problem, the staff will respect you and fix it faster.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если спокойно вернуть блюдо и объяснить проблему, персонал отнесётся с уважением и исправит быстрее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed3d3eab-30a2-57a3-a361-c3a61232fd55', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Guest","text":"Excuse me, the soup is cold — could you warm it up?","translation":"Извините, суп холодный — можно его подогреть?","type":"dialogue"},{"character":"Waiter","text":"I am terribly sorry. I will take it back right away.","translation":"Мне очень жаль. Я сразу заберу его.","type":"dialogue"},{"options":[{"is_correct":true,"text":"And your coffee will be on the house, of course."},{"is_correct":false,"text":"And your coffee was on the house yesterday."},{"is_correct":false,"text":"The soup is warming the kitchen up."}],"text":"What might the waiter add?","type":"choice"}],"title":"The Cold Soup"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7050df90-896e-57f7-a0c5-644c440f1f2e', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“on the house” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Given free by the restaurant"},{"id":"D_B","is_correct":false,"text":"Cooked at home before the dinner"},{"id":"D_C","is_correct":false,"text":"The most expensive dish on the menu"}],"word":"on the house"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b48260a-df5e-5c2e-9512-4ffffce50cd4', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the order is wrong, send it back.","explanation":"The missing word is “send”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"send","id":"LW_A","is_correct":true},{"audio_text":"will send","id":"LW_B","is_correct":false},{"audio_text":"sent","id":"LW_C","is_correct":false}],"sentence_template":"If the order is wrong, ___ it back."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e70bace-fdf7-542d-8209-70343eb37ab2', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"mistake","explanation":"The complete sentence is “They made a mistake with our table.”.","hint_prefix":"mi","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"They made a ___ with our table."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c84b609-fae4-55a1-9b47-586d228d6fc3', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to complain","id":"V1","text":"to complain"},{"audio_text":"to send back","id":"V2","text":"to send back"},{"audio_text":"cold","id":"V3","text":"cold"},{"audio_text":"to make a mistake","id":"V4","text":"to make a mistake"},{"audio_text":"on the house","id":"V5","text":"on the house"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('21f1a4bf-e6ca-5272-b068-48a2b9d54b85', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"They forgot my whole main course!"}],"explanation":"“Call the waiter — if you ask now, it will still arrive before our desserts.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Call the waiter — if you ask now, it will still arrive before our desserts."},{"id":"C_B","is_correct":false,"text":"He forgot it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The course is forgetting us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('239910a0-7a72-54ab-a6d8-6947bdb98ca9', '7a7d83ab-7298-57ce-9345-abf96b7ca654', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5735b558-18a2-5693-ade5-540f58e8e52b', 'en', 'to be starving', 'умирать с голоду', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('14d904c6-b321-5be8-bd49-f652e01921dd', 'en', 'to order', 'заказать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a9c7-ccb0-5bbe-bc59-8df91202fb08', 'en', 'to recommend', 'порекомендовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6b38855-3fc3-51b8-9aab-b64ab5966af5', 'en', 'special of the day', 'блюдо дня', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dfd1dcda-34a8-5fc6-9bb9-72e0b5484792', 'en', 'rare / medium / well-done', 'с кровью / средне / прожарено', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3599636e-eea3-5000-9905-59d5a864d57c', 'en', 'to book a table', 'забронировать столик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a910a572-904a-5ca9-9264-71c2e124482f', 'en', 'starter', 'закуска', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a9d209ce-b4c6-533c-a3fa-d23d42690681', 'en', 'more affordable', 'дешевле (по карману)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a857e5a6-68b0-5b10-a4b7-6b027262eacb', 'en', 'portions', 'порции', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('942644eb-6c08-5f5a-aa0c-88ce86d41e63', 'en', 'to split the bill', 'разделить счёт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6b48ef6-8e68-55c0-af34-fee291907be6', 'en', 'quieter', 'тише', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7068edd7-9b53-5b1e-a6a5-200b05d5c57b', 'en', 'vegetarian options', 'вегетарианские позиции', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d80ef7e0-26ab-5238-a31d-e1c38724e37d', 'en', 'to try out', 'попробовать (новое место)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f343c5ee-04c6-5e9d-811d-b6d8069022fd', 'en', 'busy', 'оживлённый (людный)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('016ed52a-4126-5b70-97fd-2772291d4fdc', 'en', 'to complain', 'пожаловаться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d1ce87f-1187-5aae-9835-bd3ba686ccfc', 'en', 'to send back', 'вернуть (блюдо)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd13c9e8-0307-5406-8567-bff98cbc72f4', 'en', 'cold', 'холодный (о еде)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e127f43e-18a1-5cf4-b02a-9d6ab168617e', 'en', 'to make a mistake', 'ошибиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7182c5ff-f4f2-505b-a881-836b137eb197', 'en', 'on the house', 'за счёт заведения', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e3cc91fe-0117-57ab-bffb-577a1e6374c6', 'en', 'apology', 'извинение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e1293a25-60a1-5eca-9cb8-1855c1065eaa', 'en', 'tip', 'чаевые', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to be starving' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'to order' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'special of the day' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'rare / medium / well-done' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to book a table' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '9b46e23c-d01d-55ed-bc3b-aa7497449a8b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'starter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'more affordable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'portions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to split the bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'quieter' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'vegetarian options' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '944524ff-bfcc-5c8b-8424-7244d69c4a56', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'busy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to complain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to send back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'cold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to make a mistake' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'on the house' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'apology' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '239910a0-7a72-54ab-a6d8-6947bdb98ca9', id, '7a7d83ab-7298-57ce-9345-abf96b7ca654', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'tip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
