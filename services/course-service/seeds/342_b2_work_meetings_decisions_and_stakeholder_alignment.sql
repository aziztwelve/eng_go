-- Track: B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT. Generated from lingoiq.track.v2 by import_tracks_from_json.py.

BEGIN;

INSERT INTO courses.learning_tracks (id, code, title, description, title_i18n, description_i18n, language, level, track_type, motivation, is_published, sort_order, created_at, updated_at)
VALUES ('809ae18d-4a2c-5057-a6fc-5f99587af782', 'B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT', 'Совещания, решения и согласование интересов', 'Развивайте профессиональное общение уровня B2 по теме «Совещания, решения и согласование интересов», анализируя сложные ситуации и согласовывая обоснованные решения.', '{"en":"Meetings, Decisions and Stakeholder Alignment","ru":"Совещания, решения и согласование интересов"}'::jsonb, '{"en":"Develop B2 professional communication for meetings, decisions and stakeholder alignment by analysing complex situations and negotiating well-supported decisions.","ru":"Развивайте профессиональное общение уровня B2 по теме «Совещания, решения и согласование интересов», анализируя сложные ситуации и согласовывая обоснованные решения."}'::jsonb, 'en', 'B2', '', ARRAY['work']::text[], true, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, motivation = EXCLUDED.motivation, is_published = EXCLUDED.is_published, sort_order = EXCLUDED.sort_order, updated_at = NOW();

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('14814606-5a51-5794-bf67-329549033e5f', NULL, 'Ключевые понятия и контекст', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Clarifying Stakeholder Needs","ru":"Ключевые понятия и контекст"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('3a8e3cdd-e892-5086-9779-44bfbc4f4aa2', '14814606-5a51-5794-bf67-329549033e5f', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D01","left":"stakeholder interest","right":"интерес заинтересованной стороны"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D02","left":"decision criterion","right":"критерий решения"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D03","left":"facilitate","right":"модерировать"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D04","left":"raise a reservation","right":"высказать сомнение"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D05","left":"build consensus","right":"формировать консенсус"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D06","left":"action owner","right":"ответственный за действие"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D07","left":"formal sign-off","right":"официальное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5cfb8666-6ab9-5fbe-bed0-120e29b2286a', '14814606-5a51-5794-bf67-329549033e5f', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D08","is_correct":true,"text":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7dbbf8db-b208-50e2-bd28-14db22689b81', '14814606-5a51-5794-bf67-329549033e5f', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Интересы заинтересованных сторон следует уточнить до встречи, чтобы критерии решения отражали операционные, финансовые и клиентские приоритеты.","target_language":"en","word_bank":["Stakeholder","interests","should","be","clarified","before","the","meeting","so","that","the","decision","criteria","reflect","operational",",","financial",",","and","customer","priorities","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c8926c0a-b4ca-5dc4-beba-f48ad96b5dce', '14814606-5a51-5794-bf67-329549033e5f', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"stakeholder interest","instruction":"Выберите подходящее слово.","options":["stakeholder interest","raise a reservation","action owner"],"sentence_template":"___s should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('8060b35d-853a-5348-9ec2-9a8cad39cddb', '14814606-5a51-5794-bf67-329549033e5f', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Stakeholder","interests","should","be","clarified","before","the","meeting","so","that","the","decision","criteria","reflect","operational",",","financial",",","and","customer","priorities","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","priorities","customer","and",",","financial",",","operational","reflect","criteria","decision","the","that","so","meeting","the","before","clarified","be","should","interests","Stakeholder"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3641e90-75c3-5b07-adbd-0b0848909e0c', '14814606-5a51-5794-bf67-329549033e5f', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('90e744df-0952-5023-8fd1-f6d06a695cdc', '14814606-5a51-5794-bf67-329549033e5f', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Интересы заинтересованных сторон следует уточнить до встречи, чтобы критерии решения отражали операционные, финансовые и клиентские приоритеты. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('30e16cd0-1856-5e4e-815e-63a741692ffb', '14814606-5a51-5794-bf67-329549033e5f', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities.","translation":"Интересы заинтересованных сторон следует уточнить до встречи, чтобы критерии решения отражали операционные, финансовые и клиентские приоритеты.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Clarifying Stakeholder Needs"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d1f90e93-9ee0-5b1e-8f49-0be56c4d3d44', '14814606-5a51-5794-bf67-329549033e5f', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“stakeholder interest” means a concern or objective held by an affected party.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D11","is_correct":true,"text":"a concern or objective held by an affected party"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D12","is_correct":false,"text":"a standard used to compare available options"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D13","is_correct":false,"text":"guide a group process toward an outcome"}],"word":"stakeholder interest"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('d9257647-8742-5db9-ac82-7cd4b646b71f', '14814606-5a51-5794-bf67-329549033e5f', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities.","explanation":"The missing professional expression is “stakeholder interest”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"stakeholder interest","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D14","is_correct":true},{"audio_text":"facilitate","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D15","is_correct":false},{"audio_text":"build consensus","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D16","is_correct":false}],"sentence_template":"___s should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('03875780-f061-52c8-a7ef-60a0916cc28c', '14814606-5a51-5794-bf67-329549033e5f', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"stakeholder interest","explanation":"The complete workplace statement uses “stakeholder interest” precisely.","hint_prefix":"stak","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"___s should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f7adc956-8af2-5b8d-9339-e144174297f5', '14814606-5a51-5794-bf67-329549033e5f', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"stakeholder interest","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D17","text":"stakeholder interest"},{"audio_text":"decision criterion","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D18","text":"decision criterion"},{"audio_text":"facilitate","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D19","text":"facilitate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('13048ca0-b982-5b95-a2d6-91929bb96273', '14814606-5a51-5794-bf67-329549033e5f', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Clarifying Stakeholder Needs”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D20","is_correct":true,"text":"Stakeholder interests should be clarified before the meeting so that the decision criteria reflect operational, financial, and customer priorities."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L1_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('809ae18d-4a2c-5057-a6fc-5f99587af782', '14814606-5a51-5794-bf67-329549033e5f', 0)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('1fa93bbe-518f-50f4-bdb1-82e81ea88e91', NULL, 'Анализ и профессиональное взаимодействие', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Facilitating a Decision","ru":"Анализ и профессиональное взаимодействие"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('10aafd2d-4281-5565-88f6-e09302d8ff2a', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D01","left":"stakeholder interest","right":"интерес заинтересованной стороны"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D02","left":"decision criterion","right":"критерий решения"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D03","left":"facilitate","right":"модерировать"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D04","left":"raise a reservation","right":"высказать сомнение"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D05","left":"build consensus","right":"формировать консенсус"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D06","left":"action owner","right":"ответственный за действие"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D07","left":"formal sign-off","right":"официальное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('66e00546-5019-5922-b556-d27152d4d780', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D08","is_correct":true,"text":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('1dc0bf1c-01c6-5a02-b1e2-0d57f16b6e9e', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Председатель модерировал обсуждение, признавая каждое сомнение и определяя, где существовало достаточно общей основы для формирования консенсуса.","target_language":"en","word_bank":["The","chair","facilitated","the","discussion","by","acknowledging","each","reservation","and","identifying","where","enough","common","ground","existed","to","build","consensus","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4f7b2e17-d066-567c-b7c1-086d30250d00', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"decision criterion","instruction":"Выберите подходящее слово.","options":["decision criterion","build consensus","formal sign-off"],"sentence_template":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('00c453b1-e43c-544a-9f7a-8a12abab55eb', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["The","chair","facilitated","the","discussion","by","acknowledging","each","reservation","and","identifying","where","enough","common","ground","existed","to","build","consensus","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","consensus","build","to","existed","ground","common","enough","where","identifying","and","reservation","each","acknowledging","by","discussion","the","facilitated","chair","The"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c3bd3c15-bc8d-569a-a340-cae9bc67e898', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('0fcedd30-baad-5986-912a-0d07a3ec6786', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Председатель модерировал обсуждение, признавая каждое сомнение и определяя, где существовало достаточно общей основы для формирования консенсуса. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c235c762-5579-52e2-b7c7-405aeb4d1315', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus.","translation":"Председатель модерировал обсуждение, признавая каждое сомнение и определяя, где существовало достаточно общей основы для формирования консенсуса.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Facilitating a Decision"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f0d0493b-354c-54fe-9727-9c014a9fa228', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“decision criterion” means a standard used to compare available options.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D11","is_correct":true,"text":"a standard used to compare available options"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D12","is_correct":false,"text":"guide a group process toward an outcome"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D13","is_correct":false,"text":"express a concern without rejecting a proposal"}],"word":"decision criterion"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('fc71fa5f-c0fa-55cf-8852-4d0ce638314a', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus.","explanation":"The missing professional expression is “decision criterion”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"decision criterion","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D14","is_correct":true},{"audio_text":"raise a reservation","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D15","is_correct":false},{"audio_text":"action owner","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D16","is_correct":false}],"sentence_template":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('944f5c95-a430-5fb0-a723-f716c7fc98c3', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"decision criterion","explanation":"The complete workplace statement uses “decision criterion” precisely.","hint_prefix":"deci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f1346f21-48af-5195-8372-3fbc58eba368', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"stakeholder interest","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D17","text":"stakeholder interest"},{"audio_text":"decision criterion","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D18","text":"decision criterion"},{"audio_text":"facilitate","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D19","text":"facilitate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('2826dbd7-2ec7-5209-b5dc-01c7beff5c19', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Facilitating a Decision”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D20","is_correct":true,"text":"The chair facilitated the discussion by acknowledging each reservation and identifying where enough common ground existed to build consensus."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L2_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('809ae18d-4a2c-5057-a6fc-5f99587af782', '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 1)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.lessons (id, module_id, title, description, title_i18n, description_i18n, order_index, created_at, updated_at)
VALUES ('a4cf43a7-2e6b-5a09-aaff-43264792b3eb', NULL, 'Решения и последующие действия', 'Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия.', '{"en":"Confirming Commitment","ru":"Решения и последующие действия"}'::jsonb, '{"en":"Handle a complex B2 workplace task confidently by explaining causes and consequences precisely, acknowledging colleagues’ interests, and agreeing practical action.","ru":"Уверенно решать сложную рабочую задачу уровня B2, точно объясняя причины и последствия, учитывая интересы коллег и согласовывая практические действия."}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET title = EXCLUDED.title, description = EXCLUDED.description, title_i18n = EXCLUDED.title_i18n, description_i18n = EXCLUDED.description_i18n, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('cb843f51-0c29-578f-b834-8ac70527cd15', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'match_pairs', 'Соедините пары', '{"en":"Match the pairs","ru":"Соедините пары"}'::jsonb, '{"instruction":"Соедините английские слова с переводом.","pairs":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D01","left":"stakeholder interest","right":"интерес заинтересованной стороны"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D02","left":"decision criterion","right":"критерий решения"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D03","left":"facilitate","right":"модерировать"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D04","left":"raise a reservation","right":"высказать сомнение"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D05","left":"build consensus","right":"формировать консенсус"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D06","left":"action owner","right":"ответственный за действие"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D07","left":"formal sign-off","right":"официальное утверждение"}]}'::jsonb, 0, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('acb89e65-2833-5d75-8b4f-37b77d218312', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'quiz', 'Проверьте себя', '{"en":"Check yourself","ru":"Проверьте себя"}'::jsonb, '{"explanation":"The correct response uses precise B2 workplace language and links the decision to evidence, consequences, and accountability.","instruction":"Выберите правильный ответ.","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D08","is_correct":true,"text":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D09","is_correct":false,"text":"The situation is simple, so evidence and stakeholder concerns can be ignored."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D10","is_correct":false,"text":"Responsibility should remain unclear until the problem resolves itself."}],"question":"Which response demonstrates the strongest professional judgement?"}'::jsonb, 1, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('5fceb5cd-6605-5fe9-808a-bbf632780575', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'translate', 'Переведите', '{"en":"Translate","ru":"Переведите"}'::jsonb, '{"correct_translation":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off.","instruction":"Соберите перевод.","source_language":"ru","source_text":"Каждый ответственный подтвердил следующий шаг, но реализация не может начаться, пока пересмотренный бюджет не получит официального утверждения.","target_language":"en","word_bank":["Each","action","owner","has","confirmed","the","next","step",",","but","implementation","cannot","begin","until","the","revised","budget","receives","formal","sign-off","."]}'::jsonb, 2, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('7b1ce5d3-ec25-51b2-b73e-ca96431fa7a4', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'fill_blank', 'Заполните пропуск', '{"en":"Fill the blank","ru":"Заполните пропуск"}'::jsonb, '{"correct_answer":"facilitate","instruction":"Выберите подходящее слово.","options":["facilitate","action owner","stakeholder interest"],"sentence_template":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off."}'::jsonb, 3, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('f3773aef-71cd-5775-a7cc-0fda2988638d', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'tap_words', 'Соберите фразу', '{"en":"Build the phrase","ru":"Соберите фразу"}'::jsonb, '{"correct_words":["Each","action","owner","has","confirmed","the","next","step",",","but","implementation","cannot","begin","until","the","revised","budget","receives","formal","sign-off","."],"instruction":"Расставьте слова в правильном порядке.","word_bank":[".","sign-off","formal","receives","budget","revised","the","until","begin","cannot","implementation","but",",","step","next","the","confirmed","has","owner","action","Each"]}'::jsonb, 4, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('40f7a69c-4b87-5653-9c5e-02f0718f0fdb', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'listening', 'Послушайте', '{"en":"Listen","ru":"Послушайте"}'::jsonb, '{"audio_text":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off. The practical implications should be discussed openly before responsibility for the next step is assigned.","instruction":"Напишите услышанное.","language":"en"}'::jsonb, 5, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('c64d9ef2-2ca9-598a-b981-7f8c3e099c59', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'listening_shadowing', 'Повторите', '{"en":"Repeat","ru":"Повторите"}'::jsonb, '{"audio_text":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off. The practical implications should be discussed openly before responsibility for the next step is assigned. Although there are competing priorities, the final recommendation should remain realistic, transparent, and aligned with the agreed objective.","instruction":"Запишите повтор.","language":"en","min_accuracy":0.8,"translation_hint":"Каждый ответственный подтвердил следующий шаг, но реализация не может начаться, пока пересмотренный бюджет не получит официального утверждения. Практические последствия следует открыто обсудить до назначения ответственного за следующий шаг. Хотя существуют конкурирующие приоритеты, окончательная рекомендация должна оставаться реалистичной, прозрачной и согласованной с утверждённой целью."}'::jsonb, 6, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('844cff31-f221-5747-8bb1-591dfd976237', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'story', 'История', '{"en":"Story","ru":"История"}'::jsonb, '{"instruction":"Прочитайте историю.","scenes":[{"character":"Manager","text":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off.","translation":"Каждый ответственный подтвердил следующий шаг, но реализация не может начаться, пока пересмотренный бюджет не получит официального утверждения.","type":"dialogue"},{"character":"Colleague","text":"What risk or stakeholder concern should we address before confirming that approach?","translation":"Какой риск или интерес заинтересованной стороны нам следует учесть до утверждения этого подхода?","type":"dialogue"},{"options":[{"is_correct":true,"text":"We should acknowledge the concern, compare the operational impact of each option, and assign a clear owner for the agreed action."},{"is_correct":false,"text":"We should avoid discussing the concern and hope that ownership becomes clear later."}],"text":"Which reply advances the workplace discussion?","type":"choice"}],"title":"Confirming Commitment"}'::jsonb, 7, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('4ff50084-cc8c-5875-b46d-fd9149dcb558', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'choose_definition', 'Определение', '{"en":"Definition","ru":"Определение"}'::jsonb, '{"explanation":"“facilitate” means guide a group process toward an outcome.","instruction":"Выберите значение.","language":"en","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D11","is_correct":true,"text":"guide a group process toward an outcome"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D12","is_correct":false,"text":"express a concern without rejecting a proposal"},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D13","is_correct":false,"text":"develop broad agreement among participants"}],"word":"facilitate"}'::jsonb, 8, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('22429f6e-113c-588b-80a1-78cc5fac49ab', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'listen_choose_word', 'Слово', '{"en":"Word","ru":"Слово"}'::jsonb, '{"audio_text":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off.","explanation":"The missing professional expression is “facilitate”.","instruction":"Слушайте.","language":"en","options":[{"audio_text":"facilitate","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D14","is_correct":true},{"audio_text":"build consensus","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D15","is_correct":false},{"audio_text":"formal sign-off","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D16","is_correct":false}],"sentence_template":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off."}'::jsonb, 9, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('43623dee-f015-5551-8fe3-d3e19b580c4e', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'missing_word', 'Впишите', '{"en":"Type","ru":"Впишите"}'::jsonb, '{"correct_answer":"facilitate","explanation":"The complete workplace statement uses “facilitate” precisely.","hint_prefix":"faci","instruction":"Впишите пропущенное слово по подсказке.","sentence_template":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off."}'::jsonb, 10, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('a81d3c58-c82f-5650-94c1-f0cb73cecfdb', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'match_pairs_voice', 'Звук', '{"en":"Sound","ru":"Звук"}'::jsonb, '{"explanation":"Match each B2 workplace expression you hear with its written form.","instruction":"Соедините звук.","language":"en","pairs":[{"audio_text":"stakeholder interest","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D17","text":"stakeholder interest"},{"audio_text":"decision criterion","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D18","text":"decision criterion"},{"audio_text":"facilitate","id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D19","text":"facilitate"}]}'::jsonb, 11, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.steps (id, lesson_id, type, title, title_i18n, content, order_index, created_at, updated_at)
VALUES ('47b5f94d-a206-5a7a-9992-6f71b6a3ebbb', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 'complete_chat', 'Диалог', '{"en":"Chat","ru":"Диалог"}'::jsonb, '{"answer_speaker":"You","dialogue":[{"speaker":"Director","text":"What approach would you recommend for “Confirming Commitment”?"}],"explanation":"The correct response gives a developed, evidence-based B2 workplace recommendation with clear professional implications.","instruction":"Ответьте.","options":[{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D20","is_correct":true,"text":"Each action owner has confirmed the next step, but implementation cannot begin until the revised budget receives formal sign-off."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D21","is_correct":false,"text":"No analysis is necessary because the first option should always be accepted."},{"id":"B2_WORK_MEETINGS_DECISIONS_AND_STAKEHOLDER_ALIGNMENT_L3_D22","is_correct":false,"text":"I would leave the responsibilities undefined and avoid documenting the decision."}]}'::jsonb, 12, NOW(), NOW())
ON CONFLICT (id) DO UPDATE SET type = EXCLUDED.type, title = EXCLUDED.title, title_i18n = EXCLUDED.title_i18n, content = EXCLUDED.content, order_index = EXCLUDED.order_index, updated_at = NOW();

INSERT INTO courses.track_lessons (track_id, lesson_id, order_index)
VALUES ('809ae18d-4a2c-5057-a6fc-5f99587af782', 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 2)
ON CONFLICT (track_id, lesson_id) DO UPDATE SET order_index = EXCLUDED.order_index;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a9c78c1-33ea-5a0e-9439-39265aa5c411', 'en', 'stakeholder interest', 'интерес заинтересованной стороны', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a4a9dec-cfd5-50f7-9687-ab202f5c43e3', 'en', 'decision criterion', 'критерий решения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('390ba59c-2f14-53bb-aa08-0012ef341823', 'en', 'facilitate', 'модерировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a05c1d97-ae31-52a4-8e1f-a2063936242f', 'en', 'raise a reservation', 'высказать сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06374087-9d20-507d-9a42-a5ec3c97d95a', 'en', 'build consensus', 'формировать консенсус', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4b30fda-5715-5074-835b-96071aa40428', 'en', 'action owner', 'ответственный за действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b61eb298-cd77-51d7-92e8-b75d4ae0266e', 'en', 'formal sign-off', 'официальное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a9c78c1-33ea-5a0e-9439-39265aa5c411', 'en', 'stakeholder interest', 'интерес заинтересованной стороны', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a4a9dec-cfd5-50f7-9687-ab202f5c43e3', 'en', 'decision criterion', 'критерий решения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('390ba59c-2f14-53bb-aa08-0012ef341823', 'en', 'facilitate', 'модерировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a05c1d97-ae31-52a4-8e1f-a2063936242f', 'en', 'raise a reservation', 'высказать сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06374087-9d20-507d-9a42-a5ec3c97d95a', 'en', 'build consensus', 'формировать консенсус', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4b30fda-5715-5074-835b-96071aa40428', 'en', 'action owner', 'ответственный за действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b61eb298-cd77-51d7-92e8-b75d4ae0266e', 'en', 'formal sign-off', 'официальное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('8a9c78c1-33ea-5a0e-9439-39265aa5c411', 'en', 'stakeholder interest', 'интерес заинтересованной стороны', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('7a4a9dec-cfd5-50f7-9687-ab202f5c43e3', 'en', 'decision criterion', 'критерий решения', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('390ba59c-2f14-53bb-aa08-0012ef341823', 'en', 'facilitate', 'модерировать', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('a05c1d97-ae31-52a4-8e1f-a2063936242f', 'en', 'raise a reservation', 'высказать сомнение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('06374087-9d20-507d-9a42-a5ec3c97d95a', 'en', 'build consensus', 'формировать консенсус', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('e4b30fda-5715-5074-835b-96071aa40428', 'en', 'action owner', 'ответственный за действие', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.vocabulary (id, language, word, translation, target_language, level, definition, created_at, updated_at)
VALUES ('b61eb298-cd77-51d7-92e8-b75d4ae0266e', 'en', 'formal sign-off', 'официальное утверждение', 'ru', 'B2', NULLIF('', ''), NOW(), NOW())
ON CONFLICT DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 0 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 1 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 2 FROM courses.vocabulary WHERE language = 'en' AND word = 'facilitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 3 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 4 FROM courses.vocabulary WHERE language = 'en' AND word = 'build consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 5 FROM courses.vocabulary WHERE language = 'en' AND word = 'action owner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '14814606-5a51-5794-bf67-329549033e5f', 6 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10000 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10001 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10002 FROM courses.vocabulary WHERE language = 'en' AND word = 'facilitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10003 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10004 FROM courses.vocabulary WHERE language = 'en' AND word = 'build consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10005 FROM courses.vocabulary WHERE language = 'en' AND word = 'action owner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, '1fa93bbe-518f-50f4-bdb1-82e81ea88e91', 10006 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20000 FROM courses.vocabulary WHERE language = 'en' AND word = 'stakeholder interest' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20001 FROM courses.vocabulary WHERE language = 'en' AND word = 'decision criterion' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20002 FROM courses.vocabulary WHERE language = 'en' AND word = 'facilitate' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20003 FROM courses.vocabulary WHERE language = 'en' AND word = 'raise a reservation' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20004 FROM courses.vocabulary WHERE language = 'en' AND word = 'build consensus' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20005 FROM courses.vocabulary WHERE language = 'en' AND word = 'action owner' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

INSERT INTO courses.track_vocabulary (track_id, vocabulary_id, lesson_id, first_seen_order)
SELECT '809ae18d-4a2c-5057-a6fc-5f99587af782', id, 'a4cf43a7-2e6b-5a09-aaff-43264792b3eb', 20006 FROM courses.vocabulary WHERE language = 'en' AND word = 'formal sign-off' AND target_language = 'ru'
ON CONFLICT (track_id, vocabulary_id) DO NOTHING;

COMMIT;
