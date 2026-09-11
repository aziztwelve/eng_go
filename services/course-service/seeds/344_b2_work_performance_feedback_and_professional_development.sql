-- Track: B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('3c7d65fa-1b7a-5768-a04e-3248c9781967', 'B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT', 'Оценка работы и профессиональное развитие', 'Развивайте профессиональное общение уровня B2 по теме «Оценка работы и профессиональное развитие», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Performance Feedback and Professional Development","ru":"Оценка работы и профессиональное развитие"}'::jsonb, '{"en":"Develop B2 professional communication for performance feedback and professional development by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Оценка работы и профессиональное развитие», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Giving Evidence-Based Feedback","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fcf2d427-0e73-5fbd-b4c6-dd01eb9d4afd', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D01","left":"observable behaviour","right":"наблюдаемое поведение"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D02","left":"constructive feedback","right":"конструктивная обратная связь"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D03","left":"development objective","right":"цель развития"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D04","left":"performance gap","right":"разрыв в результативности"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D05","left":"acknowledge progress","right":"признать прогресс"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D06","left":"actionable","right":"практически применимый"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D07","left":"follow-up review","right":"повторная оценка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8c19e858-e8fc-527e-9eb7-dda299d9364e', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D08","is_correct":true,"text":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ae1ac09e-4b5f-5ed8-965a-69c28f08c03d', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Конструктивная обратная связь должна относиться к наблюдаемому поведению и его влиянию, а не к предположениям о личности или намерениях.","target_language":"en","word_bank":["Constructive","feedback","should","refer","to","observable","behaviour","and","its","impact","rather","than","making","assumptions","about","personality","or","intention","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dc90510-d331-57b4-ba3d-419eb3c7843d', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"observable behaviour","instruction":"Выберите подходящее слово.","options":["observable behaviour","performance gap","actionable"],"sentence_template":"Constructive feedback should refer to ___ and its impact rather than making assumptions about personality or intention."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3ace91b-4141-50e5-a152-26ef972a0a69', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Constructive","feedback","should","refer","to","observable","behaviour","and","its","impact","rather","than","making","assumptions","about","personality","or","intention","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","intention","or","personality","about","assumptions","making","than","rather","impact","its","and","behaviour","observable","to","refer","should","feedback","Constructive"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2cc34936-5126-5940-9b6a-f5fa83ff4ad2', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd1baff5-b949-5904-9940-f1f1e5560678', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Конструктивная обратная связь должна относиться к наблюдаемому поведению и его влиянию, а не к предположениям о личности или намерениях. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cfc6eff5-258e-5937-ab48-4568f70127ef', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention.","translation":"Конструктивная обратная связь должна относиться к наблюдаемому поведению и его влиянию, а не к предположениям о личности или намерениях.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Giving Evidence-Based Feedback"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('956b58dd-5167-5f10-bba7-ddcc402e846b', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“observable behaviour” means a specific action that can be described objectively.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D11","is_correct":true,"text":"a specific action that can be described objectively"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D12","is_correct":false,"text":"comments intended to support improvement"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D13","is_correct":false,"text":"a specific capability selected for improvement"}],"word":"observable behaviour"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c6ebb1c1-e586-5067-95c2-ca58846883ff', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention.","explanation":"The missing professional expression is “observable behaviour”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"observable behaviour","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D14","is_correct":true},{"audio_text":"development objective","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D15","is_correct":false},{"audio_text":"acknowledge progress","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D16","is_correct":false}],"sentence_template":"Constructive feedback should refer to ___ and its impact rather than making assumptions about personality or intention."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('34a43ca3-14fe-5f3b-a906-94863fbf018d', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"observable behaviour","explanation":"The complete workplace statement uses “observable behaviour” precisely.","hint_prefix":"obse","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Constructive feedback should refer to ___ and its impact rather than making assumptions about personality or intention."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74435a93-4e6a-5530-a374-a3aa75dc2aac', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"observable behaviour","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D17","text":"observable behaviour"},{"audio_text":"constructive feedback","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D18","text":"constructive feedback"},{"audio_text":"development objective","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D19","text":"development objective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('08e4b9fe-2b94-538e-be53-2ed1132432fa', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Giving Evidence-Based Feedback”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D20","is_correct":true,"text":"Constructive feedback should refer to observable behaviour and its impact rather than making assumptions about personality or intention."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3c7d65fa-1b7a-5768-a04e-3248c9781967', '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c251e5cd-6a8d-5cbf-a69c-9da65bea79de', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Responding Constructively","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef5b7b2f-30c6-5715-b0c1-9a22dee32938', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D01","left":"observable behaviour","right":"наблюдаемое поведение"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D02","left":"constructive feedback","right":"конструктивная обратная связь"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D03","left":"development objective","right":"цель развития"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D04","left":"performance gap","right":"разрыв в результативности"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D05","left":"acknowledge progress","right":"признать прогресс"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D06","left":"actionable","right":"практически применимый"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D07","left":"follow-up review","right":"повторная оценка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4cfaf577-8923-55c5-a4c9-7c809188c3d7', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D08","is_correct":true,"text":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a39019cd-8727-595f-869b-932bbd730041', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем обсуждать разрыв в результативности, признайте прогресс и предложите сотруднику объяснить факторы, которые могли повлиять на результат.","target_language":"en","word_bank":["Before","discussing","a","performance","gap",",","acknowledge","progress","and","invite","the","employee","to","explain","factors","that","may","have","influenced","the","result","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5635e3e8-680f-506a-a951-5c29d038b100', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"constructive feedback","instruction":"Выберите подходящее слово.","options":["constructive feedback","acknowledge progress","follow-up review"],"sentence_template":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c935b584-c6e0-5e34-97c2-e170943aeaa0', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","discussing","a","performance","gap",",","acknowledge","progress","and","invite","the","employee","to","explain","factors","that","may","have","influenced","the","result","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","result","the","influenced","have","may","that","factors","explain","to","employee","the","invite","and","progress","acknowledge",",","gap","performance","a","discussing","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0240a24a-2501-50a5-b66e-a7067d12975a', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7f0afb6e-d79c-51f3-aac0-379800c67476', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Прежде чем обсуждать разрыв в результативности, признайте прогресс и предложите сотруднику объяснить факторы, которые могли повлиять на результат. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acac3a9d-6992-5a4b-8e68-39c497dac432', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result.","translation":"Прежде чем обсуждать разрыв в результативности, признайте прогресс и предложите сотруднику объяснить факторы, которые могли повлиять на результат.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Responding Constructively"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('747b6983-8cee-56c9-9806-725c6a9ae2cf', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“constructive feedback” means comments intended to support improvement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D11","is_correct":true,"text":"comments intended to support improvement"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D12","is_correct":false,"text":"a specific capability selected for improvement"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D13","is_correct":false,"text":"the difference between expected and actual performance"}],"word":"constructive feedback"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a4756c81-776b-5b79-bc82-debdeca68ebf', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result.","explanation":"The missing professional expression is “constructive feedback”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"constructive feedback","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D14","is_correct":true},{"audio_text":"performance gap","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D15","is_correct":false},{"audio_text":"actionable","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D16","is_correct":false}],"sentence_template":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e3616fcf-7ea7-5629-808a-a7fa4943e66d', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"constructive feedback","explanation":"The complete workplace statement uses “constructive feedback” precisely.","hint_prefix":"cons","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b5aaa810-c97e-5d2e-b340-5153e9178f2d', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"observable behaviour","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D17","text":"observable behaviour"},{"audio_text":"constructive feedback","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D18","text":"constructive feedback"},{"audio_text":"development objective","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D19","text":"development objective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0b59dbba-5926-5120-83db-2ee8e6c1717d', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Responding Constructively”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D20","is_correct":true,"text":"Before discussing a performance gap, acknowledge progress and invite the employee to explain factors that may have influenced the result."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3c7d65fa-1b7a-5768-a04e-3248c9781967', 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2755781f-d22b-5d1d-9b3e-8f308b33188a', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Creating a Development Plan","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c0eb1165-d07e-57e0-91b9-9981b853dc59', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D01","left":"observable behaviour","right":"наблюдаемое поведение"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D02","left":"constructive feedback","right":"конструктивная обратная связь"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D03","left":"development objective","right":"цель развития"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D04","left":"performance gap","right":"разрыв в результативности"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D05","left":"acknowledge progress","right":"признать прогресс"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D06","left":"actionable","right":"практически применимый"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D07","left":"follow-up review","right":"повторная оценка"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('59ddd875-ba13-5a6f-9045-0ad50a4a75bb', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D08","is_correct":true,"text":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a50faba6-b828-573c-bb12-b62f08498b10', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Цель развития становится практически применимой, когда включает измеримый результат, соответствующую поддержку и дату повторной оценки.","target_language":"en","word_bank":["A","development","objective","becomes","actionable","when","it","includes","a","measurable","outcome",",","appropriate","support",",","and","a","date","for","follow-up","review","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('81a8ac70-ac3c-54cc-ba87-478255da9361', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"development objective","instruction":"Выберите подходящее слово.","options":["development objective","actionable","observable behaviour"],"sentence_template":"A ___ becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e24621ff-c03e-5bf9-89de-651fd9c9bb5e', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","development","objective","becomes","actionable","when","it","includes","a","measurable","outcome",",","appropriate","support",",","and","a","date","for","follow-up","review","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","review","follow-up","for","date","a","and",",","support","appropriate",",","outcome","measurable","a","includes","it","when","actionable","becomes","objective","development","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1509e87-d7bd-5734-a14d-1deff46777cb', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e7fdfb79-9f65-538b-ae3c-141b91a37d05', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Цель развития становится практически применимой, когда включает измеримый результат, соответствующую поддержку и дату повторной оценки. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9bf00e12-2fc9-5a11-b290-3f7d2203759c', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review.","translation":"Цель развития становится практически применимой, когда включает измеримый результат, соответствующую поддержку и дату повторной оценки.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Creating a Development Plan"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('02c9eda9-478e-5417-8a47-6b1f3ddb17e8', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“development objective” means a specific capability selected for improvement.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D11","is_correct":true,"text":"a specific capability selected for improvement"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D12","is_correct":false,"text":"the difference between expected and actual performance"},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D13","is_correct":false,"text":"recognise an improvement or achievement"}],"word":"development objective"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('698a1ced-2d55-5771-b628-ceac4a7901a6', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review.","explanation":"The missing professional expression is “development objective”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"development objective","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D14","is_correct":true},{"audio_text":"acknowledge progress","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D15","is_correct":false},{"audio_text":"follow-up review","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D16","is_correct":false}],"sentence_template":"A ___ becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a98f70c8-7731-5794-a9a7-afdf9c8b80da', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"development objective","explanation":"The complete workplace statement uses “development objective” precisely.","hint_prefix":"deve","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a0fea78f-bd88-5439-9058-aba14aee351d', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"observable behaviour","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D17","text":"observable behaviour"},{"audio_text":"constructive feedback","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D18","text":"constructive feedback"},{"audio_text":"development objective","id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D19","text":"development objective"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('da34bd2e-4704-5be3-b385-974b9671807e', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Creating a Development Plan”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D20","is_correct":true,"text":"A development objective becomes actionable when it includes a measurable outcome, appropriate support, and a date for follow-up review."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_PERFORMANCE_FEEDBACK_AND_PROFESSIONAL_DEVELOPMENT_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('3c7d65fa-1b7a-5768-a04e-3248c9781967', '2755781f-d22b-5d1d-9b3e-8f308b33188a', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dc70f27-be12-53c8-b2e5-6c774a7ebbff', 'en', 'observable behaviour', 'наблюдаемое поведение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48171c3f-91fd-532b-b4fa-c8c35858d1b1', 'en', 'constructive feedback', 'конструктивная обратная связь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('85f6c6b4-9ba7-5e65-b19e-6d7411ec3da5', 'en', 'development objective', 'цель развития', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4f66e40-8882-5a60-b7db-513508af5f2e', 'en', 'performance gap', 'разрыв в результативности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e67a2c31-d7cb-5ff5-a966-d7b20d23fc9d', 'en', 'acknowledge progress', 'признать прогресс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03154795-004b-58ae-8dfb-4e7ec0dbe4d3', 'en', 'actionable', 'практически применимый', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1775baf-523b-574a-bf68-77944fed49ca', 'en', 'follow-up review', 'повторная оценка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dc70f27-be12-53c8-b2e5-6c774a7ebbff', 'en', 'observable behaviour', 'наблюдаемое поведение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48171c3f-91fd-532b-b4fa-c8c35858d1b1', 'en', 'constructive feedback', 'конструктивная обратная связь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('85f6c6b4-9ba7-5e65-b19e-6d7411ec3da5', 'en', 'development objective', 'цель развития', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4f66e40-8882-5a60-b7db-513508af5f2e', 'en', 'performance gap', 'разрыв в результативности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e67a2c31-d7cb-5ff5-a966-d7b20d23fc9d', 'en', 'acknowledge progress', 'признать прогресс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03154795-004b-58ae-8dfb-4e7ec0dbe4d3', 'en', 'actionable', 'практически применимый', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1775baf-523b-574a-bf68-77944fed49ca', 'en', 'follow-up review', 'повторная оценка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6dc70f27-be12-53c8-b2e5-6c774a7ebbff', 'en', 'observable behaviour', 'наблюдаемое поведение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('48171c3f-91fd-532b-b4fa-c8c35858d1b1', 'en', 'constructive feedback', 'конструктивная обратная связь', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('85f6c6b4-9ba7-5e65-b19e-6d7411ec3da5', 'en', 'development objective', 'цель развития', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d4f66e40-8882-5a60-b7db-513508af5f2e', 'en', 'performance gap', 'разрыв в результативности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e67a2c31-d7cb-5ff5-a966-d7b20d23fc9d', 'en', 'acknowledge progress', 'признать прогресс', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('03154795-004b-58ae-8dfb-4e7ec0dbe4d3', 'en', 'actionable', 'практически применимый', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('d1775baf-523b-574a-bf68-77944fed49ca', 'en', 'follow-up review', 'повторная оценка', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'observable behaviour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'development objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance gap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '96b2fcfe-f413-5994-89ba-9f6fc61fbbc3', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'observable behaviour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'development objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance gap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, 'c251e5cd-6a8d-5cbf-a69c-9da65bea79de', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'observable behaviour' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'constructive feedback' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'development objective' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'performance gap' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge progress' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'actionable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '3c7d65fa-1b7a-5768-a04e-3248c9781967', id, '2755781f-d22b-5d1d-9b3e-8f308b33188a', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'follow-up review' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
