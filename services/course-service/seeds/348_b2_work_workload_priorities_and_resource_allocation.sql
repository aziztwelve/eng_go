-- Track: B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('bc437b59-a4da-502b-b2a0-b47a2a8f439e', 'B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION', 'Рабочая нагрузка, приоритеты и распределение ресурсов', 'Развивайте профессиональное общение уровня B2 по теме «Рабочая нагрузка, приоритеты и распределение ресурсов», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Workload, Priorities and Resource Allocation","ru":"Рабочая нагрузка, приоритеты и распределение ресурсов"}'::jsonb, '{"en":"Develop B2 professional communication for workload, priorities and resource allocation by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Рабочая нагрузка, приоритеты и распределение ресурсов», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2413ffa1-c12a-573e-95de-339ab30cb4c1', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Assessing Competing Priorities","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8d44c4b-acbf-5ebe-947b-76775f5fd1d2', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D01","left":"competing priority","right":"конкурирующий приоритет"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D02","left":"resource constraint","right":"ограничение ресурсов"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D03","left":"capacity","right":"рабочая ёмкость"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D04","left":"business impact","right":"влияние на работу организации"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D05","left":"deprioritise","right":"понизить приоритет"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D06","left":"bottleneck","right":"узкое место"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D07","left":"renegotiate a deadline","right":"пересогласовать срок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1b3fec3a-86c1-5138-9b63-6f7193dda698', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D08","is_correct":true,"text":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c9d9173b-8aca-5d7b-8176-43fcc12d7fdc', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Когда конкурирующие приоритеты превышают возможности команды, задачи следует ранжировать по срочности, влиянию на работу и зависимостям, а не по заметности.","target_language":"en","word_bank":["When","competing","priorities","exceed","the","team’s","capacity",",","tasks","should","be","ranked","by","urgency",",","business","impact",",","and","dependency","rather","than","visibility","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d3b12b6-c292-5696-be7f-c5ceaca20bc5', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"competing priority","instruction":"Выберите подходящее слово.","options":["competing priority","business impact","bottleneck"],"sentence_template":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('163b42d1-163b-5bab-ac1a-c4fcef3fa9cd', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["When","competing","priorities","exceed","the","team’s","capacity",",","tasks","should","be","ranked","by","urgency",",","business","impact",",","and","dependency","rather","than","visibility","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","visibility","than","rather","dependency","and",",","impact","business",",","urgency","by","ranked","be","should","tasks",",","capacity","team’s","the","exceed","priorities","competing","When"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a0cdaa6-06b3-5c7f-bffd-57e413018f63', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('092580e9-d79a-53cf-afeb-921dd23aec25', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Когда конкурирующие приоритеты превышают возможности команды, задачи следует ранжировать по срочности, влиянию на работу и зависимостям, а не по заметности. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f528477d-406c-587d-9a25-6d4903f2cf1a', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility.","translation":"Когда конкурирующие приоритеты превышают возможности команды, задачи следует ранжировать по срочности, влиянию на работу и зависимостям, а не по заметности.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Assessing Competing Priorities"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('930a5778-53fa-57d2-b6a3-10b9f2c0a2a4', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“competing priority” means one of several urgent or important demands.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D11","is_correct":true,"text":"one of several urgent or important demands"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D12","is_correct":false,"text":"a shortage limiting what can be achieved"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D13","is_correct":false,"text":"the amount of work a person or team can manage"}],"word":"competing priority"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce94dbbc-a005-5957-9318-8b005f668eb2', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility.","explanation":"The missing professional expression is “competing priority”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"competing priority","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D14","is_correct":true},{"audio_text":"capacity","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D15","is_correct":false},{"audio_text":"deprioritise","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D16","is_correct":false}],"sentence_template":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('566889c3-075d-5484-8530-ef724370da77', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"competing priority","explanation":"The complete workplace statement uses “competing priority” precisely.","hint_prefix":"comp","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cbafefff-9ccf-5c62-bb0b-bbfe9a828ee2', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competing priority","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D17","text":"competing priority"},{"audio_text":"resource constraint","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D18","text":"resource constraint"},{"audio_text":"capacity","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D19","text":"capacity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('305cc073-030b-54c7-ac9a-87a3cc083efa', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Assessing Competing Priorities”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D20","is_correct":true,"text":"When competing priorities exceed the team’s capacity, tasks should be ranked by urgency, business impact, and dependency rather than visibility."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc437b59-a4da-502b-b2a0-b47a2a8f439e', '2413ffa1-c12a-573e-95de-339ab30cb4c1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('94c613a1-f652-55ad-ad94-d725f40b3b81', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Allocating Limited Resources","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2f6064b0-3dc6-55fe-b022-fa8eefbc64c8', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D01","left":"competing priority","right":"конкурирующий приоритет"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D02","left":"resource constraint","right":"ограничение ресурсов"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D03","left":"capacity","right":"рабочая ёмкость"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D04","left":"business impact","right":"влияние на работу организации"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D05","left":"deprioritise","right":"понизить приоритет"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D06","left":"bottleneck","right":"узкое место"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D07","left":"renegotiate a deadline","right":"пересогласовать срок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cda561b-7adb-5d0e-80ad-c66a7639a151', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D08","is_correct":true,"text":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('825b81e3-e693-55a3-ae65-7d233ec0fdc7', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Основным ограничением ресурсов является доступность специалистов, что создало узкое место в трёх в остальном независимых проектах.","target_language":"en","word_bank":["The","main","resource","constraint","is","specialist","availability",",","which","has","created","a","bottleneck","across","three","otherwise","independent","projects","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d36094f3-c566-5fe2-85ac-9ae04535f59d', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"resource constraint","instruction":"Выберите подходящее слово.","options":["resource constraint","deprioritise","renegotiate a deadline"],"sentence_template":"The main ___ is specialist availability, which has created a bottleneck across three otherwise independent projects."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef60ff1f-e44e-5a3a-8302-39b3de72c202', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","main","resource","constraint","is","specialist","availability",",","which","has","created","a","bottleneck","across","three","otherwise","independent","projects","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","projects","independent","otherwise","three","across","bottleneck","a","created","has","which",",","availability","specialist","is","constraint","resource","main","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('15722ced-2321-5876-9ec5-c369e285bc92', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0cf777fc-7f46-5355-9fb7-18e92e9c9e68', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Основным ограничением ресурсов является доступность специалистов, что создало узкое место в трёх в остальном независимых проектах. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90f76d13-0064-50e7-91ff-c8d28687a0c8', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects.","translation":"Основным ограничением ресурсов является доступность специалистов, что создало узкое место в трёх в остальном независимых проектах.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Allocating Limited Resources"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('87a11d5c-758c-5134-a1c4-cab378f484fe', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“resource constraint” means a shortage limiting what can be achieved.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D11","is_correct":true,"text":"a shortage limiting what can be achieved"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D12","is_correct":false,"text":"the amount of work a person or team can manage"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D13","is_correct":false,"text":"the effect on organisational goals or operations"}],"word":"resource constraint"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6f7ced52-5456-5fcb-b8f6-c459974cb5c3', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects.","explanation":"The missing professional expression is “resource constraint”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"resource constraint","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D14","is_correct":true},{"audio_text":"business impact","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D15","is_correct":false},{"audio_text":"bottleneck","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D16","is_correct":false}],"sentence_template":"The main ___ is specialist availability, which has created a bottleneck across three otherwise independent projects."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2793a1c4-cae3-57e9-893a-82c0804464f6', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"resource constraint","explanation":"The complete workplace statement uses “resource constraint” precisely.","hint_prefix":"reso","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The main ___ is specialist availability, which has created a bottleneck across three otherwise independent projects."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ed6603d4-20ba-5443-b2cd-78d99e3feb42', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competing priority","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D17","text":"competing priority"},{"audio_text":"resource constraint","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D18","text":"resource constraint"},{"audio_text":"capacity","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D19","text":"capacity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f8a0914d-3fd2-555a-b1d0-5b0ac1062a5b', '94c613a1-f652-55ad-ad94-d725f40b3b81', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Allocating Limited Resources”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D20","is_correct":true,"text":"The main resource constraint is specialist availability, which has created a bottleneck across three otherwise independent projects."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc437b59-a4da-502b-b2a0-b47a2a8f439e', '94c613a1-f652-55ad-ad94-d725f40b3b81', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9a001b2d-bbbb-55dc-93d7-fae078e7e98a', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Renegotiating Workload","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a77ed7d1-d9bf-5c31-b855-876026f6927e', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D01","left":"competing priority","right":"конкурирующий приоритет"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D02","left":"resource constraint","right":"ограничение ресурсов"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D03","left":"capacity","right":"рабочая ёмкость"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D04","left":"business impact","right":"влияние на работу организации"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D05","left":"deprioritise","right":"понизить приоритет"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D06","left":"bottleneck","right":"узкое место"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D07","left":"renegotiate a deadline","right":"пересогласовать срок"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3a46653-4d3e-5dcf-b02a-5122c46b2914', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D08","is_correct":true,"text":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc6d3ddd-1674-5bf6-9a34-4d88f91399b2', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Вместо принятия нереалистичной нагрузки нам следует понизить приоритет менее ценной работы или пересогласовать срок с соответствующими заинтересованными сторонами.","target_language":"en","word_bank":["Instead","of","accepting","an","unrealistic","workload",",","we","should","deprioritise","lower-value","work","or","renegotiate","a","deadline","with","the","relevant","stakeholders","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('04aa8033-f55e-5968-8f3b-c1815f3f224f', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"capacity","instruction":"Выберите подходящее слово.","options":["capacity","bottleneck","competing priority"],"sentence_template":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fa43f18-3d56-5036-8ab1-ffca2e4f0727', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Instead","of","accepting","an","unrealistic","workload",",","we","should","deprioritise","lower-value","work","or","renegotiate","a","deadline","with","the","relevant","stakeholders","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","stakeholders","relevant","the","with","deadline","a","renegotiate","or","work","lower-value","deprioritise","should","we",",","workload","unrealistic","an","accepting","of","Instead"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4a46baa8-e780-5040-b836-e956b6a6b0c7', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('68419cb1-470e-5d61-b61c-83f68c74a83e', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Вместо принятия нереалистичной нагрузки нам следует понизить приоритет менее ценной работы или пересогласовать срок с соответствующими заинтересованными сторонами. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e6de85f1-9983-5e3a-bad4-3fd4f693281c', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders.","translation":"Вместо принятия нереалистичной нагрузки нам следует понизить приоритет менее ценной работы или пересогласовать срок с соответствующими заинтересованными сторонами.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Renegotiating Workload"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd8e9a14-cb11-553f-9b57-ccdb1d778f39', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“capacity” means the amount of work a person or team can manage.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D11","is_correct":true,"text":"the amount of work a person or team can manage"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D12","is_correct":false,"text":"the effect on organisational goals or operations"},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D13","is_correct":false,"text":"give a task less immediate importance"}],"word":"capacity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('746ca4f6-c446-5979-8631-67757a9e4089', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders.","explanation":"The missing professional expression is “capacity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"capacity","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D14","is_correct":true},{"audio_text":"deprioritise","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D15","is_correct":false},{"audio_text":"renegotiate a deadline","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D16","is_correct":false}],"sentence_template":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05b3ed19-520f-5c8c-98a9-3e92b12f6cf8', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"capacity","explanation":"The complete workplace statement uses “capacity” precisely.","hint_prefix":"capa","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfea378b-f0e2-5405-b4ae-31b2d5072024', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"competing priority","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D17","text":"competing priority"},{"audio_text":"resource constraint","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D18","text":"resource constraint"},{"audio_text":"capacity","id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D19","text":"capacity"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8142ce56-c44c-50cd-bf55-9ba0422656fb', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Renegotiating Workload”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D20","is_correct":true,"text":"Instead of accepting an unrealistic workload, we should deprioritise lower-value work or renegotiate a deadline with the relevant stakeholders."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_WORKLOAD_PRIORITIES_AND_RESOURCE_ALLOCATION_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('bc437b59-a4da-502b-b2a0-b47a2a8f439e', '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09cd624-fc8c-5acf-9754-9bb57bea956b', 'en', 'competing priority', 'конкурирующий приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c18f7c5a-7d44-5786-ac9d-5ea6c96eb2e7', 'en', 'resource constraint', 'ограничение ресурсов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb989026-0d95-5265-b124-a60447d7f83c', 'en', 'capacity', 'рабочая ёмкость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27929871-f0ec-5f57-8eda-e381313263b7', 'en', 'business impact', 'влияние на работу организации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6a2d20a-5c3e-5085-b0dd-8e3f5a310c8c', 'en', 'deprioritise', 'понизить приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a19c21b7-3fb0-5eb1-8e2f-679a450dceff', 'en', 'bottleneck', 'узкое место', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f19ba4d-8ca5-5d34-8771-22a3d6fb230c', 'en', 'renegotiate a deadline', 'пересогласовать срок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09cd624-fc8c-5acf-9754-9bb57bea956b', 'en', 'competing priority', 'конкурирующий приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c18f7c5a-7d44-5786-ac9d-5ea6c96eb2e7', 'en', 'resource constraint', 'ограничение ресурсов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb989026-0d95-5265-b124-a60447d7f83c', 'en', 'capacity', 'рабочая ёмкость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27929871-f0ec-5f57-8eda-e381313263b7', 'en', 'business impact', 'влияние на работу организации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6a2d20a-5c3e-5085-b0dd-8e3f5a310c8c', 'en', 'deprioritise', 'понизить приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a19c21b7-3fb0-5eb1-8e2f-679a450dceff', 'en', 'bottleneck', 'узкое место', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f19ba4d-8ca5-5d34-8771-22a3d6fb230c', 'en', 'renegotiate a deadline', 'пересогласовать срок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b09cd624-fc8c-5acf-9754-9bb57bea956b', 'en', 'competing priority', 'конкурирующий приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c18f7c5a-7d44-5786-ac9d-5ea6c96eb2e7', 'en', 'resource constraint', 'ограничение ресурсов', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('eb989026-0d95-5265-b124-a60447d7f83c', 'en', 'capacity', 'рабочая ёмкость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('27929871-f0ec-5f57-8eda-e381313263b7', 'en', 'business impact', 'влияние на работу организации', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d6a2d20a-5c3e-5085-b0dd-8e3f5a310c8c', 'en', 'deprioritise', 'понизить приоритет', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a19c21b7-3fb0-5eb1-8e2f-679a450dceff', 'en', 'bottleneck', 'узкое место', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1f19ba4d-8ca5-5d34-8771-22a3d6fb230c', 'en', 'renegotiate a deadline', 'пересогласовать срок', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'resource constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'business impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'deprioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'bottleneck' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '2413ffa1-c12a-573e-95de-339ab30cb4c1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'renegotiate a deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'resource constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'business impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'deprioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'bottleneck' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '94c613a1-f652-55ad-ad94-d725f40b3b81', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'renegotiate a deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'competing priority' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'resource constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'capacity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'business impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'deprioritise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'bottleneck' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'bc437b59-a4da-502b-b2a0-b47a2a8f439e', id, '9a001b2d-bbbb-55dc-93d7-fae078e7e98a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'renegotiate a deadline' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
