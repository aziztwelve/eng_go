-- Track: B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('81551f87-650a-5b02-a326-01116b6b9980', 'B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY', 'Карьерный рост и профессиональная идентичность', 'Развивайте профессиональное общение уровня B2 по теме «Карьерный рост и профессиональная идентичность», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Career Progression and Professional Identity","ru":"Карьерный рост и профессиональная идентичность"}'::jsonb, '{"en":"Develop B2 professional communication for career progression and professional identity by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Карьерный рост и профессиональная идентичность», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('c5dd8ab3-89f3-521c-8325-df74bca6d636', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Evaluating Career Direction","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00b71669-8779-530a-b76a-c67b01952d3e', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D01","left":"career trajectory","right":"карьерная траектория"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D02","left":"professional identity","right":"профессиональная идентичность"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D03","left":"transferable expertise","right":"переносимый опыт"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D04","left":"stretch assignment","right":"развивающее задание"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D05","left":"progression opportunity","right":"возможность карьерного роста"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D06","left":"demonstrate impact","right":"показать влияние"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D07","left":"negotiate responsibilities","right":"согласовывать обязанности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b365c2c8-5ca4-599b-845f-84d80c4b339f', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D08","is_correct":true,"text":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1ed5d669-33d0-50bc-9f12-8dd722da6585', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Карьерная траектория может меняться по мере развития профессиональной идентичности и превращения ранее недооценённых сильных сторон в основу будущих целей.","target_language":"en","word_bank":["A","career","trajectory","may","change","as","professional","identity","develops","and","previously","overlooked","strengths","become","central","to","future","goals","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d15c9b86-9a24-5b42-8f3c-9364abc4be7a', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"career trajectory","instruction":"Выберите подходящее слово.","options":["career trajectory","stretch assignment","demonstrate impact"],"sentence_template":"A ___ may change as professional identity develops and previously overlooked strengths become central to future goals."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0ebc397-9de3-5c4e-bae5-dab9efa62bce', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","career","trajectory","may","change","as","professional","identity","develops","and","previously","overlooked","strengths","become","central","to","future","goals","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","goals","future","to","central","become","strengths","overlooked","previously","and","develops","identity","professional","as","change","may","trajectory","career","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc2b8d34-ccdb-56d9-9576-84651055f2a2', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ee8dba80-d446-51ce-9d84-8c8b1f1b6242', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Карьерная траектория может меняться по мере развития профессиональной идентичности и превращения ранее недооценённых сильных сторон в основу будущих целей. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('74b7ff94-0336-593f-b461-8f63e502b3be', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals.","translation":"Карьерная траектория может меняться по мере развития профессиональной идентичности и превращения ранее недооценённых сильных сторон в основу будущих целей.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Evaluating Career Direction"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f619ac89-a975-5015-bcdc-9267e266a3f4', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“career trajectory” means the direction and pattern of professional development.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D11","is_correct":true,"text":"the direction and pattern of professional development"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D12","is_correct":false,"text":"how someone understands their role and values at work"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D13","is_correct":false,"text":"specialist knowledge applicable in different contexts"}],"word":"career trajectory"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13baf478-ae88-5c8f-9fec-b503ea9e1d07', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals.","explanation":"The missing professional expression is “career trajectory”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"career trajectory","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D14","is_correct":true},{"audio_text":"transferable expertise","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D15","is_correct":false},{"audio_text":"progression opportunity","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D16","is_correct":false}],"sentence_template":"A ___ may change as professional identity develops and previously overlooked strengths become central to future goals."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3d1db94-4fa8-58d9-b60b-e6b671250c19', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"career trajectory","explanation":"The complete workplace statement uses “career trajectory” precisely.","hint_prefix":"care","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A ___ may change as professional identity develops and previously overlooked strengths become central to future goals."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f6cd248b-218b-5d4d-8560-5d1b1c76dfcc', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"career trajectory","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D17","text":"career trajectory"},{"audio_text":"professional identity","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D18","text":"professional identity"},{"audio_text":"transferable expertise","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D19","text":"transferable expertise"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6578fcbd-87ef-5f3d-9f23-b41ca2bb67e9', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Evaluating Career Direction”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D20","is_correct":true,"text":"A career trajectory may change as professional identity develops and previously overlooked strengths become central to future goals."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('81551f87-650a-5b02-a326-01116b6b9980', 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('abbcaec4-ef17-5ed2-b072-88a44a29d234', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Demonstrating Transferable Skills","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('020a3063-d7b9-5e71-af53-d158050cc826', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D01","left":"career trajectory","right":"карьерная траектория"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D02","left":"professional identity","right":"профессиональная идентичность"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D03","left":"transferable expertise","right":"переносимый опыт"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D04","left":"stretch assignment","right":"развивающее задание"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D05","left":"progression opportunity","right":"возможность карьерного роста"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D06","left":"demonstrate impact","right":"показать влияние"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D07","left":"negotiate responsibilities","right":"согласовывать обязанности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b2c40fb9-3a6e-5381-b9bd-de452d928e09', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D08","is_correct":true,"text":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65de8184-22f5-54d8-86c5-6f449cc7ef00', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Переносимый опыт следует демонстрировать через конкретные результаты, а не через общий перечень задач, выполненных на прежних должностях.","target_language":"en","word_bank":["Transferable","expertise","should","be","demonstrated","through","specific","outcomes","rather","than","a","general","list","of","tasks","completed","in","previous","roles","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30459378-3b1c-58e2-b4d9-c899515f93f2', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"professional identity","instruction":"Выберите подходящее слово.","options":["professional identity","progression opportunity","negotiate responsibilities"],"sentence_template":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c6b70dc-244a-5171-b80a-314ffbf1decc', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Transferable","expertise","should","be","demonstrated","through","specific","outcomes","rather","than","a","general","list","of","tasks","completed","in","previous","roles","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","roles","previous","in","completed","tasks","of","list","general","a","than","rather","outcomes","specific","through","demonstrated","be","should","expertise","Transferable"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('bd0d9c06-d28a-54bb-b1bc-1f022eeb6786', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2b0bfebd-3595-5948-9e67-7a42c1a732a9', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Переносимый опыт следует демонстрировать через конкретные результаты, а не через общий перечень задач, выполненных на прежних должностях. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0808cf12-c4a8-5fc3-898f-c408b30ff920', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles.","translation":"Переносимый опыт следует демонстрировать через конкретные результаты, а не через общий перечень задач, выполненных на прежних должностях.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Demonstrating Transferable Skills"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8b7b721-c947-5acb-bc21-c7ff9827a375', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“professional identity” means how someone understands their role and values at work.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D11","is_correct":true,"text":"how someone understands their role and values at work"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D12","is_correct":false,"text":"specialist knowledge applicable in different contexts"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D13","is_correct":false,"text":"a demanding task designed to build capability"}],"word":"professional identity"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d4b55789-e633-5d2c-8ad5-f3e814b28e41', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles.","explanation":"The missing professional expression is “professional identity”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"professional identity","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D14","is_correct":true},{"audio_text":"stretch assignment","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D15","is_correct":false},{"audio_text":"demonstrate impact","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D16","is_correct":false}],"sentence_template":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('78191c37-3154-57f5-ab93-6b2b6980f37e', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"professional identity","explanation":"The complete workplace statement uses “professional identity” precisely.","hint_prefix":"prof","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a016be98-fd4d-55b6-afc8-effe8c59aa94', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"career trajectory","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D17","text":"career trajectory"},{"audio_text":"professional identity","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D18","text":"professional identity"},{"audio_text":"transferable expertise","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D19","text":"transferable expertise"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('def8335d-49e2-55c2-8b80-db5b5c6c7326', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Demonstrating Transferable Skills”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D20","is_correct":true,"text":"Transferable expertise should be demonstrated through specific outcomes rather than a general list of tasks completed in previous roles."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('81551f87-650a-5b02-a326-01116b6b9980', 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('2c13d651-e986-5fb1-a26a-ea694abf378f', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Negotiating Progression","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7c66f8f0-4c56-53c9-87ee-6437f6d9831a', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D01","left":"career trajectory","right":"карьерная траектория"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D02","left":"professional identity","right":"профессиональная идентичность"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D03","left":"transferable expertise","right":"переносимый опыт"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D04","left":"stretch assignment","right":"развивающее задание"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D05","left":"progression opportunity","right":"возможность карьерного роста"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D06","left":"demonstrate impact","right":"показать влияние"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D07","left":"negotiate responsibilities","right":"согласовывать обязанности"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce6e6482-bb3f-5bb5-a91a-5d2330401eed', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D08","is_correct":true,"text":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2bcd389f-fee4-5a04-9490-cf6bc88bfbeb', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Прежде чем принимать возможность карьерного роста, уточните, как будет измеряться успех, и согласуйте обязанности, поддерживающие устойчивое развитие.","target_language":"en","word_bank":["Before","accepting","a","progression","opportunity",",","clarify","how","success","will","be","measured","and","negotiate","responsibilities","that","support","sustainable","development","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6e6ab0ba-f194-5712-bb66-1a7692890883', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"transferable expertise","instruction":"Выберите подходящее слово.","options":["transferable expertise","demonstrate impact","career trajectory"],"sentence_template":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e24debae-d6ca-52ca-a63d-89225cd11bdf', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Before","accepting","a","progression","opportunity",",","clarify","how","success","will","be","measured","and","negotiate","responsibilities","that","support","sustainable","development","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","development","sustainable","support","that","responsibilities","negotiate","and","measured","be","will","success","how","clarify",",","opportunity","progression","a","accepting","Before"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('950a0fef-fae9-5563-b227-164e15ca9335', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('65324577-7138-5d2d-9066-91b10266cfb6', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Прежде чем принимать возможность карьерного роста, уточните, как будет измеряться успех, и согласуйте обязанности, поддерживающие устойчивое развитие. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('957fb3bc-dbcd-5725-9aaa-cd92ffaf4fce', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development.","translation":"Прежде чем принимать возможность карьерного роста, уточните, как будет измеряться успех, и согласуйте обязанности, поддерживающие устойчивое развитие.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Negotiating Progression"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('12691ed9-9f1a-56b8-8d17-994e70a045d4', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“transferable expertise” means specialist knowledge applicable in different contexts.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D11","is_correct":true,"text":"specialist knowledge applicable in different contexts"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D12","is_correct":false,"text":"a demanding task designed to build capability"},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D13","is_correct":false,"text":"a realistic route to greater responsibility"}],"word":"transferable expertise"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6fc96da9-41c0-5295-b8e1-dea2dab67d90', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development.","explanation":"The missing professional expression is “transferable expertise”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"transferable expertise","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D14","is_correct":true},{"audio_text":"progression opportunity","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D15","is_correct":false},{"audio_text":"negotiate responsibilities","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D16","is_correct":false}],"sentence_template":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('936934f0-723e-5419-abd0-5951f7e28292', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"transferable expertise","explanation":"The complete workplace statement uses “transferable expertise” precisely.","hint_prefix":"tran","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9b458da-a855-5ce0-adfc-e827d92838ed', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"career trajectory","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D17","text":"career trajectory"},{"audio_text":"professional identity","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D18","text":"professional identity"},{"audio_text":"transferable expertise","id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D19","text":"transferable expertise"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('05d2c8c2-515b-571c-9c60-8b4a8ffe1df0', '2c13d651-e986-5fb1-a26a-ea694abf378f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Negotiating Progression”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D20","is_correct":true,"text":"Before accepting a progression opportunity, clarify how success will be measured and negotiate responsibilities that support sustainable development."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_CAREER_PROGRESSION_AND_PROFESSIONAL_IDENTITY_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('81551f87-650a-5b02-a326-01116b6b9980', '2c13d651-e986-5fb1-a26a-ea694abf378f', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53d72304-df2c-5fca-80ce-f32c0e68f215', 'en', 'career trajectory', 'карьерная траектория', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('918e1c87-dd2c-5989-9ce9-90980cf4c2dc', 'en', 'professional identity', 'профессиональная идентичность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49a6dfe0-5f20-5acd-8d3d-21d5b993ab72', 'en', 'transferable expertise', 'переносимый опыт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0015d32a-d039-5cfc-aa69-27333e4ebf0e', 'en', 'stretch assignment', 'развивающее задание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5bc182b9-8dd6-5aa2-acf9-bfe37253f077', 'en', 'progression opportunity', 'возможность карьерного роста', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4951d086-4350-5148-865b-00c105229e2a', 'en', 'demonstrate impact', 'показать влияние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dedc007-199d-5d51-8313-7f7624f411ee', 'en', 'negotiate responsibilities', 'согласовывать обязанности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53d72304-df2c-5fca-80ce-f32c0e68f215', 'en', 'career trajectory', 'карьерная траектория', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('918e1c87-dd2c-5989-9ce9-90980cf4c2dc', 'en', 'professional identity', 'профессиональная идентичность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49a6dfe0-5f20-5acd-8d3d-21d5b993ab72', 'en', 'transferable expertise', 'переносимый опыт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0015d32a-d039-5cfc-aa69-27333e4ebf0e', 'en', 'stretch assignment', 'развивающее задание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5bc182b9-8dd6-5aa2-acf9-bfe37253f077', 'en', 'progression opportunity', 'возможность карьерного роста', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4951d086-4350-5148-865b-00c105229e2a', 'en', 'demonstrate impact', 'показать влияние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dedc007-199d-5d51-8313-7f7624f411ee', 'en', 'negotiate responsibilities', 'согласовывать обязанности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('53d72304-df2c-5fca-80ce-f32c0e68f215', 'en', 'career trajectory', 'карьерная траектория', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('918e1c87-dd2c-5989-9ce9-90980cf4c2dc', 'en', 'professional identity', 'профессиональная идентичность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('49a6dfe0-5f20-5acd-8d3d-21d5b993ab72', 'en', 'transferable expertise', 'переносимый опыт', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('0015d32a-d039-5cfc-aa69-27333e4ebf0e', 'en', 'stretch assignment', 'развивающее задание', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5bc182b9-8dd6-5aa2-acf9-bfe37253f077', 'en', 'progression opportunity', 'возможность карьерного роста', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('4951d086-4350-5148-865b-00c105229e2a', 'en', 'demonstrate impact', 'показать влияние', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8dedc007-199d-5d51-8313-7f7624f411ee', 'en', 'negotiate responsibilities', 'согласовывать обязанности', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'career trajectory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional identity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable expertise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'stretch assignment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'progression opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'demonstrate impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'c5dd8ab3-89f3-521c-8325-df74bca6d636', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate responsibilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'career trajectory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional identity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable expertise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'stretch assignment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'progression opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'demonstrate impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, 'abbcaec4-ef17-5ed2-b072-88a44a29d234', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate responsibilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'career trajectory' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'professional identity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'transferable expertise' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'stretch assignment' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'progression opportunity' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'demonstrate impact' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '81551f87-650a-5b02-a326-01116b6b9980', id, '2c13d651-e986-5fb1-a26a-ea694abf378f', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'negotiate responsibilities' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
