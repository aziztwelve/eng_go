-- Track: B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', 'B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS', 'Достопримечательности, экскурсии и культурные события', 'Развивайте английский для путешествий уровня B1 по теме «Достопримечательности, экскурсии и культурные события».', '{"en":"Sightseeing, Tours and Cultural Events","ru":"Достопримечательности, экскурсии и культурные события"}'::jsonb, '{"en":"Develop B1 travel English for sightseeing, tours and cultural events.","ru":"Развивайте английский для путешествий уровня B1 по теме «Достопримечательности, экскурсии и культурные события»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bc301399-e90c-5ae7-aaae-d5805b56c77d', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Planning Cultural Activities","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f60be571-32f9-5d5f-84aa-cc6cf653e474', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T01","left":"guided tour","right":"экскурсия с гидом"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T02","left":"admission","right":"вход"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T03","left":"exhibition","right":"выставка"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T04","left":"historical site","right":"историческое место"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T05","left":"performance","right":"представление"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T06","left":"fully booked","right":"полностью забронировано"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T07","left":"recommendation","right":"рекомендация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e83bf67-c225-5daa-bc6c-c529a7cea61f', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T08","is_correct":true,"text":"The guided tour included admission to two historical sites that are normally closed to individual visitors."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a21744c5-3eb4-508b-818d-888952553ab7', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The guided tour included admission to two historical sites that are normally closed to individual visitors.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Экскурсия с гидом включала вход в два исторических места, обычно закрытых для отдельных посетителей.","target_language":"en","word_bank":["The","guided","tour","included","admission","to","two","historical","sites","that","are","normally","closed","to","individual","visitors."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5391821b-879b-55da-be6b-d795c8589a16', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"guided tour","instruction":"Выберите подходящее слово.","options":["guided tour","historical site","fully booked"],"sentence_template":"The ___ included admission to two historical sites that are normally closed to individual visitors."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ab82dcd-c0ac-5212-827c-944b26bc29bd', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","guided","tour","included","admission","to","two","historical","sites","that","are","normally","closed","to","individual","visitors."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["visitors.","individual","to","closed","normally","are","that","sites","historical","two","to","admission","included","tour","guided","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbf4cbdd-e3fc-5618-9946-d37610f9dc48', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The guided tour included admission to two historical sites that are normally closed to individual visitors. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('115b0352-76e0-5cd5-a25d-b2974549d637', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The guided tour included admission to two historical sites that are normally closed to individual visitors. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Экскурсия с гидом включала вход в два исторических места, обычно закрытых для отдельных посетителей. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d49c5a9-cb24-5635-b70c-5878a4cdfec7', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The guided tour included admission to two historical sites that are normally closed to individual visitors.","translation":"Экскурсия с гидом включала вход в два исторических места, обычно закрытых для отдельных посетителей.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Planning Cultural Activities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('62c50819-912a-5d8c-b277-2fa33992526f', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“guided tour” means a visit led by an expert.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T11","is_correct":true,"text":"a visit led by an expert"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T12","is_correct":false,"text":"permission or payment to enter"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T13","is_correct":false,"text":"a public display of objects or art"}],"word":"guided tour"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('647a1e01-99e3-5d9b-a8cc-285e0ea23cf1', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The guided tour included admission to two historical sites that are normally closed to individual visitors.","explanation":"The missing travel expression is “guided tour”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"guided tour","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T14","is_correct":true},{"audio_text":"exhibition","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T15","is_correct":false},{"audio_text":"performance","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T16","is_correct":false}],"sentence_template":"The ___ included admission to two historical sites that are normally closed to individual visitors."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d5eabaf-ec28-598f-9b97-22a50b6f1123', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"guided tour","explanation":"The sentence requires “guided tour” to express the intended travel meaning.","hint_prefix":"gui","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ included admission to two historical sites that are normally closed to individual visitors."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('129aa59f-f163-542f-aa1a-94f7d797dc72', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"guided tour","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T17","text":"guided tour"},{"audio_text":"admission","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T18","text":"admission"},{"audio_text":"exhibition","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T19","text":"exhibition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a8b96d0d-9cfe-5ef7-a3eb-5e500acfd6c5', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Planning Cultural Activities”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T20","is_correct":true,"text":"The guided tour included admission to two historical sites that are normally closed to individual visitors."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d5fda940-815a-5711-a067-3c17e6eb5713', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Following a Guided Tour","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('df5472b8-8166-54fe-987d-d32bf9a408ae', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T01","left":"guided tour","right":"экскурсия с гидом"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T02","left":"admission","right":"вход"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T03","left":"exhibition","right":"выставка"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T04","left":"historical site","right":"историческое место"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T05","left":"performance","right":"представление"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T06","left":"fully booked","right":"полностью забронировано"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T07","left":"recommendation","right":"рекомендация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48f9da17-d818-5979-bc33-3e6c4e7b1221', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T08","is_correct":true,"text":"The exhibition was fully booked, so the information desk recommended an evening performance instead."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88055be9-1637-52ca-8f46-0ef2c3762ed1', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The exhibition was fully booked, so the information desk recommended an evening performance instead.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Выставка была полностью забронирована, поэтому справочная служба порекомендовала вечернее представление.","target_language":"en","word_bank":["The","exhibition","was","fully","booked,","so","the","information","desk","recommended","an","evening","performance","instead."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2868c1b9-bcba-5932-bf07-f2b74459254f', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"admission","instruction":"Выберите подходящее слово.","options":["admission","performance","recommendation"],"sentence_template":"The exhibition was fully booked, so the information desk recommended an evening performance instead."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f793df98-11b6-5660-ad86-f2dc518d9c21', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","exhibition","was","fully","booked,","so","the","information","desk","recommended","an","evening","performance","instead."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["instead.","performance","evening","an","recommended","desk","information","the","so","booked,","fully","was","exhibition","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07c8e36c-8f13-5737-8d3e-d74b3e261c48', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The exhibition was fully booked, so the information desk recommended an evening performance instead. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02cd6b68-009a-5694-9a7f-20f2cdf98da9', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The exhibition was fully booked, so the information desk recommended an evening performance instead. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Выставка была полностью забронирована, поэтому справочная служба порекомендовала вечернее представление. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('095ef09a-49ce-51ae-9ec5-a39674cae84a', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The exhibition was fully booked, so the information desk recommended an evening performance instead.","translation":"Выставка была полностью забронирована, поэтому справочная служба порекомендовала вечернее представление.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Following a Guided Tour"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6aac4467-e74d-570e-aeba-e40ad8a3e464', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“admission” means permission or payment to enter.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T11","is_correct":true,"text":"permission or payment to enter"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T12","is_correct":false,"text":"a public display of objects or art"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T13","is_correct":false,"text":"a location important in history"}],"word":"admission"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae811c7c-863e-59bf-a7cf-5456815e1f21', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The exhibition was fully booked, so the information desk recommended an evening performance instead.","explanation":"The missing travel expression is “admission”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"admission","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T14","is_correct":true},{"audio_text":"historical site","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T15","is_correct":false},{"audio_text":"fully booked","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T16","is_correct":false}],"sentence_template":"The exhibition was fully booked, so the information desk recommended an evening performance instead."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('474272be-1869-50fb-b530-cc785c8301ca', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"admission","explanation":"The sentence requires “admission” to express the intended travel meaning.","hint_prefix":"adm","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The exhibition was fully booked, so the information desk recommended an evening performance instead."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1d166441-addd-5fff-968a-5523e30efa9e', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"guided tour","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T17","text":"guided tour"},{"audio_text":"admission","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T18","text":"admission"},{"audio_text":"exhibition","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T19","text":"exhibition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22e1b565-3065-5fd9-9a81-fc927dfa737e', 'd5fda940-815a-5711-a067-3c17e6eb5713', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Following a Guided Tour”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T20","is_correct":true,"text":"The exhibition was fully booked, so the information desk recommended an evening performance instead."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', 'd5fda940-815a-5711-a067-3c17e6eb5713', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('50e9e9da-56f3-503a-8708-a104b6829091', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Discussing an Event","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2ea2843-2f09-5fbe-a8a8-d55549a2c61a', '50e9e9da-56f3-503a-8708-a104b6829091', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T01","left":"guided tour","right":"экскурсия с гидом"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T02","left":"admission","right":"вход"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T03","left":"exhibition","right":"выставка"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T04","left":"historical site","right":"историческое место"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T05","left":"performance","right":"представление"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T06","left":"fully booked","right":"полностью забронировано"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T07","left":"recommendation","right":"рекомендация"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b39b5bc1-675d-57af-ba86-75037a1b8ca5', '50e9e9da-56f3-503a-8708-a104b6829091', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T08","is_correct":true,"text":"Although the event was designed for tourists, it gave a thoughtful introduction to local history."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ec77c129-aa41-5aba-acae-ba5dea436b86', '50e9e9da-56f3-503a-8708-a104b6829091', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Although the event was designed for tourists, it gave a thoughtful introduction to local history.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хотя мероприятие было рассчитано на туристов, оно дало содержательное знакомство с местной историей.","target_language":"en","word_bank":["Although","the","event","was","designed","for","tourists,","it","gave","a","thoughtful","introduction","to","local","history."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99c97837-12a6-54bc-ac94-a218468d975e', '50e9e9da-56f3-503a-8708-a104b6829091', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"exhibition","instruction":"Выберите подходящее слово.","options":["exhibition","fully booked","guided tour"],"sentence_template":"Although the event was designed for tourists, it gave a thoughtful introduction to local history."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e8375eb-c98a-58a1-84c7-9092234670ac', '50e9e9da-56f3-503a-8708-a104b6829091', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Although","the","event","was","designed","for","tourists,","it","gave","a","thoughtful","introduction","to","local","history."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["history.","local","to","introduction","thoughtful","a","gave","it","tourists,","for","designed","was","event","the","Although"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15e182dc-f59c-5e6c-982c-ec9416eef42e', '50e9e9da-56f3-503a-8708-a104b6829091', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Although the event was designed for tourists, it gave a thoughtful introduction to local history. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ab0f648d-5708-5822-b272-2cb81619eff7', '50e9e9da-56f3-503a-8708-a104b6829091', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Although the event was designed for tourists, it gave a thoughtful introduction to local history. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Хотя мероприятие было рассчитано на туристов, оно дало содержательное знакомство с местной историей. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c642d99-c34e-5f35-aa1b-6bd07a8293f5', '50e9e9da-56f3-503a-8708-a104b6829091', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Although the event was designed for tourists, it gave a thoughtful introduction to local history.","translation":"Хотя мероприятие было рассчитано на туристов, оно дало содержательное знакомство с местной историей.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Discussing an Event"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f958c15b-37ae-577e-9932-56e2f0bb375f', '50e9e9da-56f3-503a-8708-a104b6829091', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“exhibition” means a public display of objects or art.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T11","is_correct":true,"text":"a public display of objects or art"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T12","is_correct":false,"text":"a location important in history"},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T13","is_correct":false,"text":"a live artistic event"}],"word":"exhibition"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('67c07aed-8b6c-5323-bd64-ef5f67fa48bc', '50e9e9da-56f3-503a-8708-a104b6829091', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Although the event was designed for tourists, it gave a thoughtful introduction to local history.","explanation":"The missing travel expression is “exhibition”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"exhibition","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T14","is_correct":true},{"audio_text":"performance","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T15","is_correct":false},{"audio_text":"recommendation","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T16","is_correct":false}],"sentence_template":"Although the event was designed for tourists, it gave a thoughtful introduction to local history."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a20b72ac-d53e-596b-b56a-40945b85a25c', '50e9e9da-56f3-503a-8708-a104b6829091', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"exhibition","explanation":"The sentence requires “exhibition” to express the intended travel meaning.","hint_prefix":"exh","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Although the event was designed for tourists, it gave a thoughtful introduction to local history."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f45c20b2-3b4a-5d17-9a46-2f7695012b63', '50e9e9da-56f3-503a-8708-a104b6829091', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"guided tour","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T17","text":"guided tour"},{"audio_text":"admission","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T18","text":"admission"},{"audio_text":"exhibition","id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T19","text":"exhibition"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d584c4e6-c745-5310-b43d-3df72c0bfed3', '50e9e9da-56f3-503a-8708-a104b6829091', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Discussing an Event”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T20","is_correct":true,"text":"Although the event was designed for tourists, it gave a thoughtful introduction to local history."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_SIGHTSEEING_TOURS_AND_CULTURAL_EVENTS_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', '50e9e9da-56f3-503a-8708-a104b6829091', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('577d05bf-accf-51f6-a0ba-20ad37d7841a', 'en', 'guided tour', 'экскурсия с гидом', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57f6f3bb-bad4-5d30-b920-ebc47ff22a43', 'en', 'admission', 'вход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed119fd0-c291-5fc0-9050-6d222b971f81', 'en', 'exhibition', 'выставка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46b04fb1-3770-5ba5-b638-02b79233698b', 'en', 'historical site', 'историческое место', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b998f26-b0fb-5c8a-a876-e3ac592810ae', 'en', 'performance', 'представление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('33f749c6-c69f-5a09-a983-ab8d56cd8710', 'en', 'fully booked', 'полностью забронировано', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fca985ca-6503-5d5d-9945-3bcdab0f1b8d', 'en', 'recommendation', 'рекомендация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('577d05bf-accf-51f6-a0ba-20ad37d7841a', 'en', 'guided tour', 'экскурсия с гидом', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57f6f3bb-bad4-5d30-b920-ebc47ff22a43', 'en', 'admission', 'вход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed119fd0-c291-5fc0-9050-6d222b971f81', 'en', 'exhibition', 'выставка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46b04fb1-3770-5ba5-b638-02b79233698b', 'en', 'historical site', 'историческое место', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b998f26-b0fb-5c8a-a876-e3ac592810ae', 'en', 'performance', 'представление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('33f749c6-c69f-5a09-a983-ab8d56cd8710', 'en', 'fully booked', 'полностью забронировано', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fca985ca-6503-5d5d-9945-3bcdab0f1b8d', 'en', 'recommendation', 'рекомендация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('577d05bf-accf-51f6-a0ba-20ad37d7841a', 'en', 'guided tour', 'экскурсия с гидом', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('57f6f3bb-bad4-5d30-b920-ebc47ff22a43', 'en', 'admission', 'вход', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed119fd0-c291-5fc0-9050-6d222b971f81', 'en', 'exhibition', 'выставка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('46b04fb1-3770-5ba5-b638-02b79233698b', 'en', 'historical site', 'историческое место', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7b998f26-b0fb-5c8a-a876-e3ac592810ae', 'en', 'performance', 'представление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('33f749c6-c69f-5a09-a983-ab8d56cd8710', 'en', 'fully booked', 'полностью забронировано', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fca985ca-6503-5d5d-9945-3bcdab0f1b8d', 'en', 'recommendation', 'рекомендация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'guided tour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'admission' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'exhibition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical site' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'fully booked' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'bc301399-e90c-5ae7-aaae-d5805b56c77d', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'guided tour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'admission' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'exhibition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical site' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fully booked' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, 'd5fda940-815a-5711-a067-3c17e6eb5713', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'guided tour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'admission' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'exhibition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'historical site' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'fully booked' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bf03c2bd-012b-58d2-a7b2-c4840e8c4db7', id, '50e9e9da-56f3-503a-8708-a104b6829091', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'recommendation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
