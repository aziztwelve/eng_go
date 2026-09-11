-- Track: C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('157c22ae-f4e5-5631-b738-4221ddd5ce47', 'C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL', 'Сложный местный транспорт, навигация и поездки в отдалённые районы', 'Освойте практический английский C1 по теме «Сложный местный транспорт, навигация и поездки в отдалённые районы», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Complex Local Transport, Navigation and Remote Travel","ru":"Сложный местный транспорт, навигация и поездки в отдалённые районы"}'::jsonb, '{"en":"Master practical C1 English for complex local transport, navigation and remote travel by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Сложный местный транспорт, навигация и поездки в отдалённые районы», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b15667f4-3888-528c-9294-0002b10001f5', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Clarifying an Unfamiliar Route","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c95560c2-07da-52a3-b618-f5f921db8b3e', 'b15667f4-3888-528c-9294-0002b10001f5', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D01","left":"route deviation","right":"отклонение от маршрута"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D02","left":"service frequency","right":"частота движения"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D03","left":"last-mile connection","right":"последний участок маршрута"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D04","left":"informal transport","right":"неформальный транспорт"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D05","left":"navigation landmark","right":"ориентир для навигации"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D06","left":"communications blackout","right":"отсутствие связи"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D07","left":"remote-area contingency","right":"резервный план для удалённой местности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16e3062b-e7ad-5849-bfac-e5b8b504a635', 'b15667f4-3888-528c-9294-0002b10001f5', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D08","is_correct":true,"text":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark?"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c79e4dc-2d40-532c-ab1d-3e92e3e36ec4', 'b15667f4-3888-528c-9294-0002b10001f5', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark?","instruction":"Соберите перевод.","source_language":"ru","source_text":"Объясните, повлияет ли отклонение от маршрута на последний участок пути, и укажите надёжный ориентир.","target_language":"en","word_bank":["Could","you","explain","whether","the","route","deviation","affects","my","last-mile","connection","and","identify","a","reliable","navigation","landmark","?"]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47abae90-9223-58ed-9e9d-1c6cb7b7f17b', 'b15667f4-3888-528c-9294-0002b10001f5', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"route deviation","instruction":"Выберите подходящее слово.","options":["route deviation","informal transport","communications blackout"],"sentence_template":"Could you explain whether the ___ affects my last-mile connection and identify a reliable navigation landmark?"}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08555102-7589-5d69-8c2f-7cbc09c9f58c', 'b15667f4-3888-528c-9294-0002b10001f5', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Could","you","explain","whether","the","route","deviation","affects","my","last-mile","connection","and","identify","a","reliable","navigation","landmark","?"],"instruction":"Расставьте слова в правильном порядке.","word_bank":["?","landmark","navigation","reliable","a","identify","and","connection","last-mile","my","affects","deviation","route","the","whether","explain","you","Could"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dd410c4e-8cf8-5542-9c7e-57acd2765f60', 'b15667f4-3888-528c-9294-0002b10001f5', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark? Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b25483e7-93e6-5e46-89f0-92f6a0b3857f', 'b15667f4-3888-528c-9294-0002b10001f5', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark? Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Объясните, повлияет ли отклонение от маршрута на последний участок пути, и укажите надёжный ориентир. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9a9b475-7c67-5899-b277-f40ed731da21', 'b15667f4-3888-528c-9294-0002b10001f5', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark?","translation":"Объясните, повлияет ли отклонение от маршрута на последний участок пути, и укажите надёжный ориентир.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Clarifying an Unfamiliar Route"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6cd2dcd-dfdf-50fd-bfc5-7ed4da8acc4f', 'b15667f4-3888-528c-9294-0002b10001f5', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“route deviation” means a departure from the planned route.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D11","is_correct":true,"text":"a departure from the planned route"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D12","is_correct":false,"text":"how often a transport service operates"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D13","is_correct":false,"text":"transport completing the final part of a journey"}],"word":"route deviation"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9cb8ced-c6f8-5f33-af7e-5bc2e492e627', 'b15667f4-3888-528c-9294-0002b10001f5', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark?","explanation":"The missing C1 travel expression is “route deviation”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"route deviation","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D14","is_correct":true},{"audio_text":"last-mile connection","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D15","is_correct":false},{"audio_text":"navigation landmark","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D16","is_correct":false}],"sentence_template":"Could you explain whether the ___ affects my last-mile connection and identify a reliable navigation landmark?"}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('103b577f-68b9-58f6-b9a1-e72d9baaa117', 'b15667f4-3888-528c-9294-0002b10001f5', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"route deviation","explanation":"The complete statement uses “route deviation” accurately.","hint_prefix":"rout","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Could you explain whether the ___ affects my last-mile connection and identify a reliable navigation landmark?"}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61728fdb-f8a5-5fb8-b840-00411bbb28ee', 'b15667f4-3888-528c-9294-0002b10001f5', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"route deviation","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D17","text":"route deviation"},{"audio_text":"service frequency","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D18","text":"service frequency"},{"audio_text":"last-mile connection","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D19","text":"last-mile connection"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76db7d9f-82a8-5751-98b9-c42985456ca0', 'b15667f4-3888-528c-9294-0002b10001f5', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Clarifying an Unfamiliar Route”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D20","is_correct":true,"text":"Could you explain whether the route deviation affects my last-mile connection and identify a reliable navigation landmark?"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('157c22ae-f4e5-5631-b738-4221ddd5ce47', 'b15667f4-3888-528c-9294-0002b10001f5', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e6f42d33-677e-5b25-ba6e-344f99e01dae', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Managing Informal and Limited Transport","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a872aa43-30e9-5e58-88b5-e264e5bf46c7', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D01","left":"route deviation","right":"отклонение от маршрута"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D02","left":"service frequency","right":"частота движения"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D03","left":"last-mile connection","right":"последний участок маршрута"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D04","left":"informal transport","right":"неформальный транспорт"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D05","left":"navigation landmark","right":"ориентир для навигации"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D06","left":"communications blackout","right":"отсутствие связи"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D07","left":"remote-area contingency","right":"резервный план для удалённой местности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b3d0a727-24f2-555f-871e-7c5f18bcf1c8', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D08","is_correct":true,"text":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b8ddb0e-97f0-5965-a43d-65d1e4ea7f58', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед использованием неформального транспорта подтвердите пункт назначения, полную стоимость, место отправления и частоту движения.","target_language":"en","word_bank":["Before","using","informal","transport",",","confirm","the","destination",",","total","fare",",","departure","point",",","and","expected","service","frequency","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('38b71407-9469-5c79-8037-d177b776a330', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"service frequency","instruction":"Выберите подходящее слово.","options":["service frequency","navigation landmark","remote-area contingency"],"sentence_template":"Before using informal transport, confirm the destination, total fare, departure point, and expected ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fb8ff1fb-f34c-5c09-864a-b22c0f8769d4', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","using","informal","transport",",","confirm","the","destination",",","total","fare",",","departure","point",",","and","expected","service","frequency","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","frequency","service","expected","and",",","point","departure",",","fare","total",",","destination","the","confirm",",","transport","informal","using","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('594e8473-e584-5737-94e5-ecba20ef1685', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f59f3def-9389-542d-b301-15008ff36f48', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Перед использованием неформального транспорта подтвердите пункт назначения, полную стоимость, место отправления и частоту движения. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fd494f1-d0eb-5a92-b055-5ed55d8ccfa3', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency.","translation":"Перед использованием неформального транспорта подтвердите пункт назначения, полную стоимость, место отправления и частоту движения.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Managing Informal and Limited Transport"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('144d568f-6dec-5d71-a15d-6def135d1ab8', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“service frequency” means how often a transport service operates.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D11","is_correct":true,"text":"how often a transport service operates"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D12","is_correct":false,"text":"transport completing the final part of a journey"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D13","is_correct":false,"text":"locally arranged travel outside formal networks"}],"word":"service frequency"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2c6bca23-29ae-541e-bdde-8091814ef0cc', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency.","explanation":"The missing C1 travel expression is “service frequency”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"service frequency","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D14","is_correct":true},{"audio_text":"informal transport","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D15","is_correct":false},{"audio_text":"communications blackout","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D16","is_correct":false}],"sentence_template":"Before using informal transport, confirm the destination, total fare, departure point, and expected ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa2245a3-80e3-530a-aaa5-02bc09daa2ab', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"service frequency","explanation":"The complete statement uses “service frequency” accurately.","hint_prefix":"serv","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before using informal transport, confirm the destination, total fare, departure point, and expected ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9943ef42-a753-5adb-9e7e-e02b524eece3', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"route deviation","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D17","text":"route deviation"},{"audio_text":"service frequency","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D18","text":"service frequency"},{"audio_text":"last-mile connection","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D19","text":"last-mile connection"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ad1a1a27-39c2-5981-bdcb-28a6984055af', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Managing Informal and Limited Transport”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D20","is_correct":true,"text":"Before using informal transport, confirm the destination, total fare, departure point, and expected service frequency."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('157c22ae-f4e5-5631-b738-4221ddd5ce47', 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('cfcdd266-7264-5c41-8eb1-7d21335364e7', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Preparing for Remote-Area Contingencies","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('48d2a10e-9f6a-59d7-959c-7eca198fa659', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D01","left":"route deviation","right":"отклонение от маршрута"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D02","left":"service frequency","right":"частота движения"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D03","left":"last-mile connection","right":"последний участок маршрута"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D04","left":"informal transport","right":"неформальный транспорт"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D05","left":"navigation landmark","right":"ориентир для навигации"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D06","left":"communications blackout","right":"отсутствие связи"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D07","left":"remote-area contingency","right":"резервный план для удалённой местности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0689b997-37b7-5720-a7e3-cd47e54128bf', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D08","is_correct":true,"text":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e0639f5-d66d-544a-8627-ecc030bbf6a2', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Резервный план для удалённой местности включает офлайн-карты, экстренные контакты, дополнительную воду и действия при отсутствии связи. Соответствующее выражение для путешествий — «последний участок маршрута».","target_language":"en","word_bank":["The","remote-area","contingency","includes","offline","maps",",","emergency","contacts",",","additional","water",",","and","a","plan","for","a","communications","blackout",".","The","relevant","travel","expression","is","last-mile","connection","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7840c94-7a4b-57c0-af87-cf1c558ec118', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"last-mile connection","instruction":"Выберите подходящее слово.","options":["last-mile connection","communications blackout","route deviation"],"sentence_template":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1af4c7c0-9af9-5946-ab8e-7d8e12fb608c', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","remote-area","contingency","includes","offline","maps",",","emergency","contacts",",","additional","water",",","and","a","plan","for","a","communications","blackout",".","The","relevant","travel","expression","is","last-mile","connection","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","connection","last-mile","is","expression","travel","relevant","The",".","blackout","communications","a","for","plan","a","and",",","water","additional",",","contacts","emergency",",","maps","offline","includes","contingency","remote-area","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e559f0bc-6390-50ca-a8d0-1c4b231e3efb', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('afb125f1-2379-5679-bf43-f6851f35b032', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Резервный план для удалённой местности включает офлайн-карты, экстренные контакты, дополнительную воду и действия при отсутствии связи. Соответствующее выражение для путешествий — «последний участок маршрута». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('839ba6d6-3f26-5693-988a-47eabf067315', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection.","translation":"Резервный план для удалённой местности включает офлайн-карты, экстренные контакты, дополнительную воду и действия при отсутствии связи. Соответствующее выражение для путешествий — «последний участок маршрута».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Preparing for Remote-Area Contingencies"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2849a0cb-d2fb-5c1a-87bf-2f1602c8b1a0', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“last-mile connection” means transport completing the final part of a journey.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D11","is_correct":true,"text":"transport completing the final part of a journey"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D12","is_correct":false,"text":"locally arranged travel outside formal networks"},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D13","is_correct":false,"text":"a visible feature used to confirm location"}],"word":"last-mile connection"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5216b39-78a6-539b-8d20-9e53f1cb7b24', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection.","explanation":"The missing C1 travel expression is “last-mile connection”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"last-mile connection","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D14","is_correct":true},{"audio_text":"navigation landmark","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D15","is_correct":false},{"audio_text":"remote-area contingency","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D16","is_correct":false}],"sentence_template":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f55bca0-9972-5783-a12d-57a89573a5ea', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"last-mile connection","explanation":"The complete statement uses “last-mile connection” accurately.","hint_prefix":"last","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbd97ecc-16c6-537d-94ad-e398539d894c', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"route deviation","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D17","text":"route deviation"},{"audio_text":"service frequency","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D18","text":"service frequency"},{"audio_text":"last-mile connection","id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D19","text":"last-mile connection"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('91314c4f-d491-5e6d-9472-71fbb8d1e9ca', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Preparing for Remote-Area Contingencies”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D20","is_correct":true,"text":"The remote-area contingency includes offline maps, emergency contacts, additional water, and a plan for a communications blackout. The relevant travel expression is last-mile connection."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_COMPLEX_LOCAL_TRANSPORT_NAVIGATION_AND_REMOTE_TRAVEL_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('157c22ae-f4e5-5631-b738-4221ddd5ce47', 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a62801cb-4af7-5d58-b467-420b34b332e4', 'en', 'route deviation', 'отклонение от маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecc275a2-e3aa-50cb-b2b1-d550e4ce98f6', 'en', 'service frequency', 'частота движения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59d51dd7-cb2f-5a73-abbb-c52184cce57a', 'en', 'last-mile connection', 'последний участок маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e42d04-afef-5681-a7e2-f6406d85dac8', 'en', 'informal transport', 'неформальный транспорт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e494758b-eefa-5ade-94ea-2c9f92cbfa2e', 'en', 'navigation landmark', 'ориентир для навигации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6159f4f-1543-5017-8fd9-09afbe23e691', 'en', 'communications blackout', 'отсутствие связи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b62b8129-43d6-5b15-9996-7e5591a188d9', 'en', 'remote-area contingency', 'резервный план для удалённой местности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a62801cb-4af7-5d58-b467-420b34b332e4', 'en', 'route deviation', 'отклонение от маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecc275a2-e3aa-50cb-b2b1-d550e4ce98f6', 'en', 'service frequency', 'частота движения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59d51dd7-cb2f-5a73-abbb-c52184cce57a', 'en', 'last-mile connection', 'последний участок маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e42d04-afef-5681-a7e2-f6406d85dac8', 'en', 'informal transport', 'неформальный транспорт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e494758b-eefa-5ade-94ea-2c9f92cbfa2e', 'en', 'navigation landmark', 'ориентир для навигации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6159f4f-1543-5017-8fd9-09afbe23e691', 'en', 'communications blackout', 'отсутствие связи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b62b8129-43d6-5b15-9996-7e5591a188d9', 'en', 'remote-area contingency', 'резервный план для удалённой местности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a62801cb-4af7-5d58-b467-420b34b332e4', 'en', 'route deviation', 'отклонение от маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ecc275a2-e3aa-50cb-b2b1-d550e4ce98f6', 'en', 'service frequency', 'частота движения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('59d51dd7-cb2f-5a73-abbb-c52184cce57a', 'en', 'last-mile connection', 'последний участок маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('16e42d04-afef-5681-a7e2-f6406d85dac8', 'en', 'informal transport', 'неформальный транспорт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e494758b-eefa-5ade-94ea-2c9f92cbfa2e', 'en', 'navigation landmark', 'ориентир для навигации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c6159f4f-1543-5017-8fd9-09afbe23e691', 'en', 'communications blackout', 'отсутствие связи', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b62b8129-43d6-5b15-9996-7e5591a188d9', 'en', 'remote-area contingency', 'резервный план для удалённой местности', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'route deviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'service frequency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'last-mile connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'informal transport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'navigation landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'communications blackout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'b15667f4-3888-528c-9294-0002b10001f5', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote-area contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'route deviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'service frequency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'last-mile connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'informal transport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'navigation landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'communications blackout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'e6f42d33-677e-5b25-ba6e-344f99e01dae', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote-area contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'route deviation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'service frequency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'last-mile connection' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'informal transport' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'navigation landmark' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'communications blackout' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '157c22ae-f4e5-5631-b738-4221ddd5ce47', id, 'cfcdd266-7264-5c41-8eb1-7d21335364e7', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'remote-area contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
