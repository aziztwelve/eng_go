-- Track: B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('282644eb-6529-5c4f-b913-3474aebdbbbe', 'B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES', 'Планирование проектов, этапы и зависимости', 'Развивайте профессиональное общение уровня B2 по теме «Планирование проектов, этапы и зависимости», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Project Planning, Milestones and Dependencies","ru":"Планирование проектов, этапы и зависимости"}'::jsonb, '{"en":"Develop B2 professional communication for project planning, milestones and dependencies by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Планирование проектов, этапы и зависимости», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Defining Scope and Deliverables","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e8dd9635-c5ab-562a-87ae-c97072a5c7a4', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D01","left":"project scope","right":"объём проекта"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D02","left":"critical dependency","right":"критическая зависимость"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D03","left":"milestone","right":"контрольный этап"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D04","left":"deliverable","right":"итоговый результат"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D05","left":"scope creep","right":"неконтролируемое расширение объёма"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D06","left":"contingency","right":"резервная мера"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D07","left":"on track","right":"по плану"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b9488ad-a364-5849-bf53-751494114bd8', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D08","is_correct":true,"text":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4decbf95-a846-5004-a027-c839b7c9e586', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Объём проекта должен достаточно точно определять каждый итоговый результат, чтобы незапланированные запросы не привели к неконтролируемому расширению.","target_language":"en","word_bank":["The","project","scope","must","define","each","deliverable","precisely","enough","to","prevent","unapproved","requests","from","creating","scope","creep","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ca349b5b-a1d0-5cc3-8f19-5c2ff8a66c52', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"project scope","instruction":"Выберите подходящее слово.","options":["project scope","deliverable","contingency"],"sentence_template":"The ___ must define each deliverable precisely enough to prevent unapproved requests from creating scope creep."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0959912a-b295-596d-84c8-9c301620ee64', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","project","scope","must","define","each","deliverable","precisely","enough","to","prevent","unapproved","requests","from","creating","scope","creep","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","creep","scope","creating","from","requests","unapproved","prevent","to","enough","precisely","deliverable","each","define","must","scope","project","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c47f54d6-8e4c-5345-ac5a-234156031e45', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('af9a20d1-e5fe-5608-b0a1-7bc280d8a1f3', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Объём проекта должен достаточно точно определять каждый итоговый результат, чтобы незапланированные запросы не привели к неконтролируемому расширению. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('294177a1-99f4-516a-89e3-c47efeaf3636', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep.","translation":"Объём проекта должен достаточно точно определять каждый итоговый результат, чтобы незапланированные запросы не привели к неконтролируемому расширению.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Defining Scope and Deliverables"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('168a44c6-0709-57de-9853-5aa76a6dd043', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“project scope” means the defined boundaries and objectives of a project.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D11","is_correct":true,"text":"the defined boundaries and objectives of a project"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D12","is_correct":false,"text":"a required input whose delay affects later work"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D13","is_correct":false,"text":"a significant point used to measure progress"}],"word":"project scope"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8ab6a298-7072-55a4-9f1f-b7026300b725', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep.","explanation":"The missing professional expression is “project scope”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"project scope","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D14","is_correct":true},{"audio_text":"milestone","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D15","is_correct":false},{"audio_text":"scope creep","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D16","is_correct":false}],"sentence_template":"The ___ must define each deliverable precisely enough to prevent unapproved requests from creating scope creep."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('943323da-e4c0-570c-a19d-e044b3587981', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"project scope","explanation":"The complete workplace statement uses “project scope” precisely.","hint_prefix":"proj","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The ___ must define each deliverable precisely enough to prevent unapproved requests from creating scope creep."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb21b66d-3375-52d0-b558-519d49ca4eec', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"project scope","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D17","text":"project scope"},{"audio_text":"critical dependency","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D18","text":"critical dependency"},{"audio_text":"milestone","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D19","text":"milestone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94492c2a-e5ca-5353-b41f-338b1f35c4dd', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Defining Scope and Deliverables”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D20","is_correct":true,"text":"The project scope must define each deliverable precisely enough to prevent unapproved requests from creating scope creep."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('282644eb-6529-5c4f-b913-3474aebdbbbe', 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('62a8bd44-fca7-5d46-a57b-488636859d34', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Managing Dependencies","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b847b97-31b7-56e4-ae9e-3dd9a312fcc1', '62a8bd44-fca7-5d46-a57b-488636859d34', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D01","left":"project scope","right":"объём проекта"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D02","left":"critical dependency","right":"критическая зависимость"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D03","left":"milestone","right":"контрольный этап"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D04","left":"deliverable","right":"итоговый результат"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D05","left":"scope creep","right":"неконтролируемое расширение объёма"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D06","left":"contingency","right":"резервная мера"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D07","left":"on track","right":"по плану"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7269635a-f793-5d7c-b1d1-f188ff70292e', '62a8bd44-fca7-5d46-a57b-488636859d34', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D08","is_correct":true,"text":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c0c2e33-125d-5e27-b58b-002e78411b37', '62a8bd44-fca7-5d46-a57b-488636859d34', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Критическая зависимость задерживается, поэтому графику нужна резервная мера, защищающая окончательный срок без снижения качества.","target_language":"en","word_bank":["A","critical","dependency","has","been","delayed",",","so","the","schedule","needs","a","contingency","that","protects","the","final","deadline","without","reducing","quality","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c8b5df6-e881-5452-83eb-68819bada7cc', '62a8bd44-fca7-5d46-a57b-488636859d34', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"critical dependency","instruction":"Выберите подходящее слово.","options":["critical dependency","scope creep","on track"],"sentence_template":"A ___ has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('54d7f729-0d54-5210-8eaa-4de8aa782615', '62a8bd44-fca7-5d46-a57b-488636859d34', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","critical","dependency","has","been","delayed",",","so","the","schedule","needs","a","contingency","that","protects","the","final","deadline","without","reducing","quality","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","quality","reducing","without","deadline","final","the","protects","that","contingency","a","needs","schedule","the","so",",","delayed","been","has","dependency","critical","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e7a0993-eba3-50c4-b2bf-83d0197df8f7', '62a8bd44-fca7-5d46-a57b-488636859d34', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb7de5e0-4d73-5748-a266-02e72881e6c9', '62a8bd44-fca7-5d46-a57b-488636859d34', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Критическая зависимость задерживается, поэтому графику нужна резервная мера, защищающая окончательный срок без снижения качества. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8afe3f23-0d84-53fe-926b-4c428b066131', '62a8bd44-fca7-5d46-a57b-488636859d34', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality.","translation":"Критическая зависимость задерживается, поэтому графику нужна резервная мера, защищающая окончательный срок без снижения качества.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Managing Dependencies"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c73d16bf-4c10-5548-b7b9-ddf68495191b', '62a8bd44-fca7-5d46-a57b-488636859d34', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“critical dependency” means a required input whose delay affects later work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D11","is_correct":true,"text":"a required input whose delay affects later work"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D12","is_correct":false,"text":"a significant point used to measure progress"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D13","is_correct":false,"text":"a required output produced by a project"}],"word":"critical dependency"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ad6e85c-a610-576f-b42e-9c1ae6a71bfd', '62a8bd44-fca7-5d46-a57b-488636859d34', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality.","explanation":"The missing professional expression is “critical dependency”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"critical dependency","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D14","is_correct":true},{"audio_text":"deliverable","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D15","is_correct":false},{"audio_text":"contingency","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D16","is_correct":false}],"sentence_template":"A ___ has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3062cc14-621c-59c3-b4ac-84406c70456f', '62a8bd44-fca7-5d46-a57b-488636859d34', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"critical dependency","explanation":"The complete workplace statement uses “critical dependency” precisely.","hint_prefix":"crit","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ecc3a4da-fe05-50d5-aa04-2e6789b8ae76', '62a8bd44-fca7-5d46-a57b-488636859d34', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"project scope","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D17","text":"project scope"},{"audio_text":"critical dependency","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D18","text":"critical dependency"},{"audio_text":"milestone","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D19","text":"milestone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('499b1eea-84a3-5108-85ac-8816a9593f71', '62a8bd44-fca7-5d46-a57b-488636859d34', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Managing Dependencies”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D20","is_correct":true,"text":"A critical dependency has been delayed, so the schedule needs a contingency that protects the final deadline without reducing quality."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('282644eb-6529-5c4f-b913-3474aebdbbbe', '62a8bd44-fca7-5d46-a57b-488636859d34', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('9e173b8e-cdf9-5950-b49d-25286bad1620', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Reporting Against Milestones","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5bfc6af7-3cff-599a-8dbe-13606657b36b', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D01","left":"project scope","right":"объём проекта"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D02","left":"critical dependency","right":"критическая зависимость"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D03","left":"milestone","right":"контрольный этап"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D04","left":"deliverable","right":"итоговый результат"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D05","left":"scope creep","right":"неконтролируемое расширение объёма"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D06","left":"contingency","right":"резервная мера"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D07","left":"on track","right":"по плану"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6c8156ce-5f18-53a3-bd0a-e3ca39501aef', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D08","is_correct":true,"text":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('179fb5bc-bca4-57d6-9acc-8a0bb2be6e81', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Хотя первый контрольный этап был завершён с опозданием, проект остаётся в рамках плана, поскольку последующие задачи были реорганизованы с учётом новой последовательности.","target_language":"en","word_bank":["Although","the","first","milestone","was","completed","late",",","the","project","remains","on","track","because","subsequent","tasks","were","reorganised","around","the","revised","sequence","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6d8f587-dd1c-514f-a048-86e32e74df22', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"milestone","instruction":"Выберите подходящее слово.","options":["milestone","contingency","project scope"],"sentence_template":"Although the first ___ was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7fb5393a-768a-5a2e-8ff5-2a14bab1bd5f', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Although","the","first","milestone","was","completed","late",",","the","project","remains","on","track","because","subsequent","tasks","were","reorganised","around","the","revised","sequence","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","sequence","revised","the","around","reorganised","were","tasks","subsequent","because","track","on","remains","project","the",",","late","completed","was","milestone","first","the","Although"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e1a802bb-b00e-5be1-8715-196f67b201e9', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6baa79f3-7ad2-5cdd-896b-260510575149', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Хотя первый контрольный этап был завершён с опозданием, проект остаётся в рамках плана, поскольку последующие задачи были реорганизованы с учётом новой последовательности. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9302868e-325a-5bb3-bd22-1f36fb36966a', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence.","translation":"Хотя первый контрольный этап был завершён с опозданием, проект остаётся в рамках плана, поскольку последующие задачи были реорганизованы с учётом новой последовательности.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Reporting Against Milestones"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('483ce5a2-abc7-5ef5-a14a-aa2e83059b6f', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“milestone” means a significant point used to measure progress.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D11","is_correct":true,"text":"a significant point used to measure progress"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D12","is_correct":false,"text":"a required output produced by a project"},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D13","is_correct":false,"text":"gradual addition of unplanned requirements"}],"word":"milestone"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('39239c5e-9ff9-55b4-8ff7-d564a53693c6', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence.","explanation":"The missing professional expression is “milestone”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"milestone","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D14","is_correct":true},{"audio_text":"scope creep","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D15","is_correct":false},{"audio_text":"on track","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D16","is_correct":false}],"sentence_template":"Although the first ___ was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('99b5a595-29d7-5248-9d3c-c0775f4c24a2', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"milestone","explanation":"The complete workplace statement uses “milestone” precisely.","hint_prefix":"mile","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Although the first ___ was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bcbb22d7-fe57-54d1-a212-b769a1c41d2e', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"project scope","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D17","text":"project scope"},{"audio_text":"critical dependency","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D18","text":"critical dependency"},{"audio_text":"milestone","id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D19","text":"milestone"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2ad4d1f-58cf-573c-a302-08a95917e438', '9e173b8e-cdf9-5950-b49d-25286bad1620', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Reporting Against Milestones”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D20","is_correct":true,"text":"Although the first milestone was completed late, the project remains on track because subsequent tasks were reorganised around the revised sequence."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_PROJECT_PLANNING_MILESTONES_AND_DEPENDENCIES_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('282644eb-6529-5c4f-b913-3474aebdbbbe', '9e173b8e-cdf9-5950-b49d-25286bad1620', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('173208d0-31b8-5e86-87ad-64ad1aab2b84', 'en', 'project scope', 'объём проекта', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('647046d7-18a9-5555-9811-e2553195e09d', 'en', 'critical dependency', 'критическая зависимость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'контрольный этап', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8dc9a5-b92e-5884-81be-18896c78fa1e', 'en', 'deliverable', 'итоговый результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aabdf4f0-7f64-5658-bea7-28392ea0bb57', 'en', 'scope creep', 'неконтролируемое расширение объёма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cce116e-1140-5f24-b275-4c4982807a3b', 'en', 'contingency', 'резервная мера', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9187bbcb-23a9-59f2-b3db-e12fa83ccd86', 'en', 'on track', 'по плану', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('173208d0-31b8-5e86-87ad-64ad1aab2b84', 'en', 'project scope', 'объём проекта', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('647046d7-18a9-5555-9811-e2553195e09d', 'en', 'critical dependency', 'критическая зависимость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'контрольный этап', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8dc9a5-b92e-5884-81be-18896c78fa1e', 'en', 'deliverable', 'итоговый результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aabdf4f0-7f64-5658-bea7-28392ea0bb57', 'en', 'scope creep', 'неконтролируемое расширение объёма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cce116e-1140-5f24-b275-4c4982807a3b', 'en', 'contingency', 'резервная мера', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9187bbcb-23a9-59f2-b3db-e12fa83ccd86', 'en', 'on track', 'по плану', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('173208d0-31b8-5e86-87ad-64ad1aab2b84', 'en', 'project scope', 'объём проекта', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('647046d7-18a9-5555-9811-e2553195e09d', 'en', 'critical dependency', 'критическая зависимость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('fe75d63d-1ce9-55c8-b88e-03ae1705aa4a', 'en', 'milestone', 'контрольный этап', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('2d8dc9a5-b92e-5884-81be-18896c78fa1e', 'en', 'deliverable', 'итоговый результат', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('aabdf4f0-7f64-5658-bea7-28392ea0bb57', 'en', 'scope creep', 'неконтролируемое расширение объёма', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('1cce116e-1140-5f24-b275-4c4982807a3b', 'en', 'contingency', 'резервная мера', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('9187bbcb-23a9-59f2-b3db-e12fa83ccd86', 'en', 'on track', 'по плану', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'project scope' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'deliverable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope creep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, 'c69dbee3-3dd4-5625-b03e-aa1a9d3893b7', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'on track' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'project scope' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'deliverable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope creep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '62a8bd44-fca7-5d46-a57b-488636859d34', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'on track' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'project scope' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'critical dependency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'milestone' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'deliverable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'scope creep' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'contingency' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '282644eb-6529-5c4f-b913-3474aebdbbbe', id, '9e173b8e-cdf9-5950-b49d-25286bad1620', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'on track' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
