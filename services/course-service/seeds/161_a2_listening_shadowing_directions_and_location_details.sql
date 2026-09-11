-- Track: A2_LISTENING_SHADOWING_DIRECTIONS_AND_LOCATION_DETAILS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('60a72d68-9bda-5ff5-be22-ca491e6e798f', 'A2_LISTENING_SHADOWING_DIRECTIONS_AND_LOCATION_DETAILS', 'Маршруты и описание мест', 'Развивайте навыки аудирования и повторения уровня A2 по теме «Маршруты и описание мест».', '{"en":"Directions and Location Details","ru":"Маршруты и описание мест"}'::jsonb, '{"en":"Develop A2 listening and shadowing skills for directions and location details.","ru":"Развивайте навыки аудирования и повторения уровня A2 по теме «Маршруты и описание мест»."}'::jsonb, 'en', 'A2', '', ARRAY['listening_shadowing']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('10c81d41-1d22-55f6-906f-51aca731059f', NULL, 'Как пройти: вчерашний маршрут', 'Понимать объяснения маршрута, используя past simple и present perfect.', '{"en":"Directions: Yesterday''s Route","ru":"Как пройти: вчерашний маршрут"}'::jsonb, '{"en":"Understand route explanations using past simple and present perfect.","ru":"Понимать объяснения маршрута, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1819b48f-9ddc-590a-a2f8-d655d7b78914', '10c81d41-1d22-55f6-906f-51aca731059f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"opposite","right":"напротив"},{"id":"P2","left":"behind","right":"за (позади)"},{"id":"P3","left":"to go past","right":"пройти мимо"},{"id":"P4","left":"roundabout","right":"круговое движение"},{"id":"P5","left":"landmark","right":"ориентир"},{"id":"P6","left":"to take the second left","right":"свернуть на втором повороте налево"},{"id":"P7","left":"you can''t miss it","right":"вы его не пропустите"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eaa30708-3ebd-512b-ba69-636066090718', '10c81d41-1d22-55f6-906f-51aca731059f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You can''t miss it — it''s the bright green door.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You can''t miss it — it''s the bright green door."},{"id":"Q_B","is_correct":false,"text":"You can miss it easy yesterday."},{"id":"Q_C","is_correct":false,"text":"The door is missing you greenly."}],"question":"Which phrase means the place is easy to see?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddf7fcc5-dd9e-59e4-ae22-c4ea9f935139', '10c81d41-1d22-55f6-906f-51aca731059f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We went past the pharmacy and took the second left.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы прошли мимо аптеки и свернули на втором повороте налево.","target_language":"en","word_bank":["go","pharmacy","the","left.","and","tomorrow","past","the","went","took","We","second","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8e931feb-3915-5eba-97d8-9602593a34fc', '10c81d41-1d22-55f6-906f-51aca731059f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"opposite","instruction":"Выберите подходящее слово.","options":["opposite","opposites","oppositely"],"sentence_template":"The bakery is ___ the church, across the road.","translation_hint":"Пекарня напротив церкви, через дорогу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('60ad1ef2-870c-512f-8545-f754694f43fa', '10c81d41-1d22-55f6-906f-51aca731059f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Have","you","passed","the","roundabout","yet?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["Have","roundabout","yet?","did","you","was","the","passed"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e748df54-e48c-5acb-a972-597fc0b7a4a6', '10c81d41-1d22-55f6-906f-51aca731059f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Go past the post office, and the studio is behind the tall glass building — you can''t miss it.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('696c4ce6-2e69-528d-b5c2-a4be8821c419', '10c81d41-1d22-55f6-906f-51aca731059f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Go past the post office, and the studio is behind the tall glass building — you can''t miss it.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Пройдите мимо почты, и студия за высоким стеклянным зданием — вы её не пропустите."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('218c4b29-f3be-50d3-aa7c-866110b17756', '10c81d41-1d22-55f6-906f-51aca731059f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Visitor","text":"Excuse me, how do I get to the museum?","translation":"Извините, как пройти в музей?","type":"dialogue"},{"character":"Local","text":"Go past the bakery, take the second left, and the museum is opposite the park.","translation":"Пройдите мимо пекарни, на втором повороте налево, и музей напротив парка.","type":"dialogue"},{"options":[{"is_correct":true,"text":"A bakery and then a park as landmarks."},{"is_correct":false,"text":"A museum and then a bakery yesterday."},{"is_correct":false,"text":"The left turn is missing the park."}],"text":"What should the visitor watch for?","type":"choice"}],"title":"Giving Directions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb5b688b-90cc-5bdb-81bc-a6d14a38e5e3', '10c81d41-1d22-55f6-906f-51aca731059f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“roundabout” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A circular road where cars turn around a centre point"},{"id":"D_B","is_correct":false,"text":"A place where two railways cross"},{"id":"D_C","is_correct":false,"text":"A bridge for walking over a motorway"}],"word":"roundabout"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52fccdf5-0a48-5523-aa56-1281fb1fbe0c', '10c81d41-1d22-55f6-906f-51aca731059f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have gone past the market already.","explanation":"The missing word is “past”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"past","id":"LW_A","is_correct":true},{"audio_text":"passed","id":"LW_B","is_correct":false},{"audio_text":"passing","id":"LW_C","is_correct":false}],"sentence_template":"We have gone ___ the market already."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7e71a368-4091-56e2-89cd-1c22d4a4ff68', '10c81d41-1d22-55f6-906f-51aca731059f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"behind","explanation":"The complete sentence is “The bank is behind the supermarket.”.","hint_prefix":"be","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The bank is ___ the supermarket."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6a0a4186-8bfc-5232-a6e4-b2f47b956bbe', '10c81d41-1d22-55f6-906f-51aca731059f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"opposite","id":"V1","text":"opposite"},{"audio_text":"behind","id":"V2","text":"behind"},{"audio_text":"to go past","id":"V3","text":"to go past"},{"audio_text":"roundabout","id":"V4","text":"roundabout"},{"audio_text":"landmark","id":"V5","text":"landmark"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('32c575a1-b460-58a0-aa2b-37458c4421d4', '10c81d41-1d22-55f6-906f-51aca731059f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Visitor","text":"Is the station far from here?"}],"explanation":"“Ten minutes on foot — go past the cinema, and you can''t miss it.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Ten minutes on foot — go past the cinema, and you can''t miss it."},{"id":"C_B","is_correct":false,"text":"I went there yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The station is footing me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('60a72d68-9bda-5ff5-be22-ca491e6e798f', '10c81d41-1d22-55f6-906f-51aca731059f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('849a2a9a-8588-53e7-8614-122eb10487c4', NULL, 'Маршрут на завтра', 'Слушать инструкции о будущем маршруте и сравнивать пути.', '{"en":"Tomorrow''s Route","ru":"Маршрут на завтра"}'::jsonb, '{"en":"Listen to future route instructions and compare ways.","ru":"Слушать инструкции о будущем маршруте и сравнивать пути."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93982754-e1fb-569d-b35d-c2254b16e6f7', '849a2a9a-8588-53e7-8614-122eb10487c4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"the fastest way","right":"самый быстрый путь"},{"id":"P2","left":"to avoid","right":"избегать"},{"id":"P3","left":"traffic jam","right":"пробка"},{"id":"P4","left":"more direct","right":"прямее"},{"id":"P5","left":"to follow the signs","right":"следовать указателям"},{"id":"P6","left":"shortcut","right":"короткий путь"},{"id":"P7","left":"less crowded","right":"менее людный"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96f16fc0-2e5c-5446-a20f-015d630994f6', '849a2a9a-8588-53e7-8614-122eb10487c4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The road by the river is less crowded than the highway.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The road by the river is less crowded than the highway."},{"id":"Q_B","is_correct":false,"text":"The river road is crowdeder than highway."},{"id":"Q_C","is_correct":false,"text":"The river road is most crowded than the highway."}],"question":"Which route description compares two ways correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcc620bf-0dd6-5644-b3ef-2c1f095eb369', '849a2a9a-8588-53e7-8614-122eb10487c4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Tomorrow I am going to drive through the centre because they are repairing the bridge.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра я поеду через центр, потому что мост будут ремонтировать.","target_language":"en","word_bank":["yesterday","they","the","going","am","to","Tomorrow","drove","centre","bridge.","through","are","drive","the","did","I","repairing","because"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc713b09-d729-5791-942f-d70cd2775d16', '849a2a9a-8588-53e7-8614-122eb10487c4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"The metro is ___ direct than the bus during rush hour.","translation_hint":"Метро прямее автобуса в час пик."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cda1c705-dc2c-58f3-843a-0d27d1c31821', '849a2a9a-8588-53e7-8614-122eb10487c4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Follow","the","signs","to","the","old","town."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["the","Follow","the","to","old","signs","town.","did","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fc7d092-12bb-5f06-985c-9ef89ad97ea9', '849a2a9a-8588-53e7-8614-122eb10487c4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you take the shortcut through the park, you will arrive ten minutes earlier and avoid the traffic jam.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3b3b277-ffed-5466-b9d5-f85605984e71', '849a2a9a-8588-53e7-8614-122eb10487c4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you take the shortcut through the park, you will arrive ten minutes earlier and avoid the traffic jam.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если пойти коротким путём через парк, приедешь на десять минут раньше и избежишь пробки."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8681ddb7-1f1a-526c-8e19-b6f883ff5d5c', '849a2a9a-8588-53e7-8614-122eb10487c4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"Should I take the highway or the old road tomorrow?","translation":"Мне завтра ехать по шоссе или по старой дороге?","type":"dialogue"},{"character":"Voice 2","text":"The highway is faster, but the old road is less crowded in the morning.","translation":"Шоссе быстрее, но старая дорога менее людная утром.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then I am going to take the old road and follow the airport signs."},{"is_correct":false,"text":"Then I took the old road yesterday tomorrow."},{"is_correct":false,"text":"Then the highway is taking me."}],"text":"What does Voice 1 decide?","type":"choice"}],"title":"Two Ways to the Airport"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('820c6f9d-75ac-5a65-a2cb-31868033650a', '849a2a9a-8588-53e7-8614-122eb10487c4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“shortcut” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A quicker way between two places"},{"id":"D_B","is_correct":false,"text":"The longest possible route to a place"},{"id":"D_C","is_correct":false,"text":"A road only for bicycles and buses"}],"word":"shortcut"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d811c5b5-a85b-59d7-a830-33c70acc23a2', '849a2a9a-8588-53e7-8614-122eb10487c4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I am going to avoid the ring road.","explanation":"The missing word is “avoid”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"avoid","id":"LW_A","is_correct":true},{"audio_text":"avoided","id":"LW_B","is_correct":false},{"audio_text":"avoiding","id":"LW_C","is_correct":false}],"sentence_template":"I am going to ___ the ring road."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7030b943-8e7d-5f15-9d07-49bf37c32bbb', '849a2a9a-8588-53e7-8614-122eb10487c4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"less","explanation":"The complete sentence is “The night bus is less crowded.”.","hint_prefix":"le","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The night bus is ___ crowded."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53d92ee7-01b4-5f88-8c10-7aed8af678c9', '849a2a9a-8588-53e7-8614-122eb10487c4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"the fastest way","id":"V1","text":"the fastest way"},{"audio_text":"to avoid","id":"V2","text":"to avoid"},{"audio_text":"traffic jam","id":"V3","text":"traffic jam"},{"audio_text":"more direct","id":"V4","text":"more direct"},{"audio_text":"to follow the signs","id":"V5","text":"to follow the signs"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f93ea6b0-3d66-5f5f-a9a8-250ff44741fe', '849a2a9a-8588-53e7-8614-122eb10487c4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Which entrance should we use?"}],"explanation":"“The north one — if we follow the blue signs, it will be the fastest way.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"The north one — if we follow the blue signs, it will be the fastest way."},{"id":"C_B","is_correct":false,"text":"We used it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The entrance is using us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('60a72d68-9bda-5ff5-be22-ca491e6e798f', '849a2a9a-8588-53e7-8614-122eb10487c4', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('327b6144-2aa5-57c6-a0b0-110e23bbbb5e', NULL, 'Если заблудился', 'Понимать советы о ориентировании, используя should и первое условное.', '{"en":"If You Get Lost","ru":"Если заблудился"}'::jsonb, '{"en":"Understand orientation advice using should and the first conditional.","ru":"Понимать советы о ориентировании, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a2e2f7da-bdb4-5d21-a197-12add54c9c86', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to double back","right":"вернуться назад"},{"id":"P2","left":"lost","right":"потерявшийся"},{"id":"P3","left":"to check the GPS","right":"проверить GPS"},{"id":"P4","left":"to ask a local","right":"спросить местного"},{"id":"P5","left":"nearby","right":"поблизости"},{"id":"P6","left":"dead end","right":"тупик"},{"id":"P7","left":"to retrace your steps","right":"вернуться по своим следам"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1f0913b3-95f8-5e89-8da1-8538cf2f1714', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should double back to the last landmark.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should double back to the last landmark."},{"id":"Q_B","is_correct":false,"text":"You should to double back yesterday."},{"id":"Q_C","is_correct":false,"text":"You must doubling back last turn."}],"question":"Which advice is correct when you take a wrong turn?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29941be5-3f11-5bd1-b0d8-299f20c5d8d9', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you turn left, you will reach a dead end — you should double back.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если пойдёшь налево, упрёшься в тупик — лучше вернуться назад.","target_language":"en","word_bank":["dead","a","did","will","you","reach","turned","turn","you","—","If","double","end","back.","you","left,","should","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c3522c8-f607-57c4-8a1d-14fb43324708', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"match","instruction":"Выберите подходящее слово.","options":["match","will match","matched"],"sentence_template":"If the street name does not ___ the map, retrace your steps.","translation_hint":"Если название улицы не совпадает с картой, вернись по своим следам."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16411227-23e0-568b-9484-7947372e3bc4', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","ask","a","local","—","they","know","the","shortcuts."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["ask","should","You","a","mustn''t","—","went","shortcuts.","the","know","local","they"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b730e8bb-c1a5-536e-80cb-4b1ec5e984c9', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you have walked for fifteen minutes without landmarks, you should check the GPS or ask someone nearby.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8e23c89-51f6-5c51-ad6e-ddee46704a93', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you have walked for fifteen minutes without landmarks, you should check the GPS or ask someone nearby.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если шёл пятнадцать минут без ориентиров, стоит проверить GPS или спросить кого-то рядом."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc794672-89be-5318-b950-91cb0ce42513', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Voice 1","text":"This street ends at a fence — I think we are lost.","translation":"Улица заканчивается забором — кажется, мы заблудились.","type":"dialogue"},{"character":"Voice 2","text":"Have we passed any shop we remember?","translation":"Мы проходили какой-нибудь магазин, который помним?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, the bakery — let''s retrace our steps to it."},{"is_correct":false,"text":"Yes, we pass it tomorrow yesterday."},{"is_correct":false,"text":"The fence is walking us back."}],"text":"What does Voice 1 suggest?","type":"choice"}],"title":"The Dead End"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec9882ff-bf07-527d-b74b-800ed6cab4d9', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“dead end” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A street or path that you cannot continue along"},{"id":"D_B","is_correct":false,"text":"A road that goes around the whole city"},{"id":"D_C","is_correct":false,"text":"A crossing with traffic lights"}],"word":"dead end"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f53c4fe5-dcd7-5ac6-96de-3244e83ca02b', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you feel lost, check the GPS.","explanation":"The missing word is “lost”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"lost","id":"LW_A","is_correct":true},{"audio_text":"lose","id":"LW_B","is_correct":false},{"audio_text":"loosen","id":"LW_C","is_correct":false}],"sentence_template":"If you feel ___ , check the GPS."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec5e353d-3a74-55c5-8550-8605917c8723', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"local","explanation":"The complete sentence is “We should ask a local for directions.”.","hint_prefix":"lo","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We should ask a ___ for directions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3fe4db5-d1d9-55fa-8f4d-0da6b4a44110', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to double back","id":"V1","text":"to double back"},{"audio_text":"lost","id":"V2","text":"lost"},{"audio_text":"to check the GPS","id":"V3","text":"to check the GPS"},{"audio_text":"to ask a local","id":"V4","text":"to ask a local"},{"audio_text":"nearby","id":"V5","text":"nearby"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d181b66-a8e5-5849-a25e-e30705ad86a4', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"The house numbers look wrong."}],"explanation":"“Maybe we missed the turn — if we double back to the bridge, we will find the street.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Maybe we missed the turn — if we double back to the bridge, we will find the street."},{"id":"C_B","is_correct":false,"text":"I doubled back yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The numbers are housing us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('60a72d68-9bda-5ff5-be22-ca491e6e798f', '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48ad65a8-b2c4-5fa4-8309-9419a78e9813', 'en', 'opposite', 'напротив', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3a93058b-c529-5dfe-9513-de93e405125b', 'en', 'behind', 'за (позади)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1d6a7353-1e89-52e2-8abd-9468b61cf317', 'en', 'to go past', 'пройти мимо', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f3dff043-1c29-52ca-8721-db2917f74d0e', 'en', 'roundabout', 'круговое движение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('067601d2-fe06-55b3-8cf2-d7f640b615aa', 'en', 'to take the second left', 'свернуть на втором повороте налево', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('00de9473-17ec-5669-827b-d349544717a7', 'en', 'you can''t miss it', 'вы его не пропустите', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8bee459b-ee3e-5d9c-8b86-33c81879be21', 'en', 'the fastest way', 'самый быстрый путь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b110080a-0f99-5d14-8162-4f6376939179', 'en', 'to avoid', 'избегать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6ddefdaf-72a3-588e-aeeb-3fa233bd7fe5', 'en', 'traffic jam', 'пробка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('846dbee1-5d2e-56fd-b10f-d9537a365857', 'en', 'more direct', 'прямее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb530b34-f548-5ccc-817b-fd7512236243', 'en', 'to follow the signs', 'следовать указателям', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('886e4b88-6716-5583-9487-993caf3305a8', 'en', 'shortcut', 'короткий путь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c4f81f5e-2715-535a-9df2-9946d66f15a0', 'en', 'less crowded', 'менее людный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('77b30da2-9d04-55ee-b7c4-a068e725c359', 'en', 'to double back', 'вернуться назад', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('321b1a15-2d5f-5e3b-ae82-147ae155b5e2', 'en', 'lost', 'потерявшийся', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ccfa29b4-b8d6-5268-93cf-ef06e1981c00', 'en', 'to check the GPS', 'проверить GPS', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('964298f6-947c-5ac4-9143-473c46573ca1', 'en', 'to ask a local', 'спросить местного', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c8c5cca5-1d34-588d-8d7f-0c308f0f65bc', 'en', 'nearby', 'поблизости', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ba519b8b-1c6a-5e54-998c-fddf56aad202', 'en', 'dead end', 'тупик', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c231434a-9745-564c-83a7-3f76bba4b539', 'en', 'to retrace your steps', 'вернуться по своим следам', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'opposite' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'behind' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to go past' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'roundabout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take the second left' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '10c81d41-1d22-55f6-906f-51aca731059f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'you can''t miss it' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'the fastest way' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to avoid' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'traffic jam' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'more direct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to follow the signs' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortcut' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '849a2a9a-8588-53e7-8614-122eb10487c4', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'less crowded' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to double back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check the GPS' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to ask a local' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'nearby' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'dead end' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '60a72d68-9bda-5ff5-be22-ca491e6e798f', id, '327b6144-2aa5-57c6-a0b0-110e23bbbb5e', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to retrace your steps' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
