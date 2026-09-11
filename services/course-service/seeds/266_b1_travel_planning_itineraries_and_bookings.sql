-- Track: B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('540563c7-eb2c-5e68-a661-fff74879fe6b', 'B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS', 'Планирование маршрутов и бронирование', 'Развивайте английский для путешествий уровня B1 по теме «Планирование маршрутов и бронирование».', '{"en":"Planning Itineraries and Bookings","ru":"Планирование маршрутов и бронирование"}'::jsonb, '{"en":"Develop B1 travel English for planning itineraries and bookings.","ru":"Развивайте английский для путешествий уровня B1 по теме «Планирование маршрутов и бронирование»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5189ec22-8c55-5790-b7fd-0959ac1a3624', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Building an Itinerary","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62c530c4-215e-59ab-9505-7d16f0cd47c2', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T01","left":"itinerary","right":"маршрут поездки"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T02","left":"connection","right":"пересадка"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T03","left":"flexible ticket","right":"гибкий билет"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T04","left":"availability","right":"наличие"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T05","left":"confirm","right":"подтвердить"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T06","left":"reservation","right":"бронирование"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T07","left":"travel insurance","right":"туристическая страховка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c05916c7-f758-53c9-b880-63ce645400f6', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T08","is_correct":true,"text":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27b2c6e1-f985-5a7c-a130-84a5f5f11019', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наш маршрут включает короткую пересадку, поэтому я выбрал гибкий билет на случай задержки первого поезда.","target_language":"en","word_bank":["Our","itinerary","includes","a","short","connection,","so","I","chose","a","flexible","ticket","in","case","the","first","train","is","delayed."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a593c6fd-3b1f-571b-8dd0-1c02ff067568', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"itinerary","instruction":"Выберите подходящее слово.","options":["itinerary","availability","reservation"],"sentence_template":"Our ___ includes a short connection, so I chose a flexible ticket in case the first train is delayed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3d424cab-1dff-542a-bd00-d7549946e5fb', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","itinerary","includes","a","short","connection,","so","I","chose","a","flexible","ticket","in","case","the","first","train","is","delayed."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["delayed.","is","train","first","the","case","in","ticket","flexible","a","chose","I","so","connection,","short","a","includes","itinerary","Our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('24bc80b8-f522-5af7-9ac3-394dfe0fbc27', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea2b5c82-d4d5-5301-a70e-22c4b9895da1', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Наш маршрут включает короткую пересадку, поэтому я выбрал гибкий билет на случай задержки первого поезда. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70e748ff-c682-564b-834a-1af0583ff7c1', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed.","translation":"Наш маршрут включает короткую пересадку, поэтому я выбрал гибкий билет на случай задержки первого поезда.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Building an Itinerary"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0647d120-bd35-5869-b73b-ea1ec9cd6d5d', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“itinerary” means a detailed travel plan.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T11","is_correct":true,"text":"a detailed travel plan"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T12","is_correct":false,"text":"a second service used during a journey"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T13","is_correct":false,"text":"a ticket that can be changed"}],"word":"itinerary"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f318a383-fe6a-56a4-a816-c82892b26b03', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed.","explanation":"The missing travel expression is “itinerary”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"itinerary","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T14","is_correct":true},{"audio_text":"flexible ticket","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T15","is_correct":false},{"audio_text":"confirm","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T16","is_correct":false}],"sentence_template":"Our ___ includes a short connection, so I chose a flexible ticket in case the first train is delayed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1b598cf-9fa7-523a-b3da-2a8a64fe9479', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"itinerary","explanation":"The sentence requires “itinerary” to express the intended travel meaning.","hint_prefix":"iti","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our ___ includes a short connection, so I chose a flexible ticket in case the first train is delayed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf0f5078-1634-561b-acb6-d94549171d62', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"itinerary","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T17","text":"itinerary"},{"audio_text":"connection","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T18","text":"connection"},{"audio_text":"flexible ticket","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T19","text":"flexible ticket"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee325a1b-ee2b-5796-9f56-0753953e9b09', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Building an Itinerary”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T20","is_correct":true,"text":"Our itinerary includes a short connection, so I chose a flexible ticket in case the first train is delayed."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('540563c7-eb2c-5e68-a661-fff74879fe6b', '5189ec22-8c55-5790-b7fd-0959ac1a3624', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('6d734f09-6545-55bd-bc31-357c76718a04', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Comparing Travel Options","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3c424f3b-d74e-50e3-a8b3-c41147b5d88b', '6d734f09-6545-55bd-bc31-357c76718a04', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T01","left":"itinerary","right":"маршрут поездки"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T02","left":"connection","right":"пересадка"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T03","left":"flexible ticket","right":"гибкий билет"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T04","left":"availability","right":"наличие"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T05","left":"confirm","right":"подтвердить"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T06","left":"reservation","right":"бронирование"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T07","left":"travel insurance","right":"туристическая страховка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43ac2997-d32b-5386-95d9-00e854056400', '6d734f09-6545-55bd-bc31-357c76718a04', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T08","is_correct":true,"text":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('249af120-73d7-5cca-9542-78a859cb5df6', '6d734f09-6545-55bd-bc31-357c76718a04', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отель подтвердил наличие мест после того, как мы изменили бронирование с двух номеров на одни апартаменты.","target_language":"en","word_bank":["The","hotel","confirmed","availability","after","we","changed","the","reservation","from","two","rooms","to","one","apartment."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('182b3eeb-67ca-57ee-a965-ae6cef436593', '6d734f09-6545-55bd-bc31-357c76718a04', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"connection","instruction":"Выберите подходящее слово.","options":["connection","confirm","travel insurance"],"sentence_template":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('186ac456-1b31-5554-809a-44f03522c549', '6d734f09-6545-55bd-bc31-357c76718a04', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","hotel","confirmed","availability","after","we","changed","the","reservation","from","two","rooms","to","one","apartment."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["apartment.","one","to","rooms","two","from","reservation","the","changed","we","after","availability","confirmed","hotel","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef1d791-632c-5d3b-833d-f1be3c982f56', '6d734f09-6545-55bd-bc31-357c76718a04', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e24e2e20-ede9-592c-b48b-9bd60a37b3ee', '6d734f09-6545-55bd-bc31-357c76718a04', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Отель подтвердил наличие мест после того, как мы изменили бронирование с двух номеров на одни апартаменты. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef986a51-cb4b-5470-9cc8-7d6e2126e144', '6d734f09-6545-55bd-bc31-357c76718a04', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment.","translation":"Отель подтвердил наличие мест после того, как мы изменили бронирование с двух номеров на одни апартаменты.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Comparing Travel Options"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1cc25652-6a0e-5659-a90f-c767f8738a47', '6d734f09-6545-55bd-bc31-357c76718a04', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“connection” means a second service used during a journey.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T11","is_correct":true,"text":"a second service used during a journey"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T12","is_correct":false,"text":"a ticket that can be changed"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T13","is_correct":false,"text":"whether something can be booked"}],"word":"connection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25077475-7002-5c17-8994-3863132c6aed', '6d734f09-6545-55bd-bc31-357c76718a04', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment.","explanation":"The missing travel expression is “connection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"connection","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T14","is_correct":true},{"audio_text":"availability","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T15","is_correct":false},{"audio_text":"reservation","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T16","is_correct":false}],"sentence_template":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09197af9-b9ae-540c-a5ab-d68d060e6233', '6d734f09-6545-55bd-bc31-357c76718a04', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"connection","explanation":"The sentence requires “connection” to express the intended travel meaning.","hint_prefix":"con","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6800406-f162-58e1-aad0-6c6ab93d35bc', '6d734f09-6545-55bd-bc31-357c76718a04', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"itinerary","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T17","text":"itinerary"},{"audio_text":"connection","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T18","text":"connection"},{"audio_text":"flexible ticket","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T19","text":"flexible ticket"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a529d064-764e-5105-8ead-d7f496330cba', '6d734f09-6545-55bd-bc31-357c76718a04', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Comparing Travel Options”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T20","is_correct":true,"text":"The hotel confirmed availability after we changed the reservation from two rooms to one apartment."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('540563c7-eb2c-5e68-a661-fff74879fe6b', '6d734f09-6545-55bd-bc31-357c76718a04', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('55b8be07-67cc-51a8-bab5-fd00c1ed469c', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Changing a Booking","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab8e5c1a-7e48-5e33-b827-0ad316751312', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T01","left":"itinerary","right":"маршрут поездки"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T02","left":"connection","right":"пересадка"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T03","left":"flexible ticket","right":"гибкий билет"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T04","left":"availability","right":"наличие"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T05","left":"confirm","right":"подтвердить"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T06","left":"reservation","right":"бронирование"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T07","left":"travel insurance","right":"туристическая страховка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('19412b04-682d-53a1-97ce-ff1fdb5ec561', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T08","is_correct":true,"text":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac9f40ef-9e1c-56da-9574-5a5015a84ebd', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Туристическая страховка стоит дополнительно, но может покрыть расходы, если поездка будет неожиданно отменена.","target_language":"en","word_bank":["Travel","insurance","costs","extra,","but","it","may","cover","expenses","if","the","journey","is","cancelled","unexpectedly."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f85b422-f2bb-5410-85e2-1392f37e4fa1', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"flexible ticket","instruction":"Выберите подходящее слово.","options":["flexible ticket","reservation","itinerary"],"sentence_template":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9d9ee660-5298-5059-86b2-9da0a33df6b0', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Travel","insurance","costs","extra,","but","it","may","cover","expenses","if","the","journey","is","cancelled","unexpectedly."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["unexpectedly.","cancelled","is","journey","the","if","expenses","cover","may","it","but","extra,","costs","insurance","Travel"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7695b3fb-501c-54a7-ad50-17d94c1293ac', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2efe8e5c-e237-572a-bf98-26932982c99e', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Туристическая страховка стоит дополнительно, но может покрыть расходы, если поездка будет неожиданно отменена. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ead2a33-e206-5587-ad4c-55ac26ed940a', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly.","translation":"Туристическая страховка стоит дополнительно, но может покрыть расходы, если поездка будет неожиданно отменена.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Changing a Booking"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c326c16f-0914-56ba-a630-dda729646927', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“flexible ticket” means a ticket that can be changed.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T11","is_correct":true,"text":"a ticket that can be changed"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T12","is_correct":false,"text":"whether something can be booked"},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T13","is_correct":false,"text":"state that details are correct"}],"word":"flexible ticket"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4b84307-42a8-5208-ac80-6f8f975894e5', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly.","explanation":"The missing travel expression is “flexible ticket”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"flexible ticket","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T14","is_correct":true},{"audio_text":"confirm","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T15","is_correct":false},{"audio_text":"travel insurance","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T16","is_correct":false}],"sentence_template":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('976ae410-a3fc-55ec-b37a-51b1cb3d88ed', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"flexible ticket","explanation":"The sentence requires “flexible ticket” to express the intended travel meaning.","hint_prefix":"fle","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da1e6ca8-8f29-5b1b-a979-69dececcd851', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"itinerary","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T17","text":"itinerary"},{"audio_text":"connection","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T18","text":"connection"},{"audio_text":"flexible ticket","id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T19","text":"flexible ticket"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51928968-00b7-5198-adb9-e01f07c35dc3', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Changing a Booking”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T20","is_correct":true,"text":"Travel insurance costs extra, but it may cover expenses if the journey is cancelled unexpectedly."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_PLANNING_ITINERARIES_AND_BOOKINGS_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('540563c7-eb2c-5e68-a661-fff74879fe6b', '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70e5dd65-871d-56fd-8c73-41f47a391581', 'en', 'itinerary', 'маршрут поездки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07765714-b2fa-52f4-a5d9-eef1d98513ad', 'en', 'flexible ticket', 'гибкий билет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'наличие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'бронирование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4936a97-3e38-5972-9013-955a0a2da5a3', 'en', 'travel insurance', 'туристическая страховка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70e5dd65-871d-56fd-8c73-41f47a391581', 'en', 'itinerary', 'маршрут поездки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07765714-b2fa-52f4-a5d9-eef1d98513ad', 'en', 'flexible ticket', 'гибкий билет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'наличие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'бронирование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4936a97-3e38-5972-9013-955a0a2da5a3', 'en', 'travel insurance', 'туристическая страховка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('70e5dd65-871d-56fd-8c73-41f47a391581', 'en', 'itinerary', 'маршрут поездки', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('07765714-b2fa-52f4-a5d9-eef1d98513ad', 'en', 'flexible ticket', 'гибкий билет', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fecf9b1-4dbc-5d8a-899e-a13a69107bd8', 'en', 'availability', 'наличие', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('67b7d91b-1d2a-5380-87b4-36cc0aec0a14', 'en', 'confirm', 'подтвердить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6e5ab868-107f-5b13-921a-c0bf0cddb1c7', 'en', 'reservation', 'бронирование', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4936a97-3e38-5972-9013-955a0a2da5a3', 'en', 'travel insurance', 'туристическая страховка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'itinerary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '5189ec22-8c55-5790-b7fd-0959ac1a3624', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel insurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'itinerary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '6d734f09-6545-55bd-bc31-357c76718a04', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel insurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'itinerary' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'flexible ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'availability' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'confirm' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '540563c7-eb2c-5e68-a661-fff74879fe6b', id, '55b8be07-67cc-51a8-bab5-fd00c1ed469c', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel insurance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
