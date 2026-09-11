-- Track: A2_TRAVEL_AIRPORT_CHECK_IN_AND_SECURITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('d511e102-1d60-595c-9c3b-6afaca600d79', 'A2_TRAVEL_AIRPORT_CHECK_IN_AND_SECURITY', 'Регистрация и контроль в аэропорту', 'Развивайте английский для путешествий уровня A2 по теме «Регистрация и контроль в аэропорту».', '{"en":"Airport Check-in and Security","ru":"Регистрация и контроль в аэропорту"}'::jsonb, '{"en":"Develop A2 travel English for airport check-in and security.","ru":"Развивайте английский для путешествий уровня A2 по теме «Регистрация и контроль в аэропорту»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('51c5a1c2-cbe9-5208-9dbe-eebc0417a466', NULL, 'Регистрация в аэропорту', 'Рассказать о регистрации на рейс, используя past simple и present perfect.', '{"en":"At the Check-in Desk","ru":"Регистрация в аэропорту"}'::jsonb, '{"en":"Talk about check-in using past simple and present perfect.","ru":"Рассказать о регистрации на рейс, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2d87866-b1d4-5c40-9c53-8facdaa2c76d', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"check-in desk","right":"стойка регистрации"},{"id":"P2","left":"boarding pass","right":"посадочный талон"},{"id":"P3","left":"luggage","right":"багаж"},{"id":"P4","left":"to weigh","right":"взвесить"},{"id":"P5","left":"aisle seat","right":"место у прохода"},{"id":"P6","left":"overweight","right":"перевес (багажа)"},{"id":"P7","left":"to print","right":"распечатать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4844385e-415e-5ced-ac9f-4bd6ef7261d1', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The airline has already changed our gate twice.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The airline has already changed our gate twice."},{"id":"Q_B","is_correct":false,"text":"The airline has changed the gate yesterday."},{"id":"Q_C","is_correct":false,"text":"The airline change the gate already twice."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e67904fe-951c-5772-beb2-48f9c43c184a', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"My suitcase weighed twenty-three kilos, and I paid for the extra weight.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мой чемодан весил двадцать три килограмма, и я заплатил за перевес.","target_language":"en","word_bank":["kilos,","weight.","paid","suitcase","and","extra","My","weighs","the","weighed","I","tomorrow","did","for","twenty-three"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a6550ee-5668-59a7-9b70-90729ea94094', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"checked","instruction":"Выберите подходящее слово.","options":["checked","has check","checking"],"sentence_template":"She ___ in online and printed the boarding pass at home.","translation_hint":"Она зарегистрировалась онлайн и распечатала посадочный талон дома."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26078e95-9fe4-59ca-b8c0-c32867f4697e', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","have","already","passed","through","security."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","We","already","passed","security.","did","through","have"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f5ab13d-228a-5d1f-b020-793c2dffb90f', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"I have checked in online, but the desk has printed a different seat for me.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0f6732d-fa95-53ce-b2c0-d568e38044aa', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"I have checked in online, but the desk has printed a different seat for me.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Я зарегистрировался онлайн, но на стойке мне распечатали другое место."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44413d69-fda3-5ddf-a71c-3860c29b5d54', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Agent","text":"Good morning. May I see your passport, please?","translation":"Доброе утро. Можно ваш паспорт?","type":"dialogue"},{"character":"Traveller","text":"Here it is. Is the flight on time?","translation":"Вот, пожалуйста. Рейс по расписанию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, it is. Your suitcase is two kilos overweight, I''m afraid."},{"is_correct":false,"text":"Yes, it was overweight yesterday tomorrow."},{"is_correct":false,"text":"The suitcase is flying itself."}],"text":"What does the agent say next?","type":"choice"}],"title":"The Overweight Suitcase"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14bd92c4-31c2-5861-82c7-72bc090189af', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“boarding pass” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The document that lets you get on a plane"},{"id":"D_B","is_correct":false,"text":"A ticket you buy at a museum entrance"},{"id":"D_C","is_correct":false,"text":"A passport photo you carry separately"}],"word":"boarding pass"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('14cda5bf-ab40-5044-a6bf-f54c3c8e2878', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have checked in for the evening flight.","explanation":"The missing word is “checked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"checked","id":"LW_A","is_correct":true},{"audio_text":"check","id":"LW_B","is_correct":false},{"audio_text":"checking","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ in for the evening flight."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41cd3f83-c7ef-534a-909e-dab2a4d979a3', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"aisle","explanation":"The complete sentence is “She has chosen an aisle seat.”.","hint_prefix":"ai","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"She has chosen an ___ seat."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88a74cbe-c907-527d-8199-36ebf0abf71b', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"check-in desk","id":"V1","text":"check-in desk"},{"audio_text":"boarding pass","id":"V2","text":"boarding pass"},{"audio_text":"luggage","id":"V3","text":"luggage"},{"audio_text":"to weigh","id":"V4","text":"to weigh"},{"audio_text":"aisle seat","id":"V5","text":"aisle seat"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dea3c4f-4210-529b-9995-b169bdc78960', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Agent","text":"Would you like a window or an aisle seat?"}],"explanation":"“An aisle seat, please — I have already travelled with a window seat twice.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"An aisle seat, please — I have already travelled with a window seat twice."},{"id":"C_B","is_correct":false,"text":"A window seat, I take it tomorrow yesterday."},{"id":"C_C","is_correct":false,"text":"The seat is choosing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d511e102-1d60-595c-9c3b-6afaca600d79', '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2b494758-553e-59c7-aad2-b76cfe582f0a', NULL, 'Завтра вылетаем', 'Обсудить подготовку к вылету, используя формы будущего и сравнения.', '{"en":"Flying Out Tomorrow","ru":"Завтра вылетаем"}'::jsonb, '{"en":"Discuss departure preparations using future forms and comparatives.","ru":"Обсудить подготовку к вылету, используя формы будущего и сравнения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c490ee5-df5d-5511-a9e8-51dbac0900d6', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"departure time","right":"время вылета"},{"id":"P2","left":"to arrive in advance","right":"приехать заранее"},{"id":"P3","left":"earlier","right":"раньше"},{"id":"P4","left":"hand luggage","right":"ручная кладь"},{"id":"P5","left":"security rules","right":"правила безопасности"},{"id":"P6","left":"liquid","right":"жидкость"},{"id":"P7","left":"faster","right":"быстрее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47206351-f878-56ab-8f55-8f0f5b94a532', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are going to leave for the airport at six tomorrow.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are going to leave for the airport at six tomorrow."},{"id":"Q_B","is_correct":false,"text":"We left for the airport at six yesterday."},{"id":"Q_C","is_correct":false,"text":"We has left at six tomorrow already."}],"question":"Which sentence talks about a future plan?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43ae4a90-ce83-5b40-a460-f2c2fa1ae082', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to arrive at the airport in advance because security takes longer in the morning.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы приедем в аэропорт заранее, потому что утром контроль безопасности дольше.","target_language":"en","word_bank":["morning.","airport","advance","because","did","to","longer","in","the","We","in","at","the","takes","arrived","arrive","are","going","security","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ad21c36-d10c-51d9-9b1e-4350d164dcab', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"quicker","instruction":"Выберите подходящее слово.","options":["quicker","quickest","more quick"],"sentence_template":"Travelling with hand luggage only is ___ than checking in a suitcase.","translation_hint":"Путешествовать только с ручной кладью быстрее, чем сдавать чемодан."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9af733fa-66de-5d1a-9fd0-690be5179c37', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","put","all","liquids","into","the","transparent","bag."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["all","transparent","bag.","to","did","put","I","going","am","liquids","was","into","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24047684-582f-587f-aa31-c77fdb9b22a5', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we arrive two hours before departure, we will have time for a coffee after security.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c53f87a9-98e4-5b59-ae25-5c31444967e4', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we arrive two hours before departure, we will have time for a coffee after security.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если приехать за два часа до вылета, останется время на кофе после контроля."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ae43c82-19b8-584d-9de3-e3a4f668188a', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"What time are we leaving for the airport tomorrow?","translation":"Во сколько завтра выезжаем в аэропорт?","type":"dialogue"},{"character":"Tom","text":"The taxi is coming at six — the flight leaves at half past eight.","translation":"Такси приедет в шесть — рейс в восемь тридцать.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Is two and a half hours enough for this airport?"},{"is_correct":false,"text":"Did two hours were enough yesterday?"},{"is_correct":false,"text":"Is the taxi flying with us tomorrow?"}],"text":"What does Anna ask?","type":"choice"}],"title":"Morning Plans"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e912941-5e95-518f-8dc9-1a7beb74d4b8', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“hand luggage” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The small bag you can take onto the plane"},{"id":"D_B","is_correct":false,"text":"The big suitcase you give at the check-in desk"},{"id":"D_C","is_correct":false,"text":"A bag the airline lost last month"}],"word":"hand luggage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb248455-8457-5ae9-bed7-80fefd1b3da2', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to check in online tonight.","explanation":"The missing word is “going”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"going","id":"LW_A","is_correct":true},{"audio_text":"went","id":"LW_B","is_correct":false},{"audio_text":"gone","id":"LW_C","is_correct":false}],"sentence_template":"We are ___ to check in online tonight."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cff5b0a3-3ffc-55d7-8d7e-6c7347a54b14', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"faster","explanation":"The complete sentence is “Online check-in is faster than the desk.”.","hint_prefix":"fa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Online check-in is ___ than the desk."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('165eb1e5-6a29-51b2-83a5-cd16b6ce59b0', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"departure time","id":"V1","text":"departure time"},{"audio_text":"to arrive in advance","id":"V2","text":"to arrive in advance"},{"audio_text":"earlier","id":"V3","text":"earlier"},{"audio_text":"hand luggage","id":"V4","text":"hand luggage"},{"audio_text":"security rules","id":"V5","text":"security rules"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('781af8e6-e2f0-5c76-b909-0225c1cc4595', '2b494758-553e-59c7-aad2-b76cfe582f0a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Do we need to print the boarding passes?"}],"explanation":"“No — if we check in on the app, the mobile pass will be enough.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No — if we check in on the app, the mobile pass will be enough."},{"id":"C_B","is_correct":false,"text":"Yes, I printed them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The passes are printing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d511e102-1d60-595c-9c3b-6afaca600d79', '2b494758-553e-59c7-aad2-b76cfe582f0a', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cfbb35b4-b9df-549a-8209-6d1c2ce91160', NULL, 'На контроле безопасности', 'Объяснить правила досмотра, используя should и первое условное.', '{"en":"At the Security Check","ru":"На контроле безопасности"}'::jsonb, '{"en":"Explain security rules using should and the first conditional.","ru":"Объяснить правила досмотра, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dfb1b5c-65e8-51b2-9ccf-38d43792aa68', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to take out","right":"достать"},{"id":"P2","left":"belt","right":"ремень"},{"id":"P3","left":"tray","right":"лоток"},{"id":"P4","left":"scanner","right":"сканер"},{"id":"P5","left":"to beep","right":"запищать"},{"id":"P6","left":"sharp objects","right":"острые предметы"},{"id":"P7","left":"to remove","right":"снять"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60527218-d5de-51c7-a7a1-8cff5a79354e', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You must take your laptop out of the bag.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You must take your laptop out of the bag."},{"id":"Q_B","is_correct":false,"text":"You must to take it out yesterday."},{"id":"Q_C","is_correct":false,"text":"You musts take it out last week."}],"question":"Which sentence expresses a rule at security?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3627dcab-2f93-5da9-aca7-009ed3e2f0ab', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If there are sharp objects in your luggage, they will be taken away at the check.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если у вас в багаже окажутся острые предметы, их заберут на контроле.","target_language":"en","word_bank":["are","there","luggage,","objects","was","they","at","your","away","yesterday","If","check.","will","sharp","be","the","did","taken","in"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e1b3a83-4cb0-50d4-a426-81649a9ba019', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"beeps","instruction":"Выберите подходящее слово.","options":["beeps","will beep","beeped"],"sentence_template":"If the scanner ___, the officer will check you again.","translation_hint":"Если сканер запищит, сотрудник проверит вас ещё раз."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51efe18f-c774-5977-a4ae-966916bdca5b', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","remove","your","belt","before","the","scanner."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["remove","scanner.","went","belt","the","You","mustn''t","should","before","your"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32ed3a6c-e554-5d1d-b780-0a9603a2a2bc', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you take out your laptop and liquids first, you will pass through security much faster.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f9431f7-e105-5d52-98bb-166d46866d5b', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you take out your laptop and liquids first, you will pass through security much faster.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сначала достать ноутбук и жидкости, вы пройдете контроль гораздо быстрее."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('adc79a38-ded0-5cc7-990d-303620a20f4f', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Officer","text":"Please put your bag in the tray and take out your laptop.","translation":"Пожалуйста, положите сумку в лоток и достаньте ноутбук.","type":"dialogue"},{"character":"Traveller","text":"Sorry, I forgot about the liquids in my pocket.","translation":"Извините, я забыл про жидкости в кармане.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That''s fine, but next time you should check your pockets first."},{"is_correct":false,"text":"You must checking your pockets yesterday."},{"is_correct":false,"text":"The pocket is beeping the liquids."}],"text":"What does the officer say?","type":"choice"}],"title":"The Beeping Scanner"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d9694f1-d639-5358-8c86-520e8bdafd68', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“tray” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A plastic box where you put your things at security"},{"id":"D_B","is_correct":false,"text":"A seat next to the window on the plane"},{"id":"D_C","is_correct":false,"text":"A shop in the departure area"}],"word":"tray"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('44000911-c5e8-5779-bff9-97f05cd6f357', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the machine beeps, step aside, please.","explanation":"The missing word is “beeps”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"beeps","id":"LW_A","is_correct":true},{"audio_text":"will beep","id":"LW_B","is_correct":false},{"audio_text":"beeped","id":"LW_C","is_correct":false}],"sentence_template":"If the machine ___, step aside, please."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a17c81d-1e46-54a3-81b1-0b7af3ff5eac', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"sharp","explanation":"The complete sentence is “You must remove sharp objects from hand luggage.”.","hint_prefix":"sh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You must remove ___ objects from hand luggage."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37194a83-565f-5d59-b169-bdf6936721d4', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to take out","id":"V1","text":"to take out"},{"audio_text":"belt","id":"V2","text":"belt"},{"audio_text":"tray","id":"V3","text":"tray"},{"audio_text":"scanner","id":"V4","text":"scanner"},{"audio_text":"to beep","id":"V5","text":"to beep"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57cdba5d-0c5c-58bd-8497-21c2ef414690', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Officer","text":"Do you have any liquids in your bag?"}],"explanation":"“Only a small one — if it is under one hundred millilitres, it will be fine, won''t it?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Only a small one — if it is under one hundred millilitres, it will be fine, won''t it?"},{"id":"C_B","is_correct":false,"text":"Yes, I have it tomorrow yesterday."},{"id":"C_C","is_correct":false,"text":"The liquids are checking me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('d511e102-1d60-595c-9c3b-6afaca600d79', 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9364c8d2-5817-50f6-bfbc-d1a12333dc09', 'en', 'check-in desk', 'стойка регистрации', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3175b097-4686-51f8-8298-0f4d33306ad1', 'en', 'boarding pass', 'посадочный талон', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('40de5379-ff0a-5f24-8b9b-6c8600e4fe76', 'en', 'luggage', 'багаж', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6477b6c-1b01-5372-bb78-46577f135b73', 'en', 'to weigh', 'взвесить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('982fd314-4f02-5263-89f2-d9c5576b579e', 'en', 'aisle seat', 'место у прохода', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46519bcb-c799-5acb-8b08-ca4ee44d61a4', 'en', 'overweight', 'перевес (багажа)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f7fb1095-c86f-53d3-ab13-84bc8282ae38', 'en', 'to print', 'распечатать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('194833ec-7410-5a34-83d4-dfc4b75b4462', 'en', 'departure time', 'время вылета', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e533c758-3d3b-57f5-89fc-3a69a7f1f185', 'en', 'to arrive in advance', 'приехать заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('91aa292d-0d4b-58f7-a029-07d791531f6b', 'en', 'earlier', 'раньше', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('598b2e9e-e470-571a-a4ee-c5d72150e204', 'en', 'hand luggage', 'ручная кладь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2f693dfb-bc24-5424-850f-80089c829388', 'en', 'security rules', 'правила безопасности', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dc3283d4-f034-5c96-bc33-be489949c6ae', 'en', 'liquid', 'жидкость', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a4b43ee9-777a-5164-b53b-1e1787c7aa0e', 'en', 'faster', 'быстрее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4777dc3c-5a13-5b0b-9110-a2ca87d18c76', 'en', 'to take out', 'достать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3060d831-1526-5509-9acc-7fb868b15f7d', 'en', 'belt', 'ремень', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9fc18a0c-2a88-558c-aeb0-dd4c21bbc2ee', 'en', 'tray', 'лоток', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('395241bd-9643-5ecf-afd2-a1b1f4f35cae', 'en', 'scanner', 'сканер', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('39a3a425-c1d4-51c1-9a89-70053c24a00e', 'en', 'to beep', 'запищать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a3aa9be1-51ff-5d5c-b591-1dfdf3efce74', 'en', 'sharp objects', 'острые предметы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b35dbbb1-d56d-5e69-9ade-631c5c41ff45', 'en', 'to remove', 'снять', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'check-in desk' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'boarding pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'luggage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to weigh' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'aisle seat' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'overweight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '51c5a1c2-cbe9-5208-9dbe-eebc0417a466', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'to print' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to arrive in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'earlier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'hand luggage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'security rules' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'liquid' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, '2b494758-553e-59c7-aad2-b76cfe582f0a', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'faster' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take out' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'belt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'tray' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'scanner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to beep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'sharp objects' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'd511e102-1d60-595c-9c3b-6afaca600d79', id, 'cfbb35b4-b9df-549a-8209-6d1c2ce91160', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to remove' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
