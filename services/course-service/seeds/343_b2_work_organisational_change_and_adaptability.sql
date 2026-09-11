-- Track: B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', 'B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY', 'Организационные изменения и адаптивность', 'Развивайте профессиональное общение уровня B2 по теме «Организационные изменения и адаптивность», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Organisational Change and Adaptability","ru":"Организационные изменения и адаптивность"}'::jsonb, '{"en":"Develop B2 professional communication for organisational change and adaptability by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Организационные изменения и адаптивность», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('975e6be7-d548-5a4c-8e9e-d1342e32d0b1', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Explaining the Case for Change","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c7b32b6f-3598-55ae-90ed-0494fb530982', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D01","left":"case for change","right":"обоснование изменений"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D02","left":"implementation phase","right":"этап внедрения"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D03","left":"employee resistance","right":"сопротивление сотрудников"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D04","left":"consultation","right":"консультация"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D05","left":"transition period","right":"переходный период"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D06","left":"embed a practice","right":"закрепить практику"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D07","left":"unintended consequence","right":"непредвиденное последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('72ed3bf0-212d-51b7-9652-9bd3856ed53c', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D08","is_correct":true,"text":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('76c6801a-5f9b-585e-8ad2-b3cc4bd01b48', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Убедительное обоснование изменений объясняет текущую проблему, ожидаемую выгоду и последствия сохранения существующего подхода.","target_language":"en","word_bank":["A","credible","case","for","change","explains","the","current","problem",",","the","expected","benefit",",","and","the","consequences","of","maintaining","the","existing","approach","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ce642baa-045c-5685-9488-7e46a5992e7a', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"case for change","instruction":"Выберите подходящее слово.","options":["case for change","consultation","embed a practice"],"sentence_template":"A credible ___ explains the current problem, the expected benefit, and the consequences of maintaining the existing approach."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('61ee8c16-3749-5820-91a3-eb4ed93a130d', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["A","credible","case","for","change","explains","the","current","problem",",","the","expected","benefit",",","and","the","consequences","of","maintaining","the","existing","approach","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","approach","existing","the","maintaining","of","consequences","the","and",",","benefit","expected","the",",","problem","current","the","explains","change","for","case","credible","A"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7542515b-bf46-57aa-8792-1224f66e5aec', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('83aece73-dab7-506f-ac2a-bfbaba3e2f71', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Убедительное обоснование изменений объясняет текущую проблему, ожидаемую выгоду и последствия сохранения существующего подхода. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2ad48c38-78c8-508b-a47e-ebc021f0efd5', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach.","translation":"Убедительное обоснование изменений объясняет текущую проблему, ожидаемую выгоду и последствия сохранения существующего подхода.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Explaining the Case for Change"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d6852b2a-e432-5ed7-8c54-ea5b4b7f901c', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“case for change” means the reasons showing why change is necessary.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D11","is_correct":true,"text":"the reasons showing why change is necessary"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D12","is_correct":false,"text":"the period in which a plan is put into practice"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D13","is_correct":false,"text":"opposition or reluctance toward organisational change"}],"word":"case for change"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('6920918e-a1e0-5b01-94b8-cf774a664f24', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach.","explanation":"The missing professional expression is “case for change”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"case for change","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D14","is_correct":true},{"audio_text":"employee resistance","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D15","is_correct":false},{"audio_text":"transition period","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D16","is_correct":false}],"sentence_template":"A credible ___ explains the current problem, the expected benefit, and the consequences of maintaining the existing approach."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('ef78e252-5a77-54be-a0bf-af352ddd1a42', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"case for change","explanation":"The complete workplace statement uses “case for change” precisely.","hint_prefix":"case","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"A credible ___ explains the current problem, the expected benefit, and the consequences of maintaining the existing approach."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('786b1286-00f2-561a-9dfb-737b82ed7065', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"case for change","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D17","text":"case for change"},{"audio_text":"implementation phase","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D18","text":"implementation phase"},{"audio_text":"employee resistance","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D19","text":"employee resistance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d2d47bc4-6fdf-56e0-8f80-1e2229d78ae6', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Explaining the Case for Change”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D20","is_correct":true,"text":"A credible case for change explains the current problem, the expected benefit, and the consequences of maintaining the existing approach."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('75fd4f5c-da43-59d4-ab22-eb692e63e069', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Managing Resistance","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('56fce026-3113-5631-89a2-babac6350b7b', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D01","left":"case for change","right":"обоснование изменений"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D02","left":"implementation phase","right":"этап внедрения"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D03","left":"employee resistance","right":"сопротивление сотрудников"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D04","left":"consultation","right":"консультация"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D05","left":"transition period","right":"переходный период"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D06","left":"embed a practice","right":"закрепить практику"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D07","left":"unintended consequence","right":"непредвиденное последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('53dc65d1-5620-5dc5-9a54-2a8ea7865433', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D08","is_correct":true,"text":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c093db5c-3528-5d9f-8f58-dc04ca48ae4a', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Сопротивление сотрудников часто снижается, когда консультация является подлинной, а практические вопросы решаются до этапа внедрения.","target_language":"en","word_bank":["Employee","resistance","often","decreases","when","consultation","is","genuine","and","practical","concerns","are","addressed","before","the","implementation","phase","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c43fde17-f0d6-59ce-9d0d-00d2f298f01c', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"implementation phase","instruction":"Выберите подходящее слово.","options":["implementation phase","transition period","unintended consequence"],"sentence_template":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the ___."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d87cb74a-5a3f-591d-a888-f4f2ba2109d1', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Employee","resistance","often","decreases","when","consultation","is","genuine","and","practical","concerns","are","addressed","before","the","implementation","phase","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","phase","implementation","the","before","addressed","are","concerns","practical","and","genuine","is","consultation","when","decreases","often","resistance","Employee"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2e093c76-f317-5e1d-bfb1-03240db8b269', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('28c14213-4d8b-53f9-8273-8de8f3a3e7fe', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Сопротивление сотрудников часто снижается, когда консультация является подлинной, а практические вопросы решаются до этапа внедрения. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d31e1104-490d-5668-8854-c2649a6fd8bc', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase.","translation":"Сопротивление сотрудников часто снижается, когда консультация является подлинной, а практические вопросы решаются до этапа внедрения.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Managing Resistance"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8a4d77b8-eb08-5a3f-83de-2d142dff3ce5', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“implementation phase” means the period in which a plan is put into practice.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D11","is_correct":true,"text":"the period in which a plan is put into practice"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D12","is_correct":false,"text":"opposition or reluctance toward organisational change"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D13","is_correct":false,"text":"a process of seeking views before deciding"}],"word":"implementation phase"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3f1bf79c-ef02-575d-89fb-fb0336fa84d6', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase.","explanation":"The missing professional expression is “implementation phase”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"implementation phase","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D14","is_correct":true},{"audio_text":"consultation","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D15","is_correct":false},{"audio_text":"embed a practice","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D16","is_correct":false}],"sentence_template":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the ___."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('51b33c40-2819-5bb6-b624-3ae1e477719b', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"implementation phase","explanation":"The complete workplace statement uses “implementation phase” precisely.","hint_prefix":"impl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the ___."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fae2a675-4e25-57a4-98a5-6a9800a5911c', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"case for change","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D17","text":"case for change"},{"audio_text":"implementation phase","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D18","text":"implementation phase"},{"audio_text":"employee resistance","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D19","text":"employee resistance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4c2433cc-03f6-54b4-8831-c70201871cd3', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Managing Resistance”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D20","is_correct":true,"text":"Employee resistance often decreases when consultation is genuine and practical concerns are addressed before the implementation phase."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', '75fd4f5c-da43-59d4-ab22-eb692e63e069', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Embedding New Practices","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('94a8b0e9-b81b-5bf1-ab6f-af9862a563f9', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D01","left":"case for change","right":"обоснование изменений"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D02","left":"implementation phase","right":"этап внедрения"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D03","left":"employee resistance","right":"сопротивление сотрудников"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D04","left":"consultation","right":"консультация"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D05","left":"transition period","right":"переходный период"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D06","left":"embed a practice","right":"закрепить практику"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D07","left":"unintended consequence","right":"непредвиденное последствие"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('056ed44e-0ccf-5ff9-ad7c-002539399f44', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D08","is_correct":true,"text":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('705c3e1b-9fa1-543a-ba57-a4760f7db994', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice.","instruction":"Соберите перевод.","source_language":"ru","source_text":"В переходный период менеджеры должны отслеживать непредвиденные последствия и обеспечивать достаточную поддержку для закрепления новой практики.","target_language":"en","word_bank":["During","the","transition","period",",","managers","should","monitor","unintended","consequences","and","provide","enough","support","to","embed","the","new","practice","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1c8798c7-2fd1-5664-8513-23446a1de36e', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"employee resistance","instruction":"Выберите подходящее слово.","options":["employee resistance","embed a practice","case for change"],"sentence_template":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fdf2ebb0-2be5-50ef-994e-f08d62aa6efe', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["During","the","transition","period",",","managers","should","monitor","unintended","consequences","and","provide","enough","support","to","embed","the","new","practice","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","practice","new","the","embed","to","support","enough","provide","and","consequences","unintended","monitor","should","managers",",","period","transition","the","During"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00b4721a-6f66-5aef-9f29-d1bdca437d2f', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0e1069db-0079-5f36-88d7-5049391f6aa0', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"В переходный период менеджеры должны отслеживать непредвиденные последствия и обеспечивать достаточную поддержку для закрепления новой практики. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1e5401b2-d667-54b6-8b7b-0c51f11c467a', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice.","translation":"В переходный период менеджеры должны отслеживать непредвиденные последствия и обеспечивать достаточную поддержку для закрепления новой практики.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Embedding New Practices"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0780519c-5429-54c7-a5a9-f4876e28494f', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“employee resistance” means opposition or reluctance toward organisational change.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D11","is_correct":true,"text":"opposition or reluctance toward organisational change"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D12","is_correct":false,"text":"a process of seeking views before deciding"},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D13","is_correct":false,"text":"the time during movement from one system to another"}],"word":"employee resistance"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('33759575-5833-5869-b162-976a1fb91343', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice.","explanation":"The missing professional expression is “employee resistance”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"employee resistance","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D14","is_correct":true},{"audio_text":"transition period","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D15","is_correct":false},{"audio_text":"unintended consequence","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D16","is_correct":false}],"sentence_template":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('52fdd901-9ed0-5a74-8b17-6bdcfd46d632', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"employee resistance","explanation":"The complete workplace statement uses “employee resistance” precisely.","hint_prefix":"empl","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3e74c72b-95a1-5255-aba8-1523c97a57d0', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"case for change","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D17","text":"case for change"},{"audio_text":"implementation phase","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D18","text":"implementation phase"},{"audio_text":"employee resistance","id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D19","text":"employee resistance"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0ac3bce0-f407-52c6-8dda-455d1234dbeb', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Embedding New Practices”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D20","is_correct":true,"text":"During the transition period, managers should monitor unintended consequences and provide enough support to embed the new practice."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_ORGANISATIONAL_CHANGE_AND_ADAPTABILITY_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54e8dd59-c873-5ceb-9acf-5604e61256c3', 'en', 'case for change', 'обоснование изменений', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36f8583b-9ee7-577d-896d-8aca0e34e733', 'en', 'implementation phase', 'этап внедрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c832bf11-58c7-5874-9c10-33c2775901b0', 'en', 'employee resistance', 'сопротивление сотрудников', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f38afbb-bb03-5343-9bbd-ec5594a0102d', 'en', 'consultation', 'консультация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d5755b0-4fc7-5e4a-ac21-b9b84e368e4a', 'en', 'transition period', 'переходный период', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a77a83be-1d2d-5fe0-b97c-6f2ecc7e4683', 'en', 'embed a practice', 'закрепить практику', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f20b265-9d5c-5dde-a182-b25591168267', 'en', 'unintended consequence', 'непредвиденное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54e8dd59-c873-5ceb-9acf-5604e61256c3', 'en', 'case for change', 'обоснование изменений', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36f8583b-9ee7-577d-896d-8aca0e34e733', 'en', 'implementation phase', 'этап внедрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c832bf11-58c7-5874-9c10-33c2775901b0', 'en', 'employee resistance', 'сопротивление сотрудников', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f38afbb-bb03-5343-9bbd-ec5594a0102d', 'en', 'consultation', 'консультация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d5755b0-4fc7-5e4a-ac21-b9b84e368e4a', 'en', 'transition period', 'переходный период', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a77a83be-1d2d-5fe0-b97c-6f2ecc7e4683', 'en', 'embed a practice', 'закрепить практику', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f20b265-9d5c-5dde-a182-b25591168267', 'en', 'unintended consequence', 'непредвиденное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('54e8dd59-c873-5ceb-9acf-5604e61256c3', 'en', 'case for change', 'обоснование изменений', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('36f8583b-9ee7-577d-896d-8aca0e34e733', 'en', 'implementation phase', 'этап внедрения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('c832bf11-58c7-5874-9c10-33c2775901b0', 'en', 'employee resistance', 'сопротивление сотрудников', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5f38afbb-bb03-5343-9bbd-ec5594a0102d', 'en', 'consultation', 'консультация', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('5d5755b0-4fc7-5e4a-ac21-b9b84e368e4a', 'en', 'transition period', 'переходный период', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a77a83be-1d2d-5fe0-b97c-6f2ecc7e4683', 'en', 'embed a practice', 'закрепить практику', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8f20b265-9d5c-5dde-a182-b25591168267', 'en', 'unintended consequence', 'непредвиденное последствие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'case for change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'implementation phase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'employee resistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'consultation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'transition period' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'embed a practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '975e6be7-d548-5a4c-8e9e-d1342e32d0b1', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'case for change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'implementation phase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'employee resistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'consultation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'transition period' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'embed a practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, '75fd4f5c-da43-59d4-ab22-eb692e63e069', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'case for change' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'implementation phase' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'employee resistance' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'consultation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'transition period' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'embed a practice' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT 'e3be3b8e-1cad-5de7-84bc-4e47630b2bf4', id, 'bbd15f24-ef65-5f68-a249-9c3cfbb1ccd4', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'unintended consequence' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
