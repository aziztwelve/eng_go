-- Track: C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('c96aadca-fd6e-5cec-b664-3dc77fb95d9e', 'C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES', 'Питание, аллергии, кулинарная культура и споры об обслуживании', 'Освойте практический английский C1 по теме «Питание, аллергии, кулинарная культура и споры об обслуживании», уверенно решая сложные реальные ситуации в международных поездках.', '{"en":"Dining, Allergies, Culinary Culture and Service Disputes","ru":"Питание, аллергии, кулинарная культура и споры об обслуживании"}'::jsonb, '{"en":"Master practical C1 English for dining, allergies, culinary culture and service disputes by handling complex real-world international travel situations confidently.","ru":"Освойте практический английский C1 по теме «Питание, аллергии, кулинарная культура и споры об обслуживании», уверенно решая сложные реальные ситуации в международных поездках."}'::jsonb, 'en', 'C1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('07a08c6d-f34f-5bff-9d8a-3aec2778be3e', NULL, 'Практический контекст и ключевые понятия', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Communicating a Serious Dietary Risk","ru":"Практический контекст и ключевые понятия"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e42957e-43db-5131-85f9-3f6457b064dc', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D01","left":"cross-contamination","right":"перекрёстное загрязнение"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D02","left":"allergen protocol","right":"протокол работы с аллергенами"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D03","left":"ingredient substitution","right":"замена ингредиента"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D04","left":"culinary tradition","right":"кулинарная традиция"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D05","left":"tasting menu","right":"дегустационное меню"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D06","left":"discretionary charge","right":"необязательный сбор"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D07","left":"itemised bill","right":"детализированный счёт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f434a80a-6250-5073-8537-6a19878f0989', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D08","is_correct":true,"text":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('55f69fd4-4281-56a5-8c6c-416cae4d56f4', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Это тяжёлая аллергия, поэтому подтвердите протокол работы с аллергенами и риск перекрёстного загрязнения до принятия заказа.","target_language":"en","word_bank":["This","is","a","severe","allergy",",","so","please","confirm","the","allergen","protocol","and","the","risk","of","cross-contamination","before","accepting","the","order","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cad39c7a-f03f-547a-882c-f258f6d0c743', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cross-contamination","instruction":"Выберите подходящее слово.","options":["cross-contamination","culinary tradition","discretionary charge"],"sentence_template":"This is a severe allergy, so please confirm the allergen protocol and the risk of ___ before accepting the order."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d8fa87fb-7ebb-5fbb-b80e-3d3b2e4230b2', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["This","is","a","severe","allergy",",","so","please","confirm","the","allergen","protocol","and","the","risk","of","cross-contamination","before","accepting","the","order","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","order","the","accepting","before","cross-contamination","of","risk","the","and","protocol","allergen","the","confirm","please","so",",","allergy","severe","a","is","This"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ed779b9-bac9-507a-bf9f-c1c1f84a4983', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33e57bcd-8cab-5a9e-9d48-45c725ab9df5', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Это тяжёлая аллергия, поэтому подтвердите протокол работы с аллергенами и риск перекрёстного загрязнения до принятия заказа. Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('341531a8-9274-5ad7-8425-8640dda08e09', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order.","translation":"Это тяжёлая аллергия, поэтому подтвердите протокол работы с аллергенами и риск перекрёстного загрязнения до принятия заказа.","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Communicating a Serious Dietary Risk"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('293a79ab-b05b-5e68-9c02-30ac5e162676', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cross-contamination” means transfer of an allergen between foods or surfaces.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D11","is_correct":true,"text":"transfer of an allergen between foods or surfaces"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D12","is_correct":false,"text":"a procedure for preventing dangerous exposure"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D13","is_correct":false,"text":"replacement of one food component with another"}],"word":"cross-contamination"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb71cd25-8ec9-5d2d-82ad-5f84db27e7fd', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order.","explanation":"The missing C1 travel expression is “cross-contamination”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cross-contamination","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D14","is_correct":true},{"audio_text":"ingredient substitution","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D15","is_correct":false},{"audio_text":"tasting menu","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D16","is_correct":false}],"sentence_template":"This is a severe allergy, so please confirm the allergen protocol and the risk of ___ before accepting the order."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a27676fc-fef6-5a6b-b5f9-c7c5a8959d42', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cross-contamination","explanation":"The complete statement uses “cross-contamination” accurately.","hint_prefix":"cros","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"This is a severe allergy, so please confirm the allergen protocol and the risk of ___ before accepting the order."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9910482c-5119-5d2a-bb8d-592a94237af1', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cross-contamination","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D17","text":"cross-contamination"},{"audio_text":"allergen protocol","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D18","text":"allergen protocol"},{"audio_text":"ingredient substitution","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D19","text":"ingredient substitution"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('07b697ae-3e7b-5b25-bfc1-a0c74c2038f9', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Communicating a Serious Dietary Risk”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D20","is_correct":true,"text":"This is a severe allergy, so please confirm the allergen protocol and the risk of cross-contamination before accepting the order."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L1_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c96aadca-fd6e-5cec-b664-3dc77fb95d9e', '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bb70f151-41de-5db5-b363-a27cc055cab8', NULL, 'Сложное взаимодействие и решение проблемы', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Understanding Culinary Context","ru":"Сложное взаимодействие и решение проблемы"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70ff5a60-7ad7-5fd9-8d01-c98fa1b17c80', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D01","left":"cross-contamination","right":"перекрёстное загрязнение"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D02","left":"allergen protocol","right":"протокол работы с аллергенами"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D03","left":"ingredient substitution","right":"замена ингредиента"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D04","left":"culinary tradition","right":"кулинарная традиция"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D05","left":"tasting menu","right":"дегустационное меню"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D06","left":"discretionary charge","right":"необязательный сбор"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D07","left":"itemised bill","right":"детализированный счёт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('826afe61-1b98-5828-9ecb-05f84334036d', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D08","is_correct":true,"text":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('290ad1fd-1b4e-52e2-8874-b08317ff9462', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Замена ингредиента меняет блюдо, но я хотел бы понять, как это связано с кулинарной традицией. Соответствующее выражение для путешествий — «протокол работы с аллергенами».","target_language":"en","word_bank":["The","ingredient","substitution","changes","the","dish",",","but","I","would","like","to","understand","how","it","relates","to","the","culinary","tradition",".","The","relevant","travel","expression","is","allergen","protocol","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('09acf11b-b6a2-5ae2-b2e3-6a6ce73730fd', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"allergen protocol","instruction":"Выберите подходящее слово.","options":["allergen protocol","tasting menu","itemised bill"],"sentence_template":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ff3fbc2-045c-5078-bfbc-09ab079ed699', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","ingredient","substitution","changes","the","dish",",","but","I","would","like","to","understand","how","it","relates","to","the","culinary","tradition",".","The","relevant","travel","expression","is","allergen","protocol","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","protocol","allergen","is","expression","travel","relevant","The",".","tradition","culinary","the","to","relates","it","how","understand","to","like","would","I","but",",","dish","the","changes","substitution","ingredient","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15bb829c-087d-5fc7-957f-e3eef182df09', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10cc009a-81dc-57fa-9635-bae6e14cd536', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Замена ингредиента меняет блюдо, но я хотел бы понять, как это связано с кулинарной традицией. Соответствующее выражение для путешествий — «протокол работы с аллергенами». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2546a239-a185-5bf4-a8c4-db0447cc5c3b', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol.","translation":"Замена ингредиента меняет блюдо, но я хотел бы понять, как это связано с кулинарной традицией. Соответствующее выражение для путешествий — «протокол работы с аллергенами».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Understanding Culinary Context"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4591996-d366-51c7-88f6-098d94f27757', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“allergen protocol” means a procedure for preventing dangerous exposure.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D11","is_correct":true,"text":"a procedure for preventing dangerous exposure"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D12","is_correct":false,"text":"replacement of one food component with another"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D13","is_correct":false,"text":"a culturally established way of preparing or serving food"}],"word":"allergen protocol"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bc50885-0bfb-5dbc-b712-fef57d1c303d', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol.","explanation":"The missing C1 travel expression is “allergen protocol”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"allergen protocol","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D14","is_correct":true},{"audio_text":"culinary tradition","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D15","is_correct":false},{"audio_text":"discretionary charge","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D16","is_correct":false}],"sentence_template":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f63c351f-9570-5301-9369-e89c46edc2a3', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"allergen protocol","explanation":"The complete statement uses “allergen protocol” accurately.","hint_prefix":"alle","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d63483e0-de30-5c5a-ad14-1aad07b1c337', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cross-contamination","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D17","text":"cross-contamination"},{"audio_text":"allergen protocol","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D18","text":"allergen protocol"},{"audio_text":"ingredient substitution","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D19","text":"ingredient substitution"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fe915c7-d628-52f1-b062-d611445de124', 'bb70f151-41de-5db5-b363-a27cc055cab8', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Understanding Culinary Context”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D20","is_correct":true,"text":"The ingredient substitution changes the dish, but I would like to understand how it relates to the culinary tradition. The relevant travel expression is allergen protocol."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L2_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c96aadca-fd6e-5cec-b664-3dc77fb95d9e', 'bb70f151-41de-5db5-b363-a27cc055cab8', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('d4de21ea-a2c2-5b75-bbde-a76db86c3305', NULL, 'Ответственное действие и последующие шаги', 'Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия.', '{"en":"Resolving a Complex Billing or Service Issue","ru":"Ответственное действие и последующие шаги"}'::jsonb, '{"en":"Handle a complex real-world C1 travel situation by clarifying conditions, explaining implications, protecting legitimate interests, and agreeing practical action.","ru":"Уверенно решать сложную реальную ситуацию в поездке на уровне C1, уточняя условия, объясняя последствия, защищая законные интересы и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a44bb674-d5b5-53ee-99d6-e9bb212ccf79', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D01","left":"cross-contamination","right":"перекрёстное загрязнение"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D02","left":"allergen protocol","right":"протокол работы с аллергенами"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D03","left":"ingredient substitution","right":"замена ингредиента"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D04","left":"culinary tradition","right":"кулинарная традиция"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D05","left":"tasting menu","right":"дегустационное меню"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D06","left":"discretionary charge","right":"необязательный сбор"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D07","left":"itemised bill","right":"детализированный счёт"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d338a54-9d21-5bee-b2c1-7ed92ea9c4c1', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response is precise, calm, evidence-aware, and focused on a workable real-world solution.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D08","is_correct":true,"text":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D09","is_correct":false,"text":"I will accept the first answer without checking the conditions, evidence, or alternatives."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D10","is_correct":false,"text":"The practical consequences do not matter, so no written confirmation is necessary."}],"question":"Which response handles this complex travel situation most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20c123ac-2a09-5498-a011-032ef0ab2d79', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Предоставьте детализированный счёт и уточните, является ли плата за обслуживание обязательным или необязательным сбором. Соответствующее выражение для путешествий — «замена ингредиента».","target_language":"en","word_bank":["Please","provide","an","itemised","bill","and","clarify","whether","the","service","fee","is","a","mandatory","or","discretionary","charge",".","The","relevant","travel","expression","is","ingredient","substitution","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f148149-6925-5a65-99b2-ef2e61730ba0', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"ingredient substitution","instruction":"Выберите подходящее слово.","options":["ingredient substitution","discretionary charge","cross-contamination"],"sentence_template":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5fac2ff-d02a-548d-8701-d09828311620', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Please","provide","an","itemised","bill","and","clarify","whether","the","service","fee","is","a","mandatory","or","discretionary","charge",".","The","relevant","travel","expression","is","ingredient","substitution","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","substitution","ingredient","is","expression","travel","relevant","The",".","charge","discretionary","or","mandatory","a","is","fee","service","the","whether","clarify","and","bill","itemised","an","provide","Please"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f9dd4c1c-3f2f-520c-b4eb-c162097da566', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b01cd2af-fbba-5c9a-904b-ff9b9b3d4dca', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution. Before agreeing, confirm the practical consequences, the available alternatives, and the next responsible action. If the initial solution is inadequate, explain why and request a proportionate alternative without becoming confrontational.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.84,"translation_hint":"Предоставьте детализированный счёт и уточните, является ли плата за обслуживание обязательным или необязательным сбором. Соответствующее выражение для путешествий — «замена ингредиента». Перед согласием уточните практические последствия, доступные альтернативы и следующее ответственное действие. Если первое решение недостаточно, спокойно объясните почему и запросите соразмерную альтернативу."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('789aa3fc-3bf3-5585-884f-6c92daee8b9c', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution.","translation":"Предоставьте детализированный счёт и уточните, является ли плата за обслуживание обязательным или необязательным сбором. Соответствующее выражение для путешествий — «замена ингредиента».","type":"dialogue"},{"character":"Representative","text":"What outcome are you requesting, and what information supports your position?","translation":"Какого результата вы добиваетесь и какая информация подтверждает вашу позицию?","type":"dialogue"},{"options":[{"is_correct":true,"text":"I would state the facts, explain the practical impact, and request a specific solution with written confirmation."},{"is_correct":false,"text":"I would make a vague complaint without identifying any workable outcome."}],"text":"Which response moves the situation forward?","type":"choice"}],"title":"Resolving a Complex Billing or Service Issue"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fd660a37-cae6-5458-b659-ecdc5a33ae2a', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“ingredient substitution” means replacement of one food component with another.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D11","is_correct":true,"text":"replacement of one food component with another"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D12","is_correct":false,"text":"a culturally established way of preparing or serving food"},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D13","is_correct":false,"text":"a sequence of small courses selected by the chef"}],"word":"ingredient substitution"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4697b3ba-df79-5105-a728-3af4d2366973', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution.","explanation":"The missing C1 travel expression is “ingredient substitution”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"ingredient substitution","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D14","is_correct":true},{"audio_text":"tasting menu","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D15","is_correct":false},{"audio_text":"itemised bill","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D16","is_correct":false}],"sentence_template":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ccdb5672-8645-58ad-bc27-2004dae75451', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"ingredient substitution","explanation":"The complete statement uses “ingredient substitution” accurately.","hint_prefix":"ingr","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b6a4327b-03ce-58c8-b9fd-3ebc62bac6b3', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each advanced travel expression you hear.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"cross-contamination","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D17","text":"cross-contamination"},{"audio_text":"allergen protocol","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D18","text":"allergen protocol"},{"audio_text":"ingredient substitution","id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D19","text":"ingredient substitution"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f364517d-01d4-5270-b415-45c04afb2f1f', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Travel adviser","text":"How would you handle “Resolving a Complex Billing or Service Issue”?"}],"explanation":"The correct response uses precise, diplomatic, and practical C1 travel English.","instruction":"Ответьте.","options":[{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D20","is_correct":true,"text":"Please provide an itemised bill and clarify whether the service fee is a mandatory or discretionary charge. The relevant travel expression is ingredient substitution."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D21","is_correct":false,"text":"I would avoid asking for evidence and accept any outcome immediately."},{"id":"C1_TRAVEL_DINING_ALLERGIES_CULINARY_CULTURE_AND_SERVICE_DISPUTES_L3_D22","is_correct":false,"text":"I would escalate aggressively before explaining the facts or requested solution."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('c96aadca-fd6e-5cec-b664-3dc77fb95d9e', 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42564187-cb9a-5d4b-acda-db2081bf3424', 'en', 'cross-contamination', 'перекрёстное загрязнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c1a5be5-d408-5bc9-9e82-b93d25f0f111', 'en', 'allergen protocol', 'протокол работы с аллергенами', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bff17f75-8444-556d-bb60-829a986ded78', 'en', 'ingredient substitution', 'замена ингредиента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2fa1cb9-ab69-5a74-af1c-466f1cfbee88', 'en', 'culinary tradition', 'кулинарная традиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('515a81f4-3e22-5d2b-8c2e-4b4ad570aee5', 'en', 'tasting menu', 'дегустационное меню', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12dd700f-b81a-5338-8215-63f47d6f5f4e', 'en', 'discretionary charge', 'необязательный сбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7bc053e-a275-5f1c-8f52-47fac0ef1ff3', 'en', 'itemised bill', 'детализированный счёт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42564187-cb9a-5d4b-acda-db2081bf3424', 'en', 'cross-contamination', 'перекрёстное загрязнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c1a5be5-d408-5bc9-9e82-b93d25f0f111', 'en', 'allergen protocol', 'протокол работы с аллергенами', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bff17f75-8444-556d-bb60-829a986ded78', 'en', 'ingredient substitution', 'замена ингредиента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2fa1cb9-ab69-5a74-af1c-466f1cfbee88', 'en', 'culinary tradition', 'кулинарная традиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('515a81f4-3e22-5d2b-8c2e-4b4ad570aee5', 'en', 'tasting menu', 'дегустационное меню', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12dd700f-b81a-5338-8215-63f47d6f5f4e', 'en', 'discretionary charge', 'необязательный сбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7bc053e-a275-5f1c-8f52-47fac0ef1ff3', 'en', 'itemised bill', 'детализированный счёт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('42564187-cb9a-5d4b-acda-db2081bf3424', 'en', 'cross-contamination', 'перекрёстное загрязнение', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3c1a5be5-d408-5bc9-9e82-b93d25f0f111', 'en', 'allergen protocol', 'протокол работы с аллергенами', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bff17f75-8444-556d-bb60-829a986ded78', 'en', 'ingredient substitution', 'замена ингредиента', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a2fa1cb9-ab69-5a74-af1c-466f1cfbee88', 'en', 'culinary tradition', 'кулинарная традиция', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('515a81f4-3e22-5d2b-8c2e-4b4ad570aee5', 'en', 'tasting menu', 'дегустационное меню', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('12dd700f-b81a-5338-8215-63f47d6f5f4e', 'en', 'discretionary charge', 'необязательный сбор', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b7bc053e-a275-5f1c-8f52-47fac0ef1ff3', 'en', 'itemised bill', 'детализированный счёт', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-contamination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'allergen protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'culinary tradition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'tasting menu' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'discretionary charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, '07a08c6d-f34f-5bff-9d8a-3aec2778be3e', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'itemised bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-contamination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'allergen protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'culinary tradition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tasting menu' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'discretionary charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'bb70f151-41de-5db5-b363-a27cc055cab8', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'itemised bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-contamination' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'allergen protocol' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'ingredient substitution' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'culinary tradition' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'tasting menu' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'discretionary charge' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'c96aadca-fd6e-5cec-b664-3dc77fb95d9e', id, 'd4de21ea-a2c2-5b75-bbde-a76db86c3305', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'itemised bill' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
