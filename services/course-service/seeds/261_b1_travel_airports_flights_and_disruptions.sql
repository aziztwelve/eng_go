-- Track: B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c0c03275-928d-503f-8496-fcb36e5f3012', 'B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS', 'Аэропорты, рейсы и сбои', 'Развивайте английский для путешествий уровня B1 по теме «Аэропорты, рейсы и сбои».', '{"en":"Airports, Flights and Disruptions","ru":"Аэропорты, рейсы и сбои"}'::jsonb, '{"en":"Develop B1 travel English for airports, flights and disruptions.","ru":"Развивайте английский для путешествий уровня B1 по теме «Аэропорты, рейсы и сбои»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d6904864-48c0-5df6-abf6-d9e7e5d388ca', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Airport Procedures","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47ef3834-a6d8-5553-8b45-6711b57a0dd6', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T01","left":"boarding pass","right":"посадочный талон"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T02","left":"departure gate","right":"выход на посадку"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T03","left":"delayed","right":"задержанный"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T04","left":"cancelled","right":"отменённый"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T05","left":"rebook","right":"перебронировать"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T06","left":"compensation","right":"компенсация"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T07","left":"announcement","right":"объявление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ec280be-eafa-5cda-99a0-98f77e8649c3', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T08","is_correct":true,"text":"The departure gate printed on my boarding pass changed shortly before boarding began."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ad20c57-c35f-5637-aca2-33b65050ac60', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The departure gate printed on my boarding pass changed shortly before boarding began.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Выход на посадку, указанный в моём посадочном талоне, изменился незадолго до начала посадки.","target_language":"en","word_bank":["The","departure","gate","printed","on","my","boarding","pass","changed","shortly","before","boarding","began."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc18fc56-6ab6-530d-b071-0be28970d1c7', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"boarding pass","instruction":"Выберите подходящее слово.","options":["boarding pass","cancelled","compensation"],"sentence_template":"The departure gate printed on my ___ changed shortly before boarding began."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4550baa7-8b9e-507f-aa9f-ce177c2bb794', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","departure","gate","printed","on","my","boarding","pass","changed","shortly","before","boarding","began."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["began.","boarding","before","shortly","changed","pass","boarding","my","on","printed","gate","departure","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02063e98-25c0-537a-80eb-85dd29c8e1df', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The departure gate printed on my boarding pass changed shortly before boarding began. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d43241c-283d-59ca-8cd2-263e6fd299cf', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The departure gate printed on my boarding pass changed shortly before boarding began. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Выход на посадку, указанный в моём посадочном талоне, изменился незадолго до начала посадки. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5a8a6c3a-0ee1-526c-82b6-90b071d64434', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The departure gate printed on my boarding pass changed shortly before boarding began.","translation":"Выход на посадку, указанный в моём посадочном талоне, изменился незадолго до начала посадки.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Airport Procedures"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6d6517f-07ae-5e7f-a779-ec4bfa825a5a', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“boarding pass” means a document allowing a passenger to board.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T11","is_correct":true,"text":"a document allowing a passenger to board"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T12","is_correct":false,"text":"the airport location where boarding begins"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T13","is_correct":false,"text":"happening later than planned"}],"word":"boarding pass"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cce8fb13-f29f-5500-a3f8-e2c983e61391', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The departure gate printed on my boarding pass changed shortly before boarding began.","explanation":"The missing travel expression is “boarding pass”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"boarding pass","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T14","is_correct":true},{"audio_text":"delayed","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T15","is_correct":false},{"audio_text":"rebook","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T16","is_correct":false}],"sentence_template":"The departure gate printed on my ___ changed shortly before boarding began."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dfe6ee0-2625-537e-b70f-18bc394420ea', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"boarding pass","explanation":"The sentence requires “boarding pass” to express the intended travel meaning.","hint_prefix":"boa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The departure gate printed on my ___ changed shortly before boarding began."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('861fcbdd-8d2e-5ecc-989c-4ae40580a230', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"boarding pass","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T17","text":"boarding pass"},{"audio_text":"departure gate","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T18","text":"departure gate"},{"audio_text":"delayed","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T19","text":"delayed"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b320ddc-fa1d-50a8-b26b-e3b5cd236780', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Airport Procedures”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T20","is_correct":true,"text":"The departure gate printed on my boarding pass changed shortly before boarding began."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c0c03275-928d-503f-8496-fcb36e5f3012', 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('170c6e91-fe65-5c68-823b-cba5d2bfc956', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Flight Changes","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7336ce92-3cb1-5dbb-a552-e819fa28e4e1', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T01","left":"boarding pass","right":"посадочный талон"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T02","left":"departure gate","right":"выход на посадку"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T03","left":"delayed","right":"задержанный"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T04","left":"cancelled","right":"отменённый"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T05","left":"rebook","right":"перебронировать"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T06","left":"compensation","right":"компенсация"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T07","left":"announcement","right":"объявление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22a56e88-e309-55c3-a38a-1dc29a2d8941', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T08","is_correct":true,"text":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6b504bf-3628-5f36-b5f9-503741bd1349', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поскольку рейс был отменён, а не задержан, авиакомпания перебронировала нас на следующее утро.","target_language":"en","word_bank":["Because","the","flight","was","cancelled","rather","than","delayed,","the","airline","rebooked","us","for","the","following","morning."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e013b648-2bf3-5ea2-9dfa-a7910e0c53c0', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"departure gate","instruction":"Выберите подходящее слово.","options":["departure gate","rebook","announcement"],"sentence_template":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08a5db0f-799a-5d8c-8b91-d3d3b6656083', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Because","the","flight","was","cancelled","rather","than","delayed,","the","airline","rebooked","us","for","the","following","morning."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["morning.","following","the","for","us","rebooked","airline","the","delayed,","than","rather","cancelled","was","flight","the","Because"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76a82707-39ba-5626-b8d2-184ae6982e61', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26e26e5e-47af-575b-a413-30327c50d94b', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Поскольку рейс был отменён, а не задержан, авиакомпания перебронировала нас на следующее утро. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02921c28-dadf-5419-a703-d04d0f6a5de4', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning.","translation":"Поскольку рейс был отменён, а не задержан, авиакомпания перебронировала нас на следующее утро.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Flight Changes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0652b804-cde6-52a4-9dd0-cdb51416b0c1', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“departure gate” means the airport location where boarding begins.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T11","is_correct":true,"text":"the airport location where boarding begins"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T12","is_correct":false,"text":"happening later than planned"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T13","is_correct":false,"text":"officially stopped from happening"}],"word":"departure gate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fb95f77-e700-51bc-9539-fcba6121272c', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning.","explanation":"The missing travel expression is “departure gate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"departure gate","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T14","is_correct":true},{"audio_text":"cancelled","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T15","is_correct":false},{"audio_text":"compensation","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T16","is_correct":false}],"sentence_template":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('550df7c9-97dc-59f8-b31c-b70d67189ebc', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"departure gate","explanation":"The sentence requires “departure gate” to express the intended travel meaning.","hint_prefix":"dep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ba33ef38-bd8d-5b40-bda2-034a452ce0e2', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"boarding pass","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T17","text":"boarding pass"},{"audio_text":"departure gate","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T18","text":"departure gate"},{"audio_text":"delayed","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T19","text":"delayed"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3627beb2-15d3-5f46-b23e-8bb9659ab1df', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Flight Changes”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T20","is_correct":true,"text":"Because the flight was cancelled rather than delayed, the airline rebooked us for the following morning."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c0c03275-928d-503f-8496-fcb36e5f3012', '170c6e91-fe65-5c68-823b-cba5d2bfc956', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a66e5e7a-35ec-510f-8542-5481e687f839', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Handling a Disruption","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bb1321b-71a8-5261-9201-f28f54e001da', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T01","left":"boarding pass","right":"посадочный талон"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T02","left":"departure gate","right":"выход на посадку"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T03","left":"delayed","right":"задержанный"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T04","left":"cancelled","right":"отменённый"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T05","left":"rebook","right":"перебронировать"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T06","left":"compensation","right":"компенсация"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T07","left":"announcement","right":"объявление"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0eae055f-d838-5a4c-a5b5-679ca8eb7b61', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T08","is_correct":true,"text":"The announcement explained how passengers could request accommodation and possible compensation."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6cc0df76-06e6-595e-bd90-a367b0312d6b', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The announcement explained how passengers could request accommodation and possible compensation.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В объявлении объяснялось, как пассажиры могут запросить проживание и возможную компенсацию.","target_language":"en","word_bank":["The","announcement","explained","how","passengers","could","request","accommodation","and","possible","compensation."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bba3bbbe-a94d-5317-b3ee-0d1fb0d3ce89', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"delayed","instruction":"Выберите подходящее слово.","options":["delayed","compensation","boarding pass"],"sentence_template":"The announcement explained how passengers could request accommodation and possible compensation."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0414839f-c68a-594e-bd95-3399339def2d', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","announcement","explained","how","passengers","could","request","accommodation","and","possible","compensation."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["compensation.","possible","and","accommodation","request","could","passengers","how","explained","announcement","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8b82a6a-4e13-5744-b236-d372da94f7cd', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The announcement explained how passengers could request accommodation and possible compensation. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6167216-41a0-564d-a1b8-cb71b633953b', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The announcement explained how passengers could request accommodation and possible compensation. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"В объявлении объяснялось, как пассажиры могут запросить проживание и возможную компенсацию. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a950c39f-26f5-526c-b21a-323af88fea42', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The announcement explained how passengers could request accommodation and possible compensation.","translation":"В объявлении объяснялось, как пассажиры могут запросить проживание и возможную компенсацию.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Handling a Disruption"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9b9451af-5d76-5f46-93b2-19a134698b9b', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“delayed” means happening later than planned.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T11","is_correct":true,"text":"happening later than planned"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T12","is_correct":false,"text":"officially stopped from happening"},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T13","is_correct":false,"text":"book a different service after a change"}],"word":"delayed"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09ad13d1-d8da-58ce-9974-18fb349d4e7d', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The announcement explained how passengers could request accommodation and possible compensation.","explanation":"The missing travel expression is “delayed”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"delayed","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T14","is_correct":true},{"audio_text":"rebook","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T15","is_correct":false},{"audio_text":"announcement","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T16","is_correct":false}],"sentence_template":"The announcement explained how passengers could request accommodation and possible compensation."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('288ebd87-7b37-59d8-b9ef-1b5f20f9665d', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"delayed","explanation":"The sentence requires “delayed” to express the intended travel meaning.","hint_prefix":"del","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The announcement explained how passengers could request accommodation and possible compensation."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9eb733a3-7dc5-58a3-953f-1063bd6f95df', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"boarding pass","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T17","text":"boarding pass"},{"audio_text":"departure gate","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T18","text":"departure gate"},{"audio_text":"delayed","id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T19","text":"delayed"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b317bb20-0ba7-5778-95de-e6196d9274aa', 'a66e5e7a-35ec-510f-8542-5481e687f839', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Handling a Disruption”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T20","is_correct":true,"text":"The announcement explained how passengers could request accommodation and possible compensation."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_AIRPORTS_FLIGHTS_AND_DISRUPTIONS_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c0c03275-928d-503f-8496-fcb36e5f3012', 'a66e5e7a-35ec-510f-8542-5481e687f839', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3175b097-4686-51f8-8298-0f4d33306ad1', 'en', 'boarding pass', 'посадочный талон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3465ef82-ff41-5b64-83bb-45e05e7e1995', 'en', 'departure gate', 'выход на посадку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('452c85d0-90a6-5a45-a8c9-5d53e4feb35d', 'en', 'delayed', 'задержанный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a99712d-aa0c-580a-af07-ee83248f4020', 'en', 'cancelled', 'отменённый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d51db8d-157b-537d-8e31-ea05c322719d', 'en', 'rebook', 'перебронировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97ece0a5-3ae2-55e6-a867-88936b166552', 'en', 'compensation', 'компенсация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4769c12-e1bc-5341-94ee-8c51b23aae13', 'en', 'announcement', 'объявление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3175b097-4686-51f8-8298-0f4d33306ad1', 'en', 'boarding pass', 'посадочный талон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3465ef82-ff41-5b64-83bb-45e05e7e1995', 'en', 'departure gate', 'выход на посадку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('452c85d0-90a6-5a45-a8c9-5d53e4feb35d', 'en', 'delayed', 'задержанный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a99712d-aa0c-580a-af07-ee83248f4020', 'en', 'cancelled', 'отменённый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d51db8d-157b-537d-8e31-ea05c322719d', 'en', 'rebook', 'перебронировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97ece0a5-3ae2-55e6-a867-88936b166552', 'en', 'compensation', 'компенсация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4769c12-e1bc-5341-94ee-8c51b23aae13', 'en', 'announcement', 'объявление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3175b097-4686-51f8-8298-0f4d33306ad1', 'en', 'boarding pass', 'посадочный талон', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3465ef82-ff41-5b64-83bb-45e05e7e1995', 'en', 'departure gate', 'выход на посадку', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('452c85d0-90a6-5a45-a8c9-5d53e4feb35d', 'en', 'delayed', 'задержанный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6a99712d-aa0c-580a-af07-ee83248f4020', 'en', 'cancelled', 'отменённый', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d51db8d-157b-537d-8e31-ea05c322719d', 'en', 'rebook', 'перебронировать', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('97ece0a5-3ae2-55e6-a867-88936b166552', 'en', 'compensation', 'компенсация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b4769c12-e1bc-5341-94ee-8c51b23aae13', 'en', 'announcement', 'объявление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'boarding pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure gate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'delayed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'cancelled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'rebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'd6904864-48c0-5df6-abf6-d9e7e5d388ca', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'announcement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'boarding pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure gate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'delayed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cancelled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, '170c6e91-fe65-5c68-823b-cba5d2bfc956', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'announcement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'boarding pass' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure gate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'delayed' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'cancelled' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'rebook' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'compensation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c0c03275-928d-503f-8496-fcb36e5f3012', id, 'a66e5e7a-35ec-510f-8542-5481e687f839', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'announcement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
