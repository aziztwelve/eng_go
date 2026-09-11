-- Track: A2_TRAVEL_TRAVEL_PROBLEMS_AND_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('4382794f-983f-5f4a-877a-2600bd1b2fae', 'A2_TRAVEL_TRAVEL_PROBLEMS_AND_SOLUTIONS', 'Проблемы в поездке и решения', 'Развивайте английский для путешествий уровня A2 по теме «Проблемы в поездке и решения».', '{"en":"Travel Problems and Solutions","ru":"Проблемы в поездке и решения"}'::jsonb, '{"en":"Develop A2 travel English for travel problems and solutions.","ru":"Развивайте английский для путешествий уровня A2 по теме «Проблемы в поездке и решения»."}'::jsonb, 'en', 'A2', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0fb2ab33-bf82-5f82-9273-17b2670a2df9', NULL, 'Что пошло не так в поездке', 'Рассказать о проблемах в пути, используя past simple и present perfect.', '{"en":"What Went Wrong on the Trip","ru":"Что пошло не так в поездке"}'::jsonb, '{"en":"Talk about travel problems using past simple and present perfect.","ru":"Рассказать о проблемах в пути, используя past simple и present perfect."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('296cf7fa-85f9-5026-b4e5-e63735640ea2', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"delay","right":"задержка"},{"id":"P2","left":"lost luggage","right":"потерянный багаж"},{"id":"P3","left":"to claim","right":"подать заявление (на компенсацию)"},{"id":"P4","left":"to rebook","right":"перебронировать"},{"id":"P5","left":"stressful","right":"стрессовый"},{"id":"P6","left":"customer service","right":"служба поддержки"},{"id":"P7","left":"eventually","right":"в итоге"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2acf8734-b907-51be-aee4-2688fa8d8eeb', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “The airline has found my suitcase this morning.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"The airline has found my suitcase this morning."},{"id":"Q_B","is_correct":false,"text":"The airline has found it yesterday."},{"id":"Q_C","is_correct":false,"text":"The airline find it already this morning."}],"question":"Which sentence uses the present perfect correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d1b0a3f-264c-5211-a85c-fe9a65e55692', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our flight was delayed by five hours, and the luggage got lost in the end.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Наш рейс задержали на пять часов, а багаж в итоге потеряли.","target_language":"en","word_bank":["tomorrow","and","the","in","hours,","was","did","end.","was","five","by","lost","the","got","flight","luggage","delayed","Our"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf337305-c798-5239-9bb4-eaaeac549ede', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"rebooked","instruction":"Выберите подходящее слово.","options":["rebooked","has rebook","rebooking"],"sentence_template":"They ___ us on the next flight for free.","translation_hint":"Нас бесплатно перебронировали на следующий рейс."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb266acd-a2c5-5521-a80a-17052579d36d', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["She","has","already","claimed","compensation","for","the","delay."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["did","compensation","She","the","has","already","claimed","was","delay.","for"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4509bd5-1de2-5f6d-a6f1-521ce33fcb31', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The airline has apologised for the delay, but nobody has explained where our suitcases are.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd15b483-658d-5883-91b1-e31fd0c69e65', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The airline has apologised for the delay, but nobody has explained where our suitcases are.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Авиакомпания извинилась за задержку, но никто не объяснил, где наши чемоданы."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab48dbd6-0419-5a35-9da3-8b7f96a80064', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"Everyone''s luggage has arrived, but ours has not.","translation":"Чей хочешь багаж пришёл, а наш — нет.","type":"dialogue"},{"character":"Tom","text":"Did you report it at the lost luggage desk?","translation":"Ты сообщила на стойке потерянного багажа?","type":"dialogue"},{"options":[{"is_correct":true,"text":"Yes, I have filled in the form and they have given me a tracking number."},{"is_correct":false,"text":"Yes, I fill it in tomorrow yesterday."},{"is_correct":false,"text":"The belt is losing our luggage report."}],"text":"What does Anna say?","type":"choice"}],"title":"The Empty Belt"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22136a19-e1c0-572f-b896-9c5564559e6f', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“lost luggage” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Suitcases that did not arrive with your flight"},{"id":"D_B","is_correct":false,"text":"A bag you left at home on purpose"},{"id":"D_C","is_correct":false,"text":"Extra bags you paid for at check-in"}],"word":"lost luggage"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00e1f667-e458-59d7-ae1e-f6e0311ba66f', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"I have submitted a compensation claim online.","explanation":"The missing word is “submitted”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"submitted","id":"LW_A","is_correct":true},{"audio_text":"submit","id":"LW_B","is_correct":false},{"audio_text":"submitting","id":"LW_C","is_correct":false}],"sentence_template":"I have ___ a compensation claim online."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('36030edd-bd2c-58c1-b348-cb569aefdf66', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"delayed","explanation":"The complete sentence is “Our flight has been delayed for three hours.”.","hint_prefix":"de","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our flight has been ___ for three hours."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39203f73-92f6-52a8-9c51-b2ab6ce96ae4', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"delay","id":"V1","text":"delay"},{"audio_text":"lost luggage","id":"V2","text":"lost luggage"},{"audio_text":"to claim","id":"V3","text":"to claim"},{"audio_text":"to rebook","id":"V4","text":"to rebook"},{"audio_text":"stressful","id":"V5","text":"stressful"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fae02ecc-1108-59df-8531-d452d6ea6221', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Agent","text":"How can I help you?"}],"explanation":"“Our connecting train has been cancelled — could you rebook us on the night bus?” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Our connecting train has been cancelled — could you rebook us on the night bus?"},{"id":"C_B","is_correct":false,"text":"You rebooked us yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The train is helping you."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4382794f-983f-5f4a-877a-2600bd1b2fae', '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a17f2e9b-064f-536b-8c06-b4d98aa419a9', NULL, 'Что будем делать дальше', 'Решить проблемы и сравнить варианты действий.', '{"en":"What We Will Do Next","ru":"Что будем делать дальше"}'::jsonb, '{"en":"Solve problems and compare options.","ru":"Решить проблемы и сравнить варианты действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebfd375b-a9e5-5ddd-9233-3fa18ae53553', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"solution","right":"решение"},{"id":"P2","left":"alternative","right":"альтернатива"},{"id":"P3","left":"more sensible","right":"разумнее"},{"id":"P4","left":"to wait","right":"ждать"},{"id":"P5","left":"to rent a car","right":"взять машину напрокат"},{"id":"P6","left":"overnight","right":"ночной / на ночь"},{"id":"P7","left":"to compensate","right":"компенсировать"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3cdd6284-cc15-510b-88ed-3b00e39cfd20', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “Renting a car is more sensible than waiting here all night.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"Renting a car is more sensible than waiting here all night."},{"id":"Q_B","is_correct":false,"text":"Renting a car is sensibler than waiting."},{"id":"Q_C","is_correct":false,"text":"Renting a car is most sensible than waiting."}],"question":"Which sentence compares two solutions correctly?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b5157d9-ef96-51a2-8c59-38fb77568e49', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We are going to rent a car — it will work out cheaper than a night at the airport.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Мы возьмём машину напрокат — это выйдет дешевле, чем ночь в аэропорту.","target_language":"en","word_bank":["are","going","We","yesterday","at","to","than","night","a","a","rented","airport.","it","the","out","car","work","will","—","did","cheaper","rent"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d7d3c32-05be-51d7-90e6-ddecb03004c4', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"slower","instruction":"Выберите подходящее слово.","options":["slower","slowest","more slow"],"sentence_template":"The overnight bus is ___ than the morning train.","translation_hint":"Ночной автобус медленнее утреннего поезда."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88a97e48-fba0-5671-a88a-235e8439c10f', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","company","is","going","to","compensate","us","for","the","taxi."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["taxi.","was","The","going","us","for","the","is","did","company","to","compensate"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05ff07c0-a63b-5cc6-b869-f6540ca71620', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If the airline pays for the hotel, waiting until tomorrow will be the easiest solution.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae1f2ba3-5a1d-5849-84c7-db0729040d8b', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If the airline pays for the hotel, waiting until tomorrow will be the easiest solution.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если авиакомпания оплатит отель, ожидание до завтра будет самым простым решением."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a407c19-03cc-5c3a-a8ca-5df5f57d0726', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Tom","text":"The last bus has gone, and the first train is at six.","translation":"Последний автобус ушёл, а первый поезд в шесть.","type":"dialogue"},{"character":"Anna","text":"So we either sleep here or take a taxi. Which is more sensible?","translation":"Значит, либо спим здесь, либо берём такси. Что разумнее?","type":"dialogue"},{"options":[{"is_correct":true,"text":"The taxi is expensive, but a hotel near the station costs even more."},{"is_correct":false,"text":"The taxi was cheaper yesterday tomorrow."},{"is_correct":false,"text":"The bus is taking us while sleeping."}],"text":"What does Tom calculate?","type":"choice"}],"title":"Stranded at Midnight"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02cd32f2-6db7-562a-9f4c-71921b590302', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“overnight” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"During the night, lasting the whole night"},{"id":"D_B","is_correct":false,"text":"Happening early in the morning"},{"id":"D_C","is_correct":false,"text":"Taking about half an hour"}],"word":"overnight"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b98f0006-48ca-5676-9351-51309fba884b', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We are going to rent a car for two days.","explanation":"The missing word is “rent”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"rent","id":"LW_A","is_correct":true},{"audio_text":"rented","id":"LW_B","is_correct":false},{"audio_text":"renting","id":"LW_C","is_correct":false}],"sentence_template":"We are going to ___ a car for two days."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ed54d08-81dc-55f7-a4a7-d89ebc8ff213', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cheaper","explanation":"The complete sentence is “This solution is cheaper than the first one.”.","hint_prefix":"ch","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This solution is ___ than the first one."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7993d048-6d3e-59af-93af-59b2774b35d5', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"solution","id":"V1","text":"solution"},{"audio_text":"alternative","id":"V2","text":"alternative"},{"audio_text":"more sensible","id":"V3","text":"more sensible"},{"audio_text":"to wait","id":"V4","text":"to wait"},{"audio_text":"to rent a car","id":"V5","text":"to rent a car"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e9d8a6c-dd84-553f-86a5-aa23e5ef99a7', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Agent","text":"The next available flight is on Friday."}],"explanation":"“That is too late — if you rebook us via Munich, we will be home on Wednesday.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"That is too late — if you rebook us via Munich, we will be home on Wednesday."},{"id":"C_B","is_correct":false,"text":"You rebooked us yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"Friday is flying us home."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4382794f-983f-5f4a-877a-2600bd1b2fae', 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', NULL, 'Если проблема повторится', 'Предложить профилактику проблем, используя should и первое условное.', '{"en":"If the Problem Repeats","ru":"Если проблема повторится"}'::jsonb, '{"en":"Suggest preventing problems using should and the first conditional.","ru":"Предложить профилактику проблем, используя should и первое условное."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0102277a-e598-5658-b499-71c737ea65f9', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова и фразы с переводом.","pairs":[{"id":"P1","left":"to prepare","right":"подготовиться"},{"id":"P2","left":"copy of documents","right":"копия документов"},{"id":"P3","left":"to take precautions","right":"принять меры предосторожности"},{"id":"P4","left":"travel insurance","right":"страховка поездки"},{"id":"P5","left":"in advance","right":"заранее"},{"id":"P6","left":"emergency number","right":"номер для чрезвычайных ситуаций"},{"id":"P7","left":"to save (on phone)","right":"сохранить (в телефоне)"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cb70ab9-8599-5d33-a2a9-88ab05f5f40d', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer is “You should keep copies of your documents in the cloud.”.","instruction":"Выберите правильный ответ.","options":[{"id":"Q_A","is_correct":true,"text":"You should keep copies of your documents in the cloud."},{"id":"Q_B","is_correct":false,"text":"You should to keep them yesterday."},{"id":"Q_C","is_correct":false,"text":"You must keeping them last trip."}],"question":"Which sentence gives correct advice?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f93fe2f4-2fde-5155-9ad7-dd462d5574be', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"If you save copies of your documents in advance, losing your passport will be less frightening.","instruction":"Составьте перевод из слов.","source_language":"ru","source_text":"Если ты сохранишь копии документов заранее, потеря паспорта будет менее страшной.","target_language":"en","word_bank":["of","you","copies","your","will","documents","losing","saved","did","save","less","passport","your","If","frightening.","in","advance,","be","yesterday"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8ef8821-367b-553e-a4ff-784d6522efec', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"dies","instruction":"Выберите подходящее слово.","options":["dies","will die","died"],"sentence_template":"If your phone ___ , you will still have paper copies.","translation_hint":"Если телефон разрядится, бумажные копии всё равно останутся."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25db0459-0c12-5fad-b5ae-106ccfcc5fb0', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["You","should","write","down","the","emergency","number","on","paper."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["emergency","the","down","paper.","on","write","went","should","number","mustn''t","You"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ce62ab0-7b7a-5497-a670-cf2af5359286', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"If you arrive at the station forty minutes early, a suddenly changed platform will not catch you out.","instruction":"Прослушайте предложение и напишите, что услышали.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('98631969-5412-5362-a0df-2853c59375a3', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"If you arrive at the station forty minutes early, a suddenly changed platform will not catch you out.","instruction":"Прослушайте фразу, запишите повтор и получите оценку произношения.","language":"en","min_accuracy":0.7,"translation_hint":"Если прийти на вокзал на сорок минут раньше, внезапно изменённая платформа не застанет врасплох."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3472769f-41e8-5141-915a-749bc15a5698', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю и выберите ответ.","scenes":[{"character":"Anna","text":"That was a stressful morning — we nearly missed the check-in.","translation":"Утро было стрессовым — мы чуть не опоздали на регистрацию.","type":"dialogue"},{"character":"Tom","text":"Next time we should take more precautions.","translation":"В следующий раз стоит принять больше мер.","type":"dialogue"},{"options":[{"is_correct":true,"text":"If we leave one hour earlier, traffic will not be a problem."},{"is_correct":false,"text":"If we will leave earlier, traffic was fine yesterday."},{"is_correct":false,"text":"The check-in is taking precautions against us."}],"text":"What does Anna suggest?","type":"choice"}],"title":"Learning From Trouble"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('219a19e2-4ae4-55bb-98e0-331d3ca965f3', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“precautions” matches the correct definition.","instruction":"Выберите правильное значение слова.","language":"en","options":[{"id":"D_A","is_correct":true,"text":"Things you do to stop problems before they happen"},{"id":"D_B","is_correct":false,"text":"Surprises that appear during a journey"},{"id":"D_C","is_correct":false,"text":"Tickets you buy at the last moment"}],"word":"precautions"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dc0d9928-c5f2-5cbe-9862-02c8531ea644', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"If you save copies in advance, you will be calmer.","explanation":"The missing word is “save”.","instruction":"Прослушайте предложение и выберите пропущенное слово.","language":"en","options":[{"audio_text":"save","id":"LW_A","is_correct":true},{"audio_text":"will save","id":"LW_B","is_correct":false},{"audio_text":"saved","id":"LW_C","is_correct":false}],"sentence_template":"If you ___ copies in advance, you will be calmer."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('651524f3-1f1b-5f6c-ace1-f65b6f5f465a', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"in","explanation":"The complete sentence is “You should prepare in advance.”.","hint_prefix":"in","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"You should prepare ___ advance."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2542810-5a70-5e47-8f36-fef3cd6e2f26', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each English phrase you hear with the same written phrase.","instruction":"Прослушайте каждое слово и выберите его написание.","language":"en","pairs":[{"audio_text":"to prepare","id":"V1","text":"to prepare"},{"audio_text":"copy of documents","id":"V2","text":"copy of documents"},{"audio_text":"to take precautions","id":"V3","text":"to take precautions"},{"audio_text":"travel insurance","id":"V4","text":"travel insurance"},{"audio_text":"in advance","id":"V5","text":"in advance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d3028b4b-c4f7-5831-b7c8-51bf42aad3d0', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Friend","text":"I always panic when plans break down."}],"explanation":"“Make a small checklist — if you follow it, even a cancelled train will not spoil the trip.” is the natural reply in this situation.","instruction":"Выберите подходящую реплику.","options":[{"id":"C_A","is_correct":true,"text":"Make a small checklist — if you follow it, even a cancelled train will not spoil the trip."},{"id":"C_B","is_correct":false,"text":"I made it yesterday tomorrow."},{"id":"C_C","is_correct":false,"text":"The panic is planning me."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('4382794f-983f-5f4a-877a-2600bd1b2fae', 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32a9c672-ab3d-515b-9700-5408acf0716c', 'en', 'lost luggage', 'потерянный багаж', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0bac7428-27c8-55d7-b758-6d26219d5f5d', 'en', 'to claim', 'подать заявление (на компенсацию)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e454d134-348e-5cde-8d26-b6faaccdbc4c', 'en', 'to rebook', 'перебронировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2cdeb87a-d007-5ef4-a361-9aede4cb8751', 'en', 'stressful', 'стрессовый', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('dec2c226-e125-56e4-b7e0-8b05321302d3', 'en', 'customer service', 'служба поддержки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0a46fee2-39e8-5d1d-a3fc-dc463f12bed9', 'en', 'eventually', 'в итоге', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b3a74332-dbe4-5a74-98a9-c09242c4a534', 'en', 'solution', 'решение', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b1abf28-0e24-5f5c-9093-34e760eb6b80', 'en', 'more sensible', 'разумнее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6bb03ff2-8559-5ae3-a871-afcffa057038', 'en', 'to wait', 'ждать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7e7c5b3e-4ff6-5ecc-bc15-9ecd119d3264', 'en', 'to rent a car', 'взять машину напрокат', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f4f3ca51-2f50-5269-b0ff-9ef1c4a256cd', 'en', 'overnight', 'ночной / на ночь', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bfe67d24-b687-5194-99ee-18b7ff20130b', 'en', 'to compensate', 'компенсировать', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('442ed282-ff82-520f-8b05-adf59be04d8c', 'en', 'to prepare', 'подготовиться', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d8e730ab-e702-566a-9c23-17a2fc2ef46a', 'en', 'copy of documents', 'копия документов', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('24834fb6-648e-5050-b93d-1b1c606e90f4', 'en', 'to take precautions', 'принять меры предосторожности', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4936a97-3e38-5972-9013-955a0a2da5a3', 'en', 'travel insurance', 'страховка поездки', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48465a51-bb8d-5af5-beb9-23e75da4553e', 'en', 'in advance', 'заранее', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0c2f04c-50e2-5b79-b0a3-267963d6a970', 'en', 'emergency number', 'номер для чрезвычайных ситуаций', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('be161afd-2ada-553c-bc08-fd76df7e9039', 'en', 'to save (on phone)', 'сохранить (в телефоне)', 'ru', 'A2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'lost luggage' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'to claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'stressful' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'customer service' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, '0fb2ab33-bf82-5f82-9273-17b2670a2df9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'eventually' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'solution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'more sensible' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'to wait' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'to rent a car' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'overnight' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'a17f2e9b-064f-536b-8c06-b4d98aa419a9', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to compensate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'to prepare' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'copy of documents' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'to take precautions' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel insurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'in advance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency number' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '4382794f-983f-5f4a-877a-2600bd1b2fae', id, 'c3c6a4e0-ba9f-5ba3-9e64-7a36fe1ee4c6', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'to save (on phone)' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
