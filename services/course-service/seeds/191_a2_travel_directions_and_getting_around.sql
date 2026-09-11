-- Track: A2_TRAVEL_DIRECTIONS_AND_GETTING_AROUND. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('abc04b8e-48d3-591a-98a8-079e8be7ff13', 'A2_TRAVEL_DIRECTIONS_AND_GETTING_AROUND', 'Маршруты и передвижение по городу', 'Развивайте английский для путешествий уровня A2 по теме «Маршруты и передвижение по городу».', '{"en":"Directions and Getting Around","ru":"Маршруты и передвижение по городу"}'::jsonb, '{"en":"Develop A2 travel English for directions and getting around.","ru":"Развивайте английский для путешествий уровня A2 по теме «Маршруты и передвижение по городу»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('27b892a0-6424-5354-ae8f-9f1d1756f076', NULL, 'Как мы добрались', 'Рассказать о маршруте, используя past simple и present perfect.', '{"en":"How We Got There","ru":"Как мы добрались"}'::jsonb, '{"en":"Describe a route using past simple and present perfect.","ru":"Рассказать о маршруте, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('608df82e-f80b-5e96-b533-8d5a5d22b2f9', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to turn left","right":"повернуть налево"},{"id":"P2","left":"crossroads","right":"перекрёсток"},{"id":"P3","left":"pedestrian zone","right":"пешеходная зона"},{"id":"P4","left":"straight ahead","right":"прямо впереди"},{"id":"P5","left":"to get lost","right":"заблудиться"},{"id":"P6","left":"map","right":"карта"},{"id":"P7","left":"finally","right":"наконец"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11d32372-9cac-5a5c-aaa1-d72cd538fa49', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We have walked around the old town for two hours already.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We have walked around the old town for two hours already."},{"id":"Q_B","is_correct":false,"text":"We have walked there yesterday."},{"id":"Q_C","is_correct":false,"text":"We walk for two hours already now."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acf8a44e-3a25-5b14-ad32-bebfba2c5454', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We turned left at the cathedral and finally found the right street.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы повернули налево у собора и наконец нашли нужную улицу.","target_language":"en","word_bank":["We","turned","street.","the","finally","right","at","turns","tomorrow","the","left","found","cathedral","and","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40820758-4f10-5025-9980-2b0509da50d6', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"got","instruction":"Выберите подходящее слово.","options":["got","has get","getting"],"sentence_template":"Yesterday we ___ lost near the station.","translation_hint":"Вчера мы заблудились около вокзала."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b85ca4c3-7d16-5f17-8c3b-872c0fa8a827', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","already","downloaded","an","offline","map."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["map.","She","an","did","offline","has","was","already","downloaded"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b21d5559-7982-55f4-b744-889e4bfe614f', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We took the second turning on the right, and the museum has appeared straight ahead of us.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b708d54a-eb01-58cc-adc4-66da5360a0f7', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We took the second turning on the right, and the museum has appeared straight ahead of us.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы свернули во второй поворот направо, и музей оказался прямо перед нами."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7654e08-67a1-5b7e-b9ab-91a5c3b28f24', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"I think we have walked past this church already.","translation":"Кажется, мы уже проходили мимо этой церкви.","type":"dialogue"},{"character":"Tom","text":"You are right — we got lost at the last crossroads.","translation":"Ты права — мы заблудились на прошлом перекрёстке.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should ask someone for directions or check the map."},{"is_correct":false,"text":"We must asking someone yesterday."},{"is_correct":false,"text":"The church is walking past us again."}],"text":"What should they do?","type":"choice"}],"title":"Lost Near the Station"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6778a3f3-5809-5fca-8d5b-0fafc2113df7', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“crossroads” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A place where two or more roads cross"},{"id":"D_B","is_correct":false,"text":"A bridge over a wide river"},{"id":"D_C","is_correct":false,"text":"The last stop of a city bus"}],"word":"crossroads"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c54b418c-6f46-539d-abff-b81515f64b0d', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have walked past the theatre twice.","explanation":"The missing word is “walked”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"walked","id":"LW_A","is_correct":true},{"audio_text":"walk","id":"LW_B","is_correct":false},{"audio_text":"walking","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ past the theatre twice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a81ae1c4-1b39-5a7a-8dce-7e506e70d1d0', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ahead","explanation":"The complete sentence is “The museum is straight ahead .”.","hint_prefix":"ah","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The museum is straight ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4bdb60f0-aefc-5276-baca-1cb69ad73504', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to turn left","id":"V1","text":"to turn left"},{"audio_text":"crossroads","id":"V2","text":"crossroads"},{"audio_text":"pedestrian zone","id":"V3","text":"pedestrian zone"},{"audio_text":"straight ahead","id":"V4","text":"straight ahead"},{"audio_text":"to get lost","id":"V5","text":"to get lost"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac50c287-9c1c-5fb2-88f5-5451b208fe9c', '27b892a0-6424-5354-ae8f-9f1d1756f076', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tourist","text":"Excuse me, how do we get to the main square?"}],"explanation":"“Go straight ahead and turn left at the crossroads — it has taken me five minutes before.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Go straight ahead and turn left at the crossroads — it has taken me five minutes before."},{"id":"C_B","is_correct":false,"text":"I went there yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The square is getting me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('abc04b8e-48d3-591a-98a8-079e8be7ff13', '27b892a0-6424-5354-ae8f-9f1d1756f076', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('94379d92-4832-5cec-afff-2079cef7336e', NULL, 'Куда пойдём завтра', 'Спланировать маршрут на завтра и сравнить пути.', '{"en":"Where We Will Go Tomorrow","ru":"Куда пойдём завтра"}'::jsonb, '{"en":"Plan tomorrow''s route and compare ways.","ru":"Спланировать маршрут на завтра и сравнить пути."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7ba0dc4-cd94-5922-b658-a4ea906873d7', '94379d92-4832-5cec-afff-2079cef7336e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"the quickest way","right":"самый быстрый путь"},{"id":"P2","left":"on foot","right":"пешком"},{"id":"P3","left":"by tram","right":"на трамвае"},{"id":"P4","left":"more scenic","right":"живописнее"},{"id":"P5","left":"to recommend","right":"порекомендовать"},{"id":"P6","left":"walking distance","right":"пешая доступность"},{"id":"P7","left":"to save time","right":"сэкономить время"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9881e94-9204-5ea7-868c-9056e69b5ad2', '94379d92-4832-5cec-afff-2079cef7336e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The road along the river is more scenic than the main street.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The road along the river is more scenic than the main street."},{"id":"Q_B","is_correct":false,"text":"The road is scenicer than the street."},{"id":"Q_C","is_correct":false,"text":"The road is most scenic than the street."}],"question":"Which sentence compares two routes correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7839fb0-d368-5dc2-9305-5e130f191787', '94379d92-4832-5cec-afff-2079cef7336e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Tomorrow we are going to walk along the river — it is more scenic than the main avenue.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра мы пойдём пешком вдоль реки — это живописнее, чем главный проспект.","target_language":"en","word_bank":["walk","main","the","we","than","is","more","along","yesterday","river","to","avenue.","walked","—","are","Tomorrow","scenic","the","it","did","going"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32258924-668d-56f6-a7d8-25a0e5562c51', '94379d92-4832-5cec-afff-2079cef7336e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"walking","instruction":"Выберите подходящее слово.","options":["walking","walk","walked"],"sentence_template":"The museum is within ___ distance from our hotel.","translation_hint":"Музей в пешей доступности от нашего отеля."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8699de50-1e54-558e-9a8d-cca82eb3c4a6', '94379d92-4832-5cec-afff-2079cef7336e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","take","the","tram","to","the","castle."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","to","castle.","going","to","take","We","are","the","tram","the","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b001ab9d-52d2-52c2-89af-7e4961352981', '94379d92-4832-5cec-afff-2079cef7336e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we take the tram instead of the bus, we will save about fifteen minutes.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('473c9dfc-1089-5b43-8b85-638b5366de3f', '94379d92-4832-5cec-afff-2079cef7336e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we take the tram instead of the bus, we will save about fifteen minutes.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если поехать трамваем вместо автобуса, сэкономим примерно пятнадцать минут."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('250f4edf-2dfe-5af3-b278-246bbe2c796e', '94379d92-4832-5cec-afff-2079cef7336e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Should we go to the castle on foot or by tram?","translation":"Идти к замку пешком или на трамвае?","type":"dialogue"},{"character":"Tom","text":"On foot is more scenic, but it takes forty minutes.","translation":"Пешком живописнее, но это сорок минут.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are going to walk there and take the tram back."},{"is_correct":false,"text":"Then we walked there yesterday tomorrow."},{"is_correct":false,"text":"The castle is deciding our route."}],"text":"What does Anna decide?","type":"choice"}],"title":"Two Routes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab4cbf99-9227-5a69-899e-c15ad3d74908', '94379d92-4832-5cec-afff-2079cef7336e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“on foot” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Walking, not using transport"},{"id":"D_B","is_correct":false,"text":"Travelling by city tram"},{"id":"D_C","is_correct":false,"text":"Driving a rented car"}],"word":"on foot"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8d0a396-6d2f-5f2b-9bd2-02a3a439126b', '94379d92-4832-5cec-afff-2079cef7336e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to save time with the tram.","explanation":"The missing word is “save”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"save","id":"LW_A","is_correct":true},{"audio_text":"saved","id":"LW_B","is_correct":false},{"audio_text":"saving","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ time with the tram."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea612516-c55b-54d2-88c8-f796833d5c5c', '94379d92-4832-5cec-afff-2079cef7336e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"more","explanation":"The complete sentence is “The river route is more scenic.”.","hint_prefix":"mo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The river route is ___ scenic."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('964cf7b7-4935-5556-8274-9102cb013983', '94379d92-4832-5cec-afff-2079cef7336e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"the quickest way","id":"V1","text":"the quickest way"},{"audio_text":"on foot","id":"V2","text":"on foot"},{"audio_text":"by tram","id":"V3","text":"by tram"},{"audio_text":"more scenic","id":"V4","text":"more scenic"},{"audio_text":"to recommend","id":"V5","text":"to recommend"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67323dfe-7d59-50b0-a67f-c986b6c33b60', '94379d92-4832-5cec-afff-2079cef7336e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Is the old town far from here?"}],"explanation":"“No, it is within walking distance — about fifteen minutes if we cross the bridge.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"No, it is within walking distance — about fifteen minutes if we cross the bridge."},{"id":"C_B","is_correct":false,"text":"It was far yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The town is walking to us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('abc04b8e-48d3-591a-98a8-079e8be7ff13', '94379d92-4832-5cec-afff-2079cef7336e', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0b02dbdc-cab6-5433-8484-6b0f492d7004', NULL, 'Если заблудились', 'Дать советы о ориентировании, используя should и первое условное.', '{"en":"If You Get Lost","ru":"Если заблудились"}'::jsonb, '{"en":"Give orientation advice using should and the first conditional.","ru":"Дать советы о ориентировании, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3367baa5-a9c3-5a7f-99cb-bd0277893b39', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"landmark","right":"ориентир"},{"id":"P2","left":"to ask for directions","right":"спросить дорогу"},{"id":"P3","left":"street name sign","right":"указатель с названием улицы"},{"id":"P4","left":"polite","right":"вежливый"},{"id":"P5","left":"confident","right":"уверенный"},{"id":"P6","left":"to check the map","right":"посмотреть на карту"},{"id":"P7","left":"the way back","right":"путь обратно"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2451671e-d23a-5ac7-9f6c-95f22e88f82d', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should remember a landmark near your hotel.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should remember a landmark near your hotel."},{"id":"Q_B","is_correct":false,"text":"You should to remember it yesterday."},{"id":"Q_C","is_correct":false,"text":"You must remembering it last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7ee8f31-638f-59c2-b0be-e81633a4f9b6', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you remember a landmark near your hotel, you will easily find the way back.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты запомнишь ориентир рядом с отелем, ты легко найдёшь обратный путь.","target_language":"en","word_bank":["yesterday","remember","easily","your","near","you","did","you","back.","If","will","hotel,","landmark","way","find","a","the","remembered"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a0fc55e-15b0-5b7f-8de9-8edf9c84dd11', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ask","instruction":"Выберите подходящее слово.","options":["ask","will ask","asked"],"sentence_template":"If you ___ someone for directions, be polite and speak slowly.","translation_hint":"Если спросить кого-то дорогу, делай это вежливо и медленно."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ed3ae37-77c7-5559-8198-78e8eb3b027d', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","map","before","every","long","walk."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["check","mustn''t","map","walk.","long","went","every","You","before","should","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('350b315c-e6a0-530f-a2eb-0360cdd40afa', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you take a photo of the street name sign near your hotel, you will always show it to locals.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb1da10a-8e41-5d4f-9b20-53159f1cbee4', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you take a photo of the street name sign near your hotel, you will always show it to locals.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если сфотографировать табличку с названием улицы у отеля, всегда можно показать её местным."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e791c7d0-eb88-5e33-afca-1cd4ad09c7e2', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"This street looks different from the map.","translation":"Эта улица выглядит не так, как на карте.","type":"dialogue"},{"character":"Anna","text":"Maybe we turned right instead of left at the bakery.","translation":"Может, мы повернули направо вместо налево у пекарни.","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should ask in that shop — the assistant will know the area."},{"is_correct":false,"text":"We must asking in the shop yesterday."},{"is_correct":false,"text":"The street is looking at the map differently."}],"text":"What does Tom suggest?","type":"choice"}],"title":"A Wrong Turn"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee60e211-6ad1-5c42-8f18-7b7c3816a5e5', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“landmark” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A building or place that is easy to recognise"},{"id":"D_B","is_correct":false,"text":"A small shop that changes its name often"},{"id":"D_C","is_correct":false,"text":"A bus that goes around the city centre"}],"word":"landmark"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc08e73b-ac8f-5b2c-a840-aded66fcc03a', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you check the map first, you will not get lost.","explanation":"The missing word is “check”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"check","id":"LW_A","is_correct":true},{"audio_text":"will check","id":"LW_B","is_correct":false},{"audio_text":"checked","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ the map first, you will not get lost."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('64f94708-017f-560e-a60b-897dd74b96d4', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"for","explanation":"The complete sentence is “You should ask for directions politely.”.","hint_prefix":"fo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should ask ___ directions politely."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('355ec5a2-b5ca-52df-bdfd-f7f3e0ec220a', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"landmark","id":"V1","text":"landmark"},{"audio_text":"to ask for directions","id":"V2","text":"to ask for directions"},{"audio_text":"street name sign","id":"V3","text":"street name sign"},{"audio_text":"polite","id":"V4","text":"polite"},{"audio_text":"confident","id":"V5","text":"confident"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91be48a7-88e3-5179-8f47-9ada2494afab', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Tourist","text":"I cannot find the way back to my hotel."}],"explanation":"“You should look for the cathedral tower — if you walk towards it, the hotel is right behind it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"You should look for the cathedral tower — if you walk towards it, the hotel is right behind it."},{"id":"C_B","is_correct":false,"text":"I found it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The hotel is finding me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('abc04b8e-48d3-591a-98a8-079e8be7ff13', '0b02dbdc-cab6-5433-8484-6b0f492d7004', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0c0db765-f986-54f7-a600-15d495621354', 'en', 'to turn left', 'повернуть налево', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9ac6c7ef-e24c-519e-af70-0b6dcea176ae', 'en', 'crossroads', 'перекрёсток', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8a01d91-d7e9-5bb8-9b18-ba18c2e0bf36', 'en', 'pedestrian zone', 'пешеходная зона', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('94c37918-1251-5576-aa6a-997b21a67d2e', 'en', 'straight ahead', 'прямо впереди', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4c9bdd41-d2a7-5999-bd4b-e53f2123a2f5', 'en', 'to get lost', 'заблудиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('633e6902-cfc5-5c1e-83c6-30e353a41a75', 'en', 'map', 'карта', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('622d6d50-db3d-5dc9-8d16-2921989ed392', 'en', 'finally', 'наконец', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('80b473f8-38de-56f5-acec-a2bd45c2ed9a', 'en', 'the quickest way', 'самый быстрый путь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6bdae652-d940-500e-b122-2e96cb6cb7db', 'en', 'on foot', 'пешком', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5d079d2-b079-5795-98ca-63987444680d', 'en', 'by tram', 'на трамвае', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a60cb50-ab46-5f3c-8326-9b0ac993b035', 'en', 'more scenic', 'живописнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a9c7-ccb0-5bbe-bc59-8df91202fb08', 'en', 'to recommend', 'порекомендовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3d418a2e-3978-5924-8568-93f417f641d5', 'en', 'walking distance', 'пешая доступность', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('cf76f386-409a-59de-a957-2ef7cd47d43d', 'en', 'to save time', 'сэкономить время', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5386c686-6e7f-5585-9bd6-b88e5b562621', 'en', 'to ask for directions', 'спросить дорогу', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('61f05fba-1bec-59cf-a6ec-69005bc10fe9', 'en', 'street name sign', 'указатель с названием улицы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d444b15-a6e2-561a-87a1-404b86fed95d', 'en', 'polite', 'вежливый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c98f2097-6229-51a8-b5fd-7c825f35531d', 'en', 'confident', 'уверенный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880fd83b-25c2-57b5-bbce-3798788e13c2', 'en', 'to check the map', 'посмотреть на карту', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d984721f-9bd2-57ea-9aa5-78a6994c4df5', 'en', 'the way back', 'путь обратно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'to turn left' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'crossroads' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'pedestrian zone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'straight ahead' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to get lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '27b892a0-6424-5354-ae8f-9f1d1756f076', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'finally' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'the quickest way' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'on foot' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'by tram' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'more scenic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'walking distance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '94379d92-4832-5cec-afff-2079cef7336e', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to save time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ask for directions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'street name sign' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'polite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'confident' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check the map' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'abc04b8e-48d3-591a-98a8-079e8be7ff13', id, '0b02dbdc-cab6-5433-8484-6b0f492d7004', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'the way back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
