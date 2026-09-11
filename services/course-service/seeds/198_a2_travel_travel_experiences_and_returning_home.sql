-- Track: A2_TRAVEL_TRAVEL_EXPERIENCES_AND_RETURNING_HOME. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('eab4ebab-d98a-507a-86b3-a3327bd0b225', 'A2_TRAVEL_TRAVEL_EXPERIENCES_AND_RETURNING_HOME', 'Впечатления от поездки и возвращение домой', 'Развивайте английский для путешествий уровня A2 по теме «Впечатления от поездки и возвращение домой».', '{"en":"Travel Experiences and Returning Home","ru":"Впечатления от поездки и возвращение домой"}'::jsonb, '{"en":"Develop A2 travel English for travel experiences and returning home.","ru":"Развивайте английский для путешествий уровня A2 по теме «Впечатления от поездки и возвращение домой»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('70254346-d3b1-5de1-a2d8-6f1a3a2f442d', NULL, 'Лучшие моменты поездки', 'Поделиться впечатлениями, используя past simple и present perfect.', '{"en":"Best Moments of the Trip","ru":"Лучшие моменты поездки"}'::jsonb, '{"en":"Share impressions using past simple and present perfect.","ru":"Поделиться впечатлениями, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0afed3f7-6d38-5bb7-af61-587e52fb26b2', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"highlight","right":"лучший момент"},{"id":"P2","left":"unforgettable","right":"незабываемый"},{"id":"P3","left":"to try local food","right":"попробовать местную еду"},{"id":"P4","left":"experience","right":"впечатление / опыт"},{"id":"P5","left":"to come back","right":"вернуться"},{"id":"P6","left":"already","right":"уже"},{"id":"P7","left":"abroad","right":"за границей"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bde8ace9-de21-5d5f-998c-d6670f3f008e', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “This is the best meal I have ever tried abroad.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"This is the best meal I have ever tried abroad."},{"id":"Q_B","is_correct":false,"text":"This is the best meal I have tried it last year."},{"id":"Q_C","is_correct":false,"text":"This is the best meal I try already abroad."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('431c7e4a-e6ca-51b5-83bf-fe8c3e384937', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We tried the local street food, and it was the best evening of the trip.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы попробовали местную уличную еду, и это был лучший вечер поездки.","target_language":"en","word_bank":["food,","try","local","tried","the","it","evening","We","trip.","of","was","and","tomorrow","the","best","did","the","street"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8eb70436-b036-597c-8a41-700699361d0a', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"highlight","instruction":"Выберите подходящее слово.","options":["highlight","highlights","highlighting"],"sentence_template":"The boat trip at sunset was the ___ of our holiday.","translation_hint":"Прогулка на лодке на закате стала лучшим моментом отпуска."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4df76bf0-af2d-5c00-a799-6385c3bf81cf', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","already","planned","to","come","back","next","spring."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["was","to","has","spring.","back","already","She","did","next","planned","come"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a89e3e4f-36da-52fd-8a30-a3c8e7dcaf0c', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We have visited nine places in ten days, and the mountain village has been the most unforgettable one.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('364f42eb-f3a4-58d3-89d6-7f158bbc9036', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We have visited nine places in ten days, and the mountain village has been the most unforgettable one.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Мы посетили девять мест за десять дней, и горная деревня оказалась самой незабываемой."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7238336f-7b46-59cf-ad13-38fbf1eedc6c', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"So, what was the highlight of the trip for you?","translation":"Итак, какой момент поездки был лучшим для тебя?","type":"dialogue"},{"character":"Tom","text":"The night market, definitely. Have you ever tasted anything like that grilled fish?","translation":"Ночной рынок, однозначно. Ты когда-нибудь пробовала что-то вроде той рыбы на гриле?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Never — and I have already found a recipe to try at home."},{"is_correct":false,"text":"Yes, I try it tomorrow yesterday."},{"is_correct":false,"text":"The market is highlighting the fish."}],"text":"What does Anna answer?","type":"choice"}],"title":"The Last Evening"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('591327a1-8a15-5cc2-b493-708e5b084d45', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“highlight” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The best or most memorable part of something"},{"id":"D_B","is_correct":false,"text":"A problem that spoiled part of the trip"},{"id":"D_C","is_correct":false,"text":"The hotel where the trip started"}],"word":"highlight"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ac17071-e781-507b-982e-14acd42e284e', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We have tried so many new dishes.","explanation":"The missing word is “tried”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"tried","id":"LW_A","is_correct":true},{"audio_text":"try","id":"LW_B","is_correct":false},{"audio_text":"trying","id":"LW_C","is_correct":false}],"sentence_template":"We have ___ so many new dishes."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac4d8dd8-6343-5467-a0fc-c404a94806da', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"unforgettable","explanation":"The complete sentence is “This trip has been unforgettable .”.","hint_prefix":"un","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This trip has been ___ ."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eea19886-a79c-51b1-ba3f-386217b4f32b', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"highlight","id":"V1","text":"highlight"},{"audio_text":"unforgettable","id":"V2","text":"unforgettable"},{"audio_text":"to try local food","id":"V3","text":"to try local food"},{"audio_text":"experience","id":"V4","text":"experience"},{"audio_text":"to come back","id":"V5","text":"to come back"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f06ce32f-bb62-589a-be5d-b1b801fb831b', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"How was your holiday?"}],"explanation":"“Amazing — it was more authentic than any trip we have done before.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Amazing — it was more authentic than any trip we have done before."},{"id":"C_B","is_correct":false,"text":"It was good yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The holiday is travelling me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('eab4ebab-d98a-507a-86b3-a3327bd0b225', '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('eaaab63c-bc7b-57fb-8eae-7c566cbdc033', NULL, 'Возвращаемся домой', 'Рассказать о возвращении, используя формы будущего и сравнения.', '{"en":"Returning Home","ru":"Возвращаемся домой"}'::jsonb, '{"en":"Talk about returning using future forms and comparatives.","ru":"Рассказать о возвращении, используя формы будущего и сравнения."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('068873a0-114d-5fec-8ad5-3f76f5d69164', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to pack","right":"собрать (чемодан)"},{"id":"P2","left":"to land","right":"приземлиться"},{"id":"P3","left":"earlier than planned","right":"раньше планируемого"},{"id":"P4","left":"jet lag","right":"смена часовых поясов"},{"id":"P5","left":"to look forward to","right":"с нетерпением ждать"},{"id":"P6","left":"more tired","right":"усталее"},{"id":"P7","left":"home sweet home","right":"дом милый дом"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('636a9516-dc31-5e2f-a1d3-db6f831589e8', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “We are landing at six tomorrow morning.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"We are landing at six tomorrow morning."},{"id":"Q_B","is_correct":false,"text":"We landed at six yesterday morning."},{"id":"Q_C","is_correct":false,"text":"We has landed tomorrow already."}],"question":"Which sentence talks about the future?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98304e5f-e028-5a87-a71e-dfb31ef82125', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are flying home tomorrow, and I am already looking forward to my own bed.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Завтра мы вылетаем домой, и я уже жду свою собственную кровать.","target_language":"en","word_bank":["am","already","looking","bed.","yesterday","flew","did","We","to","and","I","tomorrow,","home","are","flying","forward","own","my"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d3a15b3-383a-5322-8e94-39dbccebcbe1', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"shorter","instruction":"Выберите подходящее слово.","options":["shorter","shortest","more short"],"sentence_template":"The return flight is ___ than the flight out.","translation_hint":"Обратный рейс короче рейса туда."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4dafcfec-dfbb-5b10-a719-17fb21cd175d', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["I","am","going","to","pack","the","evening","before","we","leave."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["I","am","we","was","evening","before","pack","to","going","leave.","did","the"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15d7c97e-aea2-5262-9454-9a4a45becc55', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If we sleep on the plane, the jet lag will be easier during the first days at home.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b68e692b-6cff-5ef6-9971-8677c6737638', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If we sleep on the plane, the jet lag will be easier during the first days at home.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если поспать в самолёте, смена часовых поясов перенесётся легче в первые дни дома."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aed079a0-2b87-50ad-82af-f003a4560614', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"Our flight is at nine tomorrow. Have you started packing?","translation":"Наш рейс завтра в девять. Ты начала собираться?","type":"dialogue"},{"character":"Anna","text":"Half of it. The souvenirs take more space than I thought.","translation":"Наполовину. Сувениры занимают больше места, чем я думала.","type":"dialogue"},{"options":[{"is_correct":true,"text":"You should pack the heavy things in the hand luggage."},{"is_correct":false,"text":"You must packed them yesterday already."},{"is_correct":false,"text":"The suitcase is packing the souvenirs."}],"text":"What does Tom advise?","type":"choice"}],"title":"The Last Day"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ce4a3b6-1225-5fb9-bbc1-a15391823072', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“jet lag” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"The tired feeling after flying across time zones"},{"id":"D_B","is_correct":false,"text":"A long queue at the baggage claim"},{"id":"D_C","is_correct":false,"text":"A delay caused by bad weather"}],"word":"jet lag"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('054237b8-4b08-56d2-85a3-38f241705741', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are landing at six in the morning.","explanation":"The missing word is “landing”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"landing","id":"LW_A","is_correct":true},{"audio_text":"land","id":"LW_B","is_correct":false},{"audio_text":"landed","id":"LW_C","is_correct":false}],"sentence_template":"We are ___ at six in the morning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5848f393-dbef-5131-97ed-6910e7622942', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"to","explanation":"The complete sentence is “I am looking forward to my own kitchen.”.","hint_prefix":"to","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"I am looking forward ___ my own kitchen."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b0f0304-4455-50bc-b97f-f04549f7d5fe', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to pack","id":"V1","text":"to pack"},{"audio_text":"to land","id":"V2","text":"to land"},{"audio_text":"earlier than planned","id":"V3","text":"earlier than planned"},{"audio_text":"jet lag","id":"V4","text":"jet lag"},{"audio_text":"to look forward to","id":"V5","text":"to look forward to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8e471bd-447b-5f61-8b9c-2c22a919cfb3', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"When do you get back?"}],"explanation":"“Sunday evening — if the connection goes well, I will be home before midnight.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Sunday evening — if the connection goes well, I will be home before midnight."},{"id":"C_B","is_correct":false,"text":"I got back yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Sunday is getting me back."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('eab4ebab-d98a-507a-86b3-a3327bd0b225', 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0754ba64-ce6f-5789-87b4-487769140d94', NULL, 'Рассказываем о поездке', 'Дать советы о рассказах о поездках, используя should и первое условное.', '{"en":"Telling Others About the Trip","ru":"Рассказываем о поездке"}'::jsonb, '{"en":"Give advice about sharing travel stories using should and the first conditional.","ru":"Дать советы о рассказах о поездках, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5a01660-cdd2-5af3-a6ff-b7bce47dd127', '0754ba64-ce6f-5789-87b4-487769140d94', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"photo album","right":"фотоальбом"},{"id":"P2","left":"to recommend","right":"порекомендовать"},{"id":"P3","left":"to exaggerate","right":"преувеличивать"},{"id":"P4","left":"honest","right":"честный"},{"id":"P5","left":"tips","right":"советы"},{"id":"P6","left":"the same route","right":"тот же маршрут"},{"id":"P7","left":"to share","right":"поделиться"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df08261d-8fa7-5c8a-87de-dacd867ec154', '0754ba64-ce6f-5789-87b4-487769140d94', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should share practical tips, not just photos.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should share practical tips, not just photos."},{"id":"Q_B","is_correct":false,"text":"You should to share tips yesterday."},{"id":"Q_C","is_correct":false,"text":"You must sharing tips last night."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5dcbb9c3-fa36-530c-8070-4fcb78f6d00b', '0754ba64-ce6f-5789-87b4-487769140d94', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you talk honestly about the downsides, your friends will plan the trip better.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты честно расскажешь о минусах, друзья лучше спланируют поездку.","target_language":"en","word_bank":["better.","talk","downsides,","your","did","about","honestly","plan","the","friends","you","the","If","will","told","trip","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('701c1c18-316d-5d17-989c-92f972000089', '0754ba64-ce6f-5789-87b4-487769140d94', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"exaggerate","instruction":"Выберите подходящее слово.","options":["exaggerate","will exaggerate","exaggerated"],"sentence_template":"If you ___ too much, people will not believe the story.","translation_hint":"Если слишком преувеличивать, люди не поверят рассказу."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a549ac13-6e6c-54cf-9ad4-db7be29f93ed', '0754ba64-ce6f-5789-87b4-487769140d94', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","share","the","route","with","anyone","who","asks."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["mustn''t","the","anyone","went","asks.","route","should","share","who","You","with"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5e005763-c6eb-5d59-a685-03a1230228f7', '0754ba64-ce6f-5789-87b4-487769140d94', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you write down your tips while the trip is fresh, you will remember much more.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f02af0a3-cd96-5295-b56d-fc7833fb50f6', '0754ba64-ce6f-5789-87b4-487769140d94', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you write down your tips while the trip is fresh, you will remember much more.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если записать советы, пока впечатления свежи, запомнится гораздо больше."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d3c63bf-ae68-5068-9e81-3b56ace4329f', '0754ba64-ce6f-5789-87b4-487769140d94', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"How was the trip? Tell us everything!","translation":"Как прошла поездка? Рассказывай всё!","type":"dialogue"},{"character":"Tom","text":"It was great. The caves were even bigger than the photos show.","translation":"Было здорово. Гроты оказались даже больше, чем на фото.","type":"dialogue"},{"options":[{"is_correct":true,"text":"Would you recommend the same route for our autumn trip?"},{"is_correct":false,"text":"Did you recommend it tomorrow yesterday?"},{"is_correct":false,"text":"Is the route telling the story itself?"}],"text":"What does Anna ask?","type":"choice"}],"title":"Dinner Stories"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('37e3d686-6b28-5b1a-9faa-ba9ff6428cce', '0754ba64-ce6f-5789-87b4-487769140d94', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“to exaggerate” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"To make something sound bigger or better than it really was"},{"id":"D_B","is_correct":false,"text":"To describe something exactly as it was"},{"id":"D_C","is_correct":false,"text":"To refuse to talk about a trip at all"}],"word":"to exaggerate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d03d961f-2852-5661-b8a6-b5897c048410', '0754ba64-ce6f-5789-87b4-487769140d94', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If they follow our route, they will save a day.","explanation":"The missing word is “follow”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"follow","id":"LW_A","is_correct":true},{"audio_text":"will follow","id":"LW_B","is_correct":false},{"audio_text":"followed","id":"LW_C","is_correct":false}],"sentence_template":"If they ___ our route, they will save a day."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0551ce0-01e1-525f-8799-d2adacd52000', '0754ba64-ce6f-5789-87b4-487769140d94', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"tips","explanation":"The complete sentence is “You should share your tips with other travellers.”.","hint_prefix":"ti","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should share your ___ with other travellers."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fefa817-6de6-5d6d-bf78-3809bae6a038', '0754ba64-ce6f-5789-87b4-487769140d94', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"photo album","id":"V1","text":"photo album"},{"audio_text":"to recommend","id":"V2","text":"to recommend"},{"audio_text":"to exaggerate","id":"V3","text":"to exaggerate"},{"audio_text":"honest","id":"V4","text":"honest"},{"audio_text":"tips","id":"V5","text":"tips"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd9f72a7-e924-581d-9344-5bccb431aa2e', '0754ba64-ce6f-5789-87b4-487769140d94', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I am doing the same route next month."}],"explanation":"“Great — if you message me, I will send you our whole list of places.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Great — if you message me, I will send you our whole list of places."},{"id":"C_B","is_correct":false,"text":"I sent it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The route is messaging you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('eab4ebab-d98a-507a-86b3-a3327bd0b225', '0754ba64-ce6f-5789-87b4-487769140d94', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a76652d1-82fd-5406-8610-06677fc3f562', 'en', 'highlight', 'лучший момент', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b45e3f7-0bbb-51da-83ea-e2b7fb3b3c14', 'en', 'unforgettable', 'незабываемый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ca1dc359-a557-5066-a3e0-309157055a70', 'en', 'to try local food', 'попробовать местную еду', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('749bb679-f32e-527b-92db-97f10a850cb8', 'en', 'experience', 'впечатление / опыт', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f5d794c5-465f-5536-92f0-9dd4488b4c13', 'en', 'to come back', 'вернуться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5851e2ff-5b38-5a83-9910-bce95b245ef4', 'en', 'already', 'уже', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('efb21a54-6581-5499-b454-4ccdadbc1eaa', 'en', 'abroad', 'за границей', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('10a167d1-1da9-599f-814c-4950ad5066b5', 'en', 'to pack', 'собрать (чемодан)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb06e3ec-9399-59fb-a1ee-4e1e774b6171', 'en', 'to land', 'приземлиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('151d8f60-204f-5f17-94d4-5cd33011a614', 'en', 'earlier than planned', 'раньше планируемого', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4ce7d27f-c54a-517b-85f8-dd9224745548', 'en', 'jet lag', 'смена часовых поясов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('787eea9c-584c-5bb9-b72c-0ec54eaa56a6', 'en', 'to look forward to', 'с нетерпением ждать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bbe29bd4-e1b2-590a-8e82-d3295cc367fd', 'en', 'more tired', 'усталее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bcb55e10-62bd-5a67-a159-dea3a83c506b', 'en', 'home sweet home', 'дом милый дом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('417712be-11c5-5e35-9510-54006b777059', 'en', 'photo album', 'фотоальбом', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6312a9c7-ccb0-5bbe-bc59-8df91202fb08', 'en', 'to recommend', 'порекомендовать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('65ad4639-ed76-5c75-ad11-4a08db7e9ee2', 'en', 'to exaggerate', 'преувеличивать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f161dd5f-c7d3-584b-a2fc-703140c5107e', 'en', 'honest', 'честный', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9d74fc73-ee42-5748-9f27-dd0a77ffbb5d', 'en', 'tips', 'советы', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e65074fa-15c9-564a-a277-efa806e50901', 'en', 'the same route', 'тот же маршрут', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4765a607-7845-5278-a095-39dff7599dfd', 'en', 'to share', 'поделиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'highlight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'unforgettable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to try local food' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'experience' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'to come back' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'already' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '70254346-d3b1-5de1-a2d8-6f1a3a2f442d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'abroad' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to pack' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to land' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'earlier than planned' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'jet lag' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to look forward to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'more tired' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, 'eaaab63c-bc7b-57fb-8eae-7c566cbdc033', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'home sweet home' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'photo album' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'to recommend' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to exaggerate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'honest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tips' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'the same route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'eab4ebab-d98a-507a-86b3-a3327bd0b225', id, '0754ba64-ce6f-5789-87b4-487769140d94', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to share' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
