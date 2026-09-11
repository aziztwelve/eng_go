-- Track: B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('8b4141c1-17de-5831-8ba5-ce301e0eecfd', 'B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS', 'Транспорт, пересадки и задержки', 'Развивайте английский для путешествий уровня B1 по теме «Транспорт, пересадки и задержки».', '{"en":"Transport, Connections and Delays","ru":"Транспорт, пересадки и задержки"}'::jsonb, '{"en":"Develop B1 travel English for transport, connections and delays.","ru":"Развивайте английский для путешествий уровня B1 по теме «Транспорт, пересадки и задержки»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('65d8c08a-6adb-5918-a529-fdce72d2bcc2', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Complex Routes","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f6c2554-f78d-5a2f-87de-9c62de7d75d1', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T01","left":"platform","right":"платформа"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T02","left":"connection","right":"пересадка"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T03","left":"replacement bus","right":"заменяющий автобус"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T04","left":"delay","right":"задержка"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T05","left":"route","right":"маршрут"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T06","left":"departure","right":"отправление"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T07","left":"alternative","right":"альтернатива"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b10d3a8-5c6c-5c45-951e-b41e4ef46fb7', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T08","is_correct":true,"text":"The platform changed after we arrived, but the departure time remained the same."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fae75d8b-efdf-55d0-90f6-8d11dd76ae37', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The platform changed after we arrived, but the departure time remained the same.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Платформа изменилась после нашего прибытия, но время отправления осталось прежним.","target_language":"en","word_bank":["The","platform","changed","after","we","arrived,","but","the","departure","time","remained","the","same."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0db029ca-dda7-5b30-a57a-689b6c6c32d2', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"platform","instruction":"Выберите подходящее слово.","options":["platform","delay","departure"],"sentence_template":"The ___ changed after we arrived, but the departure time remained the same."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93b50cc5-26c3-575f-93c6-e2af04e0e730', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","platform","changed","after","we","arrived,","but","the","departure","time","remained","the","same."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["same.","the","remained","time","departure","the","but","arrived,","we","after","changed","platform","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2872a07f-bf96-5e15-a185-dc3626ff2664', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The platform changed after we arrived, but the departure time remained the same. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7ebd3ed5-dbf2-59d3-bd94-d42a233495f5', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The platform changed after we arrived, but the departure time remained the same. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Платформа изменилась после нашего прибытия, но время отправления осталось прежним. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3491b0df-97c7-55bd-b0e2-314416586df2', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The platform changed after we arrived, but the departure time remained the same.","translation":"Платформа изменилась после нашего прибытия, но время отправления осталось прежним.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Complex Routes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbcd112c-2f4f-5f37-b24f-592ca39cc95b', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“platform” means the place where passengers board a train.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T11","is_correct":true,"text":"the place where passengers board a train"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T12","is_correct":false,"text":"a service taken after another"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T13","is_correct":false,"text":"a bus provided when trains cannot run"}],"word":"platform"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0a9040fe-84a6-56b9-b51b-a5194fe30abf', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The platform changed after we arrived, but the departure time remained the same.","explanation":"The missing travel expression is “platform”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"platform","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T14","is_correct":true},{"audio_text":"replacement bus","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T15","is_correct":false},{"audio_text":"route","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T16","is_correct":false}],"sentence_template":"The ___ changed after we arrived, but the departure time remained the same."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ad119ff-f9fc-5fbb-9ae0-a65068d960e8', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"platform","explanation":"The sentence requires “platform” to express the intended travel meaning.","hint_prefix":"pla","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ changed after we arrived, but the departure time remained the same."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1fb8c03b-32ab-5354-83df-c062192f5eb0', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"platform","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T17","text":"platform"},{"audio_text":"connection","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T18","text":"connection"},{"audio_text":"replacement bus","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T19","text":"replacement bus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('57a3b832-d41f-594f-bf60-3c7e2ccbb293', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Complex Routes”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T20","is_correct":true,"text":"The platform changed after we arrived, but the departure time remained the same."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8b4141c1-17de-5831-8ba5-ce301e0eecfd', '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('469fee01-878b-5f91-9eda-83bc82eded7c', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Missed Connections","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('338bff53-6de5-5415-868c-695df862e363', '469fee01-878b-5f91-9eda-83bc82eded7c', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T01","left":"platform","right":"платформа"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T02","left":"connection","right":"пересадка"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T03","left":"replacement bus","right":"заменяющий автобус"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T04","left":"delay","right":"задержка"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T05","left":"route","right":"маршрут"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T06","left":"departure","right":"отправление"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T07","left":"alternative","right":"альтернатива"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dffe0cc4-960f-5bd0-b798-8574e24956db', '469fee01-878b-5f91-9eda-83bc82eded7c', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T08","is_correct":true,"text":"We missed our connection because of the delay, so staff directed us to a replacement bus."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('175a5ad0-82cd-587b-95a2-e097a45e1be1', '469fee01-878b-5f91-9eda-83bc82eded7c', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We missed our connection because of the delay, so staff directed us to a replacement bus.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы пропустили пересадку из-за задержки, поэтому сотрудники направили нас к заменяющему автобусу.","target_language":"en","word_bank":["We","missed","our","connection","because","of","the","delay,","so","staff","directed","us","to","a","replacement","bus."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6deaff73-e52c-5b42-a800-f9d131fb7ae8', '469fee01-878b-5f91-9eda-83bc82eded7c', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"connection","instruction":"Выберите подходящее слово.","options":["connection","route","alternative"],"sentence_template":"We missed our ___ because of the delay, so staff directed us to a replacement bus."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e85b47e-ed9a-5e80-b4f9-a9c71edf781e', '469fee01-878b-5f91-9eda-83bc82eded7c', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","missed","our","connection","because","of","the","delay,","so","staff","directed","us","to","a","replacement","bus."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["bus.","replacement","a","to","us","directed","staff","so","delay,","the","of","because","connection","our","missed","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c080a99-e636-5fa7-8026-6ae0147639cb', '469fee01-878b-5f91-9eda-83bc82eded7c', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We missed our connection because of the delay, so staff directed us to a replacement bus. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b8b0b64-1fba-5aaa-91df-2ec29a7a412e', '469fee01-878b-5f91-9eda-83bc82eded7c', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We missed our connection because of the delay, so staff directed us to a replacement bus. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы пропустили пересадку из-за задержки, поэтому сотрудники направили нас к заменяющему автобусу. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('179ffe31-c6be-5bf5-a4b3-39be70a48e79', '469fee01-878b-5f91-9eda-83bc82eded7c', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"We missed our connection because of the delay, so staff directed us to a replacement bus.","translation":"Мы пропустили пересадку из-за задержки, поэтому сотрудники направили нас к заменяющему автобусу.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Missed Connections"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('18e8cd23-5978-5972-baad-5433cd86da5b', '469fee01-878b-5f91-9eda-83bc82eded7c', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“connection” means a service taken after another.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T11","is_correct":true,"text":"a service taken after another"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T12","is_correct":false,"text":"a bus provided when trains cannot run"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T13","is_correct":false,"text":"waiting beyond the planned time"}],"word":"connection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('967aa461-1a19-55d2-bc82-421cabc2bca5', '469fee01-878b-5f91-9eda-83bc82eded7c', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We missed our connection because of the delay, so staff directed us to a replacement bus.","explanation":"The missing travel expression is “connection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"connection","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T14","is_correct":true},{"audio_text":"delay","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T15","is_correct":false},{"audio_text":"departure","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T16","is_correct":false}],"sentence_template":"We missed our ___ because of the delay, so staff directed us to a replacement bus."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afb31da3-1145-52a7-b104-897664689a38', '469fee01-878b-5f91-9eda-83bc82eded7c', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"connection","explanation":"The sentence requires “connection” to express the intended travel meaning.","hint_prefix":"con","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We missed our ___ because of the delay, so staff directed us to a replacement bus."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da8a60b0-7fbf-5c80-a482-f691d9782705', '469fee01-878b-5f91-9eda-83bc82eded7c', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"platform","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T17","text":"platform"},{"audio_text":"connection","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T18","text":"connection"},{"audio_text":"replacement bus","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T19","text":"replacement bus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cfbfbb5-9274-578b-a17a-40a7661d9b92', '469fee01-878b-5f91-9eda-83bc82eded7c', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Missed Connections”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T20","is_correct":true,"text":"We missed our connection because of the delay, so staff directed us to a replacement bus."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8b4141c1-17de-5831-8ba5-ce301e0eecfd', '469fee01-878b-5f91-9eda-83bc82eded7c', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Finding Alternatives","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('664b8bd4-0896-581b-b158-b961f42d5e2f', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T01","left":"platform","right":"платформа"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T02","left":"connection","right":"пересадка"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T03","left":"replacement bus","right":"заменяющий автобус"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T04","left":"delay","right":"задержка"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T05","left":"route","right":"маршрут"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T06","left":"departure","right":"отправление"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T07","left":"alternative","right":"альтернатива"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fd336f3-d938-5735-bbf3-bde37248d2e0', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T08","is_correct":true,"text":"The alternative route takes longer, although it avoids the station where engineering work is taking place."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c4ef8def-8dfe-568c-85d0-d251ab329b10', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The alternative route takes longer, although it avoids the station where engineering work is taking place.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Альтернативный маршрут занимает больше времени, хотя позволяет избежать станции, где ведутся технические работы.","target_language":"en","word_bank":["The","alternative","route","takes","longer,","although","it","avoids","the","station","where","engineering","work","is","taking","place."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89789a2f-9543-5e5a-becd-38507e577f43', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"replacement bus","instruction":"Выберите подходящее слово.","options":["replacement bus","departure","platform"],"sentence_template":"The alternative route takes longer, although it avoids the station where engineering work is taking place."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86db85f2-6e32-5b19-8558-c9a6bad41194', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","alternative","route","takes","longer,","although","it","avoids","the","station","where","engineering","work","is","taking","place."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["place.","taking","is","work","engineering","where","station","the","avoids","it","although","longer,","takes","route","alternative","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7b20acd-16e4-52de-acd8-f3c21af8ab66', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The alternative route takes longer, although it avoids the station where engineering work is taking place. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6b55f6ce-02fd-5421-9ab5-a1c751dd118a', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The alternative route takes longer, although it avoids the station where engineering work is taking place. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Альтернативный маршрут занимает больше времени, хотя позволяет избежать станции, где ведутся технические работы. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0435cd4-0ebd-5620-8b9a-e42460e0bf6f', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The alternative route takes longer, although it avoids the station where engineering work is taking place.","translation":"Альтернативный маршрут занимает больше времени, хотя позволяет избежать станции, где ведутся технические работы.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Finding Alternatives"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('89deeaea-c93d-5979-8910-dfcd4835f091', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“replacement bus” means a bus provided when trains cannot run.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T11","is_correct":true,"text":"a bus provided when trains cannot run"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T12","is_correct":false,"text":"waiting beyond the planned time"},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T13","is_correct":false,"text":"the way from one place to another"}],"word":"replacement bus"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('778bb18c-b3ba-5c76-99f1-dd13a4dcdd43', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The alternative route takes longer, although it avoids the station where engineering work is taking place.","explanation":"The missing travel expression is “replacement bus”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"replacement bus","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T14","is_correct":true},{"audio_text":"route","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T15","is_correct":false},{"audio_text":"alternative","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T16","is_correct":false}],"sentence_template":"The alternative route takes longer, although it avoids the station where engineering work is taking place."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa88147f-6a6c-5ce5-bf68-de328a01409c', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"replacement bus","explanation":"The sentence requires “replacement bus” to express the intended travel meaning.","hint_prefix":"rep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The alternative route takes longer, although it avoids the station where engineering work is taking place."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('914b64de-1562-538c-88c3-56fe40693bd7', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"platform","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T17","text":"platform"},{"audio_text":"connection","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T18","text":"connection"},{"audio_text":"replacement bus","id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T19","text":"replacement bus"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7345246f-af9e-5466-9d13-786bd2a8a3f1', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Finding Alternatives”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T20","is_correct":true,"text":"The alternative route takes longer, although it avoids the station where engineering work is taking place."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_TRANSPORT_CONNECTIONS_AND_DELAYS_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('8b4141c1-17de-5831-8ba5-ce301e0eecfd', 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d90c451-42cf-5e78-a9b6-771f99653fc5', 'en', 'platform', 'платформа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b236fdcc-0de5-5dac-84d5-87eb7196f026', 'en', 'replacement bus', 'заменяющий автобус', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4115a952-533a-5c69-96dc-36957dded349', 'en', 'route', 'маршрут', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5d2562b-f173-57ee-8151-2da29a3dd226', 'en', 'departure', 'отправление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d90c451-42cf-5e78-a9b6-771f99653fc5', 'en', 'platform', 'платформа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b236fdcc-0de5-5dac-84d5-87eb7196f026', 'en', 'replacement bus', 'заменяющий автобус', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4115a952-533a-5c69-96dc-36957dded349', 'en', 'route', 'маршрут', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5d2562b-f173-57ee-8151-2da29a3dd226', 'en', 'departure', 'отправление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4d90c451-42cf-5e78-a9b6-771f99653fc5', 'en', 'platform', 'платформа', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f319253c-2fcf-57cc-a8ac-5f56e5c02017', 'en', 'connection', 'пересадка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b236fdcc-0de5-5dac-84d5-87eb7196f026', 'en', 'replacement bus', 'заменяющий автобус', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fd2c7af1-db85-5890-9817-36eb2267b8fb', 'en', 'delay', 'задержка', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4115a952-533a-5c69-96dc-36957dded349', 'en', 'route', 'маршрут', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e5d2562b-f173-57ee-8151-2da29a3dd226', 'en', 'departure', 'отправление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b0312a5d-b319-5bd9-bb95-f06350d406c6', 'en', 'alternative', 'альтернатива', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '65d8c08a-6adb-5918-a529-fdce72d2bcc2', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, '469fee01-878b-5f91-9eda-83bc82eded7c', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'platform' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'replacement bus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'delay' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'route' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'departure' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '8b4141c1-17de-5831-8ba5-ce301e0eecfd', id, 'ae4f3153-b23e-59fe-8e7d-7fd4dd5863c9', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'alternative' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
