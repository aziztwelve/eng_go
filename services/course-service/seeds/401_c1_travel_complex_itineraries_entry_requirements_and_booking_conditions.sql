-- Track: C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('47d769ad-dda1-5fcb-be12-616b3df12c89', 'C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS', 'Сложные маршруты, правила въезда и условия бронирования', 'Освойте практический английский C1 по теме «Сложные маршруты, правила въезда и условия бронирования», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Complex Itineraries, Entry Requirements and Booking Conditions","ru":"Сложные маршруты, правила въезда и условия бронирования"}'::jsonb, '{"en":"Master practical C1 English for complex itineraries, entry requirements and booking conditions by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Сложные маршруты, правила въезда и условия бронирования», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Planning a Multi-Country Itinerary","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdd24a88-b299-562b-b19b-fa25e5b01771', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D01","left":"entry requirement","right":"требование для въезда"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D02","left":"transit visa","right":"транзитная виза"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D03","left":"minimum connection time","right":"минимальное время пересадки"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D04","left":"through-ticket","right":"единый билет на весь маршрут"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D05","left":"fare restriction","right":"ограничение тарифа"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D06","left":"proof of onward travel","right":"подтверждение дальнейшего маршрута"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D07","left":"travel contingency","right":"резервный план путешествия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c5ebbed7-db94-514c-8d4d-0de65254a507', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D08","is_correct":true,"text":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb45f4d0-dfa1-525d-a843-c92bf433df86', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Маршрут выполним только в том случае, если минимальное время пересадки применимо к международному трансферу между отдельными терминалами. Соответствующее выражение для путешествий — «требование для въезда».","target_language":"en","word_bank":["The","itinerary","is","workable","only","if","the","minimum","connection","time","applies","to","an","international","transfer","between","separate","terminals",".","The","relevant","travel","expression","is","entry","requirement","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dcc5e7f9-314c-5b5c-a659-0c34977efa38', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"entry requirement","instruction":"Выберите подходящее слово.","options":["entry requirement","through-ticket","proof of onward travel"],"sentence_template":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b06689e-d37a-549e-a9a7-068cf6de837b', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","itinerary","is","workable","only","if","the","minimum","connection","time","applies","to","an","international","transfer","between","separate","terminals",".","The","relevant","travel","expression","is","entry","requirement","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","requirement","entry","is","expression","travel","relevant","The",".","terminals","separate","between","transfer","international","an","to","applies","time","connection","minimum","the","if","only","workable","is","itinerary","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90da5bb2-0482-535b-977b-0b0cbd467d1d', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e760c210-752e-519f-9e50-027ab660d76d', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Маршрут выполним только в том случае, если минимальное время пересадки применимо к международному трансферу между отдельными терминалами. Соответствующее выражение для путешествий — «требование для въезда». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f434e837-04eb-55eb-bef3-0e51ed677ce1', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement.","translation":"Маршрут выполним только в том случае, если минимальное время пересадки применимо к международному трансферу между отдельными терминалами. Соответствующее выражение для путешествий — «требование для въезда».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Planning a Multi-Country Itinerary"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0945dd88-863c-5abf-ba51-760ccb26c32d', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“entry requirement” means a condition that must be met to enter a country.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D11","is_correct":true,"text":"a condition that must be met to enter a country"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D12","is_correct":false,"text":"permission required to pass through a country"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D13","is_correct":false,"text":"the shortest officially permitted transfer time"}],"word":"entry requirement"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2395aaae-7f35-59b1-bc72-1883f9dd161e', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement.","explanation":"The missing C1 travel expression is “entry requirement”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"entry requirement","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D14","is_correct":true},{"audio_text":"minimum connection time","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D15","is_correct":false},{"audio_text":"fare restriction","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D16","is_correct":false}],"sentence_template":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ff79cc50-7995-58f3-89ba-cd5ac4242329', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"entry requirement","explanation":"The complete statement uses “entry requirement” accurately.","hint_prefix":"entr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30f200ca-4bd2-5f5a-903c-0cad57507ccc', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"entry requirement","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D17","text":"entry requirement"},{"audio_text":"transit visa","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D18","text":"transit visa"},{"audio_text":"minimum connection time","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D19","text":"minimum connection time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fbc0cc3f-2e3e-543f-ba71-151f8ab924c6', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Planning a Multi-Country Itinerary”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D20","is_correct":true,"text":"The itinerary is workable only if the minimum connection time applies to an international transfer between separate terminals. The relevant travel expression is entry requirement."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47d769ad-dda1-5fcb-be12-616b3df12c89', '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('995028ad-e904-544f-944a-b9774075ff54', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Verifying Entry and Transit Requirements","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3b62ce1d-c6ec-5ca4-b3d3-985667d47585', '995028ad-e904-544f-944a-b9774075ff54', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D01","left":"entry requirement","right":"требование для въезда"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D02","left":"transit visa","right":"транзитная виза"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D03","left":"minimum connection time","right":"минимальное время пересадки"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D04","left":"through-ticket","right":"единый билет на весь маршрут"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D05","left":"fare restriction","right":"ограничение тарифа"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D06","left":"proof of onward travel","right":"подтверждение дальнейшего маршрута"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D07","left":"travel contingency","right":"резервный план путешествия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fa1c7e7a-5062-57bd-9a3f-a92c58b08080', '995028ad-e904-544f-944a-b9774075ff54', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D08","is_correct":true,"text":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bcc1f05-3aa8-52dc-8607-da479e7d6ea7', '995028ad-e904-544f-944a-b9774075ff54', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Перед выездом проверьте требования для въезда, правила транзитной визы и допустимое подтверждение дальнейшего маршрута по официальным источникам.","target_language":"en","word_bank":["Before","departure",",","verify","the","entry","requirement",",","transit","visa","rules",",","and","acceptable","proof","of","onward","travel","with","official","sources","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('611ce89f-b73f-5a6e-848f-d76b2b0bc19d', '995028ad-e904-544f-944a-b9774075ff54', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"transit visa","instruction":"Выберите подходящее слово.","options":["transit visa","fare restriction","travel contingency"],"sentence_template":"Before departure, verify the entry requirement, ___ rules, and acceptable proof of onward travel with official sources."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8782fbd4-0e43-5956-86d0-bcff0c8195d8', '995028ad-e904-544f-944a-b9774075ff54', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","departure",",","verify","the","entry","requirement",",","transit","visa","rules",",","and","acceptable","proof","of","onward","travel","with","official","sources","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","sources","official","with","travel","onward","of","proof","acceptable","and",",","rules","visa","transit",",","requirement","entry","the","verify",",","departure","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('29c114b6-8160-5cfc-befa-e2c86ddf0833', '995028ad-e904-544f-944a-b9774075ff54', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ac16f188-53ee-5414-9513-a5f3c1b67f76', '995028ad-e904-544f-944a-b9774075ff54', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Перед выездом проверьте требования для въезда, правила транзитной визы и допустимое подтверждение дальнейшего маршрута по официальным источникам. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6afaad5c-4690-5d8a-ad0f-062142c359ee', '995028ad-e904-544f-944a-b9774075ff54', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources.","translation":"Перед выездом проверьте требования для въезда, правила транзитной визы и допустимое подтверждение дальнейшего маршрута по официальным источникам.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Verifying Entry and Transit Requirements"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d445fb55-0b11-50da-a2b6-d5ec648593c6', '995028ad-e904-544f-944a-b9774075ff54', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“transit visa” means permission required to pass through a country.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D11","is_correct":true,"text":"permission required to pass through a country"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D12","is_correct":false,"text":"the shortest officially permitted transfer time"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D13","is_correct":false,"text":"one ticket covering connected journey segments"}],"word":"transit visa"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7432fb69-340c-5377-b3c7-0fbee5f54324', '995028ad-e904-544f-944a-b9774075ff54', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources.","explanation":"The missing C1 travel expression is “transit visa”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"transit visa","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D14","is_correct":true},{"audio_text":"through-ticket","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D15","is_correct":false},{"audio_text":"proof of onward travel","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D16","is_correct":false}],"sentence_template":"Before departure, verify the entry requirement, ___ rules, and acceptable proof of onward travel with official sources."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cae78ee5-10bf-597f-b2d1-04db5a3d5e32', '995028ad-e904-544f-944a-b9774075ff54', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"transit visa","explanation":"The complete statement uses “transit visa” accurately.","hint_prefix":"tran","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before departure, verify the entry requirement, ___ rules, and acceptable proof of onward travel with official sources."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56ee55f4-7082-59af-8d01-85f318a21170', '995028ad-e904-544f-944a-b9774075ff54', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"entry requirement","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D17","text":"entry requirement"},{"audio_text":"transit visa","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D18","text":"transit visa"},{"audio_text":"minimum connection time","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D19","text":"minimum connection time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dbde8b0b-6f1a-526f-b5b7-a10182b83aaf', '995028ad-e904-544f-944a-b9774075ff54', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Verifying Entry and Transit Requirements”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D20","is_correct":true,"text":"Before departure, verify the entry requirement, transit visa rules, and acceptable proof of onward travel with official sources."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47d769ad-dda1-5fcb-be12-616b3df12c89', '995028ad-e904-544f-944a-b9774075ff54', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Interpreting Restrictive Booking Conditions","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ebe86f8-ecb0-5fe8-98c5-88e6d1f86544', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D01","left":"entry requirement","right":"требование для въезда"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D02","left":"transit visa","right":"транзитная виза"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D03","left":"minimum connection time","right":"минимальное время пересадки"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D04","left":"through-ticket","right":"единый билет на весь маршрут"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D05","left":"fare restriction","right":"ограничение тарифа"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D06","left":"proof of onward travel","right":"подтверждение дальнейшего маршрута"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D07","left":"travel contingency","right":"резервный план путешествия"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9434378-ab30-57ec-9dbf-3cf38d7f868d', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D08","is_correct":true,"text":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b64a2df2-85d3-583b-b8e1-0de9ce2a9cd0', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Более низкий тариф привлекателен, однако ограничение тарифа делает все сегменты невозвратными, а изменения зависящими от наличия мест. Соответствующее выражение для путешествий — «минимальное время пересадки».","target_language":"en","word_bank":["The","lower","fare","is","attractive",",","but","its","fare","restriction","makes","every","segment","non-refundable","and","changes","subject","to","availability",".","The","relevant","travel","expression","is","minimum","connection","time","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70c2f366-2df1-58bc-8c82-1ddfb1167be5', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"minimum connection time","instruction":"Выберите подходящее слово.","options":["minimum connection time","proof of onward travel","entry requirement"],"sentence_template":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b0449802-fad8-5062-9a09-ae27c9b30053', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","lower","fare","is","attractive",",","but","its","fare","restriction","makes","every","segment","non-refundable","and","changes","subject","to","availability",".","The","relevant","travel","expression","is","minimum","connection","time","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","time","connection","minimum","is","expression","travel","relevant","The",".","availability","to","subject","changes","and","non-refundable","segment","every","makes","restriction","fare","its","but",",","attractive","is","fare","lower","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('35f76f90-dc81-5768-96c7-bf7495635368', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('93c37da9-fd1b-5c1d-94a0-1c8ab6fc0714', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Более низкий тариф привлекателен, однако ограничение тарифа делает все сегменты невозвратными, а изменения зависящими от наличия мест. Соответствующее выражение для путешествий — «минимальное время пересадки». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04edbde4-84e2-5891-8250-f93dcbd976cb', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time.","translation":"Более низкий тариф привлекателен, однако ограничение тарифа делает все сегменты невозвратными, а изменения зависящими от наличия мест. Соответствующее выражение для путешествий — «минимальное время пересадки».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Interpreting Restrictive Booking Conditions"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bf78b151-99d6-5606-8241-8eb2a089c296', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“minimum connection time” means the shortest officially permitted transfer time.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D11","is_correct":true,"text":"the shortest officially permitted transfer time"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D12","is_correct":false,"text":"one ticket covering connected journey segments"},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D13","is_correct":false,"text":"a rule limiting changes, refunds, or travel conditions"}],"word":"minimum connection time"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b75c42fc-353d-5c9f-9ec7-ef09e50cb4a4', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time.","explanation":"The missing C1 travel expression is “minimum connection time”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"minimum connection time","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D14","is_correct":true},{"audio_text":"fare restriction","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D15","is_correct":false},{"audio_text":"travel contingency","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D16","is_correct":false}],"sentence_template":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('821a75a0-1f56-5eee-b5dd-de9f8b38669e', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"minimum connection time","explanation":"The complete statement uses “minimum connection time” accurately.","hint_prefix":"mini","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('718c27f3-1f34-5394-ad3d-68e0ee22ad6d', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"entry requirement","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D17","text":"entry requirement"},{"audio_text":"transit visa","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D18","text":"transit visa"},{"audio_text":"minimum connection time","id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D19","text":"minimum connection time"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53cc9431-df68-5299-836b-80d76b0cf686', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Interpreting Restrictive Booking Conditions”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D20","is_correct":true,"text":"The lower fare is attractive, but its fare restriction makes every segment non-refundable and changes subject to availability. The relevant travel expression is minimum connection time."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_COMPLEX_ITINERARIES_ENTRY_REQUIREMENTS_AND_BOOKING_CONDITIONS_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('47d769ad-dda1-5fcb-be12-616b3df12c89', '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('208ee40b-c8b0-572e-adc8-0557ee48bde9', 'en', 'entry requirement', 'требование для въезда', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880bf774-1904-5f1e-b6f3-10c11bfb4552', 'en', 'transit visa', 'транзитная виза', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0f1fbcf-8699-5136-9a08-dbb0655f34e3', 'en', 'minimum connection time', 'минимальное время пересадки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b0ec181-e780-53f7-a653-599019d320ff', 'en', 'through-ticket', 'единый билет на весь маршрут', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b3c982-140a-5d6b-a5d6-d7d11397ef96', 'en', 'fare restriction', 'ограничение тарифа', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fee3cae-4e95-5974-876c-20af427fa32d', 'en', 'proof of onward travel', 'подтверждение дальнейшего маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa7fd136-97be-553a-8180-58f7d73b7ba5', 'en', 'travel contingency', 'резервный план путешествия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('208ee40b-c8b0-572e-adc8-0557ee48bde9', 'en', 'entry requirement', 'требование для въезда', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880bf774-1904-5f1e-b6f3-10c11bfb4552', 'en', 'transit visa', 'транзитная виза', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0f1fbcf-8699-5136-9a08-dbb0655f34e3', 'en', 'minimum connection time', 'минимальное время пересадки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b0ec181-e780-53f7-a653-599019d320ff', 'en', 'through-ticket', 'единый билет на весь маршрут', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b3c982-140a-5d6b-a5d6-d7d11397ef96', 'en', 'fare restriction', 'ограничение тарифа', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fee3cae-4e95-5974-876c-20af427fa32d', 'en', 'proof of onward travel', 'подтверждение дальнейшего маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa7fd136-97be-553a-8180-58f7d73b7ba5', 'en', 'travel contingency', 'резервный план путешествия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('208ee40b-c8b0-572e-adc8-0557ee48bde9', 'en', 'entry requirement', 'требование для въезда', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('880bf774-1904-5f1e-b6f3-10c11bfb4552', 'en', 'transit visa', 'транзитная виза', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0f1fbcf-8699-5136-9a08-dbb0655f34e3', 'en', 'minimum connection time', 'минимальное время пересадки', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0b0ec181-e780-53f7-a653-599019d320ff', 'en', 'through-ticket', 'единый билет на весь маршрут', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a0b3c982-140a-5d6b-a5d6-d7d11397ef96', 'en', 'fare restriction', 'ограничение тарифа', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5fee3cae-4e95-5974-876c-20af427fa32d', 'en', 'proof of onward travel', 'подтверждение дальнейшего маршрута', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aa7fd136-97be-553a-8180-58f7d73b7ba5', 'en', 'travel contingency', 'резервный план путешествия', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'entry requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'transit visa' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum connection time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'through-ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'fare restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'proof of onward travel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '39d41572-3d83-51b9-ba4f-8c4a8f9fc7d9', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'entry requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'transit visa' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum connection time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'through-ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'fare restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'proof of onward travel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '995028ad-e904-544f-944a-b9774075ff54', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'entry requirement' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'transit visa' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'minimum connection time' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'through-ticket' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'fare restriction' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'proof of onward travel' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '47d769ad-dda1-5fcb-be12-616b3df12c89', id, '4c5b4ddb-6e9c-5f30-9e17-ba44877b9d2a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'travel contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
