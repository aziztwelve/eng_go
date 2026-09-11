-- Track: B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e9ef69da-571b-55e5-b7fc-95535e0ebfc0', 'B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS', 'Конфликты на работе и согласованные решения', 'Развивайте профессиональное общение уровня B2 по теме «Конфликты на работе и согласованные решения», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Workplace Conflict and Negotiated Solutions","ru":"Конфликты на работе и согласованные решения"}'::jsonb, '{"en":"Develop B2 professional communication for workplace conflict and negotiated solutions by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Конфликты на работе и согласованные решения», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('18d912da-1137-5600-9c69-39f826419f27', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Identifying Underlying Interests","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('529e17de-4554-5cea-9627-c7418d05d389', '18d912da-1137-5600-9c69-39f826419f27', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D01","left":"underlying interest","right":"глубинный интерес"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D02","left":"source of tension","right":"источник напряжения"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D03","left":"acknowledge a concern","right":"признать обеспокоенность"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D04","left":"make a concession","right":"пойти на уступку"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D05","left":"mutually acceptable","right":"приемлемый для обеих сторон"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D06","left":"de-escalate","right":"снизить напряжённость"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D07","left":"restore trust","right":"восстановить доверие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cc8914af-1744-5bb4-b421-56be8d074620', '18d912da-1137-5600-9c69-39f826419f27', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D08","is_correct":true,"text":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90ea28d0-0378-5062-a900-041292ddaf05', '18d912da-1137-5600-9c69-39f826419f27', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Очевидное разногласие по поводу графиков отражало глубинный интерес к справедливости, а не неприятие гибкой работы как таковой.","target_language":"en","word_bank":["The","apparent","disagreement","about","schedules","reflected","an","underlying","interest","in","fairness","rather","than","opposition","to","flexible","working","itself","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('23a839e9-75f5-5b50-a876-a4240d0492ae', '18d912da-1137-5600-9c69-39f826419f27', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"underlying interest","instruction":"Выберите подходящее слово.","options":["underlying interest","make a concession","de-escalate"],"sentence_template":"The apparent disagreement about schedules reflected an ___ in fairness rather than opposition to flexible working itself."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6d5c33b2-d1e6-5c3c-9df5-a924a629de44', '18d912da-1137-5600-9c69-39f826419f27', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","apparent","disagreement","about","schedules","reflected","an","underlying","interest","in","fairness","rather","than","opposition","to","flexible","working","itself","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","itself","working","flexible","to","opposition","than","rather","fairness","in","interest","underlying","an","reflected","schedules","about","disagreement","apparent","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4172c505-8c34-5efe-83f4-f38bcbe73e9e', '18d912da-1137-5600-9c69-39f826419f27', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d0e85cd8-ada1-5f2d-9fa6-b7c7d9def245', '18d912da-1137-5600-9c69-39f826419f27', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Очевидное разногласие по поводу графиков отражало глубинный интерес к справедливости, а не неприятие гибкой работы как таковой. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1513ed2a-353c-59e4-ad97-3949b44dcf57', '18d912da-1137-5600-9c69-39f826419f27', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself.","translation":"Очевидное разногласие по поводу графиков отражало глубинный интерес к справедливости, а не неприятие гибкой работы как таковой.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Identifying Underlying Interests"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('aaacdc42-cc0e-51d2-a931-c82b8ecac867', '18d912da-1137-5600-9c69-39f826419f27', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“underlying interest” means the real need behind a stated position.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D11","is_correct":true,"text":"the real need behind a stated position"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D12","is_correct":false,"text":"the cause of difficulty in a relationship"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D13","is_correct":false,"text":"show that another person’s worry is understood"}],"word":"underlying interest"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1a1fb882-9407-5fa1-9d45-b4de01faf9b6', '18d912da-1137-5600-9c69-39f826419f27', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself.","explanation":"The missing professional expression is “underlying interest”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"underlying interest","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D14","is_correct":true},{"audio_text":"acknowledge a concern","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D15","is_correct":false},{"audio_text":"mutually acceptable","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D16","is_correct":false}],"sentence_template":"The apparent disagreement about schedules reflected an ___ in fairness rather than opposition to flexible working itself."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5d66e60b-726a-50a5-81a9-3301c1712bbf', '18d912da-1137-5600-9c69-39f826419f27', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"underlying interest","explanation":"The complete workplace statement uses “underlying interest” precisely.","hint_prefix":"unde","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The apparent disagreement about schedules reflected an ___ in fairness rather than opposition to flexible working itself."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b8af3396-66db-5803-af92-d31dfc98e12a', '18d912da-1137-5600-9c69-39f826419f27', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"underlying interest","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D17","text":"underlying interest"},{"audio_text":"source of tension","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D18","text":"source of tension"},{"audio_text":"acknowledge a concern","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D19","text":"acknowledge a concern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e5ebaed-ea47-5ab8-a9c2-2ae746716b9d', '18d912da-1137-5600-9c69-39f826419f27', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Identifying Underlying Interests”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D20","is_correct":true,"text":"The apparent disagreement about schedules reflected an underlying interest in fairness rather than opposition to flexible working itself."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e9ef69da-571b-55e5-b7fc-95535e0ebfc0', '18d912da-1137-5600-9c69-39f826419f27', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Negotiating a Compromise","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0eb2cb70-8838-5199-9f15-53a84090277e', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D01","left":"underlying interest","right":"глубинный интерес"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D02","left":"source of tension","right":"источник напряжения"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D03","left":"acknowledge a concern","right":"признать обеспокоенность"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D04","left":"make a concession","right":"пойти на уступку"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D05","left":"mutually acceptable","right":"приемлемый для обеих сторон"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D06","left":"de-escalate","right":"снизить напряжённость"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D07","left":"restore trust","right":"восстановить доверие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3eabf692-26e0-5de1-913f-e486ed35fd74', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D08","is_correct":true,"text":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('25d94e40-182d-55fe-a37d-b1ea1d5e323e', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Признание обеспокоенности может снизить напряжённость разговора при условии, что ответ искренний и за ним следует практическое предложение.","target_language":"en","word_bank":["Acknowledging","a","concern","can","de-escalate","the","conversation",",","provided","that","the","response","is","genuine","and","followed","by","a","practical","proposal","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e89ca070-4171-5fcf-a726-065882de8f0a', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"source of tension","instruction":"Выберите подходящее слово.","options":["source of tension","mutually acceptable","restore trust"],"sentence_template":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0f52ce50-2521-543f-a8c6-c59e065c4cfb', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Acknowledging","a","concern","can","de-escalate","the","conversation",",","provided","that","the","response","is","genuine","and","followed","by","a","practical","proposal","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","proposal","practical","a","by","followed","and","genuine","is","response","the","that","provided",",","conversation","the","de-escalate","can","concern","a","Acknowledging"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0d0f5f81-3528-5e1f-86e8-4cb1e493057c', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e2de8441-4eee-5af9-9e46-07ed5625a124', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Признание обеспокоенности может снизить напряжённость разговора при условии, что ответ искренний и за ним следует практическое предложение. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('e98e8ca8-3664-5a39-b5a2-27a525281a54', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal.","translation":"Признание обеспокоенности может снизить напряжённость разговора при условии, что ответ искренний и за ним следует практическое предложение.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Negotiating a Compromise"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('20f5d587-6c15-5a7a-af88-e06e0128eabf', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“source of tension” means the cause of difficulty in a relationship.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D11","is_correct":true,"text":"the cause of difficulty in a relationship"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D12","is_correct":false,"text":"show that another person’s worry is understood"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D13","is_correct":false,"text":"give up part of a demand to reach agreement"}],"word":"source of tension"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e8ede2d-947b-54b0-ac5c-762ed5894987', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal.","explanation":"The missing professional expression is “source of tension”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"source of tension","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D14","is_correct":true},{"audio_text":"make a concession","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D15","is_correct":false},{"audio_text":"de-escalate","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D16","is_correct":false}],"sentence_template":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('31c9512b-a3b2-52be-a072-5c7ef06b1dac', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"source of tension","explanation":"The complete workplace statement uses “source of tension” precisely.","hint_prefix":"sour","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('9f10a78b-beb2-5b46-adc9-f86a4e460ac7', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"underlying interest","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D17","text":"underlying interest"},{"audio_text":"source of tension","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D18","text":"source of tension"},{"audio_text":"acknowledge a concern","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D19","text":"acknowledge a concern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f2aa7575-901e-5688-af66-46a6055e903b', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Negotiating a Compromise”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D20","is_correct":true,"text":"Acknowledging a concern can de-escalate the conversation, provided that the response is genuine and followed by a practical proposal."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e9ef69da-571b-55e5-b7fc-95535e0ebfc0', 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Restoring Working Relationships","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7782f3b5-6cbc-530e-8a8a-4861f0bcc7b2', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D01","left":"underlying interest","right":"глубинный интерес"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D02","left":"source of tension","right":"источник напряжения"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D03","left":"acknowledge a concern","right":"признать обеспокоенность"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D04","left":"make a concession","right":"пойти на уступку"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D05","left":"mutually acceptable","right":"приемлемый для обеих сторон"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D06","left":"de-escalate","right":"снизить напряжённость"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D07","left":"restore trust","right":"восстановить доверие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47320f5b-b3cb-5595-813b-de1978d1e05c', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D08","is_correct":true,"text":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('172e72c9-211d-5436-96aa-06ea20a20feb', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Обе стороны пошли на уступку и достигли приемлемого решения, однако восстановление доверия потребует последовательного поведения со временем.","target_language":"en","word_bank":["Both","sides","made","a","concession","and","reached","a","mutually","acceptable","solution",",","but","restoring","trust","will","require","consistent","behaviour","over","time","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c86b8cd9-972c-5587-bea4-0162752d52ad', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"acknowledge a concern","instruction":"Выберите подходящее слово.","options":["acknowledge a concern","de-escalate","underlying interest"],"sentence_template":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('b464e055-0ecd-5003-9fed-02599edd3a2f', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Both","sides","made","a","concession","and","reached","a","mutually","acceptable","solution",",","but","restoring","trust","will","require","consistent","behaviour","over","time","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","time","over","behaviour","consistent","require","will","trust","restoring","but",",","solution","acceptable","mutually","a","reached","and","concession","a","made","sides","Both"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4b4b23fc-7a45-594c-bead-1f4c098df583', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8d3ea574-ed72-59d4-9776-5953b6cdfde9', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Обе стороны пошли на уступку и достигли приемлемого решения, однако восстановление доверия потребует последовательного поведения со временем. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3ed45ed3-96fc-5554-8639-2807436b9b27', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time.","translation":"Обе стороны пошли на уступку и достигли приемлемого решения, однако восстановление доверия потребует последовательного поведения со временем.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Restoring Working Relationships"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1468ce24-077b-53f9-97f9-b831533e8380', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“acknowledge a concern” means show that another person’s worry is understood.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D11","is_correct":true,"text":"show that another person’s worry is understood"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D12","is_correct":false,"text":"give up part of a demand to reach agreement"},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D13","is_correct":false,"text":"satisfactory enough for everyone involved"}],"word":"acknowledge a concern"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('886e0b49-2f26-5ea2-b27d-ec296eeecf57', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time.","explanation":"The missing professional expression is “acknowledge a concern”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"acknowledge a concern","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D14","is_correct":true},{"audio_text":"mutually acceptable","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D15","is_correct":false},{"audio_text":"restore trust","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D16","is_correct":false}],"sentence_template":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22e74d6c-7ee4-5bcf-a9a0-1a88597394f9', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"acknowledge a concern","explanation":"The complete workplace statement uses “acknowledge a concern” precisely.","hint_prefix":"ackn","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('669f8128-597c-5116-9ccc-078a42f53d9a', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"underlying interest","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D17","text":"underlying interest"},{"audio_text":"source of tension","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D18","text":"source of tension"},{"audio_text":"acknowledge a concern","id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D19","text":"acknowledge a concern"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fe85afb4-7f34-5408-980f-3113e7e60b72', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Restoring Working Relationships”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D20","is_correct":true,"text":"Both sides made a concession and reached a mutually acceptable solution, but restoring trust will require consistent behaviour over time."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_WORKPLACE_CONFLICT_AND_NEGOTIATED_SOLUTIONS_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e9ef69da-571b-55e5-b7fc-95535e0ebfc0', '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83b4cc04-fa2d-5058-a110-66a77cbecb4a', 'en', 'underlying interest', 'глубинный интерес', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('194e5d82-83b7-5eb1-b21f-0c4066bb9060', 'en', 'source of tension', 'источник напряжения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1b4d9e-4c57-5f79-b986-a3838b9ef28f', 'en', 'acknowledge a concern', 'признать обеспокоенность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82c757f0-55c1-5d7f-ad40-61c353497721', 'en', 'mutually acceptable', 'приемлемый для обеих сторон', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed542a90-b720-5dd9-ae8e-3dadb0ffde8f', 'en', 'de-escalate', 'снизить напряжённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6ff646d-a11f-5e83-a59e-11c86baba7d7', 'en', 'restore trust', 'восстановить доверие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83b4cc04-fa2d-5058-a110-66a77cbecb4a', 'en', 'underlying interest', 'глубинный интерес', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('194e5d82-83b7-5eb1-b21f-0c4066bb9060', 'en', 'source of tension', 'источник напряжения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1b4d9e-4c57-5f79-b986-a3838b9ef28f', 'en', 'acknowledge a concern', 'признать обеспокоенность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82c757f0-55c1-5d7f-ad40-61c353497721', 'en', 'mutually acceptable', 'приемлемый для обеих сторон', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed542a90-b720-5dd9-ae8e-3dadb0ffde8f', 'en', 'de-escalate', 'снизить напряжённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6ff646d-a11f-5e83-a59e-11c86baba7d7', 'en', 'restore trust', 'восстановить доверие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('83b4cc04-fa2d-5058-a110-66a77cbecb4a', 'en', 'underlying interest', 'глубинный интерес', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('194e5d82-83b7-5eb1-b21f-0c4066bb9060', 'en', 'source of tension', 'источник напряжения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('6d1b4d9e-4c57-5f79-b986-a3838b9ef28f', 'en', 'acknowledge a concern', 'признать обеспокоенность', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('3bfd1bdf-6dfe-58a3-8386-26615355a1df', 'en', 'make a concession', 'пойти на уступку', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('82c757f0-55c1-5d7f-ad40-61c353497721', 'en', 'mutually acceptable', 'приемлемый для обеих сторон', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('ed542a90-b720-5dd9-ae8e-3dadb0ffde8f', 'en', 'de-escalate', 'снизить напряжённость', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('f6ff646d-a11f-5e83-a59e-11c86baba7d7', 'en', 'restore trust', 'восстановить доверие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'source of tension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutually acceptable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'de-escalate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '18d912da-1137-5600-9c69-39f826419f27', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'restore trust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'source of tension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutually acceptable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'de-escalate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, 'e03135f2-39aa-5f46-8d68-ec6cde2a2d1f', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'restore trust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'underlying interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'source of tension' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'acknowledge a concern' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'make a concession' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'mutually acceptable' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'de-escalate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e9ef69da-571b-55e5-b7fc-95535e0ebfc0', id, '0d7ff5ca-aa18-53ee-8dd5-da6c1ba42e62', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'restore trust' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
