-- Track: B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('6c68132b-f247-50e4-89da-26a189b1ca1f', 'B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE', 'Навигация, маршруты и местные советы', 'Развивайте английский для путешествий уровня B1 по теме «Навигация, маршруты и местные советы».', '{"en":"Navigation, Routes and Local Advice","ru":"Навигация, маршруты и местные советы"}'::jsonb, '{"en":"Develop B1 travel English for navigation, routes and local advice.","ru":"Развивайте английский для путешествий уровня B1 по теме «Навигация, маршруты и местные советы»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('06624dec-5dd2-5002-a4f7-37172405475a', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Understanding Detailed Directions","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbd1673b-47e9-524d-93a7-41617784a82d', '06624dec-5dd2-5002-a4f7-37172405475a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T01","left":"landmark","right":"ориентир"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T02","left":"junction","right":"перекрёсток"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T03","left":"pedestrian area","right":"пешеходная зона"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T04","left":"shortcut","right":"короткий путь"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T05","left":"get lost","right":"заблудиться"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T06","left":"local advice","right":"совет местного жителя"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T07","left":"within walking distance","right":"в пешей доступности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ebb599aa-68e0-59b9-8662-a7b940b7516a', '06624dec-5dd2-5002-a4f7-37172405475a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T08","is_correct":true,"text":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b7403b23-5aa8-5464-b319-2583ae9eebb6', '06624dec-5dd2-5002-a4f7-37172405475a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Поверните налево на перекрёстке и ориентируйтесь на часовую башню, пока не дойдёте до пешеходной зоны.","target_language":"en","word_bank":["Turn","left","at","the","junction","and","use","the","clock","tower","as","a","landmark","until","you","reach","the","pedestrian","area."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94097f34-c209-5e7d-842c-c8009b0432a4', '06624dec-5dd2-5002-a4f7-37172405475a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"landmark","instruction":"Выберите подходящее слово.","options":["landmark","shortcut","local advice"],"sentence_template":"Turn left at the junction and use the clock tower as a ___ until you reach the pedestrian area."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a5eb3773-c6ba-51ef-9dc6-18d2d64b5c35', '06624dec-5dd2-5002-a4f7-37172405475a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Turn","left","at","the","junction","and","use","the","clock","tower","as","a","landmark","until","you","reach","the","pedestrian","area."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["area.","pedestrian","the","reach","you","until","landmark","a","as","tower","clock","the","use","and","junction","the","at","left","Turn"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8b12b557-900b-5a19-9dc9-50d2f2c826d1', '06624dec-5dd2-5002-a4f7-37172405475a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04a860a1-cd6f-59b7-bde3-51dc539ae5f3', '06624dec-5dd2-5002-a4f7-37172405475a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Поверните налево на перекрёстке и ориентируйтесь на часовую башню, пока не дойдёте до пешеходной зоны. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90edd391-5911-5efb-9eea-234224727a60', '06624dec-5dd2-5002-a4f7-37172405475a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area.","translation":"Поверните налево на перекрёстке и ориентируйтесь на часовую башню, пока не дойдёте до пешеходной зоны.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Understanding Detailed Directions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb569f61-8feb-50e6-9845-3ef35702213f', '06624dec-5dd2-5002-a4f7-37172405475a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“landmark” means a recognisable place used for navigation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T11","is_correct":true,"text":"a recognisable place used for navigation"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T12","is_correct":false,"text":"a place where roads meet"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T13","is_correct":false,"text":"an area where vehicles are restricted"}],"word":"landmark"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('836d4f3e-045a-5b25-be0c-4150cec8315f', '06624dec-5dd2-5002-a4f7-37172405475a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area.","explanation":"The missing travel expression is “landmark”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"landmark","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T14","is_correct":true},{"audio_text":"pedestrian area","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T15","is_correct":false},{"audio_text":"get lost","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T16","is_correct":false}],"sentence_template":"Turn left at the junction and use the clock tower as a ___ until you reach the pedestrian area."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('777f4909-ec7e-5500-8f4b-a1aa2f1c8c66', '06624dec-5dd2-5002-a4f7-37172405475a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"landmark","explanation":"The sentence requires “landmark” to express the intended travel meaning.","hint_prefix":"lan","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Turn left at the junction and use the clock tower as a ___ until you reach the pedestrian area."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('210398b7-d0a7-58a8-bddf-0e9515cab4e9', '06624dec-5dd2-5002-a4f7-37172405475a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"landmark","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T17","text":"landmark"},{"audio_text":"junction","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T18","text":"junction"},{"audio_text":"pedestrian area","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T19","text":"pedestrian area"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd9194c2-99f5-51d9-9de4-deff72b7766a', '06624dec-5dd2-5002-a4f7-37172405475a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Understanding Detailed Directions”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T20","is_correct":true,"text":"Turn left at the junction and use the clock tower as a landmark until you reach the pedestrian area."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6c68132b-f247-50e4-89da-26a189b1ca1f', '06624dec-5dd2-5002-a4f7-37172405475a', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Choosing a Route","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3486ed30-93e3-52b7-8b28-3a2e8b3a5376', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T01","left":"landmark","right":"ориентир"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T02","left":"junction","right":"перекрёсток"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T03","left":"pedestrian area","right":"пешеходная зона"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T04","left":"shortcut","right":"короткий путь"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T05","left":"get lost","right":"заблудиться"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T06","left":"local advice","right":"совет местного жителя"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T07","left":"within walking distance","right":"в пешей доступности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ea0e8b1-18a1-5ce6-aa13-5b9e8a00ecb7', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T08","is_correct":true,"text":"The shortcut looked simple on the map, but we got lost because several streets had no signs."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d2c9fb9-49c4-5d9d-bafa-777668cfc6d7', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The shortcut looked simple on the map, but we got lost because several streets had no signs.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Короткий путь казался простым на карте, но мы заблудились, потому что на нескольких улицах не было указателей.","target_language":"en","word_bank":["The","shortcut","looked","simple","on","the","map,","but","we","got","lost","because","several","streets","had","no","signs."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d4e53cd-c41e-52a8-a40e-55e5b90f7ff4', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"junction","instruction":"Выберите подходящее слово.","options":["junction","get lost","within walking distance"],"sentence_template":"The shortcut looked simple on the map, but we got lost because several streets had no signs."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4d9c338-76a9-580c-b3da-8529c8feb855', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","shortcut","looked","simple","on","the","map,","but","we","got","lost","because","several","streets","had","no","signs."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["signs.","no","had","streets","several","because","lost","got","we","but","map,","the","on","simple","looked","shortcut","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54c67022-63b5-5b66-a373-8dbd563427b1', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The shortcut looked simple on the map, but we got lost because several streets had no signs. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('943499de-fe0e-5b0d-9624-94ab59b9f2e2', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The shortcut looked simple on the map, but we got lost because several streets had no signs. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Короткий путь казался простым на карте, но мы заблудились, потому что на нескольких улицах не было указателей. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6ce3032-c9f9-54d2-8281-dd56ce3340c9', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The shortcut looked simple on the map, but we got lost because several streets had no signs.","translation":"Короткий путь казался простым на карте, но мы заблудились, потому что на нескольких улицах не было указателей.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Choosing a Route"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a2a6c05-6552-5b2d-88ad-76e70ed5cd16', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“junction” means a place where roads meet.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T11","is_correct":true,"text":"a place where roads meet"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T12","is_correct":false,"text":"an area where vehicles are restricted"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T13","is_correct":false,"text":"a quicker route"}],"word":"junction"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbca9fd3-86fc-55e6-a6a1-f915520feb89', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The shortcut looked simple on the map, but we got lost because several streets had no signs.","explanation":"The missing travel expression is “junction”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"junction","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T14","is_correct":true},{"audio_text":"shortcut","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T15","is_correct":false},{"audio_text":"local advice","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T16","is_correct":false}],"sentence_template":"The shortcut looked simple on the map, but we got lost because several streets had no signs."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff7d4d49-41a6-5bca-8e35-d4d52f9be855', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"junction","explanation":"The sentence requires “junction” to express the intended travel meaning.","hint_prefix":"jun","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The shortcut looked simple on the map, but we got lost because several streets had no signs."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65d3df18-0515-5141-a1f8-00b4b7c714ed', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"landmark","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T17","text":"landmark"},{"audio_text":"junction","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T18","text":"junction"},{"audio_text":"pedestrian area","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T19","text":"pedestrian area"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f47fb1ab-0c3c-5d3f-8c15-619889f1bad0', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Choosing a Route”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T20","is_correct":true,"text":"The shortcut looked simple on the map, but we got lost because several streets had no signs."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6c68132b-f247-50e4-89da-26a189b1ca1f', '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('514acc76-efba-5048-aea4-2fc8a76075b5', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Asking for Local Advice","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('425b4fe2-252b-57a2-a0a1-26ff4025e3c9', '514acc76-efba-5048-aea4-2fc8a76075b5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T01","left":"landmark","right":"ориентир"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T02","left":"junction","right":"перекрёсток"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T03","left":"pedestrian area","right":"пешеходная зона"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T04","left":"shortcut","right":"короткий путь"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T05","left":"get lost","right":"заблудиться"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T06","left":"local advice","right":"совет местного жителя"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T07","left":"within walking distance","right":"в пешей доступности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af2a19e8-a71b-5666-9ac8-f227f2775ebb', '514acc76-efba-5048-aea4-2fc8a76075b5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T08","is_correct":true,"text":"According to local advice, the museum is within walking distance, although the route is quite steep."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('abe85db5-6069-5add-b243-1df227b9747e', '514acc76-efba-5048-aea4-2fc8a76075b5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"According to local advice, the museum is within walking distance, although the route is quite steep.","instruction":"Соберите перевод.","source_language":"ru","source_text":"По совету местного жителя музей находится в пешей доступности, хотя маршрут довольно крутой.","target_language":"en","word_bank":["According","to","local","advice,","the","museum","is","within","walking","distance,","although","the","route","is","quite","steep."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af69156c-94ac-5f69-befe-ff8255db0e1f', '514acc76-efba-5048-aea4-2fc8a76075b5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"pedestrian area","instruction":"Выберите подходящее слово.","options":["pedestrian area","local advice","landmark"],"sentence_template":"According to local advice, the museum is within walking distance, although the route is quite steep."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20f14b28-ee6f-5cf8-8974-01be4f0fc019', '514acc76-efba-5048-aea4-2fc8a76075b5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["According","to","local","advice,","the","museum","is","within","walking","distance,","although","the","route","is","quite","steep."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["steep.","quite","is","route","the","although","distance,","walking","within","is","museum","the","advice,","local","to","According"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e60e5277-12a4-5216-adfa-18d01badf189', '514acc76-efba-5048-aea4-2fc8a76075b5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"According to local advice, the museum is within walking distance, although the route is quite steep. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f208667d-69a1-59e6-b9dc-62d83067ea63', '514acc76-efba-5048-aea4-2fc8a76075b5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"According to local advice, the museum is within walking distance, although the route is quite steep. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"По совету местного жителя музей находится в пешей доступности, хотя маршрут довольно крутой. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('436b0ece-b854-5146-b273-5bceb4409d3f', '514acc76-efba-5048-aea4-2fc8a76075b5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"According to local advice, the museum is within walking distance, although the route is quite steep.","translation":"По совету местного жителя музей находится в пешей доступности, хотя маршрут довольно крутой.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Asking for Local Advice"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c084986d-bff8-55e9-b151-29d59f0446a7', '514acc76-efba-5048-aea4-2fc8a76075b5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“pedestrian area” means an area where vehicles are restricted.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T11","is_correct":true,"text":"an area where vehicles are restricted"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T12","is_correct":false,"text":"a quicker route"},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T13","is_correct":false,"text":"be unable to find the correct route"}],"word":"pedestrian area"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('685f71a0-2061-5dc1-883d-aa6dfe23972d', '514acc76-efba-5048-aea4-2fc8a76075b5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"According to local advice, the museum is within walking distance, although the route is quite steep.","explanation":"The missing travel expression is “pedestrian area”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"pedestrian area","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T14","is_correct":true},{"audio_text":"get lost","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T15","is_correct":false},{"audio_text":"within walking distance","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T16","is_correct":false}],"sentence_template":"According to local advice, the museum is within walking distance, although the route is quite steep."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('995f4998-cb01-5ed1-a9ef-1099a46166c0', '514acc76-efba-5048-aea4-2fc8a76075b5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"pedestrian area","explanation":"The sentence requires “pedestrian area” to express the intended travel meaning.","hint_prefix":"ped","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"According to local advice, the museum is within walking distance, although the route is quite steep."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d5f1590-1e33-579e-ba65-7214f7d84d41', '514acc76-efba-5048-aea4-2fc8a76075b5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"landmark","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T17","text":"landmark"},{"audio_text":"junction","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T18","text":"junction"},{"audio_text":"pedestrian area","id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T19","text":"pedestrian area"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b27fddc3-e998-5024-93a3-e21d2cb7e9a4', '514acc76-efba-5048-aea4-2fc8a76075b5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Asking for Local Advice”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T20","is_correct":true,"text":"According to local advice, the museum is within walking distance, although the route is quite steep."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_NAVIGATION_ROUTES_AND_LOCAL_ADVICE_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('6c68132b-f247-50e4-89da-26a189b1ca1f', '514acc76-efba-5048-aea4-2fc8a76075b5', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e96910a-2d9a-5efb-bbe5-4ed103bcfcfe', 'en', 'junction', 'перекрёсток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('545f4e2c-8a9e-5ccc-85d7-7d27ce33635c', 'en', 'pedestrian area', 'пешеходная зона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('886e4b88-6716-5583-9487-993caf3305a8', 'en', 'shortcut', 'короткий путь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2330c3ff-ea42-5c93-a1ce-da163ffa3cf0', 'en', 'get lost', 'заблудиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a15559e0-66e7-5345-9c00-eeaf4b0fd5b6', 'en', 'local advice', 'совет местного жителя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fca0eb3-0afe-57cc-8677-9d525e2963f1', 'en', 'within walking distance', 'в пешей доступности', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e96910a-2d9a-5efb-bbe5-4ed103bcfcfe', 'en', 'junction', 'перекрёсток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('545f4e2c-8a9e-5ccc-85d7-7d27ce33635c', 'en', 'pedestrian area', 'пешеходная зона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('886e4b88-6716-5583-9487-993caf3305a8', 'en', 'shortcut', 'короткий путь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2330c3ff-ea42-5c93-a1ce-da163ffa3cf0', 'en', 'get lost', 'заблудиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a15559e0-66e7-5345-9c00-eeaf4b0fd5b6', 'en', 'local advice', 'совет местного жителя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fca0eb3-0afe-57cc-8677-9d525e2963f1', 'en', 'within walking distance', 'в пешей доступности', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('262c55d9-12e4-552e-b9fd-fef26f7080d1', 'en', 'landmark', 'ориентир', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8e96910a-2d9a-5efb-bbe5-4ed103bcfcfe', 'en', 'junction', 'перекрёсток', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('545f4e2c-8a9e-5ccc-85d7-7d27ce33635c', 'en', 'pedestrian area', 'пешеходная зона', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('886e4b88-6716-5583-9487-993caf3305a8', 'en', 'shortcut', 'короткий путь', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2330c3ff-ea42-5c93-a1ce-da163ffa3cf0', 'en', 'get lost', 'заблудиться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a15559e0-66e7-5345-9c00-eeaf4b0fd5b6', 'en', 'local advice', 'совет местного жителя', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7fca0eb3-0afe-57cc-8677-9d525e2963f1', 'en', 'within walking distance', 'в пешей доступности', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'junction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'pedestrian area' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortcut' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'get lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'local advice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '06624dec-5dd2-5002-a4f7-37172405475a', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'within walking distance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'junction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'pedestrian area' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortcut' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'get lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'local advice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '16f2c8a3-8060-53e4-95cd-d6dbe78b0faf', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'within walking distance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'junction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'pedestrian area' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'shortcut' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'get lost' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'local advice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '6c68132b-f247-50e4-89da-26a189b1ca1f', id, '514acc76-efba-5048-aea4-2fc8a76075b5', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'within walking distance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
