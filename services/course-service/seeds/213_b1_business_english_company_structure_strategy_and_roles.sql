-- Track: B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('251c3409-65de-571b-9619-fe8b2e774270', 'B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES', 'Структура компании, стратегия и роли', 'Развивайте деловой английский уровня B1 по теме «Структура компании, стратегия и роли».', '{"en":"Company Structure, Strategy and Roles","ru":"Структура компании, стратегия и роли"}'::jsonb, '{"en":"Develop B1 business English for company structure, strategy and roles.","ru":"Развивайте деловой английский уровня B1 по теме «Структура компании, стратегия и роли»."}'::jsonb, 'en', 'B1', '', ARRAY['business_english']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', NULL, 'Деловой контекст', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Company Structure","ru":"Деловой контекст"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('80d0a842-9f5f-55da-8c9d-030b3b853390', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B01","left":"head office","right":"головной офис"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B02","left":"department","right":"отдел"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B03","left":"report to","right":"подчиняться"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B04","left":"responsibility","right":"обязанность"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B05","left":"business objective","right":"бизнес-цель"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B06","left":"expand","right":"расширять"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B07","left":"market","right":"рынок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47d92ef3-c8a2-55ed-9630-e809a6aca0f3', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B08","is_correct":true,"text":"Our department reports to the head office, although local managers make most operational decisions."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d89e705-c872-5529-9d98-2c5cc51f8ef5', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Our department reports to the head office, although local managers make most operational decisions.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Наш отдел подчиняется головному офису, хотя местные менеджеры принимают большинство операционных решений.","target_language":"en","word_bank":["Our","department","reports","to","the","head","office,","although","local","managers","make","most","operational","decisions."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a064d90a-62b1-5982-a3df-f3ab9504c168', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"head office","instruction":"Выберите подходящее слово.","options":["head office","responsibility","expand"],"sentence_template":"Our department reports to the ___, although local managers make most operational decisions."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('273c5002-a613-54a7-8d8c-af61025676eb', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Our","department","reports","to","the","head","office,","although","local","managers","make","most","operational","decisions."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["decisions.","operational","most","make","managers","local","although","office,","head","the","to","reports","department","Our"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('70df89c8-51ab-517a-a967-ac5ff49dc16e', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Our department reports to the head office, although local managers make most operational decisions. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1bfd366b-343a-57e7-9a47-8978774939a5', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Our department reports to the head office, although local managers make most operational decisions. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Наш отдел подчиняется головному офису, хотя местные менеджеры принимают большинство операционных решений. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef99a278-7ddb-5eca-9724-665143008697', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Our department reports to the head office, although local managers make most operational decisions.","translation":"Наш отдел подчиняется головному офису, хотя местные менеджеры принимают большинство операционных решений.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Company Structure"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0bd21d17-b386-56f2-827c-1f1429ae1c23', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“head office” means the main office of a company.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B11","is_correct":true,"text":"the main office of a company"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B12","is_correct":false,"text":"a specialised division of an organisation"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B13","is_correct":false,"text":"be managed by a particular person"}],"word":"head office"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aa65e534-bb8a-58e7-af04-2a9a99605a00', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Our department reports to the head office, although local managers make most operational decisions.","explanation":"The missing business expression is “head office”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"head office","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B14","is_correct":true},{"audio_text":"report to","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B15","is_correct":false},{"audio_text":"business objective","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B16","is_correct":false}],"sentence_template":"Our department reports to the ___, although local managers make most operational decisions."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2a0c2618-8c8d-5971-ad5a-a4a407b303bf', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"head office","explanation":"The sentence requires “head office” to express the intended business meaning.","hint_prefix":"hea","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Our department reports to the ___, although local managers make most operational decisions."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca961fbb-f5c3-5178-b037-f4cf282d017e', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"head office","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B17","text":"head office"},{"audio_text":"department","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B18","text":"department"},{"audio_text":"report to","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B19","text":"report to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c1df7906-3b7c-57d3-82d1-025dea22a3b6', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Company Structure”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B20","is_correct":true,"text":"Our department reports to the head office, although local managers make most operational decisions."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L1_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('251c3409-65de-571b-9619-fe8b2e774270', '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b4c6abaf-d544-5e7a-8150-51e18cf048eb', NULL, 'Обсуждение и уточнение', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Business Activities and Goals","ru":"Обсуждение и уточнение"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fe0cfb0-e8b9-5c8c-b46c-d5d55841ab77', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B01","left":"head office","right":"головной офис"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B02","left":"department","right":"отдел"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B03","left":"report to","right":"подчиняться"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B04","left":"responsibility","right":"обязанность"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B05","left":"business objective","right":"бизнес-цель"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B06","left":"expand","right":"расширять"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B07","left":"market","right":"рынок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3275f0ff-db1d-5356-8611-991c112eedc1', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B08","is_correct":true,"text":"Each team has a different responsibility, but everyone contributes to the same business objective."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e36fd15b-89d7-5517-8c59-bf9c07f6ba32', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Each team has a different responsibility, but everyone contributes to the same business objective.","instruction":"Соберите перевод.","source_language":"ru","source_text":"У каждой команды своя обязанность, но все вносят вклад в одну бизнес-цель.","target_language":"en","word_bank":["Each","team","has","a","different","responsibility,","but","everyone","contributes","to","the","same","business","objective."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2afe08e9-1b16-554b-b2cc-1362f4245e21', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"department","instruction":"Выберите подходящее слово.","options":["department","business objective","market"],"sentence_template":"Each team has a different responsibility, but everyone contributes to the same business objective."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c122b6a1-373c-591b-af0a-0f70e3ead5a1', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Each","team","has","a","different","responsibility,","but","everyone","contributes","to","the","same","business","objective."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["objective.","business","same","the","to","contributes","everyone","but","responsibility,","different","a","has","team","Each"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a7ccc88a-752c-5ba8-8413-e092904d9779', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Each team has a different responsibility, but everyone contributes to the same business objective. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d7b84d73-8d7c-5a31-b7ab-21f282a289f6', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Each team has a different responsibility, but everyone contributes to the same business objective. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"У каждой команды своя обязанность, но все вносят вклад в одну бизнес-цель. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2006faa-a2fc-5e39-b1a4-71242702f8fa', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"Each team has a different responsibility, but everyone contributes to the same business objective.","translation":"У каждой команды своя обязанность, но все вносят вклад в одну бизнес-цель.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Business Activities and Goals"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0327c689-efb2-58e0-a6d8-519f3676b61d', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“department” means a specialised division of an organisation.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B11","is_correct":true,"text":"a specialised division of an organisation"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B12","is_correct":false,"text":"be managed by a particular person"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B13","is_correct":false,"text":"a duty someone must manage"}],"word":"department"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da704e45-72d7-501f-bd87-e56d017262a4', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Each team has a different responsibility, but everyone contributes to the same business objective.","explanation":"The missing business expression is “department”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"department","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B14","is_correct":true},{"audio_text":"responsibility","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B15","is_correct":false},{"audio_text":"expand","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B16","is_correct":false}],"sentence_template":"Each team has a different responsibility, but everyone contributes to the same business objective."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7d33d168-42c4-5f60-880e-a916b427b165', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"department","explanation":"The sentence requires “department” to express the intended business meaning.","hint_prefix":"dep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Each team has a different responsibility, but everyone contributes to the same business objective."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59289ee7-69f2-5ca9-bd2d-01175b8ed79d', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"head office","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B17","text":"head office"},{"audio_text":"department","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B18","text":"department"},{"audio_text":"report to","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B19","text":"report to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0aabbe49-1694-5c5d-9cef-c15c5165a952', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Business Activities and Goals”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B20","is_correct":true,"text":"Each team has a different responsibility, but everyone contributes to the same business objective."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L2_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('251c3409-65de-571b-9619-fe8b2e774270', 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('b74f2548-c7ba-5909-9e8e-d87702ec42b4', NULL, 'Решение и дальнейшие действия', 'Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий.', '{"en":"Roles Across Departments","ru":"Решение и дальнейшие действия"}'::jsonb, '{"en":"Use B1 business English to exchange information clearly, explain reasons, and agree actions.","ru":"Использовать деловой английский уровня B1 для ясного обмена информацией, объяснения причин и согласования действий."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8daa4c8-eebe-5671-be69-5eeeb5365507', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B01","left":"head office","right":"головной офис"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B02","left":"department","right":"отдел"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B03","left":"report to","right":"подчиняться"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B04","left":"responsibility","right":"обязанность"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B05","left":"business objective","right":"бизнес-цель"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B06","left":"expand","right":"расширять"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B07","left":"market","right":"рынок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('251e652e-1944-5374-ae90-e25d1a8b4fc0', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct answer communicates a clear business point and connects information with its purpose or consequence.","instruction":"Выберите правильный ответ.","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B08","is_correct":true,"text":"The company plans to expand into a new market after testing demand for its services."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B09","is_correct":false,"text":"The details are unimportant and no action needs to be agreed."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B10","is_correct":false,"text":"The message should avoid explaining its purpose."}],"question":"Which response communicates the business point most effectively?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a3857e3a-acbf-58f7-8182-bd5daca0d902', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The company plans to expand into a new market after testing demand for its services.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Компания планирует выйти на новый рынок после проверки спроса на свои услуги.","target_language":"en","word_bank":["The","company","plans","to","expand","into","a","new","market","after","testing","demand","for","its","services."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76db67f9-af1d-510b-9d4a-47b646b6ca31', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"report to","instruction":"Выберите подходящее слово.","options":["report to","expand","head office"],"sentence_template":"The company plans to expand into a new market after testing demand for its services."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f9685be-b457-56df-ba7c-7fee34905e59', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","company","plans","to","expand","into","a","new","market","after","testing","demand","for","its","services."],"instruction":"Расставьте слова в правильном порядке.","word_bank":["services.","its","for","demand","testing","after","market","new","a","into","expand","to","plans","company","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('eb795ff8-10fd-550e-922e-b66e76ddb01c', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The company plans to expand into a new market after testing demand for its services. The relevant people will review the information and confirm the agreed action in writing.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78d7addb-b9c3-5fb0-90a3-400e20abc1ff', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The company plans to expand into a new market after testing demand for its services. The relevant people will review the information and confirm the agreed action in writing. Notice the polite emphasis and linking between the reason and the action, then repeat the full message.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.76,"translation_hint":"Компания планирует выйти на новый рынок после проверки спроса на свои услуги. Соответствующие сотрудники рассмотрят информацию и письменно подтвердят согласованное действие. Обратите внимание на вежливое выделение и связь между причиной и действием, затем повторите всё сообщение."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('85b4af5b-ba10-5438-bd26-df0f7f706775', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Could you explain the situation and confirm what happens next?","translation":"Не могли бы вы объяснить ситуацию и подтвердить, что произойдёт дальше?","type":"dialogue"},{"character":"Employee","text":"The company plans to expand into a new market after testing demand for its services.","translation":"Компания планирует выйти на новый рынок после проверки спроса на свои услуги.","type":"dialogue"},{"options":[{"is_correct":true,"text":"I will summarise the decision and confirm the responsible person and deadline."},{"is_correct":false,"text":"There is no need to record the decision or assign responsibility."}],"text":"Which response continues professionally?","type":"choice"}],"title":"Roles Across Departments"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03700ca7-a601-55f1-8118-1999a9dff04e', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“report to” means be managed by a particular person.","instruction":"Выберите значение.","language":"en","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B11","is_correct":true,"text":"be managed by a particular person"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B12","is_correct":false,"text":"a duty someone must manage"},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B13","is_correct":false,"text":"a result a company aims to achieve"}],"word":"report to"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2915272c-8465-518b-b1b0-a2e51bb6880a', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The company plans to expand into a new market after testing demand for its services.","explanation":"The missing business expression is “report to”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"report to","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B14","is_correct":true},{"audio_text":"business objective","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B15","is_correct":false},{"audio_text":"market","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B16","is_correct":false}],"sentence_template":"The company plans to expand into a new market after testing demand for its services."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9832c592-ee28-5a71-804f-6ad6170125b5', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"report to","explanation":"The sentence requires “report to” to express the intended business meaning.","hint_prefix":"rep","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The company plans to expand into a new market after testing demand for its services."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cdef35b2-0a89-50c7-9ef0-195bddce9fa9', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B1 business expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"head office","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B17","text":"head office"},{"audio_text":"department","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B18","text":"department"},{"audio_text":"report to","id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B19","text":"report to"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3aba4d2a-9caa-5853-ad7e-3c3bd72fbe58', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Colleague","text":"How should we handle “Roles Across Departments”?"}],"explanation":"The correct response is relevant, professional, and connects the business information to an action or result.","instruction":"Ответьте.","options":[{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B20","is_correct":true,"text":"The company plans to expand into a new market after testing demand for its services."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B21","is_correct":false,"text":"We should avoid discussing the facts or agreeing any action."},{"id":"B1_BUSINESS_ENGLISH_COMPANY_STRUCTURE_STRATEGY_AND_ROLES_L3_B22","is_correct":false,"text":"I will respond with information unrelated to the business situation."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('251c3409-65de-571b-9619-fe8b2e774270', 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2175f575-5ba9-5c8b-a9ba-3d19c3c9ebb6', 'en', 'head office', 'головной офис', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95b6b96c-2c70-5179-b6c9-1c218c84eb34', 'en', 'department', 'отдел', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6937ba91-28b2-5770-803c-8be956d5694b', 'en', 'report to', 'подчиняться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('029d99d2-db9e-5f9e-acb6-9b0ca4482194', 'en', 'business objective', 'бизнес-цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec8a7a91-a3dd-5e78-9845-08eae338e28e', 'en', 'expand', 'расширять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('549c6b96-2a2f-5cd8-84a4-e21cc897e522', 'en', 'market', 'рынок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2175f575-5ba9-5c8b-a9ba-3d19c3c9ebb6', 'en', 'head office', 'головной офис', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95b6b96c-2c70-5179-b6c9-1c218c84eb34', 'en', 'department', 'отдел', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6937ba91-28b2-5770-803c-8be956d5694b', 'en', 'report to', 'подчиняться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('029d99d2-db9e-5f9e-acb6-9b0ca4482194', 'en', 'business objective', 'бизнес-цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec8a7a91-a3dd-5e78-9845-08eae338e28e', 'en', 'expand', 'расширять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('549c6b96-2a2f-5cd8-84a4-e21cc897e522', 'en', 'market', 'рынок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2175f575-5ba9-5c8b-a9ba-3d19c3c9ebb6', 'en', 'head office', 'головной офис', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('95b6b96c-2c70-5179-b6c9-1c218c84eb34', 'en', 'department', 'отдел', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6937ba91-28b2-5770-803c-8be956d5694b', 'en', 'report to', 'подчиняться', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('bd39b0e0-d1f0-5aa4-bffa-b531cb19aec1', 'en', 'responsibility', 'обязанность', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('029d99d2-db9e-5f9e-acb6-9b0ca4482194', 'en', 'business objective', 'бизнес-цель', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ec8a7a91-a3dd-5e78-9845-08eae338e28e', 'en', 'expand', 'расширять', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('549c6b96-2a2f-5cd8-84a4-e21cc897e522', 'en', 'market', 'рынок', 'ru', 'B1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'head office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'department' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'report to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'business objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'expand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, '388dc179-82b3-52b1-8f9b-0e3f0a06e7b3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'market' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'head office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'department' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'report to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'business objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'expand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b4c6abaf-d544-5e7a-8150-51e18cf048eb', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'market' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'head office' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'department' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'report to' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'responsibility' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'business objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'expand' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '251c3409-65de-571b-9619-fe8b2e774270', id, 'b74f2548-c7ba-5909-9e8e-d87702ec42b4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'market' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
