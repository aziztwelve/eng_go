-- Track: C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e0307006-b9bc-56e5-90aa-6325d527eef8', 'C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY', 'Межфункциональное лидерство и реализация проектов', 'Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Межфункциональное лидерство и реализация проектов» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия.', '{"en":"Cross-Functional Leadership and Project Delivery","ru":"Межфункциональное лидерство и реализация проектов"}'::jsonb, '{"en":"Develop advanced C1 professional communication for cross-functional leadership and project delivery through realistic situations requiring precision, accountability, and interdisciplinary coordination.","ru":"Развивайте продвинутую профессиональную коммуникацию уровня C1 по теме «Межфункциональное лидерство и реализация проектов» в реалистичных ситуациях, требующих точности, ответственности и междисциплинарного взаимодействия."}'::jsonb, 'en', 'C1', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('8eca38db-297b-5381-b17c-ed051f3d9a9b', NULL, 'Специализированный контекст', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Aligning Specialist Teams","ru":"Специализированный контекст"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31f17d7a-3dd5-594e-8fa2-1ba43cce9e97', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D01","left":"governance framework","right":"структура управления"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D02","left":"cross-functional dependency","right":"межфункциональная зависимость"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D03","left":"decision right","right":"право принятия решения"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D04","left":"delivery constraint","right":"ограничение реализации"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D05","left":"escalation threshold","right":"порог эскалации"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D06","left":"benefit realisation","right":"реализация выгод"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D07","left":"executive sponsor","right":"куратор проекта"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bbc98d63-1957-5e68-b414-0c5f9fb8dde3', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D08","is_correct":true,"text":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('095a9db1-6a1e-5720-b8d1-f1e3c292eb4d', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Структура управления должна уточнять права принятия решений, чтобы межфункциональные зависимости не превращались в споры о полномочиях.","target_language":"en","word_bank":["The","governance","framework","must","clarify","decision","rights","so","that","cross-functional","dependencies","do","not","become","disputes","over","authority","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9fc580f1-44a0-5e27-bd3a-09d2663f3baa', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"governance framework","instruction":"Выберите подходящее слово.","options":["governance framework","delivery constraint","benefit realisation"],"sentence_template":"The ___ must clarify decision rights so that cross-functional dependencies do not become disputes over authority."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b1b1bd50-e058-512d-a76e-d20c4d070bf5', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","governance","framework","must","clarify","decision","rights","so","that","cross-functional","dependencies","do","not","become","disputes","over","authority","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","authority","over","disputes","become","not","do","dependencies","cross-functional","that","so","rights","decision","clarify","must","framework","governance","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('962bdcc0-3153-5fb1-8fa0-0ccf957b9cea', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('86cfc55e-f805-5689-b7b9-49b9e22cdb50', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Структура управления должна уточнять права принятия решений, чтобы межфункциональные зависимости не превращались в споры о полномочиях. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7690a6b5-ad50-5b43-a40a-1949ef031c15', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority.","translation":"Структура управления должна уточнять права принятия решений, чтобы межфункциональные зависимости не превращались в споры о полномочиях.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Aligning Specialist Teams"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d64c83af-112b-5133-823b-e57f25a27d09', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“governance framework” means the system defining authority, oversight, and accountability.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D11","is_correct":true,"text":"the system defining authority, oversight, and accountability"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D12","is_correct":false,"text":"a required input shared across specialist teams"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D13","is_correct":false,"text":"formally assigned authority to make a choice"}],"word":"governance framework"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2941921-34fe-5530-acc0-6b79b13febbf', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority.","explanation":"The missing professional term is “governance framework”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"governance framework","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D14","is_correct":true},{"audio_text":"decision right","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D15","is_correct":false},{"audio_text":"escalation threshold","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D16","is_correct":false}],"sentence_template":"The ___ must clarify decision rights so that cross-functional dependencies do not become disputes over authority."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3fd19bf8-31a7-531c-8f10-564a5fad8351', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"governance framework","explanation":"The complete professional statement uses “governance framework” precisely.","hint_prefix":"gove","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ must clarify decision rights so that cross-functional dependencies do not become disputes over authority."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a62cd1e4-ef73-52ad-a500-0daef5973e26', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"governance framework","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D17","text":"governance framework"},{"audio_text":"cross-functional dependency","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D18","text":"cross-functional dependency"},{"audio_text":"decision right","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D19","text":"decision right"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b6ff8b2-c002-582f-939c-a465ce1acec8', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Aligning Specialist Teams”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D20","is_correct":true,"text":"The governance framework must clarify decision rights so that cross-functional dependencies do not become disputes over authority."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L1_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e0307006-b9bc-56e5-90aa-6325d527eef8', '8eca38db-297b-5381-b17c-ed051f3d9a9b', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('ed5287b3-152b-5e77-af67-bf7df0be8050', NULL, 'Профессиональное решение и взаимодействие', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Resolving Delivery Trade-Offs","ru":"Профессиональное решение и взаимодействие"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2d652c9e-d7da-58b7-9649-f2ff0bfb710b', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D01","left":"governance framework","right":"структура управления"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D02","left":"cross-functional dependency","right":"межфункциональная зависимость"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D03","left":"decision right","right":"право принятия решения"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D04","left":"delivery constraint","right":"ограничение реализации"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D05","left":"escalation threshold","right":"порог эскалации"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D06","left":"benefit realisation","right":"реализация выгод"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D07","left":"executive sponsor","right":"куратор проекта"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('88e7d28b-384c-53b3-a1e2-f2188fa792f8', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D08","is_correct":true,"text":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('97538c4d-17ec-5324-bc85-62eac907ce18', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Ограничение реализации вынуждает выбирать между объёмом и сроками, что теперь превышает согласованный порог эскалации.","target_language":"en","word_bank":["The","delivery","constraint","forces","a","trade-off","between","scope","and","timing",",","which","now","exceeds","the","agreed","escalation","threshold","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bb650912-a07a-5bbb-8e01-6adc6e99bb51', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"cross-functional dependency","instruction":"Выберите подходящее слово.","options":["cross-functional dependency","escalation threshold","executive sponsor"],"sentence_template":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bc003815-4c6d-5f87-bebe-925be665bac7', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","delivery","constraint","forces","a","trade-off","between","scope","and","timing",",","which","now","exceeds","the","agreed","escalation","threshold","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","threshold","escalation","agreed","the","exceeds","now","which",",","timing","and","scope","between","trade-off","a","forces","constraint","delivery","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90ae7aa6-40d8-54c4-a65b-c545b7ff7098', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('96ebc229-6368-5b19-bfc8-671d2854dd4f', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Ограничение реализации вынуждает выбирать между объёмом и сроками, что теперь превышает согласованный порог эскалации. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3aee2247-84a5-5d42-87ba-9ba77f58ac29', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold.","translation":"Ограничение реализации вынуждает выбирать между объёмом и сроками, что теперь превышает согласованный порог эскалации.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Resolving Delivery Trade-Offs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30093fff-e039-5945-b599-1b0a91de1a61', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“cross-functional dependency” means a required input shared across specialist teams.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D11","is_correct":true,"text":"a required input shared across specialist teams"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D12","is_correct":false,"text":"formally assigned authority to make a choice"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D13","is_correct":false,"text":"a factor limiting time, scope, cost, or quality"}],"word":"cross-functional dependency"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4fc09e4b-d7c7-5681-8cc2-e9cda9f93fd0', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold.","explanation":"The missing professional term is “cross-functional dependency”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"cross-functional dependency","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D14","is_correct":true},{"audio_text":"delivery constraint","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D15","is_correct":false},{"audio_text":"benefit realisation","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D16","is_correct":false}],"sentence_template":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc355121-668a-59eb-8294-4fa2a28deee5', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"cross-functional dependency","explanation":"The complete professional statement uses “cross-functional dependency” precisely.","hint_prefix":"cros","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bb37fbc-dfd0-5b58-9ada-4110a046f9c4', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"governance framework","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D17","text":"governance framework"},{"audio_text":"cross-functional dependency","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D18","text":"cross-functional dependency"},{"audio_text":"decision right","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D19","text":"decision right"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef87685b-5d58-59c2-9f17-f721e824b6f6', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Resolving Delivery Trade-Offs”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D20","is_correct":true,"text":"The delivery constraint forces a trade-off between scope and timing, which now exceeds the agreed escalation threshold."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L2_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e0307006-b9bc-56e5-90aa-6325d527eef8', 'ed5287b3-152b-5e77-af67-bf7df0be8050', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bc948d13-518e-596a-afe0-6ccd136250ae', NULL, 'Ответственность и последующие действия', 'Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность.', '{"en":"Governing Project Outcomes","ru":"Ответственность и последующие действия"}'::jsonb, '{"en":"Handle a complex C1 professional task confidently by using sector-specific terminology precisely, evaluating risk, and establishing clear accountability.","ru":"Уверенно выполнять сложную профессиональную задачу уровня C1, точно используя отраслевую терминологию, оценивая риски и ясно распределяя ответственность."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c8ec42a-8eb2-5833-97f2-3f3fe08eb74a', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D01","left":"governance framework","right":"структура управления"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D02","left":"cross-functional dependency","right":"межфункциональная зависимость"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D03","left":"decision right","right":"право принятия решения"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D04","left":"delivery constraint","right":"ограничение реализации"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D05","left":"escalation threshold","right":"порог эскалации"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D06","left":"benefit realisation","right":"реализация выгод"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D07","left":"executive sponsor","right":"куратор проекта"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('303aa111-12aa-558e-8ba7-7d2493ff34a1', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise C1 professional language and aligns action with evidence, standards, risk, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D08","is_correct":true,"text":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D09","is_correct":false,"text":"Specialist standards can be ignored whenever a faster informal solution is available."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D10","is_correct":false,"text":"Responsibility should remain undocumented so that no individual or team can be held accountable."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ecc23d0-224a-5375-927b-76f57e607625', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Куратор проекта остаётся ответственным за реализацию выгод даже после передачи операционной ответственности постоянным командам.","target_language":"en","word_bank":["The","executive","sponsor","remains","accountable","for","benefit","realisation","even","after","operational","responsibility","transfers","to","the","permanent","teams","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ea93280d-69ad-5322-b4f1-5457325b911a', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"decision right","instruction":"Выберите подходящее слово.","options":["decision right","benefit realisation","governance framework"],"sentence_template":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4d7f41e8-4928-5221-b094-85d470d5bc0f', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","executive","sponsor","remains","accountable","for","benefit","realisation","even","after","operational","responsibility","transfers","to","the","permanent","teams","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","teams","permanent","the","to","transfers","responsibility","operational","after","even","realisation","benefit","for","accountable","remains","sponsor","executive","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7bc4a2db-6364-5295-9dce-e1dd2a856ccf', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7d327dc-d5c3-5ce2-b283-b5a142d867af', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams. The immediate response must remain proportionate to the evidence while preserving safety, professional accountability, and a reliable record of the decision. Where uncertainty remains, the decision-maker should state its limits explicitly and define the threshold for specialist review or escalation.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.86,"translation_hint":"Куратор проекта остаётся ответственным за реализацию выгод даже после передачи операционной ответственности постоянным командам. Немедленная реакция должна быть соразмерна доказательствам, сохраняя безопасность, профессиональную ответственность и надёжную фиксацию решения. При сохранении неопределённости лицо, принимающее решение, должно прямо обозначить её пределы и определить порог для проверки специалистом или эскалации."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('268e6088-f8dd-5b70-89d4-c1db23614fcd', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Specialist","text":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams.","translation":"Куратор проекта остаётся ответственным за реализацию выгод даже после передачи операционной ответственности постоянным командам.","type":"dialogue"},{"character":"Colleague","text":"What professional standard, risk, or uncertainty should govern the next decision?","translation":"Какой профессиональный стандарт, риск или неопределённость должны определять следующее решение?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should state the evidential limits, follow the relevant standard, and assign accountable ownership for review and escalation."},{"is_correct":false,"text":"We should bypass the standard, avoid documenting uncertainty, and decide without specialist input."}],"text":"Which response advances the professional discussion?","type":"choice"}],"title":"Governing Project Outcomes"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fe83cdf-66e3-5d90-98f5-762e868d83b3', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“decision right” means formally assigned authority to make a choice.","instruction":"Выберите значение.","language":"en","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D11","is_correct":true,"text":"formally assigned authority to make a choice"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D12","is_correct":false,"text":"a factor limiting time, scope, cost, or quality"},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D13","is_correct":false,"text":"the point at which an issue must be raised"}],"word":"decision right"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b40a816-f46a-5e60-8c3f-1fd9d3861aac', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams.","explanation":"The missing professional term is “decision right”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"decision right","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D14","is_correct":true},{"audio_text":"escalation threshold","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D15","is_correct":false},{"audio_text":"executive sponsor","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D16","is_correct":false}],"sentence_template":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7183b5c-69df-53af-b79d-74f5903a5635', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"decision right","explanation":"The complete professional statement uses “decision right” precisely.","hint_prefix":"deci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('42cc7088-2ebb-5f89-8214-f478aec694cc', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each specialist C1 term you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"governance framework","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D17","text":"governance framework"},{"audio_text":"cross-functional dependency","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D18","text":"cross-functional dependency"},{"audio_text":"decision right","id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D19","text":"decision right"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7bc8794-7c15-5431-a4b5-2205c4e270f4', 'bc948d13-518e-596a-afe0-6ccd136250ae', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Senior professional","text":"What action would you recommend for “Governing Project Outcomes”?"}],"explanation":"The correct response demonstrates advanced C1 workplace judgement through specialist precision, risk awareness, and accountable action.","instruction":"Ответьте.","options":[{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D20","is_correct":true,"text":"The executive sponsor remains accountable for benefit realisation even after operational responsibility transfers to the permanent teams."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D21","is_correct":false,"text":"Professional evidence and sector standards are unnecessary when an intuitive answer is available."},{"id":"C1_WORK_CROSS_FUNCTIONAL_LEADERSHIP_AND_PROJECT_DELIVERY_L3_D22","is_correct":false,"text":"I would leave risk, documentation, and accountability undefined until the problem resolves itself."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e0307006-b9bc-56e5-90aa-6325d527eef8', 'bc948d13-518e-596a-afe0-6ccd136250ae', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a13bc-61d7-5c17-8529-fe776794bc77', 'en', 'governance framework', 'структура управления', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1036c071-18c1-5a58-b76f-cfac508ad89e', 'en', 'cross-functional dependency', 'межфункциональная зависимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fb393b2-0403-5e31-a5b2-3ca67a791ea4', 'en', 'decision right', 'право принятия решения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f29f334-a351-5659-82cf-38c00a9147b8', 'en', 'delivery constraint', 'ограничение реализации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2334eb2b-30db-5ab0-986f-263a5ba4acb3', 'en', 'escalation threshold', 'порог эскалации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('682bf62c-3352-54a0-bcec-d9f7e44d7179', 'en', 'benefit realisation', 'реализация выгод', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a52d1ee3-d5fb-567f-b9be-d4b411de68d6', 'en', 'executive sponsor', 'куратор проекта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a13bc-61d7-5c17-8529-fe776794bc77', 'en', 'governance framework', 'структура управления', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1036c071-18c1-5a58-b76f-cfac508ad89e', 'en', 'cross-functional dependency', 'межфункциональная зависимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fb393b2-0403-5e31-a5b2-3ca67a791ea4', 'en', 'decision right', 'право принятия решения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f29f334-a351-5659-82cf-38c00a9147b8', 'en', 'delivery constraint', 'ограничение реализации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2334eb2b-30db-5ab0-986f-263a5ba4acb3', 'en', 'escalation threshold', 'порог эскалации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('682bf62c-3352-54a0-bcec-d9f7e44d7179', 'en', 'benefit realisation', 'реализация выгод', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a52d1ee3-d5fb-567f-b9be-d4b411de68d6', 'en', 'executive sponsor', 'куратор проекта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('977a13bc-61d7-5c17-8529-fe776794bc77', 'en', 'governance framework', 'структура управления', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1036c071-18c1-5a58-b76f-cfac508ad89e', 'en', 'cross-functional dependency', 'межфункциональная зависимость', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4fb393b2-0403-5e31-a5b2-3ca67a791ea4', 'en', 'decision right', 'право принятия решения', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7f29f334-a351-5659-82cf-38c00a9147b8', 'en', 'delivery constraint', 'ограничение реализации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2334eb2b-30db-5ab0-986f-263a5ba4acb3', 'en', 'escalation threshold', 'порог эскалации', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('682bf62c-3352-54a0-bcec-d9f7e44d7179', 'en', 'benefit realisation', 'реализация выгод', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a52d1ee3-d5fb-567f-b9be-d4b411de68d6', 'en', 'executive sponsor', 'куратор проекта', 'ru', 'C1', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'governance framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-functional dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'benefit realisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, '8eca38db-297b-5381-b17c-ed051f3d9a9b', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive sponsor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'governance framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-functional dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'benefit realisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'ed5287b3-152b-5e77-af67-bf7df0be8050', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive sponsor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'governance framework' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'cross-functional dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision right' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'delivery constraint' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'escalation threshold' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'benefit realisation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e0307006-b9bc-56e5-90aa-6325d527eef8', id, 'bc948d13-518e-596a-afe0-6ccd136250ae', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'executive sponsor' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
