-- Track: A2_TRAVEL_PUBLIC_TRANSPORT_AND_CONNECTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('5509bb81-e294-5466-a909-2a21a40add45', 'A2_TRAVEL_PUBLIC_TRANSPORT_AND_CONNECTIONS', 'Общественный транспорт и пересадки', 'Развивайте английский для путешествий уровня A2 по теме «Общественный транспорт и пересадки».', '{"en":"Public Transport and Connections","ru":"Общественный транспорт и пересадки"}'::jsonb, '{"en":"Develop A2 travel English for public transport and connections.","ru":"Развивайте английский для путешествий уровня A2 по теме «Общественный транспорт и пересадки»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b84c30b3-84ae-5658-ae61-b35935b40d34', NULL, 'Поездка на поезде', 'Рассказать о поездке на транспорте, используя past simple и present perfect.', '{"en":"A Train Journey","ru":"Поездка на поезде"}'::jsonb, '{"en":"Talk about a transport journey using past simple and present perfect.","ru":"Рассказать о поездке на транспорте, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acff5f54-0693-5dc5-9399-4a6b578da805', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"platform","right":"платформа"},{"id":"P2","left":"single ticket","right":"билет в одну сторону"},{"id":"P3","left":"return ticket","right":"билет туда-обратно"},{"id":"P4","left":"to miss","right":"опоздать на (транспорт)"},{"id":"P5","left":"timetable","right":"расписание"},{"id":"P6","left":"carriage","right":"вагон"},{"id":"P7","left":"on time","right":"по расписанию"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('50ec7918-67e3-5ed8-ac60-a3960188c57d', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The train has just arrived at platform four.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The train has just arrived at platform four."},{"id":"Q_B","is_correct":false,"text":"The train has arrived yesterday at four."},{"id":"Q_C","is_correct":false,"text":"The train arrive just now already."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25152b31-de87-5544-a86c-0b91e82720fb', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We almost missed the train, but it was ten minutes late.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы почти опоздали на поезд, но он задержался на десять минут.","target_language":"en","word_bank":["almost","late.","it","the","was","miss","train,","We","minutes","but","tomorrow","ten","missed","did"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26e3b72b-c977-59eb-8e00-6edb369ad97f', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"return","instruction":"Выберите подходящее слово.","options":["return","returns","returning"],"sentence_template":"She bought a ___ ticket because she returns on Sunday.","translation_hint":"Она купила обратный билет, потому что возвращается в воскресенье."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('768cfe21-e6eb-5ffd-be4e-d5d4e4f1545f', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","train","has","already","left","platform","two."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["has","two.","left","The","already","train","platform","did","was"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c5199ae-09db-53a9-9987-fdb93c0ec72c', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We took the fast train from platform six, and it has brought us to the coast in two hours.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('49549934-d966-556a-b59b-21a2da14f8cc', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We took the fast train from platform six, and it has brought us to the coast in two hours.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы сели на скорый поезд с шестой платформы, и он довёз нас до побережья за два часа."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7ac4d16-5ccc-5e33-8c9b-ef1867c87d63', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Our train to the airport has just left — we are on the wrong platform!","translation":"Наш поезд в аэропорт только что ушёл — мы не на той платформе!","type":"dialogue"},{"character":"Tom","text":"When did you notice?","translation":"Когда ты заметила?","type":"dialogue"},{"options":[{"is_correct":true,"text":"A minute ago. There is another train in twenty minutes, hasn''t there?"},{"is_correct":false,"text":"Tomorrow. Another train came yesterday."},{"is_correct":false,"text":"The platform is missing the train instead."}],"text":"What does Anna say?","type":"choice"}],"title":"The Missed Connection"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c94d373-3260-5404-880e-0934e5a962cf', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“platform” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The area where you get on and off a train"},{"id":"D_B","is_correct":false,"text":"A place to park cars near the station"},{"id":"D_C","is_correct":false,"text":"A ticket office inside the building"}],"word":"platform"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0c305167-757b-5fd5-b921-555acaa83a4b', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The train has departed from platform two.","explanation":"The missing word is “departed”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"departed","id":"LW_A","is_correct":true},{"audio_text":"depart","id":"LW_B","is_correct":false},{"audio_text":"departing","id":"LW_C","is_correct":false}],"sentence_template":"The train has ___ from platform two."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe47d4b9-3b79-5835-b9de-ed592ab3ca80', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"single","explanation":"The complete sentence is “I have bought a single ticket by mistake.”.","hint_prefix":"si","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I have bought a ___ ticket by mistake."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d70ab25c-22da-53f2-bfa3-3a6968a9cd7f', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"platform","id":"V1","text":"platform"},{"audio_text":"single ticket","id":"V2","text":"single ticket"},{"audio_text":"return ticket","id":"V3","text":"return ticket"},{"audio_text":"to miss","id":"V4","text":"to miss"},{"audio_text":"timetable","id":"V5","text":"timetable"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1ed0c20-451c-5a76-9e6c-e1083c3076f1', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Local","text":"Does this tram go to the old town?"}],"explanation":"“Yes, but it turns before the bridge — I have taken it twice and always changed at the gate.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes, but it turns before the bridge — I have taken it twice and always changed at the gate."},{"id":"C_B","is_correct":false,"text":"Yes, I take it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The old town is taking this tram."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5509bb81-e294-5466-a909-2a21a40add45', 'b84c30b3-84ae-5658-ae61-b35935b40d34', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('392da0bb-548d-5035-a549-9b738337af36', NULL, 'Как доберёмся завтра', 'Спланировать поездку на транспорте и сравнить варианты.', '{"en":"How We Will Get There Tomorrow","ru":"Как доберёмся завтра"}'::jsonb, '{"en":"Plan a transport trip and compare options.","ru":"Спланировать поездку на транспорте и сравнить варианты."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b99dfdf2-6d4a-5175-a8b0-1471cb717e66', '392da0bb-548d-5035-a549-9b738337af36', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"day pass","right":"дневной проездной"},{"id":"P2","left":"cheaper","right":"дешевле"},{"id":"P3","left":"direct","right":"прямой (без пересадок)"},{"id":"P4","left":"to change","right":"сделать пересадку"},{"id":"P5","left":"more convenient","right":"удобнее"},{"id":"P6","left":"night bus","right":"ночной автобус"},{"id":"P7","left":"traffic","right":"дорожное движение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4af27698-dc4c-58f3-bc72-c9d37e7b16e6', '392da0bb-548d-5035-a549-9b738337af36', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The metro is faster than the bus in the morning.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The metro is faster than the bus in the morning."},{"id":"Q_B","is_correct":false,"text":"The metro is more fast than the bus."},{"id":"Q_C","is_correct":false,"text":"The metro is fastest than the bus."}],"question":"Which sentence compares two options correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('875e3764-21d6-58af-a030-66a6458bd8cc', '392da0bb-548d-5035-a549-9b738337af36', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to buy a day pass — it is cheaper than four single tickets.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы собираемся купить дневной проездной — так дешевле, чем четыре билета.","target_language":"en","word_bank":["bought","yesterday","than","tickets.","a","—","are","is","four","going","to","We","it","pass","single","buy","did","day","cheaper"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e60ebd25-43b6-582e-9f11-fb64537100eb', '392da0bb-548d-5035-a549-9b738337af36', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"more","instruction":"Выберите подходящее слово.","options":["more","most","much"],"sentence_template":"A direct train is ___ convenient than one with two changes.","translation_hint":"Прямой поезд удобнее поезда с двумя пересадками."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20d4e9b8-390d-5ae8-be5a-7dea81ec6881', '392da0bb-548d-5035-a549-9b738337af36', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","are","going","to","take","the","night","bus","to","save","one","hotel","night."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["are","to","hotel","night","bus","take","the","one","to","night.","was","did","going","We","save"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86ee4b4b-ed01-5d6d-a42e-d5fc91345a51', '392da0bb-548d-5035-a549-9b738337af36', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we leave before seven, we will avoid the worst morning traffic on the ring road.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3bc5037b-5ad3-58e3-b658-b72e1862a280', '392da0bb-548d-5035-a549-9b738337af36', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we leave before seven, we will avoid the worst morning traffic on the ring road.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если выехать до семи, избежим худшего утреннего трафика на кольцевой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56822f47-a69a-5a9d-afb5-c0543979da32', '392da0bb-548d-5035-a549-9b738337af36', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"Should we take the metro or the bus to the stadium?","translation":"Ехать на стадион на метро или автобусе?","type":"dialogue"},{"character":"Anna","text":"The metro does not get stuck in traffic.","translation":"Метро не стоит в пробках.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Then we are going to take the metro and walk ten minutes."},{"is_correct":false,"text":"Then we took the metro yesterday tomorrow."},{"is_correct":false,"text":"The stadium is taking us by metro."}],"text":"What do they decide?","type":"choice"}],"title":"Metro or Bus?"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da094e08-5387-55c1-b890-9111b2eafe92', '392da0bb-548d-5035-a549-9b738337af36', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“day pass” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A ticket for unlimited travel during one day"},{"id":"D_B","is_correct":false,"text":"A ticket for one single journey"},{"id":"D_C","is_correct":false,"text":"A monthly card for local residents"}],"word":"day pass"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97707ff6-9e0e-5ef8-9c04-450a0e9b484c', '392da0bb-548d-5035-a549-9b738337af36', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to change at Central Station.","explanation":"The missing word is “change”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"change","id":"LW_A","is_correct":true},{"audio_text":"changed","id":"LW_B","is_correct":false},{"audio_text":"changing","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ at Central Station."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7daa94eb-a132-5605-8bf5-ad13181d1843', '392da0bb-548d-5035-a549-9b738337af36', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cheaper","explanation":"The complete sentence is “The night bus is cheaper than a taxi.”.","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The night bus is ___ than a taxi."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('903fc9ad-7031-5e44-8f01-e1a58c7cc4d6', '392da0bb-548d-5035-a549-9b738337af36', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"day pass","id":"V1","text":"day pass"},{"audio_text":"cheaper","id":"V2","text":"cheaper"},{"audio_text":"direct","id":"V3","text":"direct"},{"audio_text":"to change","id":"V4","text":"to change"},{"audio_text":"more convenient","id":"V5","text":"more convenient"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df464f31-0c3e-5fcc-a271-85c2e223ab8e', '392da0bb-548d-5035-a549-9b738337af36', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Is the last tram before midnight?"}],"explanation":"“Yes — if we catch the eleven o''clock one, we will be home by half past.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Yes — if we catch the eleven o''clock one, we will be home by half past."},{"id":"C_B","is_correct":false,"text":"I caught it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Midnight is catching the tram."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5509bb81-e294-5466-a909-2a21a40add45', '392da0bb-548d-5035-a549-9b738337af36', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('60ac2596-e50b-57d2-9068-2e275f6b96f7', NULL, 'Если опоздаем на пересадку', 'Обсудить пересадки, используя should и первое условное.', '{"en":"If We Miss the Connection","ru":"Если опоздаем на пересадку"}'::jsonb, '{"en":"Discuss connections using should and the first conditional.","ru":"Обсудить пересадки, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eef8a190-6757-5011-948c-6c272114273e', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"connection","right":"пересадка (на другой рейс)"},{"id":"P2","left":"to run late","right":"опаздывать"},{"id":"P3","left":"valid","right":"действительный"},{"id":"P4","left":"to check","right":"проверить"},{"id":"P5","left":"alternative","right":"альтернатива"},{"id":"P6","left":"platform change","right":"изменение платформы"},{"id":"P7","left":"in plenty of time","right":"с запасом времени"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59a0a89b-7287-52b3-ac3b-eefa8530a736', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should leave at least twenty minutes for a connection.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should leave at least twenty minutes for a connection."},{"id":"Q_B","is_correct":false,"text":"You should to leave twenty minutes yesterday."},{"id":"Q_C","is_correct":false,"text":"You must leaving time last week."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('11371f9a-831c-5841-9ffd-395d65c319bf', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If the train runs late, we will not catch the last bus from the airport.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если поезд опоздает, мы не успеем на последний автобус из аэропорта.","target_language":"en","word_bank":["we","the","the","will","the","runs","catch","did","If","late,","ran","airport.","from","last","not","bus","yesterday","train"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ff054d0-8ba6-5f52-a6c1-3492e5a6fd4b', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"validate","instruction":"Выберите подходящее слово.","options":["validate","will validate","validated"],"sentence_template":"If you ___ your ticket before boarding, it will stay valid.","translation_hint":"Если прокомпостировать билет до посадки, он останется действительным."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7a1bdec6-062b-568f-a5a2-20ecb7f8f2d7', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","check","the","platform","number","twice."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["check","went","You","twice.","number","the","platform","should","mustn''t"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fb5b4c1-b931-5606-8cc5-5ed0479c4a46', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we buy flexible tickets, a missed connection will not ruin the whole journey.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43b03408-5fc3-5fd2-b82d-e17da513dfb3', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we buy flexible tickets, a missed connection will not ruin the whole journey.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если купить гибкие билеты, пропущенная пересадка не разрушит всю поездку."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a9b51530-fec8-5955-b0ce-d47f6697ae91', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"We have only ten minutes for the connection in Lyon.","translation":"У нас всего десять минут на пересадку в Лионе.","type":"dialogue"},{"character":"Tom","text":"That is tight. What happens if the first train is late?","translation":"Это впритык. Что будет, если первый поезд опоздает?","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we miss it, we should take the next regional train."},{"is_correct":false,"text":"If we will miss it, we took it yesterday."},{"is_correct":false,"text":"The connection is missing the trains."}],"text":"What is the plan?","type":"choice"}],"title":"Ten Minutes Only"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa4eda5b-9707-518b-8c41-07ca7272f443', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“connection” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"A second vehicle you must catch to continue a journey"},{"id":"D_B","is_correct":false,"text":"The last stop of a single train line"},{"id":"D_C","is_correct":false,"text":"A bus that circles the airport every night"}],"word":"connection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e2efd6b-94f4-59d5-8f7f-2c4089d19fdf', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If the first train runs late, we will call the hotel.","explanation":"The missing word is “runs late”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"runs late","id":"LW_A","is_correct":true},{"audio_text":"will run late","id":"LW_B","is_correct":false},{"audio_text":"ran late","id":"LW_C","is_correct":false}],"sentence_template":"If the first train ___ , we will call the hotel."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9dcf5048-cfef-514c-a966-a283a3599a34', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should arrive in plenty of time.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should arrive ___ plenty of time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('967a4421-7d3f-5166-9a81-5a50643fd56d', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"connection","id":"V1","text":"connection"},{"audio_text":"to run late","id":"V2","text":"to run late"},{"audio_text":"valid","id":"V3","text":"valid"},{"audio_text":"to check","id":"V4","text":"to check"},{"audio_text":"alternative","id":"V5","text":"alternative"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('006e7a99-7417-5077-b938-1a9680d33260', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"Our train is delayed by twenty minutes."}],"explanation":"“We should tell the conductor — if the delay is their fault, the next ticket will be free.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"We should tell the conductor — if the delay is their fault, the next ticket will be free."},{"id":"C_B","is_correct":false,"text":"I told him yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The minutes are delaying us."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('5509bb81-e294-5466-a909-2a21a40add45', '60ac2596-e50b-57d2-9068-2e275f6b96f7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d90c451-42cf-5e78-a9b6-771f99653fc5', 'en', 'platform', 'платформа', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('31086954-9c5d-5ae1-b35a-a4d610dec2f3', 'en', 'single ticket', 'билет в одну сторону', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0717cdaa-29d7-5ba0-8dfe-6ecb3b1bafe3', 'en', 'return ticket', 'билет туда-обратно', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a7b8a50-9984-5117-9142-6f8a97ca3109', 'en', 'to miss', 'опоздать на (транспорт)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('21f05542-9e71-519f-bfcd-506502f089fa', 'en', 'timetable', 'расписание', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('04e8d7ed-c612-5012-a99e-6cd0247ee8d0', 'en', 'carriage', 'вагон', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1293301d-6838-5a78-a080-af9858ce3dfd', 'en', 'on time', 'по расписанию', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('688683c1-c1df-53c2-b828-9a8287ad2e9d', 'en', 'day pass', 'дневной проездной', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('78da3fe7-3d59-578d-b0b1-d93d182f0655', 'en', 'cheaper', 'дешевле', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b6730860-fafe-5df2-b8b0-e48f5a67037a', 'en', 'direct', 'прямой (без пересадок)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d40b775a-c585-58ed-a62e-db0bcc5ed6bf', 'en', 'to change', 'сделать пересадку', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d7bac6b-efc5-5994-a19a-98b6367b75f7', 'en', 'more convenient', 'удобнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('15aafcd5-3b92-57e1-8ca7-556ca6e6607a', 'en', 'night bus', 'ночной автобус', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c04328b0-da67-5ba6-b821-5a0066c0d85b', 'en', 'traffic', 'дорожное движение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка (на другой рейс)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('72da2248-eb8d-5cf6-81c2-732e0cdbe664', 'en', 'to run late', 'опаздывать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('850054dc-4ff3-554f-9757-a3537d5d92ba', 'en', 'valid', 'действительный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d0d29d53-006a-5c81-b86c-bf37d84bb084', 'en', 'to check', 'проверить', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('75724ef6-7ab9-58a8-9613-e22ee043d15b', 'en', 'platform change', 'изменение платформы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('05e2afd6-0494-5457-bb77-8f25c6cbffe4', 'en', 'in plenty of time', 'с запасом времени', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'single ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'return ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to miss' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'timetable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'carriage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, 'b84c30b3-84ae-5658-ae61-b35935b40d34', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'on time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'day pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cheaper' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'direct' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'more convenient' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'night bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '392da0bb-548d-5035-a549-9b738337af36', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'traffic' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to run late' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'valid' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to check' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'platform change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '5509bb81-e294-5466-a909-2a21a40add45', id, '60ac2596-e50b-57d2-9068-2e275f6b96f7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'in plenty of time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
