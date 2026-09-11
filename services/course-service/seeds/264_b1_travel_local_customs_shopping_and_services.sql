-- Track: B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3d4fd867-5ddb-50cf-8c82-79f126853823', 'B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES', 'Местные обычаи, покупки и услуги', 'Развивайте английский для путешествий уровня B1 по теме «Местные обычаи, покупки и услуги».', '{"en":"Local Customs, Shopping and Services","ru":"Местные обычаи, покупки и услуги"}'::jsonb, '{"en":"Develop B1 travel English for local customs, shopping and services.","ru":"Развивайте английский для путешествий уровня B1 по теме «Местные обычаи, покупки и услуги»."}'::jsonb, 'en', 'B1', '', ARRAY['travel']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('99db349a-1839-51a7-a322-1179b64bc2cd', NULL, 'Планирование и ключевые детали', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Respecting Local Customs","ru":"Планирование и ключевые детали"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d5bf3e31-fdd9-5c1b-81d7-22812cb8ddb0', '99db349a-1839-51a7-a322-1179b64bc2cd', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T01","left":"local custom","right":"местный обычай"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T02","left":"bargain","right":"торговаться"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T03","left":"receipt","right":"чек"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T04","left":"exchange","right":"обменять"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T05","left":"warranty","right":"гарантия"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T06","left":"appropriate","right":"уместный"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T07","left":"service provider","right":"поставщик услуг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9e4c26d2-a258-5f78-b2b3-a45c341a2648', '99db349a-1839-51a7-a322-1179b64bc2cd', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T08","is_correct":true,"text":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd84f274-4278-572d-9150-a9bd9c26c002', '99db349a-1839-51a7-a322-1179b64bc2cd', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Гид объяснил, что торг является местным обычаем на рынке, но неуместен в универмагах.","target_language":"en","word_bank":["The","guide","explained","that","bargaining","is","a","local","custom","in","the","market","but","is","not","appropriate","in","department","stores."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('636abd95-2254-5ea1-ba92-0856f42c5129', '99db349a-1839-51a7-a322-1179b64bc2cd', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"local custom","instruction":"Выберите подходящее слово.","options":["local custom","exchange","appropriate"],"sentence_template":"The guide explained that bargaining is a ___ in the market but is not appropriate in department stores."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f4d461f7-d5c5-594b-bacb-4a67206cab2a', '99db349a-1839-51a7-a322-1179b64bc2cd', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","guide","explained","that","bargaining","is","a","local","custom","in","the","market","but","is","not","appropriate","in","department","stores."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["stores.","department","in","appropriate","not","is","but","market","the","in","custom","local","a","is","bargaining","that","explained","guide","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c81798e0-4be2-5022-b380-47a0ee3a807a', '99db349a-1839-51a7-a322-1179b64bc2cd', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9617da4c-3b5d-5d5b-9800-b750635ae1ac', '99db349a-1839-51a7-a322-1179b64bc2cd', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Гид объяснил, что торг является местным обычаем на рынке, но неуместен в универмагах. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ddf2119f-e9fa-5e86-93a8-d3a63e20f884', '99db349a-1839-51a7-a322-1179b64bc2cd', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores.","translation":"Гид объяснил, что торг является местным обычаем на рынке, но неуместен в универмагах.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Respecting Local Customs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96f6ddcc-a7d5-5ebb-b1c5-e8ab9d76d043', '99db349a-1839-51a7-a322-1179b64bc2cd', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“local custom” means a traditional way of behaving.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T11","is_correct":true,"text":"a traditional way of behaving"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T12","is_correct":false,"text":"discuss a lower price"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T13","is_correct":false,"text":"a document showing payment"}],"word":"local custom"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5c6edc7c-b21f-538d-987e-5717a9a27f12', '99db349a-1839-51a7-a322-1179b64bc2cd', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores.","explanation":"The missing travel expression is “local custom”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"local custom","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T14","is_correct":true},{"audio_text":"receipt","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T15","is_correct":false},{"audio_text":"warranty","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T16","is_correct":false}],"sentence_template":"The guide explained that bargaining is a ___ in the market but is not appropriate in department stores."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2953dbc5-4d28-5ed1-9532-3d0bcca0ba83', '99db349a-1839-51a7-a322-1179b64bc2cd', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"local custom","explanation":"The sentence requires “local custom” to express the intended travel meaning.","hint_prefix":"loc","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The guide explained that bargaining is a ___ in the market but is not appropriate in department stores."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5f670b0c-b365-53a7-88ad-116812b310de', '99db349a-1839-51a7-a322-1179b64bc2cd', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local custom","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T17","text":"local custom"},{"audio_text":"bargain","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T18","text":"bargain"},{"audio_text":"receipt","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T19","text":"receipt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79b6014f-7ea6-5563-8ae2-ea34076d5e42', '99db349a-1839-51a7-a322-1179b64bc2cd', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Respecting Local Customs”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T20","is_correct":true,"text":"The guide explained that bargaining is a local custom in the market but is not appropriate in department stores."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L1_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d4fd867-5ddb-50cf-8c82-79f126853823', '99db349a-1839-51a7-a322-1179b64bc2cd', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', NULL, 'Неожиданная ситуация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Comparing Products and Services","ru":"Неожиданная ситуация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('16c26f59-198c-55a4-af84-a39a0f3f146f', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T01","left":"local custom","right":"местный обычай"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T02","left":"bargain","right":"торговаться"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T03","left":"receipt","right":"чек"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T04","left":"exchange","right":"обменять"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T05","left":"warranty","right":"гарантия"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T06","left":"appropriate","right":"уместный"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T07","left":"service provider","right":"поставщик услуг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bf7e786-ee37-53a1-a82a-6bf457533093', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T08","is_correct":true,"text":"Keep the receipt if you may need to exchange the item or use the warranty later."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfcee5cc-5165-5f20-9f97-7ccfbe232e87', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Keep the receipt if you may need to exchange the item or use the warranty later.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сохраните чек, если позже вам может понадобиться обменять товар или воспользоваться гарантией.","target_language":"en","word_bank":["Keep","the","receipt","if","you","may","need","to","exchange","the","item","or","use","the","warranty","later."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('dfc8938e-0a47-51ff-9c58-c36ff37dc90e', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"bargain","instruction":"Выберите подходящее слово.","options":["bargain","warranty","service provider"],"sentence_template":"Keep the receipt if you may need to exchange the item or use the warranty later."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a270e0e4-baac-50ee-b857-cd7946965224', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Keep","the","receipt","if","you","may","need","to","exchange","the","item","or","use","the","warranty","later."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["later.","warranty","the","use","or","item","the","exchange","to","need","may","you","if","receipt","the","Keep"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f4c308e-6ee7-53b5-8d1b-e85a9ca63a4e', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Keep the receipt if you may need to exchange the item or use the warranty later. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c2e46a6-7b6d-59d1-b2a5-cd2f44c669e7', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Keep the receipt if you may need to exchange the item or use the warranty later. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Сохраните чек, если позже вам может понадобиться обменять товар или воспользоваться гарантией. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bfabed01-12c3-57b6-ab4e-77e75b05bde6', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"Keep the receipt if you may need to exchange the item or use the warranty later.","translation":"Сохраните чек, если позже вам может понадобиться обменять товар или воспользоваться гарантией.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Comparing Products and Services"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b2c402a-84a3-547b-82bf-582a766ad826', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“bargain” means discuss a lower price.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T11","is_correct":true,"text":"discuss a lower price"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T12","is_correct":false,"text":"a document showing payment"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T13","is_correct":false,"text":"replace a purchased item"}],"word":"bargain"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7029b72-62ea-515e-b687-12d4d83835ad', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Keep the receipt if you may need to exchange the item or use the warranty later.","explanation":"The missing travel expression is “bargain”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"bargain","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T14","is_correct":true},{"audio_text":"exchange","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T15","is_correct":false},{"audio_text":"appropriate","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T16","is_correct":false}],"sentence_template":"Keep the receipt if you may need to exchange the item or use the warranty later."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1453c1e8-f8e2-5aab-aa8e-8bd3f1f1018e', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"bargain","explanation":"The sentence requires “bargain” to express the intended travel meaning.","hint_prefix":"bar","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Keep the receipt if you may need to exchange the item or use the warranty later."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('186d8611-c202-58d3-9574-ce8da6570cae', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local custom","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T17","text":"local custom"},{"audio_text":"bargain","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T18","text":"bargain"},{"audio_text":"receipt","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T19","text":"receipt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c404886-2d60-5957-a72b-1594917e230d', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Comparing Products and Services”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T20","is_correct":true,"text":"Keep the receipt if you may need to exchange the item or use the warranty later."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L2_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d4fd867-5ddb-50cf-8c82-79f126853823', 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('55cc15f3-b06a-5798-aba0-a1b6b12984cc', NULL, 'Решение и рекомендация', 'Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций.', '{"en":"Handling a Service Issue","ru":"Решение и рекомендация"}'::jsonb, '{"en":"Use B1 English to plan journeys, solve unexpected travel problems, and explain recommendations.","ru":"Использовать английский уровня B1 для планирования поездок, решения неожиданных проблем и объяснения рекомендаций."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7740922a-1ad9-57d4-8b12-d97be5d36732', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T01","left":"local custom","right":"местный обычай"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T02","left":"bargain","right":"торговаться"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T03","left":"receipt","right":"чек"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T04","left":"exchange","right":"обменять"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T05","left":"warranty","right":"гарантия"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T06","left":"appropriate","right":"уместный"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T07","left":"service provider","right":"поставщик услуг"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f540f1ac-849e-5618-bd94-7a474e7c6a3e', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response accurately connects the main travel detail with its reason, contrast, or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T08","is_correct":true,"text":"We compared three service providers before choosing the one with the clearest conditions."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T09","is_correct":false,"text":"No travel detail or reason is relevant to the situation."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T10","is_correct":false,"text":"The opposite event happened without any supporting information."}],"question":"Which option best communicates the travel situation?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e5d6677d-8ea4-517e-a5fb-9bb5ceea3245', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"We compared three service providers before choosing the one with the clearest conditions.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Мы сравнили трёх поставщиков услуг, прежде чем выбрать того, у кого были самые понятные условия.","target_language":"en","word_bank":["We","compared","three","service","providers","before","choosing","the","one","with","the","clearest","conditions."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8148f569-3085-569f-839b-87ab24e45a3d', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"receipt","instruction":"Выберите подходящее слово.","options":["receipt","appropriate","local custom"],"sentence_template":"We compared three service providers before choosing the one with the clearest conditions."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c03019df-58f0-599f-b56e-ef02c816afea', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["We","compared","three","service","providers","before","choosing","the","one","with","the","clearest","conditions."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["conditions.","clearest","the","with","one","the","choosing","before","providers","service","three","compared","We"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f5178e8c-d470-504b-935a-7eff94520670', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"We compared three service providers before choosing the one with the clearest conditions. The traveller then compared the available options before deciding what to do next.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e9bbbda8-da2b-55bf-9f3f-79cad674cbea', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"We compared three service providers before choosing the one with the clearest conditions. The traveller then compared the available options before deciding what to do next. Listen for the sequence, contrast and stressed travel details, then repeat the complete passage.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Мы сравнили трёх поставщиков услуг, прежде чем выбрать того, у кого были самые понятные условия. Затем путешественник сравнил доступные варианты, прежде чем решить, что делать дальше. Слушайте последовательность, противопоставление и выделенные детали поездки, затем повторите весь отрывок."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('79784212-393b-5beb-a9cf-4e34c137fa49', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Traveller","text":"We compared three service providers before choosing the one with the clearest conditions.","translation":"Мы сравнили трёх поставщиков услуг, прежде чем выбрать того, у кого были самые понятные условия.","type":"dialogue"},{"character":"Assistant","text":"Let us compare the available options before choosing a solution.","translation":"Давайте сравним доступные варианты, прежде чем выбрать решение.","type":"dialogue"},{"options":[{"is_correct":true,"text":"That makes sense; we should also confirm the cost and timing."},{"is_correct":false,"text":"The details do not matter and no solution is necessary."}],"text":"Which response continues naturally?","type":"choice"}],"title":"Handling a Service Issue"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2fdcefd-9435-5f38-ba4b-ec31bfb848bf', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“receipt” means a document showing payment.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T11","is_correct":true,"text":"a document showing payment"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T12","is_correct":false,"text":"replace a purchased item"},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T13","is_correct":false,"text":"a promise to repair or replace"}],"word":"receipt"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('26241b13-bf0f-51bb-a872-6a8c211cabb1', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"We compared three service providers before choosing the one with the clearest conditions.","explanation":"The missing travel expression is “receipt”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"receipt","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T14","is_correct":true},{"audio_text":"warranty","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T15","is_correct":false},{"audio_text":"service provider","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T16","is_correct":false}],"sentence_template":"We compared three service providers before choosing the one with the clearest conditions."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfadceaf-44c1-5f2a-8325-476f750afbb9', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"receipt","explanation":"The sentence requires “receipt” to express the intended travel meaning.","hint_prefix":"rec","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"We compared three service providers before choosing the one with the clearest conditions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4485d0ef-5f70-5da5-93d8-17610e029113', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 travel expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"local custom","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T17","text":"local custom"},{"audio_text":"bargain","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T18","text":"bargain"},{"audio_text":"receipt","id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T19","text":"receipt"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b164bb37-c405-554f-a259-c210c5f7a61f', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Companion","text":"How should we handle “Handling a Service Issue”?"}],"explanation":"The correct response explains the travel situation clearly and supports a practical action or recommendation.","instruction":"Ответьте.","options":[{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T20","is_correct":true,"text":"We compared three service providers before choosing the one with the clearest conditions."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T21","is_correct":false,"text":"We should ignore all details and avoid making a decision."},{"id":"B1_TRAVEL_LOCAL_CUSTOMS_SHOPPING_AND_SERVICES_L3_T22","is_correct":false,"text":"This response is unrelated to the travel situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3d4fd867-5ddb-50cf-8c82-79f126853823', '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0be1c6d7-13d2-556d-aae8-13683882ca30', 'en', 'local custom', 'местный обычай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e915c4c9-32ee-5758-90ce-b1fe96d34490', 'en', 'bargain', 'торговаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1d37f8-e3e0-54f9-b81d-9effb30531a1', 'en', 'exchange', 'обменять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58940b75-c50a-5169-a314-de44fce66924', 'en', 'warranty', 'гарантия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69f92a4d-a02d-549e-ac85-dd22658cfa87', 'en', 'appropriate', 'уместный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff7303c3-b977-57e2-b0bd-069bcfdfedaf', 'en', 'service provider', 'поставщик услуг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0be1c6d7-13d2-556d-aae8-13683882ca30', 'en', 'local custom', 'местный обычай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e915c4c9-32ee-5758-90ce-b1fe96d34490', 'en', 'bargain', 'торговаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1d37f8-e3e0-54f9-b81d-9effb30531a1', 'en', 'exchange', 'обменять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58940b75-c50a-5169-a314-de44fce66924', 'en', 'warranty', 'гарантия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69f92a4d-a02d-549e-ac85-dd22658cfa87', 'en', 'appropriate', 'уместный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff7303c3-b977-57e2-b0bd-069bcfdfedaf', 'en', 'service provider', 'поставщик услуг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0be1c6d7-13d2-556d-aae8-13683882ca30', 'en', 'local custom', 'местный обычай', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e915c4c9-32ee-5758-90ce-b1fe96d34490', 'en', 'bargain', 'торговаться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('975a1a75-48ca-58e3-b77e-58fbe6c26542', 'en', 'receipt', 'чек', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ae1d37f8-e3e0-54f9-b81d-9effb30531a1', 'en', 'exchange', 'обменять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('58940b75-c50a-5169-a314-de44fce66924', 'en', 'warranty', 'гарантия', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('69f92a4d-a02d-549e-ac85-dd22658cfa87', 'en', 'appropriate', 'уместный', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ff7303c3-b977-57e2-b0bd-069bcfdfedaf', 'en', 'service provider', 'поставщик услуг', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'local custom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'bargain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'warranty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'appropriate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '99db349a-1839-51a7-a322-1179b64bc2cd', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'service provider' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'local custom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'bargain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'warranty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'appropriate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, 'b8f9454f-d2cd-50ee-8cc9-7567eba9e1e2', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'service provider' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'local custom' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'bargain' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'receipt' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'exchange' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'warranty' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'appropriate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3d4fd867-5ddb-50cf-8c82-79f126853823', id, '55cc15f3-b06a-5798-aba0-a1b6b12984cc', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'service provider' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
