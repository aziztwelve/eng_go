-- Track: B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('a873de0d-b2e7-5bdf-8a5d-31d6cef74457', 'B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT', 'Чрезвычайные ситуации, проблемы и помощь в поездке', 'Развивайте английский для путешествий уровня B1 по теме «Чрезвычайные ситуации, проблемы и помощь в поездке».', '{"en":"Emergencies, Problems and Travel Support","ru":"Чрезвычайные ситуации, проблемы и помощь в поездке"}'::jsonb, '{"en":"Develop B1 travel English for emergencies, problems and travel support.","ru":"Развивайте английский для путешествий уровня B1 по теме «Чрезвычайные ситуации, проблемы и помощь в поездке»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('5100876f-b847-54ee-8dfb-39bda8d10106', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Explaining an Emergency","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e0131067-0e19-5f4c-a04a-432d5162f85b', '5100876f-b847-54ee-8dfb-39bda8d10106', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T01","left":"emergency","right":"чрезвычайная ситуация"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T02","left":"travel document","right":"проездной документ"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T03","left":"report","right":"сообщить"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T04","left":"embassy","right":"посольство"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T05","left":"medical assistance","right":"медицинская помощь"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T06","left":"insurance claim","right":"страховое заявление"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T07","left":"evidence","right":"доказательство"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43062a90-a39e-5fcd-a352-6c50c0fe0732', '5100876f-b847-54ee-8dfb-39bda8d10106', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T08","is_correct":true,"text":"After losing my travel document, I reported the incident and contacted the embassy for advice."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95e7ceb1-b8e0-56d4-a59f-9d9585816899', '5100876f-b847-54ee-8dfb-39bda8d10106', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"After losing my travel document, I reported the incident and contacted the embassy for advice.","instruction":"Соберите перевод.","source_language":"ru","source_text":"После потери проездного документа я сообщил о происшествии и обратился в посольство за советом.","target_language":"en","word_bank":["After","losing","my","travel","document,","I","reported","the","incident","and","contacted","the","embassy","for","advice."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53fc71ce-a038-58df-9588-ed16ac6a9222', '5100876f-b847-54ee-8dfb-39bda8d10106', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"emergency","instruction":"Выберите подходящее слово.","options":["emergency","embassy","insurance claim"],"sentence_template":"After losing my travel document, I reported the incident and contacted the embassy for advice."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef2ed5a3-2303-5243-a9dc-dda8fcc67a06', '5100876f-b847-54ee-8dfb-39bda8d10106', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["After","losing","my","travel","document,","I","reported","the","incident","and","contacted","the","embassy","for","advice."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["advice.","for","embassy","the","contacted","and","incident","the","reported","I","document,","travel","my","losing","After"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa768d1c-cfd4-577c-a439-3e0fdf9f27a3', '5100876f-b847-54ee-8dfb-39bda8d10106', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"After losing my travel document, I reported the incident and contacted the embassy for advice. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('481865cd-a850-53f2-a30b-c2d42d46b47b', '5100876f-b847-54ee-8dfb-39bda8d10106', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"After losing my travel document, I reported the incident and contacted the embassy for advice. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"После потери проездного документа я сообщил о происшествии и обратился в посольство за советом. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('82adef7f-de07-56d5-a55e-57fbdca223b9', '5100876f-b847-54ee-8dfb-39bda8d10106', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"After losing my travel document, I reported the incident and contacted the embassy for advice.","translation":"После потери проездного документа я сообщил о происшествии и обратился в посольство за советом.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Explaining an Emergency"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('994d34b3-9390-5b62-b58a-76a83b2aa3b1', '5100876f-b847-54ee-8dfb-39bda8d10106', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“emergency” means a serious unexpected situation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T11","is_correct":true,"text":"a serious unexpected situation"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T12","is_correct":false,"text":"an official document needed for travel"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T13","is_correct":false,"text":"give official information about a problem"}],"word":"emergency"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a1ca72f-1460-5dbd-a1e6-6e1f8815c8c9', '5100876f-b847-54ee-8dfb-39bda8d10106', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"After losing my travel document, I reported the incident and contacted the embassy for advice.","explanation":"The missing travel expression is “emergency”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"emergency","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T14","is_correct":true},{"audio_text":"report","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T15","is_correct":false},{"audio_text":"medical assistance","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T16","is_correct":false}],"sentence_template":"After losing my travel document, I reported the incident and contacted the embassy for advice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66587433-ba7a-594a-8f7f-0091c2e4585c', '5100876f-b847-54ee-8dfb-39bda8d10106', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"emergency","explanation":"The sentence requires “emergency” to express the intended travel meaning.","hint_prefix":"eme","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"After losing my travel document, I reported the incident and contacted the embassy for advice."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('282caeb9-83e4-5f54-bbad-37f60f92202a', '5100876f-b847-54ee-8dfb-39bda8d10106', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"emergency","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T17","text":"emergency"},{"audio_text":"travel document","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T18","text":"travel document"},{"audio_text":"report","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T19","text":"report"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74969493-73f8-58a5-81f7-7afd6e557ce8', '5100876f-b847-54ee-8dfb-39bda8d10106', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Explaining an Emergency”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T20","is_correct":true,"text":"After losing my travel document, I reported the incident and contacted the embassy for advice."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a873de0d-b2e7-5bdf-8a5d-31d6cef74457', '5100876f-b847-54ee-8dfb-39bda8d10106', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9ad01751-c330-53b8-b5cb-26bc14d9e0c2', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Contacting Travel Support","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('01b8a344-3f26-54a0-a88b-8d44fd3593f4', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T01","left":"emergency","right":"чрезвычайная ситуация"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T02","left":"travel document","right":"проездной документ"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T03","left":"report","right":"сообщить"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T04","left":"embassy","right":"посольство"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T05","left":"medical assistance","right":"медицинская помощь"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T06","left":"insurance claim","right":"страховое заявление"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T07","left":"evidence","right":"доказательство"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8b3382c-f74e-586a-b0fa-4a1931183e9c', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T08","is_correct":true,"text":"The hotel arranged medical assistance because the nearest clinic had already closed."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fc42020-e8b2-586e-b55e-bf8c5e8f707b', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The hotel arranged medical assistance because the nearest clinic had already closed.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Отель организовал медицинскую помощь, потому что ближайшая клиника уже закрылась.","target_language":"en","word_bank":["The","hotel","arranged","medical","assistance","because","the","nearest","clinic","had","already","closed."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2256e861-3ae1-50f7-b579-2cf6f9ecc87c', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"travel document","instruction":"Выберите подходящее слово.","options":["travel document","medical assistance","evidence"],"sentence_template":"The hotel arranged medical assistance because the nearest clinic had already closed."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f013cb1b-adc4-5ce0-bdcf-5e3d3fc0a47f', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","hotel","arranged","medical","assistance","because","the","nearest","clinic","had","already","closed."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["closed.","already","had","clinic","nearest","the","because","assistance","medical","arranged","hotel","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0040a84-3f81-5879-9537-3ead8503431e', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The hotel arranged medical assistance because the nearest clinic had already closed. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ef121bd-1eec-5535-b7f6-5c9f45213bb4', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The hotel arranged medical assistance because the nearest clinic had already closed. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Отель организовал медицинскую помощь, потому что ближайшая клиника уже закрылась. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b20cd2e-f76c-5b87-a783-4ed37a36b537', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The hotel arranged medical assistance because the nearest clinic had already closed.","translation":"Отель организовал медицинскую помощь, потому что ближайшая клиника уже закрылась.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Contacting Travel Support"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('163f0c88-c467-57a9-ac63-8b0360778750', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“travel document” means an official document needed for travel.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T11","is_correct":true,"text":"an official document needed for travel"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T12","is_correct":false,"text":"give official information about a problem"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T13","is_correct":false,"text":"an official national office abroad"}],"word":"travel document"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6ba2131d-9618-55bd-947c-689fbddf01dc', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The hotel arranged medical assistance because the nearest clinic had already closed.","explanation":"The missing travel expression is “travel document”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"travel document","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T14","is_correct":true},{"audio_text":"embassy","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T15","is_correct":false},{"audio_text":"insurance claim","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T16","is_correct":false}],"sentence_template":"The hotel arranged medical assistance because the nearest clinic had already closed."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('462d6ca2-5e11-57b7-91a3-3e6c7c27cfdd', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"travel document","explanation":"The sentence requires “travel document” to express the intended travel meaning.","hint_prefix":"tra","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The hotel arranged medical assistance because the nearest clinic had already closed."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78006928-bb5f-50dc-a277-ae5194bb1ad2', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"emergency","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T17","text":"emergency"},{"audio_text":"travel document","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T18","text":"travel document"},{"audio_text":"report","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T19","text":"report"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eab6f1d6-2f99-50b2-bd08-9c31612aadef', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Contacting Travel Support”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T20","is_correct":true,"text":"The hotel arranged medical assistance because the nearest clinic had already closed."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a873de0d-b2e7-5bdf-8a5d-31d6cef74457', '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4a042c05-2421-54bd-ae90-c1bebd8f5d26', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Agreeing on a Solution","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('95b7048d-249d-5889-be32-c96159ac76bf', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T01","left":"emergency","right":"чрезвычайная ситуация"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T02","left":"travel document","right":"проездной документ"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T03","left":"report","right":"сообщить"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T04","left":"embassy","right":"посольство"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T05","left":"medical assistance","right":"медицинская помощь"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T06","left":"insurance claim","right":"страховое заявление"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T07","left":"evidence","right":"доказательство"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('700bc4a0-b15a-5235-abff-08139a7ea456', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T08","is_correct":true,"text":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8f443524-e940-5508-8189-ce06878b7216', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Чтобы подтвердить страховое заявление, я сохранил все чеки и предоставил доказательства отменённой поездки.","target_language":"en","word_bank":["To","support","the","insurance","claim,","I","kept","every","receipt","and","provided","evidence","of","the","cancelled","journey."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7c58a3c-0e07-5dd8-b941-064dfc622383', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"report","instruction":"Выберите подходящее слово.","options":["report","insurance claim","emergency"],"sentence_template":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d2915d9-8830-5ffd-b011-ec3f98461896', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["To","support","the","insurance","claim,","I","kept","every","receipt","and","provided","evidence","of","the","cancelled","journey."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["journey.","cancelled","the","of","evidence","provided","and","receipt","every","kept","I","claim,","insurance","the","support","To"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e834ea30-de8f-5565-87b4-383a9009a92c', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('737e02c4-b3cf-5651-acd5-ba81658641a7', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Чтобы подтвердить страховое заявление, я сохранил все чеки и предоставил доказательства отменённой поездки. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b39f4f99-02e2-50de-8d3b-f6ed75025ba6', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey.","translation":"Чтобы подтвердить страховое заявление, я сохранил все чеки и предоставил доказательства отменённой поездки.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Agreeing on a Solution"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9c91a3d8-3b87-5b53-b32f-21739d38fa0b', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“report” means give official information about a problem.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T11","is_correct":true,"text":"give official information about a problem"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T12","is_correct":false,"text":"an official national office abroad"},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T13","is_correct":false,"text":"professional help for illness or injury"}],"word":"report"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72ad07d8-7e63-54d4-9cc7-06f48c001ef0', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey.","explanation":"The missing travel expression is “report”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"report","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T14","is_correct":true},{"audio_text":"medical assistance","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T15","is_correct":false},{"audio_text":"evidence","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T16","is_correct":false}],"sentence_template":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('27ddf527-11d5-5528-b660-8b60ae4c94b2', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"report","explanation":"The sentence requires “report” to express the intended travel meaning.","hint_prefix":"rep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9d3dbb7-d711-5bc9-a22a-aca8d85f79f0', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"emergency","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T17","text":"emergency"},{"audio_text":"travel document","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T18","text":"travel document"},{"audio_text":"report","id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T19","text":"report"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9236c8da-9217-575a-bd4c-e26b4741eb4c', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Agreeing on a Solution”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T20","is_correct":true,"text":"To support the insurance claim, I kept every receipt and provided evidence of the cancelled journey."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_EMERGENCIES_PROBLEMS_AND_TRAVEL_SUPPORT_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('a873de0d-b2e7-5bdf-8a5d-31d6cef74457', '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('535bcf05-cae6-53b5-87eb-f0885be70cc4', 'en', 'emergency', 'чрезвычайная ситуация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('74ac2e4a-a886-5abf-85f5-42a8e42da4f9', 'en', 'travel document', 'проездной документ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('522dcfe2-2bac-5ff5-9f0d-e47290cf57ec', 'en', 'report', 'сообщить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c24ffcb-061b-5841-9899-0b9486d62add', 'en', 'embassy', 'посольство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c54687ae-336b-5168-a588-cb4ec9956960', 'en', 'medical assistance', 'медицинская помощь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('731499d2-5a75-5479-9354-e2799a24343d', 'en', 'insurance claim', 'страховое заявление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('535bcf05-cae6-53b5-87eb-f0885be70cc4', 'en', 'emergency', 'чрезвычайная ситуация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('74ac2e4a-a886-5abf-85f5-42a8e42da4f9', 'en', 'travel document', 'проездной документ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('522dcfe2-2bac-5ff5-9f0d-e47290cf57ec', 'en', 'report', 'сообщить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c24ffcb-061b-5841-9899-0b9486d62add', 'en', 'embassy', 'посольство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c54687ae-336b-5168-a588-cb4ec9956960', 'en', 'medical assistance', 'медицинская помощь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('731499d2-5a75-5479-9354-e2799a24343d', 'en', 'insurance claim', 'страховое заявление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('535bcf05-cae6-53b5-87eb-f0885be70cc4', 'en', 'emergency', 'чрезвычайная ситуация', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('74ac2e4a-a886-5abf-85f5-42a8e42da4f9', 'en', 'travel document', 'проездной документ', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('522dcfe2-2bac-5ff5-9f0d-e47290cf57ec', 'en', 'report', 'сообщить', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6c24ffcb-061b-5841-9899-0b9486d62add', 'en', 'embassy', 'посольство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c54687ae-336b-5168-a588-cb4ec9956960', 'en', 'medical assistance', 'медицинская помощь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('731499d2-5a75-5479-9354-e2799a24343d', 'en', 'insurance claim', 'страховое заявление', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('32fb0879-495d-5158-a3eb-d83885b3f93d', 'en', 'evidence', 'доказательство', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'embassy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'medical assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'insurance claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '5100876f-b847-54ee-8dfb-39bda8d10106', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'embassy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'medical assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'insurance claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '9ad01751-c330-53b8-b5cb-26bc14d9e0c2', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'emergency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel document' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'report' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'embassy' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'medical assistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'insurance claim' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'a873de0d-b2e7-5bdf-8a5d-31d6cef74457', id, '4a042c05-2421-54bd-ae90-c1bebd8f5d26', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'evidence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
