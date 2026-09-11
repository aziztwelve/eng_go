-- Track: A2_TRAVEL_SIGHTSEEING_AND_LOCAL_ACTIVITIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5c121400-a7d8-534c-aa05-91d76ae611b2', 'A2_TRAVEL_SIGHTSEEING_AND_LOCAL_ACTIVITIES', 'Достопримечательности и местные занятия', 'Развивайте английский для путешествий уровня A2 по теме «Достопримечательности и местные занятия».', '{"en":"Sightseeing and Local Activities","ru":"Достопримечательности и местные занятия"}'::jsonb, '{"en":"Develop A2 travel English for sightseeing and local activities.","ru":"Развивайте английский для путешествий уровня A2 по теме «Достопримечательности и местные занятия»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('935a14c1-a1d7-5229-81d5-d3fa98bfee3b', NULL, 'Экскурсия, которая удалась', 'Рассказать об экскурсиях, используя past simple и present perfect.', '{"en":"The Tour That Worked Out","ru":"Экскурсия, которая удалась"}'::jsonb, '{"en":"Talk about sightseeing using past simple and present perfect.","ru":"Рассказать об экскурсиях, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fff283d-b9b9-57f0-8ddf-0859f75aa1c2', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"guided tour","right":"экскурсия с гидом"},{"id":"P2","left":"exhibition","right":"выставка"},{"id":"P3","left":"to skip the line","right":"пройти без очереди"},{"id":"P4","left":"opening hours","right":"часы работы"},{"id":"P5","left":"crowded","right":"многолюдный"},{"id":"P6","left":"to take photos","right":"фотографировать"},{"id":"P7","left":"worth","right":"стоящий (того)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('540c6f63-5358-53aa-82ed-a4b0ac444b18', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have already visited two museums today.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have already visited two museums today."},{"id":"Q_B","is_correct":false,"text":"We have visited two museums yesterday."},{"id":"Q_C","is_correct":false,"text":"We visit two museums already today."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4920502f-24a2-5fcb-8318-66bffc853a2a', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We arrived at nine in the morning and skipped the line into the cathedral.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы пришли к девяти утра и прошли в собор без очереди.","target_language":"en","word_bank":["arrived","and","in","cathedral.","the","tomorrow","morning","arrive","line","skipped","at","the","We","nine","the","into","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9ffccd75-d939-5b14-92e4-fe00601d52fb', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"opened","instruction":"Выберите подходящее слово.","options":["opened","has open","opening"],"sentence_template":"The gallery ___ at ten o''clock last Sunday.","translation_hint":"Галерея открылась в десять в прошлое воскресенье."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5424ab10-c214-516d-bcd2-afb8d9d36d97', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","taken","more","than","two","hundred","photos","today."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["photos","did","has","more","was","She","two","hundred","today.","taken","than"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fde3faf-0014-54af-8a06-ffa8a67b53cf', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The old town was less crowded in the evening, and we have finally seen the famous tower without queues.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47305c08-4401-5009-9c76-547ce38918a2', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The old town was less crowded in the evening, and we have finally seen the famous tower without queues.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Старый город вечером был менее многолюдным, и мы наконец увидели знаменитую башню без очередей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('041891e2-dd36-524a-8348-2aec76636961', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"The queue for the castle is enormous — two hours, the sign says.","translation":"Очередь в замок огромная — на табличке два часа.","type":"dialogue"},{"character":"Anna","text":"Have you checked the online tickets?","translation":"Ты проверил онлайн-билеты?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, the e-ticket holders have skipped the line all morning."},{"is_correct":false,"text":"Yes, they skipped it yesterday tomorrow."},{"is_correct":false,"text":"The queue is visiting the castle itself."}],"text":"What does Tom say?","type":"choice"}],"title":"The Long Queue"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea6dc3ad-0c59-573b-b91c-0446e3f3bf3c', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“opening hours” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The times when a place is open to visitors"},{"id":"D_B","is_correct":false,"text":"The price of a single entrance ticket"},{"id":"D_C","is_correct":false,"text":"A tour that happens every hour"}],"word":"opening hours"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c955b645-d1b5-5d95-aa61-43a143476ee6', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have explored the whole old town.","explanation":"The missing word is “explored”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"explored","id":"LW_A","is_correct":true},{"audio_text":"explore","id":"LW_B","is_correct":false},{"audio_text":"exploring","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ the whole old town."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('58c2092c-9edd-5d59-8673-1a4f920a5c6b', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"worth","explanation":"The complete sentence is “The exhibition was worth the price.”.","hint_prefix":"wo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The exhibition was ___ the price."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('caaa8f45-a671-563b-a671-639db8101f7b', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"guided tour","id":"V1","text":"guided tour"},{"audio_text":"exhibition","id":"V2","text":"exhibition"},{"audio_text":"to skip the line","id":"V3","text":"to skip the line"},{"audio_text":"opening hours","id":"V4","text":"opening hours"},{"audio_text":"crowded","id":"V5","text":"crowded"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d18a241-e760-5b58-870f-87c99656f585', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Guide","text":"Did you enjoy the walking tour?"}],"explanation":"“Very much — it was more interesting than the bus tour we took last year.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Very much — it was more interesting than the bus tour we took last year."},{"id":"C_B","is_correct":false,"text":"I enjoyed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The tour is enjoying us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5c121400-a7d8-534c-aa05-91d76ae611b2', '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('666b7a59-e013-5964-b38a-62b895510255', NULL, 'Планы на выходные', 'Спланировать осмотр достопримечательностей и сравнить активности.', '{"en":"Weekend Plans","ru":"Планы на выходные"}'::jsonb, '{"en":"Plan sightseeing and compare activities.","ru":"Спланировать осмотр достопримечательностей и сравнить активности."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a696cd26-5530-5d22-ba64-b0040479646f', '666b7a59-e013-5964-b38a-62b895510255', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"boat trip","right":"прогулка на лодке"},{"id":"P2","left":"more relaxing","right":"расслабляющий (более спокойный)"},{"id":"P3","left":"to climb","right":"подняться на (возвышенность)"},{"id":"P4","left":"sunset","right":"закат"},{"id":"P5","left":"to rent","right":"взять напрокат"},{"id":"P6","left":"local guide","right":"местный гид"},{"id":"P7","left":"busier","right":"оживлённее"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28dc894b-b314-52e0-a2ca-f2fcf2bfa243', '666b7a59-e013-5964-b38a-62b895510255', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The boat trip is more relaxing than the mountain hike.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The boat trip is more relaxing than the mountain hike."},{"id":"Q_B","is_correct":false,"text":"The boat trip is relaxingest than the hike."},{"id":"Q_C","is_correct":false,"text":"The boat trip is more relax than the hike."}],"question":"Which sentence compares two activities correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e28d4a58-3ffb-5809-85ce-a8cf24408d88', '666b7a59-e013-5964-b38a-62b895510255', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"On Saturday we are going to rent bikes and ride to the beach.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"В субботу мы собираемся взять напрокат велосипеды и поехать к пляжу.","target_language":"en","word_bank":["beach.","rented","to","bikes","rent","and","yesterday","did","On","Saturday","to","we","the","are","going","ride"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6ee662a-fef1-5d11-85d4-37926a7fe01a', '666b7a59-e013-5964-b38a-62b895510255', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"busier","instruction":"Выберите подходящее слово.","options":["busier","busiest","more busy"],"sentence_template":"The square at sunset is ___ than at noon.","translation_hint":"Площадь на закате оживлённее, чем в полдень."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('780d8cb2-c3e7-5d93-b719-775d182e8c5c', '666b7a59-e013-5964-b38a-62b895510255', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","watch","the","sunset","from","the","hill."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["hill.","from","the","going","watch","are","did","We","to","was","sunset","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4d98c36-1ef2-533c-a114-c41b5c748bdd', '666b7a59-e013-5964-b38a-62b895510255', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we book the early boat trip, we will see the caves before the crowds.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c11cf5fb-246b-5761-8054-f4b8fd375650', '666b7a59-e013-5964-b38a-62b895510255', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we book the early boat trip, we will see the caves before the crowds.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если забронировать раннюю прогулку на лодке, увидим гроты до наплыва туристов."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05efd867-d640-515b-be45-eccdb4d52bf2', '666b7a59-e013-5964-b38a-62b895510255', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"What are we doing on Saturday — the boat trip or the castle?","translation":"Что делаем в субботу — лодку или замок?","type":"dialogue"},{"character":"Tom","text":"The castle gets busier later, and the boat is more relaxing in the afternoon.","translation":"Замок позже оживлённее, а лодка расслабляет лучше во второй половине дня.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are going to the castle first and the boat at four."},{"is_correct":false,"text":"Then we went to the castle yesterday tomorrow."},{"is_correct":false,"text":"Saturday is deciding our trip."}],"text":"What do they decide?","type":"choice"}],"title":"Saturday Morning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('41eff0a0-632f-5048-bd58-9f046bf438cb', '666b7a59-e013-5964-b38a-62b895510255', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to rent” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To pay to use something for a short time"},{"id":"D_B","is_correct":false,"text":"To buy something to keep forever"},{"id":"D_C","is_correct":false,"text":"To borrow money from a friend"}],"word":"to rent"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('758e1163-bd18-591c-b394-87b72f336f28', '666b7a59-e013-5964-b38a-62b895510255', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to rent bikes for the day.","explanation":"The missing word is “rent”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"rent","id":"LW_A","is_correct":true},{"audio_text":"rented","id":"LW_B","is_correct":false},{"audio_text":"renting","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ bikes for the day."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('75e8b010-741b-57a1-b40f-320fe79db27c', '666b7a59-e013-5964-b38a-62b895510255', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The evening boat is more relaxing.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The evening boat is ___ relaxing."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dee41f52-5b0a-54b4-8a22-b896a84fe281', '666b7a59-e013-5964-b38a-62b895510255', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"boat trip","id":"V1","text":"boat trip"},{"audio_text":"more relaxing","id":"V2","text":"more relaxing"},{"audio_text":"to climb","id":"V3","text":"to climb"},{"audio_text":"sunset","id":"V4","text":"sunset"},{"audio_text":"to rent","id":"V5","text":"to rent"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c782cc74-8b6d-58ba-846a-7eb81e9f7473', '666b7a59-e013-5964-b38a-62b895510255', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Is the tower worth the climb?"}],"explanation":"“Yes — if the sky is clear, you will see the whole bay from the top.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — if the sky is clear, you will see the whole bay from the top."},{"id":"C_B","is_correct":false,"text":"I climbed it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The tower is climbing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5c121400-a7d8-534c-aa05-91d76ae611b2', '666b7a59-e013-5964-b38a-62b895510255', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a8ace91a-2b29-5c38-baf3-c918e0305b6a', NULL, 'Если погода подведёт', 'Обсудить запасные планы, используя should и первое условное.', '{"en":"If the Weather Is Bad","ru":"Если погода подведёт"}'::jsonb, '{"en":"Discuss backup plans using should and the first conditional.","ru":"Обсудить запасные планы, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0997de6-b8f3-5dd9-9211-e6c1b9262b92', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"forecast","right":"прогноз погоды"},{"id":"P2","left":"indoor","right":"крытый (в помещении)"},{"id":"P3","left":"to check in advance","right":"проверить заранее"},{"id":"P4","left":"backup plan","right":"запасной план"},{"id":"P5","left":"museum pass","right":"музейный абонемент"},{"id":"P6","left":"to change plans","right":"изменить планы"},{"id":"P7","left":"after all","right":"в конце концов"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2260d1c1-0973-5249-a312-eb98bd15e7d9', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should check the forecast before planning a boat trip.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should check the forecast before planning a boat trip."},{"id":"Q_B","is_correct":false,"text":"You should to check it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must checking it last night."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afd24c6f-f8ae-567a-906c-3caadc5c4a21', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If it rains, we will spend the day in the museums instead of the beach.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если пойдёт дождь, мы проведём день в музеях вместо пляжа.","target_language":"en","word_bank":["the","rains,","spend","yesterday","day","of","we","the","it","the","beach.","rained","did","in","museums","instead","If","will"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d9acddb-39d8-527a-ad5b-a7f69b8703b8', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"gets","instruction":"Выберите подходящее слово.","options":["gets","will get","got"],"sentence_template":"If the weather ___ worse, the boat trip will be cancelled.","translation_hint":"Если погода ухудшится, прогулку на лодке отменят."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b29599f2-14b5-5088-92a3-0a9d5189bf00', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","always","have","an","indoor","plan","B."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["an","B.","mustn''t","indoor","plan","always","You","have","went","should"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2d4f410-969b-529d-9ee0-d6c6fc61d2a1', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you buy the museum pass online, you will enter every rainy-day place without queues.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ff0a380-ddb2-5c86-9abb-faf418216c65', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you buy the museum pass online, you will enter every rainy-day place without queues.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если купить музейный абонемент онлайн, в любой дождливый день вход будет без очередей."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87d5321d-3af9-563c-acf0-008e95889c68', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"The forecast says rain all afternoon.","translation":"Прогноз обещает дождь весь день.","type":"dialogue"},{"character":"Tom","text":"Then the beach is off. What should we do instead?","translation":"Тогда пляж отменяется. Чем заняться вместо?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If it rains, we should use the museum pass we bought online."},{"is_correct":false,"text":"If it will rain, we used it yesterday."},{"is_correct":false,"text":"The rain is planning the beach."}],"text":"What does Anna suggest?","type":"choice"}],"title":"The Rainy Morning"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1515f15-4806-516e-9a76-bef4667af69c', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“forecast” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Information about future weather"},{"id":"D_B","is_correct":false,"text":"A description of yesterday''s temperature"},{"id":"D_C","is_correct":false,"text":"A map of city museums and galleries"}],"word":"forecast"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e893cf8-f3e5-54c3-a59e-8047063b0ef7', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If it rains, we will visit the aquarium.","explanation":"The missing word is “rains”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"rains","id":"LW_A","is_correct":true},{"audio_text":"will rain","id":"LW_B","is_correct":false},{"audio_text":"rained","id":"LW_C","is_correct":false}],"sentence_template":"If it ___ , we will visit the aquarium."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d906022f-505f-536e-8efc-c366c461ed1d', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"advance","explanation":"The complete sentence is “You should check the forecast in advance .”.","hint_prefix":"ad","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should check the forecast in ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f8cf1fd-275b-58ba-a92a-4c46a3d5474b', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"forecast","id":"V1","text":"forecast"},{"audio_text":"indoor","id":"V2","text":"indoor"},{"audio_text":"to check in advance","id":"V3","text":"to check in advance"},{"audio_text":"backup plan","id":"V4","text":"backup plan"},{"audio_text":"museum pass","id":"V5","text":"museum pass"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a4378b7-51cc-5825-b0c7-584a02821e53', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The sky looks grey today."}],"explanation":"“We should take the umbrellas — if it starts on the hill, the walk will be spoiled.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We should take the umbrellas — if it starts on the hill, the walk will be spoiled."},{"id":"C_B","is_correct":false,"text":"I took them yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The sky is walking us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5c121400-a7d8-534c-aa05-91d76ae611b2', 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('577d05bf-accf-51f6-a0ba-20ad37d7841a', 'en', 'guided tour', 'экскурсия с гидом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed119fd0-c291-5fc0-9050-6d222b971f81', 'en', 'exhibition', 'выставка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1b254589-d589-5646-8174-06f5d66603d0', 'en', 'to skip the line', 'пройти без очереди', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80149416-c298-5fb2-af7b-70e593543fb9', 'en', 'opening hours', 'часы работы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('525ba250-964b-57fb-8c44-b7afbb53b30a', 'en', 'crowded', 'многолюдный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efc33910-fb6d-5bc0-8069-f7ad1a070cb0', 'en', 'to take photos', 'фотографировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9619cc1a-0795-59ee-9b88-02458c191bf2', 'en', 'worth', 'стоящий (того)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8eecdfd-a600-584e-928e-4c8ee66c9ef3', 'en', 'boat trip', 'прогулка на лодке', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('269a53e4-af7e-5902-bcd1-24d5f20f6f8c', 'en', 'more relaxing', 'расслабляющий (более спокойный)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d69b66a-8c02-50cd-ad17-326fb16dbe1d', 'en', 'to climb', 'подняться на (возвышенность)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6455ec59-5e81-5f1a-ab72-22cde6a7a8d6', 'en', 'sunset', 'закат', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c068db53-c385-5209-87f2-a0c973b40879', 'en', 'to rent', 'взять напрокат', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2f1d3c22-809f-5a70-85bd-b02501518342', 'en', 'local guide', 'местный гид', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca40591c-d745-5c85-9695-3b5d1fc30469', 'en', 'busier', 'оживлённее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97e58801-2fb5-5f8e-81bc-834a70b52bc2', 'en', 'forecast', 'прогноз погоды', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('897b5f7e-5a62-5371-9462-47142269c50d', 'en', 'indoor', 'крытый (в помещении)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5b2f0e71-538c-5b82-9b3f-904c8a71017d', 'en', 'to check in advance', 'проверить заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2ffb06fb-7560-59c3-85e4-e0f69f0e86d4', 'en', 'backup plan', 'запасной план', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('84d65d2b-ca8a-5608-8dca-03d46a72ed29', 'en', 'museum pass', 'музейный абонемент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2c13afc7-a054-5fbe-a911-9b7645ebaf60', 'en', 'to change plans', 'изменить планы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4053b7a3-041c-5bb8-8e8a-163cfcb34911', 'en', 'after all', 'в конце концов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'guided tour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'exhibition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to skip the line' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'opening hours' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'crowded' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take photos' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '935a14c1-a1d7-5229-81d5-d3fa98bfee3b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'worth' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'boat trip' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'more relaxing' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to climb' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'sunset' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rent' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'local guide' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, '666b7a59-e013-5964-b38a-62b895510255', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'busier' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'forecast' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'indoor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'backup plan' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'museum pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to change plans' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5c121400-a7d8-534c-aa05-91d76ae611b2', id, 'a8ace91a-2b29-5c38-baf3-c918e0305b6a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'after all' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
